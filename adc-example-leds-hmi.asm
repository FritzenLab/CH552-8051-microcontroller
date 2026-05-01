;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module adc_example_leds_hmi
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _blinkNow
	.globl _blinkTwoLEDs
	.globl _rawToMillivolts
	.globl _timer0_init
	.globl _analogReading
	.globl _ADC_ChannelSelect
	.globl _ADCInit
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
	.globl _ledBlinkEnabled
	.globl _buttonPrev
	.globl _tensON
	.globl _unitON
	.globl _blinkNowToggle
	.globl _conversionFinished
	.globl _val
	.globl _mVanalog
	.globl _rawAnalog
	.globl _countTens
	.globl _countUnits
	.globl _unit
	.globl _tens
	.globl _blinkCounter
	.globl _tick_100us
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_tick_100us::
	.ds 2
_blinkCounter::
	.ds 2
_tens::
	.ds 2
_unit::
	.ds 2
_countUnits::
	.ds 2
_countTens::
	.ds 2
_rawAnalog::
	.ds 1
_mVanalog::
	.ds 2
_val::
	.ds 1
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
_conversionFinished::
	.ds 1
_blinkNowToggle::
	.ds 1
_unitON::
	.ds 1
_tensON::
	.ds 1
_buttonPrev::
	.ds 1
_ledBlinkEnabled::
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
;	adc-example-leds-hmi.c:5: volatile unsigned int tick_100us = 0;
	clr	a
	mov	_tick_100us,a
	mov	(_tick_100us + 1),a
;	adc-example-leds-hmi.c:6: volatile unsigned int blinkCounter = 0;
	mov	_blinkCounter,a
	mov	(_blinkCounter + 1),a
;	adc-example-leds-hmi.c:7: volatile unsigned int tens = 0;
	mov	_tens,a
	mov	(_tens + 1),a
;	adc-example-leds-hmi.c:8: volatile unsigned int unit = 0;
	mov	_unit,a
	mov	(_unit + 1),a
;	adc-example-leds-hmi.c:9: unsigned int countUnits = 0;
	mov	_countUnits,a
	mov	(_countUnits + 1),a
;	adc-example-leds-hmi.c:10: unsigned int countTens = 0;
	mov	_countTens,a
	mov	(_countTens + 1),a
;	adc-example-leds-hmi.c:11: uint8_t rawAnalog = 0;
	mov	_rawAnalog,a
;	adc-example-leds-hmi.c:12: uint16_t mVanalog = 0;
	mov	_mVanalog,a
	mov	(_mVanalog + 1),a
;	adc-example-leds-hmi.c:13: uint8_t val = 0;
	mov	_val,a
;	adc-example-leds-hmi.c:14: __bit conversionFinished = 1;
;	assignBit
	setb	_conversionFinished
;	adc-example-leds-hmi.c:15: __bit blinkNowToggle = 0;
;	assignBit
	clr	_blinkNowToggle
;	adc-example-leds-hmi.c:16: __bit unitON = 0;
;	assignBit
	clr	_unitON
;	adc-example-leds-hmi.c:17: __bit tensON = 0;
;	assignBit
	clr	_tensON
;	adc-example-leds-hmi.c:18: __bit buttonPrev = 0;
;	assignBit
	clr	_buttonPrev
