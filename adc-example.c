#include "inc\ch554.h"
#include "adc\adc.h"
#include <stdint.h>
#include "serial_print\serial.h" // Serial printing
 

volatile unsigned int tick_10ms = 0;
unsigned int button;
unsigned char led_state = 0;
unsigned int serialTime= 0;
unsigned int counter= 0;
uint8_t rawAnalog = 0;  

void timer0_ISR(void) __interrupt(1) __using(1);
void blink_led(void);
void clock_init(void);

// --- ADC helper ---
uint8_t analogReading(void) {
    ADC_START = 1;          // start conversion, hardware clears it when done
    while (ADC_START);      // wait until auto-cleared
    ADC_IF = 0;             // clear interrupt flag
    return ADC_DATA;        // return 8-bit result
}

void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    // Set Fsys = 24 MHz (Fpll/4, bits[2:0] = 110 = 0x06)
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
    
    SAFE_MOD = 0x00;
}

void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
    TF0 = 0;  // clear overflow flag (important for robustness)
    TH0 = 0xB1;
    TL0 = 0xE0;
    tick_10ms++;
    serialTime++;
}

void timer0_init(void) {
    TMOD &= ~0x03;  // clear Timer0 mode bits
    TMOD |=  0x01;  // Timer0 mode 1: 16-bit

    // 10ms @ 24MHz: tick = 24M/12 = 2MHz = 0.5us
    // 10ms / 0.5us = 20000 ticks; 65536-20000 = 45536 = 0xB1E0
    TH0 = 0xB1;
    TL0 = 0xE0;

    ET0 = 1;   // enable Timer0 interrupt
    TR0 = 1;   // start Timer0
    EA = 1;
}

void blink_led(void) {
    if(tick_10ms % 60 < 30){
        P3 |= (1 << 0);  // LED ON
    } else {
        P3 &= ~(1 << 0); // LED OFF
    }
}

void main(void) {
    clock_init();
    timer0_init();

    // Disable watchdog (important on CH55x)
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    GLOBAL_CFG &= ~bWDOG_EN;   // turn off watchdog
    SAFE_MOD = 0x00;

    // Configure P3.0 as push-pull output
    // P3.0 bit = 0x01
    P3_MOD_OC &= ~0x01;   // not open-drain
    P3_DIR_PU |= 0x01;    // output, with pull-up

    // Configure P1.4 as input WITH internal pull-up (CH554 requires BOTH bits = 1)
    P1_MOD_OC |=  (1 << 4);   // open-drain mode → required for pull-up
    P1_DIR_PU  |=  (1 << 4);  // pull-up enabled
    //P1 |= (1 << 4);           // write 1 → enables internal pull-up

    // ADC on AIN2 (P1.5) — slow clock, polling mode
    ADCInit(0);                    // 0 = slow (384 Fosc), no interrupt
    ADC_ChannelSelect(2);          // AIN0 = P1.1
    
    Serial_begin();

    while (1) {
        button = !(P1 & (1 << 4)); // pressed = 1

        if(button){
            blink_led();
        } 
        else {
            P3 &= ~0x01;   // LED OFF            
        }
        if(serialTime > 100){
            rawAnalog= analogReading();
            serialTime= 0;
            counter++;
            
            Serial_println_uint(rawAnalog);
        }
        
    }
}
