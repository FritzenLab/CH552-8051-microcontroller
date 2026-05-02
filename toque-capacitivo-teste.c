#include "inc\ch554.h"
#include <stdint.h>
#include "serial_print\serial.h" // Serial printing

volatile unsigned int tick_10ms = 0;
volatile unsigned int debounceTimer = 0;
volatile __bit button_irq = 0;
volatile __bit debounce = 0;
volatile __bit ledON = 0;

void timer0_ISR(void) __interrupt(1) __using(1);
void blink_led(void);
void clock_init(void);

// Baseline capacitance value captured at startup
// https://www.wch-ic.com/downloads/CH554DS1_PDF.html - Section 8 (Touch Key)
volatile uint8_t touch_baseline = 0;

void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    // Set Fsys = 24 MHz (Fpll/4, bits[2:0] = 110 = 0x06)
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
    
    SAFE_MOD = 0x00;
}

void touchkey_init(void) {
    P1_MOD_OC &= ~(1 << 7); // set bit 7 to "0", disables open drain, enters push-pull mode
    P1_DIR_PU  &= ~(1 << 7); // sets bit 7 to "0", configure as input

    TKEY_CTRL = 0x06; // TIN5 (P1.7), value 0b00000110 of TKEY_CTRL

    // Wait for first conversion to complete: bTKC_IF goes HIGH when done
    // ch554.h: bTKC_IF = 0x80 in TKEY_CTRL
    // The while() and for() below will obtain 16 capacitive touch readings,
    // average it and call "baseline measurement", once every power up.
    while (!(TKEY_CTRL & bTKC_IF));
    uint16_t sum = 0;
    for (uint8_t i = 0; i < 16; i++) {
        while (!(TKEY_CTRL & bTKC_IF));
        sum += TKEY_DATL;
        TKEY_CTRL = 0x06;
    }
    touch_baseline = sum / 16;

    Serial_print("Baseline: ");
    Serial_println_uint(touch_baseline); // lets you see what value you're working with
}
void timer0_ISR(void) __interrupt(INT_NO_TMR0) { // You can do __interrupt (1) if you prefer
    TF0 = 0;  // clear overflow flag (important for robustness)
    TH0 = 0xB1;
    TL0 = 0xE0;
    if(tick_10ms < 50){
        tick_10ms++; // this is the 10ms tick for LED blinking
    }else{
        tick_10ms= 0;
    }  
    
    if(debounce){ // if external interrupt happened, activate debounce timer
        debounceTimer++;
        if(debounceTimer >= 60){ // after 400ms of not detecting the touch key
            debounce= 0; // turn debounce delay OFF
            debounceTimer= 0; // and clear timer/counter for next time
        }
    }
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

// Replace blink_led() entirely:
void blink_led(void) {
    
    if (tick_10ms <= 25) {
        P3 |= (1 << 5);
    } else {
        P3 &= ~(1 << 5);
    }
}

void main(void) {
    clock_init();
    Serial_begin();
    touchkey_init(); 
    timer0_init();

    // Disable watchdog (important on CH55x)
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    GLOBAL_CFG &= ~bWDOG_EN;   // turn off watchdog
    SAFE_MOD = 0x00;

    // Configure P3.5 (LED) as push-pull output
    P3_MOD_OC &= ~(1 << 5);   // not open-drain
    P3_DIR_PU |=  (1 << 5);   // output, with pull-up

      

    while (1) {
        
        // bTKC_IF set = conversion finished and data is ready
        // ch554.h: bTKC_IF = 0x80 in TKEY_CTRL
        if (TKEY_CTRL & bTKC_IF) { // this is a bitwise operation, verifying whether 
                                    // the first bit of TKEY_CTRL is true (which is bTKC_IF)
            uint8_t touchValue = TKEY_DATL; // reading the timing of the capacitive touch sensor

            // if the current touch sensor reading is 10 units bigger than the baseline, obtained
            // during power up, then a touch was detected
            if (!debounce && ((touchValue - touch_baseline) > 10)) { 
                debounce = 1;
                ledON = !ledON;
                Serial_print("Touch! touchValue=");
                Serial_println_uint(touchValue);
            }

            // ALWAYS restart conversion. This means 0b00000110, which maps to input TIN5 (P1.7)
            TKEY_CTRL = 0x06;
        }
        if(ledON){
            blink_led();
        }else {
            P3 &= ~(1 << 5);   // LED OFF           
        }
                
    }
}
