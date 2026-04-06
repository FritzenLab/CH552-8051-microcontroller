#ifndef _CH552_H_
#define _CH552_H_

#include <stdint.h>

/* ---- Basic types ---- */
typedef volatile unsigned char vuint8_t;
typedef volatile unsigned int  vuint16_t;

/* ---- Safe mode register (unlock special regs) ---- */
#define SAFE_MOD    (*((vuint8_t *)0xE600))

/* ---- Clock config ---- */
#define CLOCK_CFG   (*((vuint8_t *)0xE601))

/* ---- Global config ---- */
#define GLOBAL_CFG  (*((vuint8_t *)0xE603))
#define bWDOG_EN    0x10

/* ---- GPIO P3 ---- */
#define P3          (*((vuint8_t *)0xB0))
#define P3_MOD_OC   (*((vuint8_t *)0xB1))
#define P3_DIR_PU   (*((vuint8_t *)0xB2))

/* ---- UART1 ---- */
#define PIN_FUNC    (*((vuint8_t *)0xA3))
#define bUART1_PIN_X 0x04  // P3.2/3.4 as UART1

#define U1SM0       (*((vuint8_t *)0xC0))
#define U1SMOD      (*((vuint8_t *)0xC1))
#define U1REN       (*((vuint8_t *)0xC2))
#define U1TI        (*((vuint8_t *)0xC3))
#define U1RI        (*((vuint8_t *)0xC4))
#define SBUF1       (*((vuint8_t *)0xC5))

#define IE_UART1    (*((vuint8_t *)0xA8))  // UART1 interrupt enable

/* ---- Timer 2 (baud generator) ---- */
#define T2MOD       (*((vuint8_t *)0xC6))
#define RCAP2H      (*((vuint8_t *)0xC7))
#define RCAP2L      (*((vuint8_t *)0xC8))
#define TH2         (*((vuint8_t *)0xC9))
#define TL2         (*((vuint8_t *)0xCA))
#define TR2         (*((vuint8_t *)0xCB))

/* ---- Timer 0 ---- */
#define TMOD        (*((vuint8_t *)0x89))
#define TH0         (*((vuint8_t *)0x8C))
#define TL0         (*((vuint8_t *)0x8A))
#define TF0         (*((vuint8_t *)0x8E))
#define ET0         (*((vuint8_t *)0xA1))
#define TR0         (*((vuint8_t *)0x8F))

/* ---- Interrupts ---- */
#define EA          (*((vuint8_t *)0xAF))

#endif