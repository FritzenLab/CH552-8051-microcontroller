#include "inc\ch554.h"
#include <stdint.h>
#include "serial_print\serial.h" // Serial printing

volatile unsigned int tick_10ms = 0;
volatile unsigned int debounceTimer = 0;
volatile __bit button_irq = 0;
volatile __bit debounce = 0;
volatile __bit ledON = 0;
unsigned int serialTime= 0;
unsigned int counter= 0;

void timer0_ISR(void) __interrupt(1) __using(1);
void blink_led(void);
void clock_init(void);

void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    // Set Fsys = 24 MHz (Fpll/4, bits[2:0] = 110 = 0x06)
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
    
    SAFE_MOD = 0x00;
}
void INT1_ISR(void) __interrupt (INT_NO_INT1) // You can do __interrupt (2) if you prefer 
{
    if (!(P3 & (1 << 3))) {   // only accept if pin is LOW. This prevents
        button_irq = 1;       // the bouncing that can happen on the rising edge
        debounce= 1; // enter debounce time (300ms)
    }
}
void timer0_ISR(void) __interrupt(INT_NO_TMR0) { // You can do __interrupt (1) if you prefer
    TF0 = 0;  // clear overflow flag (important for robustness)
    TH0 = 0xB1;
    TL0 = 0xE0;
    tick_10ms++; // this is the 10ms tick for LED blinking
    serialTime++; // this is the timer for Serial_println transmissions
    if(debounce){ // if external interrupt happened, activate debounce timer
        debounceTimer++;
        if(debounceTimer >= 60){ // after 600ms of not detecting the push-button
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
    EX1 = 1; // enable external interrupt 1. This does not need to be here
             // it just needs to be put before EA= 1;
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

    // Configure P3.0 (LED) as push-pull output
    // P3.0 bit = 0x01
    P3_MOD_OC &= ~0x01;   // not open-drain
    P3_DIR_PU |= 0x01;    // output, with pull-up

    // Configure P3.3 as input pull-up for interrupt
    P3_MOD_OC |=  (1 << 3);   // open-drain
    P3_DIR_PU |=  (1 << 3);   // enable pull-up (yes, |=, not &=)
    P3 |= (1 << 3);           // pull-up

    Serial_begin();

    while (1) {
        
        if(button_irq && !debounce) { // if push button was pressed and debounce has finished
            button_irq = 0; // clear the external interrupt 1 bit            
            if(ledON == 0){ // every time we enter here the LED status changes
                ledON= 1;   // from "blinking" to "not blinking" and vice versa
            }else{
                ledON= 0;
            }            
            Serial_println("INT1 detected!");
        }
        if(ledON){
            blink_led();
        }else {
            P3 &= ~0x01;   // LED OFF            
        }
        if(serialTime > 100){ // 100 x 10ms= 1 second
            serialTime= 0;
            counter++;
            //Serial_print("Counter = ");
            Serial_println_uint(counter);
        }
        
    }
}
