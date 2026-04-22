#include "inc\ch554.h"
#include <stdint.h>
#include "serial_print\serial.h" // Serial printing
#include "spi\spi.h"
#include "mpu9250\mpu9250.h"
#include <stdio.h>

char buf[64];
volatile unsigned int tick_10ms = 0;
unsigned int button;
unsigned char led_state = 0;
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
    // If tick_10ms reaches 60 (600ms), reset it to 0
    if (tick_10ms >= 60) {
        tick_10ms = 0;
    }

    if(tick_10ms % 60 < 30){
        P3 |= (1 << 0);  // LED ON
    } else{
        P3 &= ~(1 << 0); // LED OFF
    }
}

void main(void) {
    int16_t ax, ay, az, gx, gy, gz;

    clock_init();
    for (volatile uint16_t i = 0; i < 50000; i++);

    // Disable watchdog
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    GLOBAL_CFG &= ~bWDOG_EN;
    SAFE_MOD = 0x00;

    // LED pin
    P3_MOD_OC &= ~0x01;
    P3_DIR_PU |= 0x01;

    // CS pin
    P1_DIR_PU |= (1 << 4);
    P1_MOD_OC &= ~(1 << 4);
    SPIMasterDeassertCS();   // idle high

    timer0_init();

    Serial_begin();
    Serial_println("BOOT");

    // SPI mode 3
    SPIMasterModeSet(0);

    // Init MPU
    MPU9250_init();

    Serial_print("WHOAMI = ");
    Serial_println_uint(MPU9250_whoami());

    while (1) {
        blink_led();

        if(serialTime >= 50){
            serialTime= 0;
            if(MPU9250_readAccelGyro(&ax,&ay,&az,&gx,&gy,&gz)) {
                sprintf(buf, "AX=%d AY=%d AZ=%d GX=%d GY=%d GZ=%d\r\n",
                        ax, ay, az, gx, gy, gz);
                Serial_print(buf);
            }
        }
    }
}

