;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module BME680_sensor
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _timer0_init
	.globl _clock_init
	.globl _timer0_ISR
	.globl _BME680_update
	.globl _BME680_init
	.globl _Serial_println
	.globl _Serial_print_uint
	.globl _Serial_print
	.globl _Serial_begin
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _tick_10ms
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_tick_10ms::
	.ds 2
_serialTime:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
; restartable atomic support routines
	.ds	2
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	BME680-sensor.c:7: volatile unsigned int tick_10ms = 0;
	clr	a
	mov	_tick_10ms,a
	mov	(_tick_10ms + 1),a
;	BME680-sensor.c:8: static unsigned int   serialTime = 0;
	mov	_serialTime,a
	mov	(_serialTime + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	BME680-sensor.c:11: void timer0_ISR(void) __interrupt(INT_NO_TMR0) __using(1) {
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	psw
	mov	psw,#0x08
;	BME680-sensor.c:12: TF0 = 0;
;	assignBit
	clr	_TF0
;	BME680-sensor.c:13: TH0 = 0xB1;
	mov	_TH0,#0xb1
;	BME680-sensor.c:14: TL0 = 0xE0;
	mov	_TL0,#0xe0
;	BME680-sensor.c:15: tick_10ms++;
	mov	r6,_tick_10ms
	mov	r7,(_tick_10ms + 1)
	mov	a,#0x01
	add	a, r6
	mov	_tick_10ms,a
	clr	a
	addc	a, r7
	mov	(_tick_10ms + 1),a
;	BME680-sensor.c:16: serialTime++;
	inc	_serialTime
	clr	a
	cjne	a,_serialTime,00103$
	inc	(_serialTime + 1)
00103$:
;	BME680-sensor.c:17: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'clock_init'
;------------------------------------------------------------
;	BME680-sensor.c:20: void clock_init(void) {
;	-----------------------------------------
;	 function clock_init
;	-----------------------------------------
_clock_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	BME680-sensor.c:21: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	BME680-sensor.c:22: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	BME680-sensor.c:23: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;   // Fsys = 24MHz
	mov	a,#0xf8
	anl	a,_CLOCK_CFG
	orl	a,#0x06
	mov	_CLOCK_CFG,a
;	BME680-sensor.c:24: SAFE_MOD = 0x00;
	mov	_SAFE_MOD,#0x00
;	BME680-sensor.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_init'
;------------------------------------------------------------
;	BME680-sensor.c:28: void timer0_init(void) {
;	-----------------------------------------
;	 function timer0_init
;	-----------------------------------------
_timer0_init:
;	BME680-sensor.c:29: TMOD &= ~0x03;
	anl	_TMOD,#0xfc
;	BME680-sensor.c:30: TMOD |=  0x01;   // mode 1, 16-bit
	orl	_TMOD,#0x01
;	BME680-sensor.c:31: TH0 = 0xB1;
	mov	_TH0,#0xb1
;	BME680-sensor.c:32: TL0 = 0xE0;      // 10ms @ 24MHz / 12
	mov	_TL0,#0xe0
;	BME680-sensor.c:33: TF0 = 0;
;	assignBit
	clr	_TF0
;	BME680-sensor.c:34: ET0 = 1;
;	assignBit
	setb	_ET0
;	BME680-sensor.c:35: TR0 = 1;
;	assignBit
	setb	_TR0
;	BME680-sensor.c:36: EA  = 1;
;	assignBit
	setb	_EA
;	BME680-sensor.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_fixed2'
;------------------------------------------------------------
;val           Allocated to stack - _bp +1 +4 
;frac          Allocated to registers r4 
;------------------------------------------------------------
;	BME680-sensor.c:41: static void print_fixed2(int32_t val) {
;	-----------------------------------------
;	 function print_fixed2
;	-----------------------------------------
_print_fixed2:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
;	BME680-sensor.c:42: if (val < 0) {
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	jnb	acc.7,00102$
;	BME680-sensor.c:43: Serial_print("-");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_Serial_print
;	BME680-sensor.c:44: val = -val;
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
00102$:
;	BME680-sensor.c:46: Serial_print_uint((uint16_t)(val / 100));
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__divslong
	mov	r2, dpl
	mov	r3, dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_Serial_print_uint
;	BME680-sensor.c:47: Serial_print(".");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_Serial_print
;	BME680-sensor.c:48: uint8_t frac = (uint8_t)(val % 100);
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__modslong
	mov	r4, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	BME680-sensor.c:49: if (frac < 10) Serial_print("0");
	cjne	r4,#0x0a,00120$
00120$:
	jnc	00104$
	mov	dptr,#___str_2
	mov	b, #0x80
	push	ar4
	lcall	_Serial_print
	pop	ar4
00104$:
;	BME680-sensor.c:50: Serial_print_uint(frac);
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r7
	lcall	_Serial_print_uint
;	BME680-sensor.c:51: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_pa_hpa'
;------------------------------------------------------------
;pa            Allocated to registers r4 r5 r6 r7 
;hpa100        Allocated to stack - _bp +1 +4 
;------------------------------------------------------------
;	BME680-sensor.c:55: static void print_pa_hpa(uint32_t pa) {
;	-----------------------------------------
;	 function print_pa_hpa
;	-----------------------------------------
_print_pa_hpa:
	push	_bp
	mov	_bp,sp
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	BME680-sensor.c:57: uint32_t hpa100 = pa / 10;   // hPa * 10 (one decimal)
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
;	BME680-sensor.c:58: Serial_print_uint((uint16_t)(hpa100 / 10));
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divulong
	mov	r0,_bp
	inc	r0
	mov	@r0, dpl
	inc	r0
	mov	@r0, dph
	inc	r0
	mov	@r0, b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__divulong
	mov	r2, dpl
	mov	r3, dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_Serial_print_uint
;	BME680-sensor.c:59: Serial_print(".");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_Serial_print
;	BME680-sensor.c:60: Serial_print_uint((uint8_t)(hpa100 % 10));
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__modulong
	mov	r4, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r7
	lcall	_Serial_print_uint
;	BME680-sensor.c:61: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_humidity'
;------------------------------------------------------------
;val           Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	BME680-sensor.c:64: static void print_humidity(uint32_t val) {
;	-----------------------------------------
;	 function print_humidity
;	-----------------------------------------
_print_humidity:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	BME680-sensor.c:65: Serial_print_uint((uint16_t)(val / 1000));
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0xe8
	push	acc
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divulong
	mov	r0, dpl
	mov	r1, dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r0
	mov	dph,r1
	lcall	_Serial_print_uint
;	BME680-sensor.c:66: Serial_print(".");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_Serial_print
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	BME680-sensor.c:67: Serial_print_uint((uint8_t)((val % 1000) / 100));
	mov	a,#0xe8
	push	acc
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__modulong
	mov	r4, dpl
	mov	r5, dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	lcall	__divsint
	mov	r6, dpl
	dec	sp
	dec	sp
	mov	r7,#0x00
	mov	dpl, r6
	mov	dph, r7
;	BME680-sensor.c:68: }
	ljmp	_Serial_print_uint
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;data          Allocated to stack - _bp +1 +12 
;t             Allocated to registers r6 r7 
;bme_ok        Allocated to registers 
;i             Allocated to stack - _bp +13 +4 
;------------------------------------------------------------
;	BME680-sensor.c:71: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
;	BME680-sensor.c:74: P1_MOD_OC &= ~(1 << 6);   // not open-drain
	anl	_P1_MOD_OC,#0xbf
;	BME680-sensor.c:75: P1_DIR_PU  &= ~(1 << 6);  // input, no pull-up (float)
	anl	_P1_DIR_PU,#0xbf
;	BME680-sensor.c:79: P1_MOD_OC &= ~(1 << 4);   // push-pull output
	anl	_P1_MOD_OC,#0xef
;	BME680-sensor.c:80: P1_DIR_PU |=  (1 << 4);   // output enable
	orl	_P1_DIR_PU,#0x10
;	BME680-sensor.c:81: P1 &= ~(1 << 4);          // CS LOW — forces BME680 into SPI mode
	anl	_P1,#0xef
;	BME680-sensor.c:87: clock_init();
	lcall	_clock_init
;	BME680-sensor.c:88: timer0_init();
	lcall	_timer0_init
;	BME680-sensor.c:96: for (i = 0; i < 200000UL; i++) { __asm nop __endasm; }
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
00116$:
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x40
	inc	r0
	mov	a,@r0
	subb	a,#0x0d
	inc	r0
	mov	a,@r0
	subb	a,#0x03
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00101$
	nop	
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x01
	add	a, r4
	mov	@r0,a
	clr	a
	addc	a, r5
	inc	r0
	mov	@r0,a
	clr	a
	addc	a, r6
	inc	r0
	mov	@r0,a
	clr	a
	addc	a, r7
	inc	r0
	mov	@r0,a
	sjmp	00116$
00101$:
;	BME680-sensor.c:102: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	BME680-sensor.c:103: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	BME680-sensor.c:104: GLOBAL_CFG &= ~bWDOG_EN;
	anl	_GLOBAL_CFG,#0xfe
;	BME680-sensor.c:105: SAFE_MOD = 0x00;
	mov	_SAFE_MOD,#0x00
;	BME680-sensor.c:107: Serial_begin();
	lcall	_Serial_begin
;	BME680-sensor.c:109: Serial_println("BME680 + CH552 starting...");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_Serial_println
;	BME680-sensor.c:111: bme_ok = BME680_init();
	lcall	_BME680_init
	mov	a, dpl
;	BME680-sensor.c:113: if (!bme_ok) {
	jnz	00109$
;	BME680-sensor.c:114: Serial_println("BME680 init FAILED - check wiring!");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_Serial_println
;	BME680-sensor.c:116: P3_MOD_OC &= ~(1 << 0);
	anl	_P3_MOD_OC,#0xfe
;	BME680-sensor.c:117: P3_DIR_PU  |=  (1 << 0);
	orl	_P3_DIR_PU,#0x01
;	BME680-sensor.c:118: while (1) {
00106$:
;	BME680-sensor.c:119: EA = 0; t = tick_10ms; EA = 1;
;	assignBit
	clr	_EA
	mov	r6,_tick_10ms
	mov	r7,(_tick_10ms + 1)
;	assignBit
	setb	_EA
;	BME680-sensor.c:120: if (t % 10 < 5) P3 |=  (1 << 0);
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	dpl, r6
	mov	dph, r7
	lcall	__moduint
	mov	r6, dpl
	mov	r7, dph
	dec	sp
	dec	sp
	clr	c
	mov	a,r6
	subb	a,#0x05
	mov	a,r7
	subb	a,#0x00
	jnc	00103$
	orl	_P3,#0x01
	sjmp	00106$
00103$:
;	BME680-sensor.c:121: else             P3 &= ~(1 << 0);
	anl	_P3,#0xfe
	sjmp	00106$
00109$:
;	BME680-sensor.c:125: Serial_println("BME680 OK");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_Serial_println
;	BME680-sensor.c:126: Serial_println("----------------------------");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_Serial_println
;	BME680-sensor.c:128: while (1) {
00113$:
;	BME680-sensor.c:129: EA = 0; t = tick_10ms; EA = 1;
;	assignBit
	clr	_EA
	mov	r6,_tick_10ms
	mov	r7,(_tick_10ms + 1)
;	assignBit
	setb	_EA
;	BME680-sensor.c:132: if (BME680_update(t, &data)) {
	mov	r5,_bp
	inc	r5
	mov	ar2,r5
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	mov	dpl, r6
	mov	dph, r7
	lcall	_BME680_update
	mov	r7, dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	mov	a,r7
	jz	00113$
;	BME680-sensor.c:134: Serial_print("Temp: ");
	mov	dptr,#___str_7
	mov	b, #0x80
	push	ar5
	lcall	_Serial_print
	pop	ar5
;	BME680-sensor.c:135: print_fixed2(data.temperature);
	mov	ar1,r5
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	dpl, r3
	mov	dph, r4
	mov	b, r6
	mov	a, r7
	push	ar5
	lcall	_print_fixed2
;	BME680-sensor.c:136: Serial_print(" C  |  Pres: ");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_Serial_print
	pop	ar5
;	BME680-sensor.c:137: print_pa_hpa(data.pressure);
	mov	a,#0x04
	add	a, r5
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	dpl, r3
	mov	dph, r4
	mov	b, r6
	mov	a, r7
	push	ar5
	lcall	_print_pa_hpa
;	BME680-sensor.c:138: Serial_print(" hPa  |  Hum: ");
	mov	dptr,#___str_9
	mov	b, #0x80
	lcall	_Serial_print
	pop	ar5
;	BME680-sensor.c:139: print_humidity(data.humidity);
	mov	a,#0x08
	add	a, r5
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_print_humidity
;	BME680-sensor.c:140: Serial_println(" %");
	mov	dptr,#___str_10
	mov	b, #0x80
	lcall	_Serial_println
	ljmp	00113$
;	BME680-sensor.c:143: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "-"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "0"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "BME680 + CH552 starting..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "BME680 init FAILED - check wiring!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "BME680 OK"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "----------------------------"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Temp: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii " C  |  Pres: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii " hPa  |  Hum: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii " %"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
