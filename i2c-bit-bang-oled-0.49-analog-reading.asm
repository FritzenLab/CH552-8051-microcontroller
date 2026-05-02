;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module i2c_bit_bang_oled_0_49_analog_reading
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _font_V
	.globl _font_m
	.globl _font5x7
	.globl _main
	.globl _rawToMillivolts
	.globl _analogReading
	.globl _clock_init
	.globl _timer0_init
	.globl _timer0_ISR
	.globl _oled_print_uint
	.globl _get_text_width
	.globl _oled_draw_char
	.globl _oled_init
	.globl _oled_clear
	.globl _oled_write_data_stream
	.globl _oled_set_cursor
	.globl _oled_data
	.globl _oled_cmd
	.globl _i2c_write_byte
	.globl _i2c_stop
	.globl _i2c_start
	.globl _i2c_delay
	.globl _Serial_println_uint
	.globl _Serial_begin
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
	.globl _finalAnalog
	.globl _rawAnalog
	.globl _serialTime
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_tick_10ms::
	.ds 2
_serialTime::
	.ds 2
_rawAnalog::
	.ds 1
_finalAnalog::
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
;	i2c-bit-bang-oled-0.49-analog-reading.c:7: volatile unsigned int tick_10ms = 0;
	clr	a
	mov	_tick_10ms,a
	mov	(_tick_10ms + 1),a
;	i2c-bit-bang-oled-0.49-analog-reading.c:8: volatile unsigned int serialTime = 0;
	mov	_serialTime,a
	mov	(_serialTime + 1),a