;	adc-example-leds-hmi.c:19: __bit ledBlinkEnabled = 0;
;	assignBit
	clr	_ledBlinkEnabled
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
;Allocation info for local variables in function 'analogReading'
;------------------------------------------------------------
;	adc-example-leds-hmi.c:25: uint8_t analogReading(void) {
;	-----------------------------------------
;	 function analogReading
;	-----------------------------------------
_analogReading:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	adc-example-leds-hmi.c:26: ADC_START = 1;
;	assignBit
	setb	_ADC_START
;	adc-example-leds-hmi.c:27: while (ADC_START);
00101$:
	jb	_ADC_START,00101$
;	adc-example-leds-hmi.c:28: ADC_IF = 0;
;	assignBit
	clr	_ADC_IF
;	adc-example-leds-hmi.c:29: return ADC_DATA;
	mov	dpl, _ADC_DATA
;	adc-example-leds-hmi.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clock_init'
;------------------------------------------------------------
;	adc-example-leds-hmi.c:32: void clock_init(void) {
;	-----------------------------------------
;	 function clock_init
;	-----------------------------------------
_clock_init:
;	adc-example-leds-hmi.c:33: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	adc-example-leds-hmi.c:34: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	adc-example-leds-hmi.c:36: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
	mov	a,#0xf8
	anl	a,_CLOCK_CFG
	orl	a,#0x06
	mov	_CLOCK_CFG,a
;	adc-example-leds-hmi.c:37: SAFE_MOD = 0x00;
	mov	_SAFE_MOD,#0x00
;	adc-example-leds-hmi.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	adc-example-leds-hmi.c:40: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	adc-example-leds-hmi.c:41: TF0 = 0;
;	assignBit
	clr	_TF0
;	adc-example-leds-hmi.c:43: TH0 = 0xFF;
	mov	_TH0,#0xff
;	adc-example-leds-hmi.c:44: TL0 = 0x38;
	mov	_TL0,#0x38
;	adc-example-leds-hmi.c:45: tick_100us++;
	mov	r6,_tick_100us
	mov	r7,(_tick_100us + 1)
	mov	a,#0x01
	add	a, r6
	mov	_tick_100us,a
	clr	a
	addc	a, r7
	mov	(_tick_100us + 1),a
;	adc-example-leds-hmi.c:46: blinkCounter++;
	mov	r6,_blinkCounter
	mov	r7,(_blinkCounter + 1)
	mov	a,#0x01
	add	a, r6
	mov	_blinkCounter,a
	clr	a
	addc	a, r7
	mov	(_blinkCounter + 1),a
;	adc-example-leds-hmi.c:47: }
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
;	adc-example-leds-hmi.c:49: void timer0_init(void) {
;	-----------------------------------------
;	 function timer0_init
;	-----------------------------------------
_timer0_init:
;	adc-example-leds-hmi.c:51: TMOD &= ~0x03;
	anl	_TMOD,#0xfc
;	adc-example-leds-hmi.c:52: TMOD |=  0x01;
	orl	_TMOD,#0x01
;	adc-example-leds-hmi.c:53: TH0 = 0xFF;
	mov	_TH0,#0xff
;	adc-example-leds-hmi.c:54: TL0 = 0x38;
	mov	_TL0,#0x38
;	adc-example-leds-hmi.c:55: ET0 = 1;
;	assignBit
	setb	_ET0
;	adc-example-leds-hmi.c:56: TR0 = 1;
;	assignBit
	setb	_TR0
;	adc-example-leds-hmi.c:57: EA  = 1;
;	assignBit
	setb	_EA
;	adc-example-leds-hmi.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink_led'
;------------------------------------------------------------
;	adc-example-leds-hmi.c:60: void blink_led(void) {
;	-----------------------------------------
;	 function blink_led
;	-----------------------------------------
_blink_led:
;	adc-example-leds-hmi.c:62: if (tick_100us < 2500) {
	clr	c
	mov	a,_tick_100us
	subb	a,#0xc4
	mov	a,(_tick_100us + 1)
	subb	a,#0x09
	jnc	00105$
;	adc-example-leds-hmi.c:63: P3 |=  (1 << 0);
	orl	_P3,#0x01
	ret
00105$:
;	adc-example-leds-hmi.c:64: } else if (tick_100us < 5000) {
	clr	c
	mov	a,_tick_100us
	subb	a,#0x88
	mov	a,(_tick_100us + 1)
	subb	a,#0x13
	jnc	00102$
;	adc-example-leds-hmi.c:65: P3 &= ~(1 << 0);
	anl	_P3,#0xfe
	ret
00102$:
;	adc-example-leds-hmi.c:67: tick_100us = 0;
	clr	a
	mov	_tick_100us,a
	mov	(_tick_100us + 1),a
;	adc-example-leds-hmi.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rawToMillivolts'
;------------------------------------------------------------
;raw           Allocated to registers r7 
;------------------------------------------------------------
;	adc-example-leds-hmi.c:71: uint16_t rawToMillivolts(uint8_t raw) {
;	-----------------------------------------
;	 function rawToMillivolts
;	-----------------------------------------
_rawToMillivolts:
	mov	r7, dpl
;	adc-example-leds-hmi.c:75: return ((uint32_t)raw * 5000) / 255;
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dptr,#0x1388
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xff
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divulong
	mov	r4, dpl
	mov	r5, dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
;	adc-example-leds-hmi.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blinkTwoLEDs'
;------------------------------------------------------------
;v             Allocated to registers r7 
;------------------------------------------------------------
;	adc-example-leds-hmi.c:78: void blinkTwoLEDs(uint8_t v) {
;	-----------------------------------------
;	 function blinkTwoLEDs
;	-----------------------------------------
_blinkTwoLEDs:
	mov	r7, dpl
;	adc-example-leds-hmi.c:79: tens = v / 10;
	mov	ar6,r7
	mov	b,#0x0a
	mov	a,r6
	div	ab
	mov	_tens, a
	mov	(_tens + 1),#0x00
;	adc-example-leds-hmi.c:80: unit = v % 10;
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	r7,b
	mov	_unit,r7
;	adc-example-leds-hmi.c:85: countUnits   = 0;
	clr	a
	mov	(_unit + 1),a
	mov	_countUnits,a
	mov	(_countUnits + 1),a
;	adc-example-leds-hmi.c:86: countTens    = 0;
	mov	_countTens,a
	mov	(_countTens + 1),a
;	adc-example-leds-hmi.c:87: unitON       = 0;
;	assignBit
	clr	_unitON
;	adc-example-leds-hmi.c:88: tensON       = 0;
;	assignBit
	clr	_tensON
;	adc-example-leds-hmi.c:89: blinkCounter = 0;
	clr	a
	mov	_blinkCounter,a
	mov	(_blinkCounter + 1),a
;	adc-example-leds-hmi.c:90: blinkNowToggle = 1;
;	assignBit
	setb	_blinkNowToggle
;	adc-example-leds-hmi.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blinkNow'
;------------------------------------------------------------
;	adc-example-leds-hmi.c:93: void blinkNow(void) {
;	-----------------------------------------
;	 function blinkNow
;	-----------------------------------------
_blinkNow:
;	adc-example-leds-hmi.c:94: if (!blinkNowToggle) return;
	jb	_blinkNowToggle,00102$
	ret
00102$:
;	adc-example-leds-hmi.c:97: if (countUnits == 0 && countTens == 0) {
	mov	a,_countUnits
	orl	a,(_countUnits + 1)
	jnz	00110$
	mov	a,_countTens
	orl	a,(_countTens + 1)
	jnz	00110$
;	adc-example-leds-hmi.c:98: if (unit > 0) {
	mov	a,_unit
	orl	a,(_unit + 1)
	jz	00107$
;	adc-example-leds-hmi.c:99: countUnits = 1;
	mov	_countUnits,#0x01
	mov	(_countUnits + 1),#0x00
	sjmp	00110$
00107$:
;	adc-example-leds-hmi.c:100: } else if (tens > 0) {
	mov	a,_tens
	orl	a,(_tens + 1)
	jz	00104$
;	adc-example-leds-hmi.c:101: countTens = 1;
	mov	_countTens,#0x01
	mov	(_countTens + 1),#0x00
	sjmp	00110$
00104$:
;	adc-example-leds-hmi.c:103: blinkNowToggle = 0;
;	assignBit
	clr	_blinkNowToggle
;	adc-example-leds-hmi.c:104: conversionFinished = 1;
;	assignBit
	setb	_conversionFinished
;	adc-example-leds-hmi.c:105: return;
	ret
00110$:
;	adc-example-leds-hmi.c:110: if (blinkCounter < 2500) return;
	clr	c
	mov	a,_blinkCounter
	subb	a,#0xc4
	mov	a,(_blinkCounter + 1)
	subb	a,#0x09
	jnc	00113$
	ret
00113$:
;	adc-example-leds-hmi.c:111: blinkCounter = 0;
	clr	a
	mov	_blinkCounter,a
	mov	(_blinkCounter + 1),a
;	adc-example-leds-hmi.c:114: if (countUnits == 1) {
	inc	a
	cjne	a,_countUnits,00226$
	dec	a
	cjne	a,(_countUnits + 1),00226$
	sjmp	00227$
00226$:
	sjmp	00123$
00227$:
;	adc-example-leds-hmi.c:115: if (unit > 0) {
	mov	a,_unit
	orl	a,(_unit + 1)
	jz	00120$
;	adc-example-leds-hmi.c:116: if (unitON == 0) {
	jb	_unitON,00115$
;	adc-example-leds-hmi.c:117: P3 |=  (1 << 5);   // LED ON
	orl	_P3,#0x20
;	adc-example-leds-hmi.c:118: unitON = 1;
;	assignBit
	setb	_unitON
	sjmp	00121$
00115$:
;	adc-example-leds-hmi.c:120: P3 &= ~(1 << 5);   // LED OFF
	anl	_P3,#0xdf
;	adc-example-leds-hmi.c:121: unitON = 0;
;	assignBit
	clr	_unitON
;	adc-example-leds-hmi.c:122: unit--;            // decrement only on OFF edge — one full blink per count
	mov	r6,_unit
	mov	r7,(_unit + 1)
	mov	a,r6
	add	a,#0xff
	mov	_unit,a
	mov	a,r7
	addc	a,#0xff
	mov	(_unit + 1),a
	sjmp	00121$
00120$:
;	adc-example-leds-hmi.c:125: P3 &= ~(1 << 5);       // FIX: was (1<<4), must clear units LED (P3.5) before switching phase
	anl	_P3,#0xdf
;	adc-example-leds-hmi.c:126: unitON     = 0;
;	assignBit
	clr	_unitON
;	adc-example-leds-hmi.c:127: countUnits = 0;
	clr	a
	mov	_countUnits,a
	mov	(_countUnits + 1),a
;	adc-example-leds-hmi.c:128: countTens  = (tens > 0) ? 1 : 0;  // FIX: only enter tens phase if tens > 0
	mov	a,_tens
	orl	a,(_tens + 1)
	jz	00134$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00135$
00134$:
	mov	r6,#0x00
	mov	r7,#0x00
00135$:
	mov	_countTens,r6
	mov	(_countTens + 1),r7
;	adc-example-leds-hmi.c:129: if (countTens == 0) {
	mov	a,_countTens
	orl	a,(_countTens + 1)
	jnz	00121$
;	adc-example-leds-hmi.c:130: blinkNowToggle = 0;
;	assignBit
	clr	_blinkNowToggle
;	adc-example-leds-hmi.c:131: conversionFinished = 1;
;	assignBit
	setb	_conversionFinished
00121$:
;	adc-example-leds-hmi.c:134: return;
	ret
00123$:
;	adc-example-leds-hmi.c:138: if (countTens == 1) {
	mov	a,#0x01
	cjne	a,_countTens,00232$
	dec	a
	cjne	a,(_countTens + 1),00232$
	sjmp	00233$
00232$:
	ret
00233$:
;	adc-example-leds-hmi.c:139: if (tens > 0) {
	mov	a,_tens
	orl	a,(_tens + 1)
	jz	00128$
;	adc-example-leds-hmi.c:140: if (tensON == 0) {
	jb	_tensON,00125$
;	adc-example-leds-hmi.c:141: P3 |=  (1 << 4);   // LED ON
	orl	_P3,#0x10
;	adc-example-leds-hmi.c:142: tensON = 1;
;	assignBit
	setb	_tensON
	ret
00125$:
;	adc-example-leds-hmi.c:144: P3 &= ~(1 << 4);   // LED OFF
	anl	_P3,#0xef
;	adc-example-leds-hmi.c:145: tensON = 0;
;	assignBit
	clr	_tensON
;	adc-example-leds-hmi.c:146: tens--;            // decrement only on OFF edge — one full blink per count
	mov	r6,_tens
	mov	r7,(_tens + 1)
	mov	a,r6
	add	a,#0xff
	mov	_tens,a
	mov	a,r7
	addc	a,#0xff
	mov	(_tens + 1),a
	ret
00128$:
;	adc-example-leds-hmi.c:149: P3 &= ~(1 << 4);       // FIX: was (1<<5), must clear tens LED (P3.4) when done
	anl	_P3,#0xef
;	adc-example-leds-hmi.c:150: tensON         = 0;
;	assignBit
	clr	_tensON
;	adc-example-leds-hmi.c:151: countTens      = 0;
	clr	a
	mov	_countTens,a
	mov	(_countTens + 1),a
;	adc-example-leds-hmi.c:152: blinkNowToggle = 0;
;	assignBit
	clr	_blinkNowToggle
;	adc-example-leds-hmi.c:153: conversionFinished = 1;
;	assignBit
	setb	_conversionFinished
;	adc-example-leds-hmi.c:156: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;buttonNow     Allocated to registers r6 
;------------------------------------------------------------
;	adc-example-leds-hmi.c:158: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	adc-example-leds-hmi.c:159: clock_init();
	lcall	_clock_init
;	adc-example-leds-hmi.c:160: timer0_init();
	lcall	_timer0_init
;	adc-example-leds-hmi.c:163: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	adc-example-leds-hmi.c:164: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	adc-example-leds-hmi.c:165: GLOBAL_CFG &= ~bWDOG_EN;
	anl	_GLOBAL_CFG,#0xfe
;	adc-example-leds-hmi.c:166: SAFE_MOD = 0x00;
	mov	_SAFE_MOD,#0x00
;	adc-example-leds-hmi.c:169: P3_MOD_OC &= ~(1 << 0);
	anl	_P3_MOD_OC,#0xfe
;	adc-example-leds-hmi.c:170: P3_DIR_PU  |=  (1 << 0);
	orl	_P3_DIR_PU,#0x01
;	adc-example-leds-hmi.c:174: TMOD &= ~bT0_CT;                               // bT0_CT=0: timer, not counter on P3.4
	anl	_TMOD,#0xfb
;	adc-example-leds-hmi.c:177: PIN_FUNC &= ~bUART1_PIN_X;
	anl	_PIN_FUNC,#0xdf
;	adc-example-leds-hmi.c:180: P3_MOD_OC &= ~((1 << 4) | (1 << 5));
	anl	_P3_MOD_OC,#0xcf
;	adc-example-leds-hmi.c:181: P3_DIR_PU  |=  (1 << 4) | (1 << 5);
	orl	_P3_DIR_PU,#0x30
;	adc-example-leds-hmi.c:182: P3         &= ~((1 << 4) | (1 << 5));
	anl	_P3,#0xcf
;	adc-example-leds-hmi.c:186: P1_MOD_OC |=  (1 << 4);
	orl	_P1_MOD_OC,#0x10
;	adc-example-leds-hmi.c:187: P1_DIR_PU  |=  (1 << 4);
	orl	_P1_DIR_PU,#0x10
;	adc-example-leds-hmi.c:191: ADCInit(0);
	mov	dpl, #0x00
	lcall	_ADCInit
;	adc-example-leds-hmi.c:192: ADC_ChannelSelect(2);
	mov	dpl, #0x02
	lcall	_ADC_ChannelSelect
;	adc-example-leds-hmi.c:194: while (1) {
00114$:
;	adc-example-leds-hmi.c:195: uint8_t buttonNow = !(P1 & (1 << 4));
	mov	a,_P1
	swap	a
	anl	a,#0x01
	cjne	a,#0x01,00166$
00166$:
	mov  b0,c
	clr	a
	rlc	a
;	adc-example-leds-hmi.c:198: if (buttonNow && !buttonPrev) {
	mov	r6,a
	jz	00104$
	jb	_buttonPrev,00104$
;	adc-example-leds-hmi.c:199: ledBlinkEnabled = !ledBlinkEnabled;
	cpl	_ledBlinkEnabled
;	adc-example-leds-hmi.c:200: if (!ledBlinkEnabled) P3 &= ~(1 << 0);  // turn off immediately
	jb	_ledBlinkEnabled,00104$
	anl	_P3,#0xfe
00104$:
;	adc-example-leds-hmi.c:202: buttonPrev = buttonNow;
;	assignBit
	mov	a,r6
	add	a,#0xff
	mov	_buttonPrev,c
;	adc-example-leds-hmi.c:204: if (ledBlinkEnabled) {
	jnb	_ledBlinkEnabled,00107$
;	adc-example-leds-hmi.c:205: blink_led();
	lcall	_blink_led
00107$:
;	adc-example-leds-hmi.c:209: if (conversionFinished && !blinkNowToggle) {
	jnb	_conversionFinished,00111$
	jb	_blinkNowToggle,00111$
;	adc-example-leds-hmi.c:210: mVanalog = rawToMillivolts(analogReading());
	lcall	_analogReading
	lcall	_rawToMillivolts
;	adc-example-leds-hmi.c:211: val = mVanalog / 50;
	mov	_mVanalog,dpl
	mov  (_mVanalog + 1),dph
	mov	a,#0x32
	push	acc
	clr	a
	push	acc
	lcall	__divuint
	mov	r6, dpl
	dec	sp
	dec	sp
;	adc-example-leds-hmi.c:212: if (val > 99){
	mov	a,r6
	mov	_val,a
	add	a,#0xff - 0x63
	jnc	00109$
;	adc-example-leds-hmi.c:213: val = 99;
	mov	_val,#0x63
00109$:
;	adc-example-leds-hmi.c:218: blinkTwoLEDs(val);
	mov	dpl, _val
	lcall	_blinkTwoLEDs
;	adc-example-leds-hmi.c:219: conversionFinished = 0;
;	assignBit
	clr	_conversionFinished
00111$:
;	adc-example-leds-hmi.c:222: blinkNow();
	lcall	_blinkNow
;	adc-example-leds-hmi.c:224: }
	sjmp	00114$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
