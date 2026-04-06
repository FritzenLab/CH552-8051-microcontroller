/* ch552.h - minimal but solid SDCC-compatible header for CH552
 *
 * Covers:
 *  - Core SFRs
 *  - Clock config
 *  - Timer0
 *  - Ports P1, P3 (incl. mode regs)
 *  - AUXR and timer clock selection
 *  - Watchdog / SAFE_MOD / GLOBAL_CFG
 *
 * Tested style for SDCC (mcs51).
 */

#ifndef __CH552_H__
#define __CH552_H__

/* SDCC needs this for sfr / sbit */
//#include <compiler.h>
#include <8051.h>
/* ---------------- Core SFRs ---------------- */

sfr P0      = 0x80;
sfr SP      = 0x81;
sfr DPL     = 0x82;
sfr DPH     = 0x83;
sfr PCON    = 0x87;
sfr TCON    = 0x88;
sfr TMOD    = 0x89;
sfr TL0     = 0x8A;
sfr TL1     = 0x8B;
sfr TH0     = 0x8C;
sfr TH1     = 0x8D;
sfr AUXR    = 0x8E;   /* extended control (timer clock, etc.) */
sfr WAKE_CTRL = 0x8F;

sfr P1      = 0x90;
sfr SCON    = 0x98;
sfr SBUF    = 0x99;

sfr P2      = 0xA0;
sfr IE      = 0xA8;

sfr P3      = 0xB0;
sfr IP      = 0xB8;

sfr P4      = 0xC0;
sfr P5      = 0xC8;

sfr PSW     = 0xD0;
sfr ACC     = 0xE0;
sfr B       = 0xF0;

/* ---------------- Interrupt bits ---------------- */

sbit EA     = IE ^ 7;
sbit ET0    = IE ^ 1;
sbit ET1    = IE ^ 3;
sbit EX0    = IE ^ 0;
sbit EX1    = IE ^ 2;
sbit ES     = IE ^ 4;

/* ---------------- TCON bits ---------------- */

sbit TF1    = TCON ^ 7;
sbit TR1    = TCON ^ 6;
sbit TF0    = TCON ^ 5;
sbit TR0    = TCON ^ 4;
sbit IE1    = TCON ^ 3;
sbit IT1    = TCON ^ 2;
sbit IE0    = TCON ^ 1;
sbit IT0    = TCON ^ 0;

/* ---------------- Port bits ---------------- */

/* P1 */
sbit P1_0   = P1 ^ 0;
sbit P1_1   = P1 ^ 1;
sbit P1_2   = P1 ^ 2;
sbit P1_3   = P1 ^ 3;
sbit P1_4   = P1 ^ 4;
sbit P1_5   = P1 ^ 5;
sbit P1_6   = P1 ^ 6;
sbit P1_7   = P1 ^ 7;

/* P3 */
sbit P3_0   = P3 ^ 0;
sbit P3_1   = P3 ^ 1;
sbit P3_2   = P3 ^ 2;
sbit P3_3   = P3 ^ 3;
sbit P3_4   = P3 ^ 4;
sbit P3_5   = P3 ^ 5;
sbit P3_6   = P3 ^ 6;
sbit P3_7   = P3 ^ 7;

/* ---------------- CH552-specific SFRs ---------------- */

/* Clock / power / global config */
sfr CLOCK_CFG   = 0xB9;   /* system clock config */
sfr GLOBAL_CFG  = 0xB1;   /* global config (incl. watchdog) */
sfr SAFE_MOD    = 0xA1;   /* safety unlock register */

/* Port mode registers (push-pull / open-drain, dir/pull-up) */
sfr P1_MOD_OC   = 0x92;
sfr P1_DIR_PU   = 0x93;

sfr P3_MOD_OC   = 0x96;
sfr P3_DIR_PU   = 0x97;

/* Timer2 / misc (not fully used here, but reserved) */
sfr T2MOD       = 0xC9;

/* ---------------- Bit masks & constants ---------------- */

/* CLOCK_CFG bits */
#define bOSC_EN_XT      0x80    /* enable external crystal */
#define MASK_SYS_CK_SEL 0x07    /* system clock source select mask */

/* GLOBAL_CFG bits */
#define bWDOG_EN        0x01    /* watchdog enable */

/* AUXR bits (timer clock selection etc.) */
#define bT0_CLK         0x01    /* 0: Fsys/12, 1: Fsys/4 for Timer0 */
#define bT1_CLK         0x02    /* 0: Fsys/12, 1: Fsys/4 for Timer1 */

/* ---------------- Convenience macros ---------------- */

#endif /* __CH552_H__ */
