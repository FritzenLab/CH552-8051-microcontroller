#include "inc\ch554.h"
//#include <stdint.h>

volatile unsigned int tick_100us = 0;
unsigned char led_state = 0;
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

void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
    TF0 = 0;  // clear overflow flag (important for robustness)
    /*// This are the TH0 and TL0 values to 10ms interrupts, based on a 24Mhz clock
    TH0 = 0xB1;
    TL0 = 0xE0;*/

    // 100us @ 24MHz: tick = 24M/12 = 2MHz = 0.5us
    // 100us / 0.5us = 200 ticks; 65536-200 = 65336 = 0xFF38
    TH0 = 0xFF;
    TL0 = 0x38;
    
    if(tick_100us >= 5000) {
        tick_100us = 0;
    } else{
        tick_100us++;
    }
    
}

void timer0_init(void) {
    TMOD &= ~0x03;  // clear Timer0 mode bits
    TMOD |=  0x01;  // Timer0 mode 1: 16-bit

    /* // 10ms @ 24MHz: tick = 24M/12 = 2MHz = 0.5us
    // 10ms / 0.5us = 20000 ticks; 65536-20000 = 45536 = 0xB1E0
    TH0 = 0xB1;
    TL0 = 0xE0;*/

    // 100us @ 24MHz: tick = 24M/12 = 2MHz = 0.5us
    // 100us / 0.5us = 200 ticks; 65536-200 = 65336 = 0xFF38
    TH0 = 0xFF;
    TL0 = 0x38;

    ET0 = 1;   // enable Timer0 interrupt
    TR0 = 1;   // start Timer0
    EA = 1;
}

void blink_led(void) {
    if(tick_100us % 5000 < 2500){
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

    while (1) {
        blink_led();        
    }
}
