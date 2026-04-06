#ifndef SERIAL_H
#define SERIAL_H

#include <stdint.h>

// Initialize UART1 at a given baud rate (only 9600 supported for now)
void Serial_begin(void);

// Basic output
void Serial_write(char c);
void Serial_print(const char *s);

// Print unsigned integer
void Serial_print_uint(unsigned int v);

// Print string + newline
void Serial_println(const char *s);

// Print integer + newline
void Serial_println_uint(unsigned int v);

#endif
