#include "serial.h"
#include "inc/ch554.h"

// UART1 init (9600 baud @ 24 MHz)
void Serial_begin(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    PIN_FUNC |= bUART1_PIN_X;   // UART1 on P3.2/P3.4
    SAFE_MOD = 0x00;

    // Disable Timer2 so UART1 uses SBAUD1
    T2MOD = 0;
    T2CON = 0;

    // P3.2 = TX (push-pull)
    P3_MOD_OC &= ~(1 << 2);
    P3_DIR_PU  |=  (1 << 2);

    // P3.4 = RX (input)
    P3_MOD_OC &= ~(1 << 4);
    P3_DIR_PU  &= ~(1 << 4);

    // UART1 config
    U1SM0  = 0;      // 8-bit
    U1SMOD = 1;      // baud x2
    SBAUD1 = 0x64;   // 9600 baud @ 24 MHz

    U1REN  = 1;      // enable RX
    U1TI   = 1;      // mark TX ready
}

// Send one character
void Serial_write(char c) {
    while (!U1TI);   // wait for TX ready
    U1TI = 0;        // clear flag
    SBUF1 = c;       // send
}

// Send a string
void Serial_print(const char *s) {
    while (*s) Serial_write(*s++);
}

// Send unsigned integer
void Serial_print_uint(unsigned int v) {
    if (v >= 10000) Serial_write('0' + (v / 10000) % 10);
    if (v >= 1000)  Serial_write('0' + (v / 1000)  % 10);
    if (v >= 100)   Serial_write('0' + (v / 100)   % 10);
    if (v >= 10)    Serial_write('0' + (v / 10)    % 10);
    Serial_write('0' + (v % 10));
}

// Print string + newline
void Serial_println(const char *s) {
    Serial_print(s);
    Serial_write('\r');
    Serial_write('\n');
}

// Print integer + newline
void Serial_println_uint(unsigned int v) {
    Serial_print_uint(v);
    Serial_write('\r');
    Serial_write('\n');
}
