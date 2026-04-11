;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module external_interrupt_led
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _timer0_init
	.globl _INT1_ISR
	.globl _Serial_println_uint
	.globl _Serial_println
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
	.globl _ledON
	.globl _debounce
	.globl _button_irq
	.globl _counter
	.globl _serialTime
	.globl _debounceTimer
	.globl _tick_10ms
	.globl _clock_init
	.globl _timer0_ISR
	.globl _blink_led
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_tick_10ms::
	.ds 2
_debounceTimer::
	.ds 2
_serialTime::
	.ds 2
_counter::
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
_button_irq::
	.ds 1
_debounce::
	.ds 1
_ledON::
	.ds 1
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
	.ds	5
	ljmp	_INT1_ISR
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
;	external-interrupt-led.c:5: volatile unsigned int tick_10ms = 0;
	clr	a
	mov	_tick_10ms,a
	mov	(_tick_10ms + 1),a
;	external-interrupt-led.c:6: volatile unsigned int debounceTimer = 0;
	mov	_debounceTimer,a
	mov	(_debounceTimer + 1),a
;	external-interrupt-led.c:10: unsigned int serialTime= 0;
	mov	_serialTime,a
	mov	(_serialTime + 1),a
;	external-interrupt-led.c:11: unsigned int counter= 0;
	mov	_counter,a
	mov	(_counter + 1),a
;	external-interrupt-led.c:7: volatile __bit button_irq = 0;
;	assignBit
	clr	_button_irq
;	external-interrupt-led.c:8: volatile __bit debounce = 0;
;	assignBit
	clr	_debounce
