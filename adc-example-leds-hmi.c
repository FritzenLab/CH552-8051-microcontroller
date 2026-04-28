#include "inc\ch554.h"
#include "adc\adc.h"
#include <stdint.h>

volatile unsigned int tick_100us = 0;
volatile unsigned int blinkCounter = 0;
volatile unsigned int tens = 0;
volatile unsigned int unit = 0;
unsigned int countUnits = 0;
unsigned int countTens = 0;
uint8_t rawAnalog = 0;
uint16_t mVanalog = 0;
uint8_t val = 0;
__bit conversionFinished = 1;
__bit blinkNowToggle = 0;
__bit unitON = 0;
__bit tensON = 0;
__bit buttonPrev = 0;
__bit ledBlinkEnabled = 0;

void timer0_ISR(void) __interrupt(1) __using(1);
void blink_led(void);
void clock_init(void);

uint8_t analogReading(void) {
    ADC_START = 1;
    while (ADC_START);
    ADC_IF = 0;
    return ADC_DATA;
}

void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    // Set Fsys = 24 MHz — CH554 datasheet section 2.2
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
    SAFE_MOD = 0x00;
}

void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
    TF0 = 0;
    // 100us @ 24MHz: 24M/12=2MHz, 100us/0.5us=200 ticks, 65536-200=0xFF38
    TH0 = 0xFF;
    TL0 = 0x38;
    tick_100us++;
    blinkCounter++;
}

void timer0_init(void) {
    // CH554 Timer0 mode 1: 16-bit — CH554 datasheet section 9
    TMOD &= ~0x03;
    TMOD |=  0x01;
    TH0 = 0xFF;
    TL0 = 0x38;
    ET0 = 1;
    TR0 = 1;
    EA  = 1;
}

void blink_led(void) {
    // 2500 * 100us = 250ms ON, 250ms OFF
    if (tick_100us < 2500) {
        P3 |=  (1 << 0);
    } else if (tick_100us < 5000) {
        P3 &= ~(1 << 0);
    } else {
        tick_100us = 0;
    }
}

uint16_t rawToMillivolts(uint8_t raw) {
    if (raw < 46) return 0;
    // linear mapping: Vref=3.3V, 8-bit ADC, offset-corrected
    return 300 + ((uint32_t)(raw - 46) * 3000) / 117;
}

void blinkTwoLEDs(uint8_t v) {
    tens = v / 10;
    unit = v % 10;
    // double: each digit needs ON+OFF transitions
    //tens = tens * 2;
    //unit = unit * 2;
    // reset state machine for fresh run
    countUnits   = 0;
    countTens    = 0;
    unitON       = 0;
    tensON       = 0;
    blinkCounter = 0;
    blinkNowToggle = 1;
}

void blinkNow(void) {
    if (!blinkNowToggle) return;

    // kick off: decide starting phase
    if (countUnits == 0 && countTens == 0) {
        if (unit > 0) {
            countUnits = 1;
        } else if (tens > 0) {
            countTens = 1;
        } else {
            blinkNowToggle = 0;
            conversionFinished = 1;
            return;
        }
    }

    // 1500 * 100us = 150ms per half-blink
    if (blinkCounter < 1500) return;
    blinkCounter = 0;

    // Phase 1: blink units on P3.5
    if (countUnits == 1) {
        if (unit > 0) {
            if (unitON == 0) {
                P3 |=  (1 << 5);   // LED ON
                unitON = 1;
            } else {
                P3 &= ~(1 << 5);   // LED OFF
                unitON = 0;
                unit--;            // decrement only on OFF edge — one full blink per count
            }
        } else {
            P3 &= ~(1 << 5);       // FIX: was (1<<4), must clear units LED (P3.5) before switching phase
            unitON     = 0;
            countUnits = 0;
            countTens  = (tens > 0) ? 1 : 0;  // FIX: only enter tens phase if tens > 0
            if (countTens == 0) {
                blinkNowToggle = 0;
                conversionFinished = 1;
            }
        }
        return;
    }

    // Phase 2: blink tens on P3.4
    if (countTens == 1) {
        if (tens > 0) {
            if (tensON == 0) {
                P3 |=  (1 << 4);   // LED ON
                tensON = 1;
            } else {
                P3 &= ~(1 << 4);   // LED OFF
                tensON = 0;
                tens--;            // decrement only on OFF edge — one full blink per count
            }
        } else {
            P3 &= ~(1 << 4);       // FIX: was (1<<5), must clear tens LED (P3.4) when done
            tensON         = 0;
            countTens      = 0;
            blinkNowToggle = 0;
            conversionFinished = 1;
        }
    }
}

void main(void) {
    clock_init();
    timer0_init();

    // Disable watchdog — CH554 datasheet section 4.3
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    GLOBAL_CFG &= ~bWDOG_EN;
    SAFE_MOD = 0x00;

    // P3.0 push-pull output (toggle LED, button-controlled)
    P3_MOD_OC &= ~(1 << 0);
    P3_DIR_PU  |=  (1 << 0);

    // P3.4 conflicts with T0 (Timer0 ext clock) and UART1 alt pin
    // Ensure Timer0 uses internal clock not P3.4 — CH554 datasheet TMOD register
    TMOD &= ~bT0_CT;                               // bT0_CT=0: timer, not counter on P3.4

    // Also clear UART1 alternate pin remap off P3.4 — ch554.h line 267
    PIN_FUNC &= ~bUART1_PIN_X;

    // P3.4, P3.5 push-pull output (unit/tens blink LEDs)
    P3_MOD_OC &= ~((1 << 4) | (1 << 5));
    P3_DIR_PU  |=  (1 << 4) | (1 << 5);
    P3         &= ~((1 << 4) | (1 << 5));

    // P1.4 input with pull-up (button)
    // MOD_OC=1 + DIR_PU=1 = quasi-bidirectional with pullup — CH554 datasheet section 3
    P1_MOD_OC |=  (1 << 4);
    P1_DIR_PU  |=  (1 << 4);

    // ADC on AIN2 (P1.5) — slow clock, polling mode
    // ch554.h line 438: ADC channel 2 = AIN2 = P1.5
    ADCInit(0);
    ADC_ChannelSelect(2);

    while (1) {
        uint8_t buttonNow = !(P1 & (1 << 4));

        // edge detection: toggle ledBlinkEnabled on each press
        if (buttonNow && !buttonPrev) {
            ledBlinkEnabled = !ledBlinkEnabled;
            if (!ledBlinkEnabled) P3 &= ~(1 << 0);  // turn off immediately
        }
        buttonPrev = buttonNow;

        if (ledBlinkEnabled) {
            blink_led();
        }

        // read ADC only when no blink sequence is running
        if (conversionFinished && !blinkNowToggle) {
            mVanalog = rawToMillivolts(analogReading());
            val = mVanalog / 50;
            if (val > 99){
                val = 99;
            }/*else if(val < 0){
                val = 0;
            }*/
            
            blinkTwoLEDs(val);
            conversionFinished = 0;
        }

        blinkNow();
    }
}