;	i2c-bit-bang-oled-0.49-analog-reading.c:10: uint8_t rawAnalog = 0;
	mov	_rawAnalog,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:11: uint16_t finalAnalog = 0;
	mov	_finalAnalog,a
	mov	(_finalAnalog + 1),a
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
;Allocation info for local variables in function 'i2c_delay'
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:23: void i2c_delay(void) {
;	-----------------------------------------
;	 function i2c_delay
;	-----------------------------------------
_i2c_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:24: __asm nop __endasm;
	nop	
;	i2c-bit-bang-oled-0.49-analog-reading.c:25: __asm nop __endasm;
	nop	
;	i2c-bit-bang-oled-0.49-analog-reading.c:26: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:28: void i2c_start(void) {
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	i2c-bit-bang-oled-0.49-analog-reading.c:29: SDA_RELEASE();
	orl	_P1,#0x01
;	i2c-bit-bang-oled-0.49-analog-reading.c:30: SCL_RELEASE();
	orl	_P1,#0x02
;	i2c-bit-bang-oled-0.49-analog-reading.c:31: i2c_delay();
	lcall	_i2c_delay
;	i2c-bit-bang-oled-0.49-analog-reading.c:33: SDA_LOW();
	anl	_P1,#0xfe
;	i2c-bit-bang-oled-0.49-analog-reading.c:34: i2c_delay();
	lcall	_i2c_delay
;	i2c-bit-bang-oled-0.49-analog-reading.c:35: SCL_LOW();
	anl	_P1,#0xfd
;	i2c-bit-bang-oled-0.49-analog-reading.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:38: void i2c_stop(void) {
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	i2c-bit-bang-oled-0.49-analog-reading.c:39: SDA_LOW();
	anl	_P1,#0xfe
;	i2c-bit-bang-oled-0.49-analog-reading.c:40: SCL_RELEASE();
	orl	_P1,#0x02
;	i2c-bit-bang-oled-0.49-analog-reading.c:41: i2c_delay();
	lcall	_i2c_delay
;	i2c-bit-bang-oled-0.49-analog-reading.c:43: SDA_RELEASE();
	orl	_P1,#0x01
;	i2c-bit-bang-oled-0.49-analog-reading.c:44: i2c_delay();
;	i2c-bit-bang-oled-0.49-analog-reading.c:45: }
	ljmp	_i2c_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_byte'
;------------------------------------------------------------
;data          Allocated to registers r7 
;i             Allocated to registers r6 
;ack           Allocated to registers 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:49: uint8_t i2c_write_byte(uint8_t data) {
;	-----------------------------------------
;	 function i2c_write_byte
;	-----------------------------------------
_i2c_write_byte:
	mov	r7, dpl
;	i2c-bit-bang-oled-0.49-analog-reading.c:50: for (uint8_t i = 0; i < 8; i++) {
	mov	r6,#0x00
00106$:
	cjne	r6,#0x08,00137$
00137$:
	jnc	00104$
;	i2c-bit-bang-oled-0.49-analog-reading.c:51: if (data & 0x80)
	mov	a,r7
	jnb	acc.7,00102$
;	i2c-bit-bang-oled-0.49-analog-reading.c:52: SDA_RELEASE();
	orl	_P1,#0x01
	sjmp	00103$
00102$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:54: SDA_LOW();
	anl	_P1,#0xfe
00103$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:56: SCL_RELEASE();
	orl	_P1,#0x02
;	i2c-bit-bang-oled-0.49-analog-reading.c:57: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
;	i2c-bit-bang-oled-0.49-analog-reading.c:58: SCL_LOW();
	anl	_P1,#0xfd
;	i2c-bit-bang-oled-0.49-analog-reading.c:59: i2c_delay();
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:60: data <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:50: for (uint8_t i = 0; i < 8; i++) {
	inc	r6
	sjmp	00106$
00104$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:64: SDA_RELEASE();
	orl	_P1,#0x01
;	i2c-bit-bang-oled-0.49-analog-reading.c:65: SCL_RELEASE();
	orl	_P1,#0x02
;	i2c-bit-bang-oled-0.49-analog-reading.c:66: i2c_delay();
	lcall	_i2c_delay
;	i2c-bit-bang-oled-0.49-analog-reading.c:68: uint8_t ack = (P1 & (1 << SDA_PIN)) ? 1 : 0;
	mov	a,_P1
	jnb	acc.0,00110$
	mov	r7,#0x01
	sjmp	00111$
00110$:
	mov	r7,#0x00
00111$:
	mov	dpl,r7
;	i2c-bit-bang-oled-0.49-analog-reading.c:69: SCL_LOW();
	anl	_P1,#0xfd
;	i2c-bit-bang-oled-0.49-analog-reading.c:70: return ack; // 0 = ACK, 1 = NACK
;	i2c-bit-bang-oled-0.49-analog-reading.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_cmd'
;------------------------------------------------------------
;cmd           Allocated to registers r7 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:76: void oled_cmd(uint8_t cmd) {
;	-----------------------------------------
;	 function oled_cmd
;	-----------------------------------------
_oled_cmd:
	mov	r7, dpl
;	i2c-bit-bang-oled-0.49-analog-reading.c:77: i2c_start();
	push	ar7
	lcall	_i2c_start
;	i2c-bit-bang-oled-0.49-analog-reading.c:78: i2c_write_byte(OLED_ADDR);
	mov	dpl, #0x78
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:79: i2c_write_byte(0x00);
	mov	dpl, #0x00
	lcall	_i2c_write_byte
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:80: i2c_write_byte(cmd);
	mov	dpl, r7
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:81: i2c_stop();
;	i2c-bit-bang-oled-0.49-analog-reading.c:82: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_data'
;------------------------------------------------------------
;data          Allocated to registers r7 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:84: void oled_data(uint8_t data) {
;	-----------------------------------------
;	 function oled_data
;	-----------------------------------------
_oled_data:
	mov	r7, dpl
;	i2c-bit-bang-oled-0.49-analog-reading.c:85: i2c_start();
	push	ar7
	lcall	_i2c_start
;	i2c-bit-bang-oled-0.49-analog-reading.c:86: i2c_write_byte(OLED_ADDR);
	mov	dpl, #0x78
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:87: i2c_write_byte(0x40);
	mov	dpl, #0x40
	lcall	_i2c_write_byte
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:88: i2c_write_byte(data);
	mov	dpl, r7
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:89: i2c_stop();
;	i2c-bit-bang-oled-0.49-analog-reading.c:90: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_set_cursor'
;------------------------------------------------------------
;page          Allocated to stack - _bp -3 +1 
;x             Allocated to registers r7 
;col           Allocated to registers r7 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:92: void oled_set_cursor(uint8_t x, uint8_t page) {
;	-----------------------------------------
;	 function oled_set_cursor
;	-----------------------------------------
_oled_set_cursor:
	push	_bp
	mov	_bp,sp
	mov	r7, dpl
;	i2c-bit-bang-oled-0.49-analog-reading.c:94: uint8_t col = x + 32;
	mov	a,#0x20
	add	a, r7
	mov	r7,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:95: oled_cmd(0xB0 + page);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
	mov	a,#0xb0
	add	a, r6
	mov	dpl,a
	push	ar7
	lcall	_oled_cmd
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:96: oled_cmd(0x00 | (col & 0x0F));   // low nibble
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
	push	ar7
	lcall	_oled_cmd
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:97: oled_cmd(0x10 | (col >> 4));     // high nibble
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	r7,a
	mov	a,#0x10
	orl	a,r7
	mov	dpl,a
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:98: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_write_data_stream'
;------------------------------------------------------------
;len           Allocated to stack - _bp -3 +1 
;data          Allocated to stack - _bp +1 +3 
;i             Allocated to registers r4 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:99: void oled_write_data_stream(uint8_t *data, uint8_t len) {
;	-----------------------------------------
;	 function oled_write_data_stream
;	-----------------------------------------
_oled_write_data_stream:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	i2c-bit-bang-oled-0.49-analog-reading.c:100: i2c_start();
	lcall	_i2c_start
;	i2c-bit-bang-oled-0.49-analog-reading.c:101: i2c_write_byte(OLED_ADDR);
	mov	dpl, #0x78
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:102: i2c_write_byte(0x40);
	mov	dpl, #0x40
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:104: for (uint8_t i = 0; i < len; i++) {
	mov	r4,#0x00
00103$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jnc	00101$
;	i2c-bit-bang-oled-0.49-analog-reading.c:105: i2c_write_byte(data[i]);
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a, @r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a, @r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	lcall	_i2c_write_byte
	pop	ar4
;	i2c-bit-bang-oled-0.49-analog-reading.c:104: for (uint8_t i = 0; i < len; i++) {
	inc	r4
	sjmp	00103$
00101$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:108: i2c_stop();
	lcall	_i2c_stop
;	i2c-bit-bang-oled-0.49-analog-reading.c:109: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_clear'
;------------------------------------------------------------
;page          Allocated to registers r7 
;i             Allocated to registers r6 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:110: void oled_clear(void) {
;	-----------------------------------------
;	 function oled_clear
;	-----------------------------------------
_oled_clear:
;	i2c-bit-bang-oled-0.49-analog-reading.c:112: for (uint8_t page = 0; page < 4; page++) {
	mov	r7,#0x00
00107$:
	cjne	r7,#0x04,00137$
00137$:
	jnc	00109$
;	i2c-bit-bang-oled-0.49-analog-reading.c:113: oled_cmd(0xB0 + page);
	mov	ar6,r7
	mov	a,#0xb0
	add	a, r6
	mov	dpl,a
	push	ar7
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:114: oled_cmd(0x00);  // col low  = 0x00 → actual col = 32 after remap
	mov	dpl, #0x00
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:115: oled_cmd(0x12);  // col high = 0x10 | 0x02 = col 32
	mov	dpl, #0x12
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:116: i2c_start();
	lcall	_i2c_start
;	i2c-bit-bang-oled-0.49-analog-reading.c:117: i2c_write_byte(OLED_ADDR);
	mov	dpl, #0x78
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:118: i2c_write_byte(0x40);
	mov	dpl, #0x40
	lcall	_i2c_write_byte
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:119: for (uint8_t i = 0; i < 64; i++) i2c_write_byte(0x00);
	mov	r6,#0x00
00104$:
	cjne	r6,#0x40,00139$
00139$:
	jnc	00101$
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_i2c_write_byte
	pop	ar6
	pop	ar7
	inc	r6
	sjmp	00104$
00101$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:120: i2c_stop();
	push	ar7
	lcall	_i2c_stop
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:112: for (uint8_t page = 0; page < 4; page++) {
	inc	r7
	sjmp	00107$
00109$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:122: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_init'
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:124: void oled_init(void) {
;	-----------------------------------------
;	 function oled_init
;	-----------------------------------------
_oled_init:
;	i2c-bit-bang-oled-0.49-analog-reading.c:125: oled_cmd(0xAE);           // display off
	mov	dpl, #0xae
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:126: oled_cmd(0xD5); oled_cmd(0x80); // clock divide ratio / osc freq
	mov	dpl, #0xd5
	lcall	_oled_cmd
	mov	dpl, #0x80
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:127: oled_cmd(0xA8); oled_cmd(0x1F); // multiplex ratio = 31 (32 rows)
	mov	dpl, #0xa8
	lcall	_oled_cmd
	mov	dpl, #0x1f
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:128: oled_cmd(0xD3); oled_cmd(0x00); // display offset = 0
	mov	dpl, #0xd3
	lcall	_oled_cmd
	mov	dpl, #0x00
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:129: oled_cmd(0x40);                 // display start line = 0
	mov	dpl, #0x40
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:130: oled_cmd(0x8D); oled_cmd(0x14); // charge pump enable
	mov	dpl, #0x8d
	lcall	_oled_cmd
	mov	dpl, #0x14
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:131: oled_cmd(0x20); oled_cmd(0x02); // page addressing mode
	mov	dpl, #0x20
	lcall	_oled_cmd
	mov	dpl, #0x02
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:132: oled_cmd(0xA1);                 // segment remap (col 127 = SEG0)
	mov	dpl, #0xa1
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:133: oled_cmd(0xC8);                 // COM scan remapped
	mov	dpl, #0xc8
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:134: oled_cmd(0xDA); oled_cmd(0x12); // COM pins: alt config, no remap
	mov	dpl, #0xda
	lcall	_oled_cmd
	mov	dpl, #0x12
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:135: oled_cmd(0x81); oled_cmd(0xCF); // contrast
	mov	dpl, #0x81
	lcall	_oled_cmd
	mov	dpl, #0xcf
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:136: oled_cmd(0xD9); oled_cmd(0x22); // pre-charge period
	mov	dpl, #0xd9
	lcall	_oled_cmd
	mov	dpl, #0x22
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:137: oled_cmd(0xDB); oled_cmd(0x00); // VCOMH deselect = 0
	mov	dpl, #0xdb
	lcall	_oled_cmd
	mov	dpl, #0x00
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:138: oled_cmd(0xA4);                 // output follows RAM
	mov	dpl, #0xa4
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:139: oled_cmd(0xA6);                 // normal display
	mov	dpl, #0xa6
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:140: oled_cmd(0xAF);                 // display on
	mov	dpl, #0xaf
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:142: oled_clear();
;	i2c-bit-bang-oled-0.49-analog-reading.c:143: }
	ljmp	_oled_clear
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_draw_char'
;------------------------------------------------------------
;c             Allocated to registers r7 
;index         Allocated to registers r7 
;i             Allocated to registers r5 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:161: void oled_draw_char(char c) {
;	-----------------------------------------
;	 function oled_draw_char
;	-----------------------------------------
_oled_draw_char:
	mov	r7, dpl
;	i2c-bit-bang-oled-0.49-analog-reading.c:162: if (c < '0' || c > '9') return;
	cjne	r7,#0x30,00129$
00129$:
	jc	00101$
	mov	a,r7
	add	a,#0xff - 0x39
	jnc	00102$
00101$:
	ret
00102$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:164: uint8_t index = c - '0';
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:166: i2c_start();
	push	ar7
	lcall	_i2c_start
;	i2c-bit-bang-oled-0.49-analog-reading.c:167: i2c_write_byte(OLED_ADDR);
	mov	dpl, #0x78
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:168: i2c_write_byte(0x40);
	mov	dpl, #0x40
	lcall	_i2c_write_byte
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:170: for (uint8_t i = 0; i < 5; i++) {
	mov	a,r7
	mov	b,#0x05
	mul	ab
	add	a, #_font5x7
	mov	r6,a
	mov	a,#(_font5x7 >> 8)
	addc	a, b
	mov	r7,a
	mov	r5,#0x00
00106$:
	cjne	r5,#0x05,00132$
00132$:
	jnc	00104$
;	i2c-bit-bang-oled-0.49-analog-reading.c:171: i2c_write_byte(font5x7[index][i]);
	mov	a,r5
	add	a, r6
	mov	dpl,a
	clr	a
	addc	a, r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_write_byte
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:170: for (uint8_t i = 0; i < 5; i++) {
	inc	r5
	sjmp	00106$
00104$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:174: i2c_write_byte(0x00); // spacing
	mov	dpl, #0x00
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:176: i2c_stop();
;	i2c-bit-bang-oled-0.49-analog-reading.c:177: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'get_text_width'
;------------------------------------------------------------
;value         Allocated to registers r6 r7 
;digits        Allocated to registers r5 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:178: uint8_t get_text_width(uint16_t value) {
;	-----------------------------------------
;	 function get_text_width
;	-----------------------------------------
_get_text_width:
	mov	r6, dpl
	mov	r7, dph
;	i2c-bit-bang-oled-0.49-analog-reading.c:181: if (value == 0) return 6;
	mov	a,r6
	orl	a,r7
	jnz	00110$
	mov	dpl, #0x06
;	i2c-bit-bang-oled-0.49-analog-reading.c:183: while (value > 0) {
	ret
00110$:
	mov	r5,#0x00
00103$:
	mov	a,r6
	orl	a,r7
	jz	00105$
;	i2c-bit-bang-oled-0.49-analog-reading.c:184: digits++;
	inc	r5
;	i2c-bit-bang-oled-0.49-analog-reading.c:185: value /= 10;
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	lcall	__divuint
	mov	r3, dpl
	mov	r4, dph
	dec	sp
	dec	sp
	pop	ar5
	mov	ar6,r3
	mov	ar7,r4
	sjmp	00103$
00105$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:188: return (digits * 6) + (1 + 6 + 6);  
	mov	a,r5
	mov	b,#0x06
	mul	ab
	add	a, #0x0d
	mov	dpl,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:190: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_print_uint'
;------------------------------------------------------------
;value         Allocated to registers r6 r7 
;buffer        Allocated to stack - _bp +4 +64 
;idx           Allocated to registers 
;buf           Allocated to stack - _bp +68 +6 
;i             Allocated to registers r4 
;temp          Allocated to registers r4 r2 
;rev           Allocated to stack - _bp +74 +6 
;j             Allocated to stack - _bp +80 +1 
;k             Allocated to registers r2 
;index         Allocated to registers 
;col           Allocated to registers r5 
;i             Allocated to registers r4 
;col           Allocated to registers r4 
;col           Allocated to registers r6 
;n             Allocated to registers r5 
;sloc0         Allocated to stack - _bp +1 +2 
;sloc1         Allocated to stack - _bp +3 +1 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:191: void oled_print_uint(uint16_t value) {
;	-----------------------------------------
;	 function oled_print_uint
;	-----------------------------------------
_oled_print_uint:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x50
	mov	sp,a
	mov	r6, dpl
	mov	r7, dph
;	i2c-bit-bang-oled-0.49-analog-reading.c:193: uint8_t idx = 0;
	mov	r5,#0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:199: if (value == 0) {
	mov	a,r6
	orl	a,r7
	jnz	00108$
;	i2c-bit-bang-oled-0.49-analog-reading.c:200: buf[i++] = '0';
	mov	a,_bp
	add	a,#0x44
	mov	r1,a
	mov	r4,#0x01
	mov	@r1,#0x30
	ljmp	00109$
00108$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:202: uint16_t temp = value;
	mov	ar4,r6
	mov	ar2,r7
;	i2c-bit-bang-oled-0.49-analog-reading.c:206: while (temp > 0) {
	mov	a,_bp
	add	a,#0x4a
	mov	r3,a
	mov	a,_bp
	add	a,#0x50
	mov	r0,a
	mov	@r0,#0x00
00101$:
	mov	a,r4
	orl	a,r2
	jz	00140$
;	i2c-bit-bang-oled-0.49-analog-reading.c:207: rev[j++] = (temp % 10) + '0';
	push	ar5
	mov	a,_bp
	add	a,#0x50
	mov	r0,a
	mov	a,@r0
	add	a, r3
	mov	r1,a
	mov	a,_bp
	add	a,#0x50
	mov	r0,a
	inc	@r0
	mov	ar5,r4
	mov	ar7,r2
	push	ar7
	push	ar5
	push	ar3
	push	ar1
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	dpl, r5
	mov	dph, r7
	lcall	__moduint
	mov	r2, dpl
	dec	sp
	dec	sp
	pop	ar1
	pop	ar3
	pop	ar5
	pop	ar7
	mov	a,#0x30
	add	a, r2
	mov	@r1,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:208: temp /= 10;
	push	ar5
	push	ar3
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	dpl, r5
	mov	dph, r7
	lcall	__divuint
	mov	r6, dpl
	mov	r7, dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar5
	mov	ar4,r6
	mov	ar2,r7
	pop	ar5
;	i2c-bit-bang-oled-0.49-analog-reading.c:210: while (j > 0) buf[i++] = rev[--j];
	sjmp	00101$
00140$:
	mov	a,_bp
	add	a,#0x44
	mov	r7,a
	mov	ar6,r3
	mov	r3,#0x00
	mov	a,_bp
	add	a,#0x50
	mov	r0,a
	mov	ar2,@r0
00104$:
	mov	a,r2
	jz	00154$
	push	ar5
	mov	a,r3
	add	a, r7
	mov	r1,a
	inc	r3
	dec	r2
	mov	a,r2
	add	a, r6
	mov	r0,a
	mov	ar5,@r0
	mov	@r1,ar5
	pop	ar5
	sjmp	00104$
00154$:
	mov	ar4,r3
00109$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:212: buf[i] = '\0';
	mov	a,_bp
	add	a,#0x44
	mov	r7,a
	add	a,r4
	mov	r0,a
	mov	@r0,#0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:214: for (uint8_t k = 0; k < i; k++) {
	mov	a,_bp
	add	a,#0x04
	mov	r6,a
	mov	r3,a
	mov	r2,#0x00
00120$:
	clr	c
	mov	a,r2
	subb	a,r4
	jnc	00111$
;	i2c-bit-bang-oled-0.49-analog-reading.c:215: uint8_t index = buf[k] - '0';
	mov	a,r2
	add	a, r7
	mov	r1,a
	mov	a,@r1
	add	a,#0xd0
;	i2c-bit-bang-oled-0.49-analog-reading.c:217: for (uint8_t col = 0; col < 5; col++) {
	mov	b,#0x05
	mul	ab
	mov	r0,_bp
	inc	r0
	add	a, #_font5x7
	mov	@r0,a
	mov	a,#(_font5x7 >> 8)
	addc	a, b
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar5
	mov	r5,#0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:245: for (uint8_t n = 0; n < idx; n++) {
;	i2c-bit-bang-oled-0.49-analog-reading.c:217: for (uint8_t col = 0; col < 5; col++) {
00117$:
	cjne	r5,#0x05,00267$
00267$:
	jnc	00110$
;	i2c-bit-bang-oled-0.49-analog-reading.c:218: buffer[idx++] = font5x7[index][col];
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a, r6
	mov	r1,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	mov	r0,_bp
	inc	r0
	mov	a,r5
	add	a, @r0
	mov	dpl,a
	clr	a
	inc	r0
	addc	a, @r0
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:217: for (uint8_t col = 0; col < 5; col++) {
	inc	r5
	sjmp	00117$
00110$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:221: buffer[idx++] = 0x00; // spacing
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	r5,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a, r3
	mov	r0,a
	mov	@r0,#0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:214: for (uint8_t k = 0; k < i; k++) {
	inc	r2
	sjmp	00120$
00111$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:226: for (uint8_t i = 0; i < 6; i++) buffer[idx++] = 0x00;
	mov	ar7,r6
	mov	r4,#0x00
00123$:
	cjne	r4,#0x06,00269$
00269$:
	jnc	00112$
	mov	a,r5
	add	a, r7
	mov	r1,a
	inc	r5
	mov	@r1,#0x00
	inc	r4
	sjmp	00123$
00112$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:229: for (uint8_t col = 0; col < 5; col++) {
	mov	ar7,r6
	mov	r4,#0x00
00126$:
	cjne	r4,#0x05,00271$
00271$:
	jnc	00113$
;	i2c-bit-bang-oled-0.49-analog-reading.c:230: buffer[idx++] = font_m[col];
	mov	a,r5
	add	a, r7
	mov	r1,a
	inc	r5
	mov	a,r4
	mov	dptr,#_font_m
	movc	a,@a+dptr
	mov	@r1,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:229: for (uint8_t col = 0; col < 5; col++) {
	inc	r4
	sjmp	00126$
00113$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:232: buffer[idx++] = 0x00;
	mov	ar7,r6
	mov	a,r5
	inc	a
	mov	r4,a
	mov	a,r5
	add	a, r6
	mov	r0,a
	mov	@r0,#0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:235: for (uint8_t col = 0; col < 5; col++) {
	mov	r6,#0x00
00129$:
	cjne	r6,#0x05,00273$
00273$:
	jnc	00114$
;	i2c-bit-bang-oled-0.49-analog-reading.c:236: buffer[idx++] = font_V[col];
	mov	a,r4
	add	a, r7
	mov	r1,a
	inc	r4
	mov	a,r6
	mov	dptr,#_font_V
	movc	a,@a+dptr
	mov	@r1,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:235: for (uint8_t col = 0; col < 5; col++) {
	inc	r6
	sjmp	00129$
00114$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:238: buffer[idx++] = 0x00;
	mov	a,r4
	inc	a
	mov	r6,a
	mov	a,r4
	add	a, r7
	mov	r0,a
	mov	@r0,#0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:241: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	i2c-bit-bang-oled-0.49-analog-reading.c:242: i2c_write_byte(OLED_ADDR);
	mov	dpl, #0x78
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:243: i2c_write_byte(0x40);
	mov	dpl, #0x40
	lcall	_i2c_write_byte
	pop	ar6
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:245: for (uint8_t n = 0; n < idx; n++) {
	mov	r5,#0x00
00132$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00115$
;	i2c-bit-bang-oled-0.49-analog-reading.c:246: i2c_write_byte(buffer[n]);
	mov	a,r5
	add	a, r7
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_write_byte
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:245: for (uint8_t n = 0; n < idx; n++) {
	inc	r5
	sjmp	00132$
00115$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:249: i2c_stop();
	lcall	_i2c_stop
;	i2c-bit-bang-oled-0.49-analog-reading.c:250: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:252: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:253: TF0 = 0;
;	assignBit
	clr	_TF0
;	i2c-bit-bang-oled-0.49-analog-reading.c:254: TH0 = 0xB1;
	mov	_TH0,#0xb1
;	i2c-bit-bang-oled-0.49-analog-reading.c:255: TL0 = 0xE0;
	mov	_TL0,#0xe0
;	i2c-bit-bang-oled-0.49-analog-reading.c:256: tick_10ms++;
	mov	r6,_tick_10ms
	mov	r7,(_tick_10ms + 1)
	mov	a,#0x01
	add	a, r6
	mov	_tick_10ms,a
	clr	a
	addc	a, r7
	mov	(_tick_10ms + 1),a
;	i2c-bit-bang-oled-0.49-analog-reading.c:257: serialTime++;
	mov	r6,_serialTime
	mov	r7,(_serialTime + 1)
	mov	a,#0x01
	add	a, r6
	mov	_serialTime,a
	clr	a
	addc	a, r7
	mov	(_serialTime + 1),a
;	i2c-bit-bang-oled-0.49-analog-reading.c:258: }
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
;	i2c-bit-bang-oled-0.49-analog-reading.c:260: void timer0_init(void) {
;	-----------------------------------------
;	 function timer0_init
;	-----------------------------------------
_timer0_init:
;	i2c-bit-bang-oled-0.49-analog-reading.c:261: TMOD &= ~0x03;
	anl	_TMOD,#0xfc
;	i2c-bit-bang-oled-0.49-analog-reading.c:262: TMOD |=  0x01;
	orl	_TMOD,#0x01
;	i2c-bit-bang-oled-0.49-analog-reading.c:264: TH0 = 0xB1;
	mov	_TH0,#0xb1
;	i2c-bit-bang-oled-0.49-analog-reading.c:265: TL0 = 0xE0;
	mov	_TL0,#0xe0
;	i2c-bit-bang-oled-0.49-analog-reading.c:267: ET0 = 1;
;	assignBit
	setb	_ET0
;	i2c-bit-bang-oled-0.49-analog-reading.c:268: TR0 = 1;
;	assignBit
	setb	_TR0
;	i2c-bit-bang-oled-0.49-analog-reading.c:269: EA = 1;
;	assignBit
	setb	_EA
;	i2c-bit-bang-oled-0.49-analog-reading.c:270: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clock_init'
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:273: void clock_init(void) {
;	-----------------------------------------
;	 function clock_init
;	-----------------------------------------
_clock_init:
;	i2c-bit-bang-oled-0.49-analog-reading.c:274: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	i2c-bit-bang-oled-0.49-analog-reading.c:275: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	i2c-bit-bang-oled-0.49-analog-reading.c:276: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
	mov	a,#0xf8
	anl	a,_CLOCK_CFG
	orl	a,#0x06
	mov	_CLOCK_CFG,a
;	i2c-bit-bang-oled-0.49-analog-reading.c:277: SAFE_MOD = 0x00;
	mov	_SAFE_MOD,#0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:278: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'analogReading'
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:281: uint8_t analogReading(void) {
;	-----------------------------------------
;	 function analogReading
;	-----------------------------------------
_analogReading:
;	i2c-bit-bang-oled-0.49-analog-reading.c:282: ADC_START = 1;
;	assignBit
	setb	_ADC_START
;	i2c-bit-bang-oled-0.49-analog-reading.c:283: while (ADC_START);   // throw away first sample
00101$:
	jb	_ADC_START,00101$
;	i2c-bit-bang-oled-0.49-analog-reading.c:285: ADC_START = 1;
;	assignBit
	setb	_ADC_START
;	i2c-bit-bang-oled-0.49-analog-reading.c:286: while (ADC_START);
00104$:
	jb	_ADC_START,00104$
;	i2c-bit-bang-oled-0.49-analog-reading.c:288: ADC_IF = 0;
;	assignBit
	clr	_ADC_IF
;	i2c-bit-bang-oled-0.49-analog-reading.c:289: return ADC_DATA;
	mov	dpl, _ADC_DATA
;	i2c-bit-bang-oled-0.49-analog-reading.c:290: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rawToMillivolts'
;------------------------------------------------------------
;raw           Allocated to registers r7 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:292: uint16_t rawToMillivolts(uint8_t raw) {
;	-----------------------------------------
;	 function rawToMillivolts
;	-----------------------------------------
_rawToMillivolts:
	mov	r7, dpl
;	i2c-bit-bang-oled-0.49-analog-reading.c:294: return ((uint32_t)raw * 5000) / 255;
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
;	i2c-bit-bang-oled-0.49-analog-reading.c:295: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;m             Allocated to stack - _bp +1 +2 
;page          Allocated to registers r7 
;i             Allocated to registers r6 
;text_width    Allocated to registers 
;x             Allocated to registers r6 
;page          Allocated to registers 
;------------------------------------------------------------
;	i2c-bit-bang-oled-0.49-analog-reading.c:298: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	i2c-bit-bang-oled-0.49-analog-reading.c:300: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	i2c-bit-bang-oled-0.49-analog-reading.c:301: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	i2c-bit-bang-oled-0.49-analog-reading.c:302: GLOBAL_CFG &= ~bWDOG_EN;
	anl	_GLOBAL_CFG,#0xfe
;	i2c-bit-bang-oled-0.49-analog-reading.c:303: SAFE_MOD = 0x00;
	mov	_SAFE_MOD,#0x00
;	i2c-bit-bang-oled-0.49-analog-reading.c:304: clock_init();       // clock MUST be first — everything depends on Fsys=24MHz
	lcall	_clock_init
;	i2c-bit-bang-oled-0.49-analog-reading.c:305: timer0_init();      // timer second — needed for the tick_10ms delay below
	lcall	_timer0_init
;	i2c-bit-bang-oled-0.49-analog-reading.c:308: Serial_begin();         // after clock, so baud rate is correct
	lcall	_Serial_begin
;	i2c-bit-bang-oled-0.49-analog-reading.c:309: ADCInit(2);
	mov	dpl, #0x02
	lcall	_ADCInit
;	i2c-bit-bang-oled-0.49-analog-reading.c:310: ADC_ChannelSelect(1); // Option 1, P1.4 as analog input -> else if(ch == 1){ADC_CHAN1 =0;ADC_CHAN0=1;P1_DIR_PU &= ~bAIN1;}            //AIN1
	mov	dpl, #0x01
	lcall	_ADC_ChannelSelect
;	i2c-bit-bang-oled-0.49-analog-reading.c:311: for (volatile uint16_t m = 0; m < 1000; m++); // settle
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00113$:
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	subb	a,#0x03
	jnc	00101$
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a, r6
	mov	@r0,a
	clr	a
	addc	a, r7
	inc	r0
	mov	@r0,a
	sjmp	00113$
00101$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:315: P1_MOD_OC &= ~(1 << 4);  // not open-drain
	anl	_P1_MOD_OC,#0xef
;	i2c-bit-bang-oled-0.49-analog-reading.c:316: P1_DIR_PU  &= ~(1 << 4); // disable pull-up, set as input
	anl	_P1_DIR_PU,#0xef
;	i2c-bit-bang-oled-0.49-analog-reading.c:319: P1_MOD_OC |= (1 << SDA_PIN) | (1 << SCL_PIN);  // open-drain
	orl	_P1_MOD_OC,#0x03
;	i2c-bit-bang-oled-0.49-analog-reading.c:320: P1_DIR_PU  &= ~((1 << SDA_PIN) | (1 << SCL_PIN)); // disable internal pull-up
	anl	_P1_DIR_PU,#0xfc
;	i2c-bit-bang-oled-0.49-analog-reading.c:321: SDA_RELEASE();
	orl	_P1,#0x01
;	i2c-bit-bang-oled-0.49-analog-reading.c:322: SCL_RELEASE();
	orl	_P1,#0x02
;	i2c-bit-bang-oled-0.49-analog-reading.c:324: while (tick_10ms < 15); // 150ms power-on delay — timer is running now so this works
00102$:
	clr	c
	mov	a,_tick_10ms
	subb	a,#0x0f
	mov	a,(_tick_10ms + 1)
	subb	a,#0x00
	jc	00102$
;	i2c-bit-bang-oled-0.49-analog-reading.c:325: oled_init();
	lcall	_oled_init
;	i2c-bit-bang-oled-0.49-analog-reading.c:328: while (1) {
00110$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:330: if(serialTime > 100) {   // every ~1 second
	clr	c
	mov	a,#0x64
	subb	a,_serialTime
	clr	a
	subb	a,(_serialTime + 1)
	jnc	00110$
;	i2c-bit-bang-oled-0.49-analog-reading.c:331: serialTime = 0;
	clr	a
	mov	_serialTime,a
	mov	(_serialTime + 1),a
;	i2c-bit-bang-oled-0.49-analog-reading.c:334: rawAnalog = analogReading();
	lcall	_analogReading
;	i2c-bit-bang-oled-0.49-analog-reading.c:335: finalAnalog = rawToMillivolts(rawAnalog);
	mov  _rawAnalog,dpl
	lcall	_rawToMillivolts
;	i2c-bit-bang-oled-0.49-analog-reading.c:336: Serial_println_uint(finalAnalog);
	mov	_finalAnalog,dpl
	mov  (_finalAnalog + 1),dph
	lcall	_Serial_println_uint
;	i2c-bit-bang-oled-0.49-analog-reading.c:339: for (uint8_t page = 0; page < 4; page++) {
	mov	r7,#0x00
00119$:
	cjne	r7,#0x04,00188$
00188$:
	jnc	00106$
;	i2c-bit-bang-oled-0.49-analog-reading.c:340: oled_cmd(0xB0 + page);
	mov	ar6,r7
	mov	a,#0xb0
	add	a, r6
	mov	dpl,a
	push	ar7
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:341: oled_cmd(0x00 | (32 & 0x0F));
	mov	dpl, #0x00
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:342: oled_cmd(0x10 | (32 >> 4));
	mov	dpl, #0x12
	lcall	_oled_cmd
;	i2c-bit-bang-oled-0.49-analog-reading.c:344: i2c_start();
	lcall	_i2c_start
;	i2c-bit-bang-oled-0.49-analog-reading.c:345: i2c_write_byte(OLED_ADDR);
	mov	dpl, #0x78
	lcall	_i2c_write_byte
;	i2c-bit-bang-oled-0.49-analog-reading.c:346: i2c_write_byte(0x40);
	mov	dpl, #0x40
	lcall	_i2c_write_byte
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:347: for (uint8_t i = 0; i < 64; i++) i2c_write_byte(0x00);
	mov	r6,#0x00
00116$:
	cjne	r6,#0x40,00190$
00190$:
	jnc	00105$
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_i2c_write_byte
	pop	ar6
	pop	ar7
	inc	r6
	sjmp	00116$
00105$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:348: i2c_stop();
	push	ar7
	lcall	_i2c_stop
	pop	ar7
;	i2c-bit-bang-oled-0.49-analog-reading.c:339: for (uint8_t page = 0; page < 4; page++) {
	inc	r7
	sjmp	00119$
00106$:
;	i2c-bit-bang-oled-0.49-analog-reading.c:351: uint8_t text_width = get_text_width(finalAnalog);
	mov	dpl, _finalAnalog
	mov	dph, (_finalAnalog + 1)
	lcall	_get_text_width
	mov	r7, dpl
;	i2c-bit-bang-oled-0.49-analog-reading.c:352: uint8_t x = (64 - text_width) / 2;   // center horizontally
	mov	r6,#0x00
	mov	a,#0x40
	clr	c
	subb	a,r7
	mov	dpl,a
	clr	a
	subb	a,r6
	mov	dph,a
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	lcall	__divsint
	mov	r6, dpl
	dec	sp
	dec	sp
;	i2c-bit-bang-oled-0.49-analog-reading.c:355: oled_set_cursor(x, page);
	mov	a,#0x01
	push	acc
	mov	dpl, r6
	lcall	_oled_set_cursor
	dec	sp
;	i2c-bit-bang-oled-0.49-analog-reading.c:356: oled_print_uint(finalAnalog);
	mov	dpl, _finalAnalog
	mov	dph, (_finalAnalog + 1)
	lcall	_oled_print_uint
	ljmp	00110$
;	i2c-bit-bang-oled-0.49-analog-reading.c:361: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
_font5x7:
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x22	; 34
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x2f	; 47
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x3e	; 62
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x32	; 50	'2'
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x26	; 38
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x3e	; 62
	.area CSEG    (CODE)
	.area CONST   (CODE)
_font_m:
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.area CSEG    (CODE)
	.area CONST   (CODE)
_font_V:
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