;	external-interrupt-led.c:9: volatile __bit ledON = 0;
;	assignBit
	clr	_ledON
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
;Allocation info for local variables in function 'clock_init'
;------------------------------------------------------------
;	external-interrupt-led.c:17: void clock_init(void) {
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
;	external-interrupt-led.c:18: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	external-interrupt-led.c:19: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	external-interrupt-led.c:21: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
	mov	a,#0xf8
	anl	a,_CLOCK_CFG
	orl	a,#0x06
	mov	_CLOCK_CFG,a
;	external-interrupt-led.c:23: SAFE_MOD = 0x00;
	mov	_SAFE_MOD,#0x00
;	external-interrupt-led.c:24: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'INT1_ISR'
;------------------------------------------------------------
;	external-interrupt-led.c:25: void INT1_ISR(void) __interrupt (INT_NO_INT1) // interrupt number 2 
;	-----------------------------------------
;	 function INT1_ISR
;	-----------------------------------------
_INT1_ISR:
	push	acc
;	external-interrupt-led.c:27: if (!(P3 & (1 << 3))) {   // only accept if pin is LOW
	mov	a,_P3
	jb	acc.3,00103$
;	external-interrupt-led.c:28: button_irq = 1;
;	assignBit
	setb	_button_irq
;	external-interrupt-led.c:29: debounce= 1; // enter debounce time (300ms)
;	assignBit
	setb	_debounce
00103$:
;	external-interrupt-led.c:31: }
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	external-interrupt-led.c:32: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	external-interrupt-led.c:33: TF0 = 0;  // clear overflow flag (important for robustness)
;	assignBit
	clr	_TF0
;	external-interrupt-led.c:34: TH0 = 0xB1;
	mov	_TH0,#0xb1
;	external-interrupt-led.c:35: TL0 = 0xE0;
	mov	_TL0,#0xe0
;	external-interrupt-led.c:36: tick_10ms++; // this is the 10ms tick for LED blinking
	mov	r6,_tick_10ms
	mov	r7,(_tick_10ms + 1)
	mov	a,#0x01
	add	a, r6
	mov	_tick_10ms,a
	clr	a
	addc	a, r7
	mov	(_tick_10ms + 1),a
;	external-interrupt-led.c:37: serialTime++; // this is the timer for Serial_println transmissions
	inc	_serialTime
	clr	a
	cjne	a,_serialTime,00119$
	inc	(_serialTime + 1)
00119$:
;	external-interrupt-led.c:38: if(debounce){ // if external interrupt happened, activate debounce timer
	jnb	_debounce,00105$
;	external-interrupt-led.c:39: debounceTimer++;
	mov	r6,_debounceTimer
	mov	r7,(_debounceTimer + 1)
	mov	a,#0x01
	add	a, r6
	mov	_debounceTimer,a
	clr	a
	addc	a, r7
	mov	(_debounceTimer + 1),a
;	external-interrupt-led.c:40: if(debounceTimer >= 60){ // after 600ms of not detecting the push-button
	clr	c
	mov	a,_debounceTimer
	subb	a,#0x3c
	mov	a,(_debounceTimer + 1)
	subb	a,#0x00
	jc	00105$
;	external-interrupt-led.c:41: debounce= 0; // turn debounce delay OFF
;	assignBit
	clr	_debounce
;	external-interrupt-led.c:42: debounceTimer= 0; // and clear timer/counter for next time
	clr	a
	mov	_debounceTimer,a
	mov	(_debounceTimer + 1),a
00105$:
;	external-interrupt-led.c:45: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_init'
;------------------------------------------------------------
;	external-interrupt-led.c:47: void timer0_init(void) {
;	-----------------------------------------
;	 function timer0_init
;	-----------------------------------------
_timer0_init:
;	external-interrupt-led.c:48: TMOD &= ~0x03;  // clear Timer0 mode bits
	anl	_TMOD,#0xfc
;	external-interrupt-led.c:49: TMOD |=  0x01;  // Timer0 mode 1: 16-bit
	orl	_TMOD,#0x01
;	external-interrupt-led.c:53: TH0 = 0xB1;
	mov	_TH0,#0xb1
;	external-interrupt-led.c:54: TL0 = 0xE0;
	mov	_TL0,#0xe0
;	external-interrupt-led.c:56: ET0 = 1;   // enable Timer0 interrupt
;	assignBit
	setb	_ET0
;	external-interrupt-led.c:57: TR0 = 1;   // start Timer0
;	assignBit
	setb	_TR0
;	external-interrupt-led.c:58: EX1 = 1; // enable external interrupt 1
;	assignBit
	setb	_EX1
;	external-interrupt-led.c:59: EA = 1;
;	assignBit
	setb	_EA
;	external-interrupt-led.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink_led'
;------------------------------------------------------------
;	external-interrupt-led.c:62: void blink_led(void) {
;	-----------------------------------------
;	 function blink_led
;	-----------------------------------------
_blink_led:
;	external-interrupt-led.c:63: if(tick_10ms % 60 < 30){
	mov	__moduint_PARM_2,#0x3c
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, _tick_10ms
	mov	dph, (_tick_10ms + 1)
	lcall	__moduint
	mov	r6, dpl
	mov	r7, dph
	clr	c
	mov	a,r6
	subb	a,#0x1e
	mov	a,r7
	subb	a,#0x00
	jnc	00102$
;	external-interrupt-led.c:64: P3 |= (1 << 0);  // LED ON
	orl	_P3,#0x01
	ret
00102$:
;	external-interrupt-led.c:66: P3 &= ~(1 << 0); // LED OFF
	anl	_P3,#0xfe
;	external-interrupt-led.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	external-interrupt-led.c:70: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	external-interrupt-led.c:71: clock_init();
	lcall	_clock_init
;	external-interrupt-led.c:72: timer0_init();
	lcall	_timer0_init
;	external-interrupt-led.c:75: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	external-interrupt-led.c:76: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	external-interrupt-led.c:77: GLOBAL_CFG &= ~bWDOG_EN;   // turn off watchdog
	anl	_GLOBAL_CFG,#0xfe
;	external-interrupt-led.c:78: SAFE_MOD = 0x00;
	mov	_SAFE_MOD,#0x00
;	external-interrupt-led.c:82: P3_MOD_OC &= ~0x01;   // not open-drain
	anl	_P3_MOD_OC,#0xfe
;	external-interrupt-led.c:83: P3_DIR_PU |= 0x01;    // output, with pull-up
	orl	_P3_DIR_PU,#0x01
;	external-interrupt-led.c:86: P3_MOD_OC |=  (1 << 3);   // open-drain
	orl	_P3_MOD_OC,#0x08
;	external-interrupt-led.c:87: P3_DIR_PU |=  (1 << 3);   // enable pull-up (yes, |=, not &=)
	orl	_P3_DIR_PU,#0x08
;	external-interrupt-led.c:88: P3 |= (1 << 3);           // pull-up
	orl	_P3,#0x08
;	external-interrupt-led.c:90: Serial_begin();
	lcall	_Serial_begin
;	external-interrupt-led.c:92: while (1) {
00113$:
;	external-interrupt-led.c:94: if(button_irq && !debounce) { // if push button was pressed and debounce has finished
	jnb	_button_irq,00105$
	jb	_debounce,00105$
;	external-interrupt-led.c:95: button_irq = 0; // clear the external interrupt 1 bit            
;	assignBit
	clr	_button_irq
;	external-interrupt-led.c:96: if(ledON == 0){ // every time we enter here the LED status changes
	jb	_ledON,00102$
;	external-interrupt-led.c:97: ledON= 1;
;	assignBit
	setb	_ledON
	sjmp	00103$
00102$:
;	external-interrupt-led.c:99: ledON= 0;
;	assignBit
	clr	_ledON
00103$:
;	external-interrupt-led.c:101: Serial_println("INT1 detected!");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_Serial_println
00105$:
;	external-interrupt-led.c:103: if(ledON){
	jnb	_ledON,00108$
;	external-interrupt-led.c:104: blink_led();
	lcall	_blink_led
	sjmp	00109$
00108$:
;	external-interrupt-led.c:106: P3 &= ~0x01;   // LED OFF            
	anl	_P3,#0xfe
00109$:
;	external-interrupt-led.c:108: if(serialTime > 100){
	clr	c
	mov	a,#0x64
	subb	a,_serialTime
	clr	a
	subb	a,(_serialTime + 1)
	jnc	00113$
;	external-interrupt-led.c:109: serialTime= 0;
	clr	a
	mov	_serialTime,a
	mov	(_serialTime + 1),a
;	external-interrupt-led.c:110: counter++;
	inc	_counter
	cjne	a,_counter,00158$
	inc	(_counter + 1)
00158$:
;	external-interrupt-led.c:112: Serial_println_uint(counter);
	mov	dpl, _counter
	mov	dph, (_counter + 1)
	lcall	_Serial_println_uint
;	external-interrupt-led.c:116: }
	sjmp	00113$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "INT1 detected!"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
