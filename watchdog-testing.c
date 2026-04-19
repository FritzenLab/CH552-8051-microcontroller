#include "inc\ch554.h"
#include <stdint.h>


volatile unsigned int tick_10ms = 0;
volatile unsigned int debounceTimer = 0;
volatile unsigned int wdtCounter = 1;
volatile __bit button_irq = 0;
volatile __bit debounce = 0;
volatile __bit ledON = 0;
unsigned int serialTime= 0;
unsigned int counter= 0;
unsigned int t;
static __bit wdt_started = 0;
static unsigned int blink_base = 0;

void timer0_ISR(void) __interrupt(1);
void INT1_ISR(void) __interrupt (INT_NO_INT1);
void blink_led(unsigned int t);
void clock_init(void);

void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    CLOCK_CFG |= bOSC_EN_INT; 
    // Set Fsys = 24 MHz (Fpll/4, bits[2:0] = 110 = 0x06)
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
    
    SAFE_MOD = 0x00;
}
void INT1_ISR(void) __interrupt (INT_NO_INT1)// You can do __interrupt (2) if you prefer 
{
    if (!(P3 & (1 << 3))) {   // only accept if pin is LOW. This prevents
        if (!debounce) {        // only register if not already debouncing
            button_irq = 1;
            debounce = 1;       // arm immediately, atomically
        }
    }
}
void timer0_ISR(void) __interrupt(1) __using(1){ 
    
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
/*void timer0_ISR(void) __interrupt(1) {
    P3 ^= (1 << 0);
}*/
void timer0_init(void) {
    // Force Timer0 to use Fsys/12
    T2MOD &= ~bTMR_CLK;   // disable fast clock mode
    T2MOD &= ~bT0_CLK;    // Timer0 = Fsys/12
    TMOD &= ~0x03;  // clear Timer0 mode bits
    TMOD |=  0x01;  // Timer0 mode 1: 16-bit
    // 10ms @ 24MHz: tick = 24M/12 = 2MHz = 0.5us
    // 10ms / 0.5us = 20000 ticks; 65536-20000 = 45536 = 0xB1E0
    TH0 = 0xB1;
    TL0 = 0xE0;

    TF0 = 0;

    ET0 = 1;   // enable Timer0 interrupt
    TR0 = 1;   // start Timer0
    EA = 1;
}
void extint1_init(void) {
    IT1 = 1;   // falling edge
    EX1 = 1;   // enable INT1
}
void blink_led(unsigned int t) {
    unsigned int phase = t - blink_base;

    if (phase < 30) {
        P3 |= (1 << 0);
    } else if (phase < 60) {
        P3 &= ~(1 << 0);
    } else {
        blink_base = t;
        wdtCounter++; 
    }
}

void main(void) {
    clock_init();
    extint1_init();
    timer0_init();  
     
    // Configure P3.0 (LED) as push-pull output
    // P3.0 bit = 0x01
    P3_MOD_OC &= ~(1 << 0);   // push-pull
    P3_DIR_PU |=  (1 << 0);   // enable strong output drive
    
    // Configure P3.3 as input pull-up for interrupt
    P3_MOD_OC &= ~(1 << 3);   // normal input
    P3_DIR_PU |=  (1 << 3);   // enable pull-up
    P3 |= (1 << 3);           // pull-up
    
    P3 &= ~(1 << 0);  // Make LED pin P3.0 "start" as OFF
    
    while (1) {
        
        if (!wdt_started && tick_10ms > 50) {  // wait ~500ms
            SAFE_MOD = 0x55;
            SAFE_MOD = 0xAA;
            GLOBAL_CFG |= bWDOG_EN;
            SAFE_MOD = 0x00;
            
            wdt_started = 1;
        }
        // Feed watchdog every iteration unless we want a reset
        if (wdtCounter < 5) {
            WDOG_COUNT = 0x01;   // feed normally
        }
        EA = 0;
        t = tick_10ms;
        EA = 1;
        
        if (button_irq && debounce) {
            button_irq = 0;
            //debounce= 1;
            if (ledON == 0) {
                ledON = 1;
                wdtCounter = 0;
            } else {
                ledON = 0;
            }
        }
        
        if (ledON) {
            blink_led(t);            
        }

        // Intentional watchdog trigger — stop feeding and hang
        if (wdtCounter >= 5) {
            SAFE_MOD = 0x55;
            SAFE_MOD = 0xAA;
            USB_CTRL = 0x00;
            SAFE_MOD = 0x00;
            EA = 0;
            while (1) { __asm nop __endasm; }
        }
    }
}