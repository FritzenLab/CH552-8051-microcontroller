;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module BME680
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _reg_write
	.globl _reg_read
	.globl _spi_init
	.globl _Serial_println
	.globl _Serial_print_uint
	.globl _Serial_print
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
	.globl _BME680_init
	.globl _BME680_update
	.globl _BME680_getState
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
__calib:
	.ds 30
__state:
	.ds 1
__wait_start:
	.ds 2
__t_fine:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:13: static BME680_State  _state      = BME680_STATE_IDLE;
	mov	__state,#0x00
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:14: static unsigned int  _wait_start = 0;
	clr	a
	mov	__wait_start,a
	mov	(__wait_start + 1),a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:16: static int32_t _t_fine = 0;
	mov	__t_fine,a
	mov	(__t_fine + 1),a
	mov	(__t_fine + 2),a
	mov	(__t_fine + 3),a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;i             Allocated to stack - _bp +1 +4 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:20: void spi_init(void) {
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:22: P1_MOD_OC &= ~((1 << 5) | (1 << 7));
	anl	_P1_MOD_OC,#0x5f
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:23: P1_DIR_PU  |=  (1 << 5) | (1 << 7);
	orl	_P1_DIR_PU,#0xa0
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:26: P1_MOD_OC &= ~(1 << 6);
	anl	_P1_MOD_OC,#0xbf
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:27: P1_DIR_PU  &= ~(1 << 6);
	anl	_P1_DIR_PU,#0xbf
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:30: SPI0_CTRL = bS0_CLR_ALL;
	mov	_SPI0_CTRL,#0x02
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:33: for (i = 0; i < 100UL; i++) { __asm nop __endasm; }
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
00103$:
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,#0x64
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00101$
	nop	
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
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
	sjmp	00103$
00101$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:37: SPI0_CTRL = bS0_MOSI_OE | bS0_SCK_OE;
	mov	_SPI0_CTRL,#0x60
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:39: SPI0_CTRL &= ~bS0_DATA_DIR;
	anl	_SPI0_CTRL,#0xef
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:42: SPI0_SETUP = 0x00;
	mov	_SPI0_SETUP,#0x00
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:46: SPI0_CK_SE = 0x20;
	mov	_SPI0_CK_SE,#0x20
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:47: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_write_byte'
;------------------------------------------------------------
;tx            Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:52: static void spi_write_byte(uint8_t tx) {
;	-----------------------------------------
;	 function spi_write_byte
;	-----------------------------------------
_spi_write_byte:
	mov	r7, dpl
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:53: SPI0_CTRL &= ~bS0_DATA_DIR;   // direction = OUT
	anl	_SPI0_CTRL,#0xef
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:54: SPI0_DATA = tx;
	mov	_SPI0_DATA,r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:55: while (!S0_IF_BYTE);
00101$:
	jnb	_S0_IF_BYTE,00101$
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:56: S0_IF_BYTE = 1;
;	assignBit
	setb	_S0_IF_BYTE
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_read_byte'
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:60: static uint8_t spi_read_byte(void) {
;	-----------------------------------------
;	 function spi_read_byte
;	-----------------------------------------
_spi_read_byte:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:61: SPI0_CTRL |= bS0_DATA_DIR;    // direction = IN
	orl	_SPI0_CTRL,#0x10
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:62: SPI0_DATA = 0xFF;
	mov	_SPI0_DATA,#0xff
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:63: while (!S0_IF_BYTE);
00101$:
	jnb	_S0_IF_BYTE,00101$
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:64: S0_IF_BYTE = 1;
;	assignBit
	setb	_S0_IF_BYTE
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:65: return SPI0_DATA;
	mov	dpl, _SPI0_DATA
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reg_read'
;------------------------------------------------------------
;reg           Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:72: uint8_t reg_read(uint8_t reg) {
;	-----------------------------------------
;	 function reg_read
;	-----------------------------------------
_reg_read:
	mov	r7, dpl
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:73: spi_write_byte(reg & 0x7F);   // READ: bit7 = 0
	anl	ar7,#0x7f
	mov	dpl, r7
	lcall	_spi_write_byte
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:74: spi_read_byte();              // dummy to align timing
	lcall	_spi_read_byte
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:75: return spi_read_byte();       // actual data
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:76: }
	ljmp	_spi_read_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'reg_write'
;------------------------------------------------------------
;val           Allocated to stack - _bp -3 +1 
;reg           Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:78: void reg_write(uint8_t reg, uint8_t val) {
;	-----------------------------------------
;	 function reg_write
;	-----------------------------------------
_reg_write:
	push	_bp
	mov	_bp,sp
	mov	r7, dpl
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:79: spi_write_byte(reg | 0x80);   // WRITE: bit7 = 1
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
	lcall	_spi_write_byte
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:80: spi_write_byte(val);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl, @r0
	lcall	_spi_write_byte
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:81: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reg_read_burst'
;------------------------------------------------------------
;buf           Allocated to stack - _bp -5 +3 
;len           Allocated to stack - _bp -6 +1 
;reg           Allocated to registers r7 
;i             Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:83: static void reg_read_burst(uint8_t reg, uint8_t *buf, uint8_t len) {
;	-----------------------------------------
;	 function reg_read_burst
;	-----------------------------------------
_reg_read_burst:
	push	_bp
	mov	_bp,sp
	mov	r7, dpl
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:85: spi_write_byte(reg & 0x7F);   // READ: bit7 = 0
	anl	ar7,#0x7f
	mov	dpl, r7
	lcall	_spi_write_byte
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:86: spi_read_byte();              // dummy
	lcall	_spi_read_byte
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:87: for (i = 0; i < len; i++) {
	mov	r7,#0x00
00103$:
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,r7
	subb	a,@r0
	jnc	00105$
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:88: buf[i] = spi_read_byte();
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r7
	add	a, @r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a, @r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_read_byte
	mov	r3, dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:87: for (i = 0; i < len; i++) {
	inc	r7
	sjmp	00103$
00105$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:90: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'load_calibration'
;------------------------------------------------------------
;buf           Allocated to stack - _bp +1 +2 
;h1_lsb_h2_lsb Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:94: static void load_calibration(void) {
;	-----------------------------------------
;	 function load_calibration
;	-----------------------------------------
_load_calibration:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:98: buf[0] = reg_read(BME680_REG_CALIB_T1_LSB);
	mov	r1,_bp
	inc	r1
	mov	dpl, #0xe9
	push	ar1
	lcall	_reg_read
	mov	a, dpl
	pop	ar1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:99: buf[1] = reg_read(BME680_REG_CALIB_T1_MSB);
	mov	a,r1
	inc	a
	mov	r0,a
	mov	dpl, #0xea
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:100: _calib.T1 = (uint16_t)((buf[1] << 8) | buf[0]);
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	(__calib + 0),r7
	mov	(__calib + 1),r6
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:102: buf[0] = reg_read(BME680_REG_CALIB_T2_LSB);
	mov	dpl, #0x8a
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	a, dpl
	pop	ar0
	pop	ar1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:103: buf[1] = reg_read(BME680_REG_CALIB_T2_MSB);
	mov	dpl, #0x8b
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:104: _calib.T2 = (int16_t)((buf[1] << 8) | buf[0]);
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	((__calib + 0x0002) + 0),r7
	mov	((__calib + 0x0002) + 1),r6
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:106: _calib.T3 = (int8_t)reg_read(BME680_REG_CALIB_T3);
	mov	dpl, #0x8c
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	mov	(__calib + 0x0004),r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:109: buf[0] = reg_read(BME680_REG_CALIB_P1_LSB);
	mov	dpl, #0x8e
	lcall	_reg_read
	mov	a, dpl
	pop	ar0
	pop	ar1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:110: buf[1] = reg_read(BME680_REG_CALIB_P1_MSB);
	mov	dpl, #0x8f
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:111: _calib.P1 = (uint16_t)((buf[1] << 8) | buf[0]);
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	((__calib + 0x0005) + 0),r7
	mov	((__calib + 0x0005) + 1),r6
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:113: buf[0] = reg_read(BME680_REG_CALIB_P2_LSB);
	mov	dpl, #0x90
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	a, dpl
	pop	ar0
	pop	ar1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:114: buf[1] = reg_read(BME680_REG_CALIB_P2_MSB);
	mov	dpl, #0x91
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:115: _calib.P2 = (int16_t)((buf[1] << 8) | buf[0]);
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	((__calib + 0x0007) + 0),r7
	mov	((__calib + 0x0007) + 1),r6
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:117: _calib.P3  = (int8_t)reg_read(BME680_REG_CALIB_P3);
	mov	dpl, #0x92
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	mov	(__calib + 0x0009),r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:119: buf[0] = reg_read(BME680_REG_CALIB_P4_LSB);
	mov	dpl, #0x94
	lcall	_reg_read
	mov	a, dpl
	pop	ar0
	pop	ar1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:120: buf[1] = reg_read(BME680_REG_CALIB_P4_MSB);
	mov	dpl, #0x95
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:121: _calib.P4 = (int16_t)((buf[1] << 8) | buf[0]);
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	((__calib + 0x000a) + 0),r7
	mov	((__calib + 0x000a) + 1),r6
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:123: buf[0] = reg_read(BME680_REG_CALIB_P5_LSB);
	mov	dpl, #0x96
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	a, dpl
	pop	ar0
	pop	ar1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:124: buf[1] = reg_read(BME680_REG_CALIB_P5_MSB);
	mov	dpl, #0x97
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:125: _calib.P5 = (int16_t)((buf[1] << 8) | buf[0]);
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	((__calib + 0x000c) + 0),r7
	mov	((__calib + 0x000c) + 1),r6
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:127: _calib.P6  = (int8_t)reg_read(BME680_REG_CALIB_P6);
	mov	dpl, #0x99
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	mov	(__calib + 0x000e),r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:128: _calib.P7  = (int8_t)reg_read(BME680_REG_CALIB_P7);
	mov	dpl, #0x98
	lcall	_reg_read
	mov	r7, dpl
	mov	(__calib + 0x000f),r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:130: buf[0] = reg_read(BME680_REG_CALIB_P8_LSB);
	mov	dpl, #0x9c
	lcall	_reg_read
	mov	a, dpl
	pop	ar0
	pop	ar1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:131: buf[1] = reg_read(BME680_REG_CALIB_P8_MSB);
	mov	dpl, #0x9d
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:132: _calib.P8 = (int16_t)((buf[1] << 8) | buf[0]);
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	((__calib + 0x0010) + 0),r7
	mov	((__calib + 0x0010) + 1),r6
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:134: buf[0] = reg_read(BME680_REG_CALIB_P9_LSB);
	mov	dpl, #0x9e
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	a, dpl
	pop	ar0
	pop	ar1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:135: buf[1] = reg_read(BME680_REG_CALIB_P9_MSB);
	mov	dpl, #0x9f
	push	ar1
	push	ar0
	lcall	_reg_read
	mov	r7, dpl
	pop	ar0
	pop	ar1
	mov	@r0,ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:136: _calib.P9 = (int16_t)((buf[1] << 8) | buf[0]);
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	((__calib + 0x0012) + 0),r7
	mov	((__calib + 0x0012) + 1),r6
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:138: _calib.P10 = reg_read(BME680_REG_CALIB_P10);
	mov	dpl, #0xa0
	lcall	_reg_read
	mov	a, dpl
	mov	(__calib + 0x0014),a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:141: uint8_t h1_lsb_h2_lsb = reg_read(BME680_REG_CALIB_H1_LSB);
	mov	dpl, #0xe2
	lcall	_reg_read
	mov	r7, dpl
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:142: _calib.H1 = (uint16_t)((reg_read(BME680_REG_CALIB_H1_MSB) << 4) | (h1_lsb_h2_lsb & 0x0F));
	mov	dpl, #0xe3
	push	ar7
	lcall	_reg_read
	mov	r6, dpl
	pop	ar7
	clr	a
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r5,a
	mov	ar3,r7
	anl	ar3,#0x0f
	mov	r4,#0x00
	mov	a,r3
	orl	ar6,a
	mov	a,r4
	orl	ar5,a
	mov	((__calib + 0x0015) + 0),r6
	mov	((__calib + 0x0015) + 1),r5
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:143: _calib.H2 = (uint16_t)((reg_read(BME680_REG_CALIB_H2_MSB) << 4) | (h1_lsb_h2_lsb >> 4));
	mov	dpl, #0xe1
	push	ar7
	lcall	_reg_read
	mov	r6, dpl
	pop	ar7
	clr	a
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r5,a
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	r4,#0x00
	orl	ar6,a
	mov	a,r4
	orl	ar5,a
	mov	((__calib + 0x0017) + 0),r6
	mov	((__calib + 0x0017) + 1),r5
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:144: _calib.H3 = (int8_t)reg_read(BME680_REG_CALIB_H3);
	mov	dpl, #0xe4
	lcall	_reg_read
	mov	r7, dpl
	mov	(__calib + 0x0019),r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:145: _calib.H4 = (int8_t)reg_read(BME680_REG_CALIB_H4);
	mov	dpl, #0xe5
	lcall	_reg_read
	mov	r7, dpl
	mov	(__calib + 0x001a),r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:146: _calib.H5 = (int8_t)reg_read(BME680_REG_CALIB_H5);
	mov	dpl, #0xe6
	lcall	_reg_read
	mov	r7, dpl
	mov	(__calib + 0x001b),r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:147: _calib.H6 = reg_read(BME680_REG_CALIB_H6);
	mov	dpl, #0xe7
	lcall	_reg_read
	mov	a, dpl
	mov	(__calib + 0x001c),a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:148: _calib.H7 = (int8_t)reg_read(BME680_REG_CALIB_H7);
	mov	dpl, #0xe8
	lcall	_reg_read
	mov	r7, dpl
	mov	(__calib + 0x001d),r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:149: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compensate_temperature'
;------------------------------------------------------------
;adc_T         Allocated to registers r4 r5 r6 r7 
;var1          Allocated to stack - _bp +5 +4 
;var2          Allocated to stack - _bp +9 +4 
;var3          Allocated to registers r4 r5 r6 r7 
;T             Allocated to registers r4 r5 r6 r7 
;sloc0         Allocated to stack - _bp +1 +4 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:153: static int32_t compensate_temperature(uint32_t adc_T) {
;	-----------------------------------------
;	 function compensate_temperature
;	-----------------------------------------
_compensate_temperature:
	push	_bp
	mov	_bp,sp
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0x0c
	mov	sp,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:156: var1 = ((int32_t)adc_T >> 3) - ((int32_t)_calib.T1 << 1);
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	mov	a,r5
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1f
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0xe0
	orl	a,@r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,r7
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1f
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	jnb	acc.4,00103$
	orl	a,#0xffffffe0
00103$:
	inc	r0
	mov	@r0,a
	mov	r2,(__calib + 0)
	mov	r3,(__calib + 1)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r3
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:157: var2 = (var1 * (int32_t)_calib.T2) >> 11;
	mov	r4,(__calib + 0x0002)
	mov	a,((__calib + 0x0002) + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar5
	mov	a,r6
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1f
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0xe0
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	jnb	acc.4,00104$
	orl	a,#0xe0
00104$:
	inc	r0
	mov	@r0,a
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:158: var3 = ((var1 >> 1) * (var1 >> 1)) >> 12;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	rrc	a
	mov	r7,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r6,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r3,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r2,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl, r2
	mov	dph, r3
	mov	b, r6
	mov	a, r7
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	mov	a,r6
	swap	a
	xch	a,@r0
	swap	a
	anl	a,#0x0f
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x0f
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r7
	swap	a
	anl	a,#0xf0
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	swap	a
	anl	a,#0x0f
	jnb	acc.3,00105$
	orl	a,#0xf0
00105$:
	inc	r0
	mov	@r0,a
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:159: var3 = (var3 * ((int32_t)_calib.T3 << 4)) >> 14;
	mov	a,(__calib + 0x0004)
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r6,a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,r3
	swap	a
	anl	a,#0x0f
	orl	a,r6
	mov	r6,a
	mov	a,r3
	swap	a
	anl	a,#0xf0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	ar4,r5
	mov	a,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x03
	mov	r5,a
	mov	a,r7
	add	a,r7
	add	a,acc
	orl	a,r5
	mov	r5,a
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x03
	jnb	acc.1,00106$
	orl	a,#0xfc
00106$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:160: _t_fine = var2 + var3;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,r4
	add	a, @r0
	mov	__t_fine,a
	mov	a,r5
	inc	r0
	addc	a, @r0
	mov	(__t_fine + 1),a
	mov	a,r6
	inc	r0
	addc	a, @r0
	mov	(__t_fine + 2),a
	mov	a,r7
	inc	r0
	addc	a, @r0
	mov	(__t_fine + 3),a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:161: T = (_t_fine * 5 + 128) >> 8;   // degrees C * 100
	push	__t_fine
	push	(__t_fine + 1)
	push	(__t_fine + 2)
	push	(__t_fine + 3)
	mov	dptr,#0x0005
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
	mov	a,#0x80
	add	a, r4
	clr	a
	addc	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
	clr	a
	addc	a, r7
	mov	r7,a
	mov	ar4,r5
	mov	ar5,r6
	mov	a,r7
	mov	r6,a
	rlc	a
	subb	a,acc
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:162: return T;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:163: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compensate_pressure'
;------------------------------------------------------------
;adc_P         Allocated to stack - _bp +1 +4 
;var1          Allocated to registers r4 r5 r6 r7 
;var2          Allocated to stack - _bp +17 +4 
;var3          Allocated to stack - _bp +21 +4 
;P             Allocated to registers r4 r5 r6 r7 
;sloc0         Allocated to stack - _bp +5 +4 
;sloc1         Allocated to stack - _bp +9 +4 
;sloc2         Allocated to stack - _bp +13 +4 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:165: static uint32_t compensate_pressure(uint32_t adc_P) {
;	-----------------------------------------
;	 function compensate_pressure
;	-----------------------------------------
_compensate_pressure:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x14
	mov	sp,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:169: var1 = (((int32_t)_t_fine) >> 1) - 64000;
	mov	a,(__t_fine + 3)
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,(__t_fine + 2)
	rrc	a
	mov	r6,a
	mov	a,(__t_fine + 1)
	rrc	a
	mov	r3,a
	mov	a,__t_fine
	rrc	a
	mov	r2,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	mov	a,r3
	add	a,#0x06
	inc	r0
	mov	@r0,a
	mov	a,r6
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r7
	addc	a,#0xff
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:170: var2 = (((var1 >> 2) * (var1 >> 2)) >> 11) * (int32_t)_calib.P6;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	rrc	a
	mov	r7,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r6,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r5,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r4,a
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x09
	xch	a,r0
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
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	inc	r0
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	xch	a,@r1
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,@r1
	xch	a,@r1
	anl	a,#0x1f
	xch	a,@r1
	xrl	a,@r1
	xch	a,@r1
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0xe0
	orl	a,@r1
	mov	@r1,a
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0x1f
	jnb	acc.4,00122$
	orl	a,#0xe0
00122$:
	inc	r1
	mov	@r1,a
	rlc	a
	subb	a,acc
	inc	r1
	mov	@r1,a
	mov	a,(__calib + 0x000e)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r6,a
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:171: var2 = var2 + ((var1 * (int32_t)_calib.P5) << 1);
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x0d
	xch	a,r0
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
	mov	r2,(__calib + 0x000c)
	mov	a,((__calib + 0x000c) + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,r4
	add	a, @r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a, @r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a, @r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a, @r0
	mov	r7,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:172: var2 = (var2 >> 2) + ((int32_t)_calib.P4 << 16);
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,r7
	mov	c,acc.7
	rrc	a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,a
	mov	a,r6
	rrc	a
	dec	r0
	mov	@r0,a
	mov	a,r5
	rrc	a
	dec	r0
	mov	@r0,a
	mov	a,r4
	rrc	a
	dec	r0
	mov	@r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	mov	r2,(__calib + 0x000a)
	mov	a,((__calib + 0x000a) + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	ar7,r3
	mov	ar6,r2
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,r2
	add	a, @r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	addc	a, @r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a, @r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a, @r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:173: var1 = (((((var1 >> 2) * (var1 >> 2)) >> 13) *
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	@r0,a
	inc	r0
	inc	r0
	mov	a,@r0
	dec	r0
	dec	r0
	swap	a
	rr	a
	xch	a,@r0
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x07
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	inc	r0
	inc	r0
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0xf8
	dec	r0
	dec	r0
	orl	a,@r0
	mov	@r0,a
	inc	r0
	inc	r0
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0x07
	jnb	acc.2,00123$
	orl	a,#0xf8
00123$:
	dec	r0
	mov	@r0,a
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:174: ((int32_t)_calib.P3 << 5)) >> 3) +
	mov	a,(__calib + 0x0009)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r6,a
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xe0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	orl	a,r6
	mov	r6,a
	mov	a,r5
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r4
	swap	a
	rl	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xe0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar4
	mov	a,r5
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1f
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0xe0
	orl	a,@r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,r7
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1f
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	jnb	acc.4,00124$
	orl	a,#0xffffffe0
00124$:
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:175: (((int32_t)_calib.P2 * var1) >> 1);
	mov	r2,(__calib + 0x0007)
	mov	a,((__calib + 0x0007) + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl, r2
	mov	dph, r3
	mov	b, r6
	mov	a, r7
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,r4
	add	a, @r0
	mov	a,r5
	inc	r0
	addc	a, @r0
	mov	a,r6
	inc	r0
	addc	a, @r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a, @r0
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:176: var1 = var1 >> 18;
	mov	ar4,r6
	mov	c,acc.7
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	c,acc.7
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:177: var1 = ((32768 + var1) * (int32_t)_calib.P1) >> 15;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar4
	mov	a,#0x80
	add	a, r5
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
	mov	r2,(__calib + 0x0005)
	mov	r3,((__calib + 0x0005) + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar5
	mov	a,r6
	mov	c,acc.7
	xch	a,@r0
	rlc	a
	xch	a,@r0
	rlc	a
	xch	a,@r0
	anl	a,#0x01
	inc	r0
	mov	@r0,a
	mov	a,r7
	add	a,r7
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	rl	a
	anl	a,#0x01
	jnb	acc.0,00125$
	orl	a,#0xfe
00125$:
	inc	r0
	mov	@r0,a
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:179: if (var1 == 0) return 0;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	dptr,#0x0000
	clr	a
	mov	b,a
	ljmp	00106$
00102$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:181: P    = (uint32_t)(((int32_t)1048576 - (int32_t)adc_P) - (var2 >> 12));
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	clr	a
	clr	c
	subb	a,r2
	mov	@r0,a
	clr	a
	subb	a,r3
	inc	r0
	mov	@r0,a
	mov	a,#0x10
	subb	a,r6
	inc	r0
	mov	@r0,a
	clr	a
	subb	a,r7
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	inc	r0
	mov	a,@r0
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,@r0
	swap	a
	anl	a,#0x0f
	jnb	acc.3,00127$
	orl	a,#0xf0
00127$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:182: P    = (uint32_t)((P * (uint32_t)3125));
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:183: if (P < 0x80000000UL)
	mov	dptr,#0x0c35
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
	mov	a,#0x100 - 0x80
	add	a,r7
	jc	00104$
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:184: P = (P << 1) / (uint32_t)var1;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,r4
	add	a,r4
	mov	@r0,a
	mov	a,r5
	rlc	a
	inc	r0
	mov	@r0,a
	mov	a,r6
	rlc	a
	inc	r0
	mov	@r0,a
	mov	a,r7
	rlc	a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__divulong
	xch	a,r0
	mov	a,_bp
	add	a,#0x09
	xch	a,r0
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
	sjmp	00105$
00104$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:186: P = (P / (uint32_t)var1) * 2;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divulong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,r4
	add	a,r4
	mov	@r0,a
	mov	a,r5
	rlc	a
	inc	r0
	mov	@r0,a
	mov	a,r6
	rlc	a
	inc	r0
	mov	@r0,a
	mov	a,r7
	rlc	a
	inc	r0
	mov	@r0,a
00105$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:188: var1 = ((int32_t)_calib.P9 * (int32_t)(((P >> 3) * (P >> 3)) >> 13)) >> 12;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,(__calib + 0x0012)
	inc	r0
	mov	a,((__calib + 0x0012) + 1)
	mov	@r0,a
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0xe0
	orl	a,r5
	mov	r5,a
	mov	ar6,@r0
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	ar4,r5
	mov	a,r6
	swap	a
	rr	a
	xch	a,r4
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r4
	xch	a,r4
	anl	a,#0x07
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0x07
	mov	r6,a
	mov	r7,#0x00
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar5
	mov	a,r6
	swap	a
	xch	a,@r0
	swap	a
	anl	a,#0x0f
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x0f
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r7
	swap	a
	anl	a,#0xf0
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	swap	a
	anl	a,#0x0f
	jnb	acc.3,00129$
	orl	a,#0xf0
00129$:
	inc	r0
	mov	@r0,a
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:189: var2 = ((int32_t)(P >> 2) * (int32_t)_calib.P8) >> 13;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	r7,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r6,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r3,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r2,a
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	r4,(__calib + 0x0010)
	mov	a,((__calib + 0x0010) + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar5
	mov	a,r6
	swap	a
	rr	a
	xch	a,@r0
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x07
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0x07
	jnb	acc.2,00130$
	orl	a,#0xf8
00130$:
	inc	r0
	mov	@r0,a
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:190: var3 = ((int32_t)(P >> 8) * (int32_t)(P >> 8) * (int32_t)(P >> 8) *
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	clr	a
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:191: (int32_t)_calib.P10) >> 17;
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
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
	mov	r2,(__calib + 0x0014)
	mov	r3,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar6
	mov	a,r7
	mov	c,acc.7
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:193: P = (uint32_t)((int32_t)P + ((var1 + var2 + var3 + ((int32_t)_calib.P7 << 7)) >> 4));
	mov	a,_bp
	add	a,#0x09
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	mov	a,@r1
	add	a, @r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a, @r0
	mov	r5,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a, @r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a, @r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	a,@r0
	add	a, r4
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a, r5
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a, r6
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a, r7
	inc	r1
	mov	@r1,a
	mov	a,(__calib + 0x000f)
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r6,a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	a,r3
	clr	c
	rrc	a
	orl	a,r6
	mov	r6,a
	mov	a,r3
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,r2
	add	a, @r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a, @r0
	mov	r3,a
	mov	a,r6
	inc	r0
	addc	a, @r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a, @r0
	mov	r7,a
	mov	a,r3
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r3
	mov	r3,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.3,00131$
	orl	a,#0xfffffff0
00131$:
	mov	r7,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,r2
	add	a, @r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a, @r0
	mov	r3,a
	mov	a,r6
	inc	r0
	addc	a, @r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a, @r0
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:194: return P;   // Pa
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
00106$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:195: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compensate_humidity'
;------------------------------------------------------------
;adc_H         Allocated to registers r6 r7 
;var1          Allocated to stack - _bp +9 +4 
;var2          Allocated to registers r4 r5 r6 r7 
;var3          Allocated to stack - _bp +13 +4 
;var4          Allocated to stack - _bp +17 +4 
;var5          Allocated to registers r4 r5 r6 r7 
;var6          Allocated to registers r4 r5 r6 r7 
;H             Allocated to registers r4 r5 r6 r7 
;sloc0         Allocated to stack - _bp +1 +4 
;sloc1         Allocated to stack - _bp +5 +4 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:197: static uint32_t compensate_humidity(uint16_t adc_H) {
;	-----------------------------------------
;	 function compensate_humidity
;	-----------------------------------------
_compensate_humidity:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x14
	mov	sp,a
	mov	r6, dpl
	mov	r7, dph
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:201: var1 = (int32_t)adc_H - ((int32_t)((int32_t)_calib.H1 << 4)) -
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	r2,(__calib + 0x0015)
	mov	r3,((__calib + 0x0015) + 1)
	clr	a
	mov	r6,a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,r3
	swap	a
	anl	a,#0x0f
	orl	a,r6
	mov	r6,a
	mov	a,r3
	swap	a
	anl	a,#0xf0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r3
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:202: (((int32_t)_t_fine * (int32_t)_calib.H3) / ((int32_t)100) >> 1);
	mov	a,(__calib + 0x0019)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r6,a
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, __t_fine
	mov	dph, (__t_fine + 1)
	mov	b, (__t_fine + 2)
	mov	a, (__t_fine + 3)
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divslong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,r4
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r5
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r1
	mov	@r1,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:203: var2 = ((int32_t)_calib.H2 *
	mov	r0,_bp
	inc	r0
	mov	@r0,(__calib + 0x0017)
	inc	r0
	mov	@r0,((__calib + 0x0017) + 1)
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:204: (((int32_t)_t_fine * (int32_t)_calib.H4) / ((int32_t)100) +
	mov	a,(__calib + 0x001a)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r6,a
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, __t_fine
	mov	dph, (__t_fine + 1)
	mov	b, (__t_fine + 2)
	mov	a, (__t_fine + 3)
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:205: (((int32_t)_t_fine * ((int32_t)_t_fine * (int32_t)_calib.H5) /
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divslong
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
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
	mov	a,(__calib + 0x001b)
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r6,a
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl, __t_fine
	mov	dph, (__t_fine + 1)
	mov	b, (__t_fine + 2)
	mov	a, (__t_fine + 3)
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, __t_fine
	mov	dph, (__t_fine + 1)
	mov	b, (__t_fine + 2)
	mov	a, (__t_fine + 3)
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divslong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r5
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x03
	mov	r5,a
	mov	a,r6
	add	a,r6
	add	a,acc
	orl	a,r5
	mov	r5,a
	mov	a,r7
	mov	c,acc.7
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	mov	c,acc.7
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x03
	jnb	acc.1,00112$
	orl	a,#0xfffffffc
00112$:
	mov	r7,a
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divslong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r4
	add	a, @r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a, @r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a, @r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a, @r0
	mov	r7,a
	mov	a,#0x40
	add	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
	clr	a
	addc	a, r7
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	ar4,r5
	mov	a,r6
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	c,acc.7
	rrc	a
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:207: var3 = var1 * var2;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:208: var4 = (int32_t)_calib.H6;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x0d
	xch	a,r0
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
	mov	r2,(__calib + 0x001c)
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:209: var4 = ((var4 << 7) + ((int32_t)_t_fine * (int32_t)_calib.H7) /
	clr	a
	mov	r3,a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	inc	r0
	mov	@r0,ar6
	mov	a,r7
	anl	a,#0x01
	mov	c,acc.0
	xch	a,@r0
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r3
	clr	c
	rrc	a
	dec	r0
	orl	a,@r0
	mov	@r0,a
	dec	r0
	dec	r0
	mov	@r0,ar2
	mov	a,r3
	anl	a,#0x01
	mov	c,acc.0
	xch	a,@r0
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,(__calib + 0x001d)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r6,a
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, __t_fine
	mov	dph, (__t_fine + 1)
	mov	b, (__t_fine + 2)
	mov	a, (__t_fine + 3)
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divslong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r4
	add	a, @r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a, @r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a, @r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a, @r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar4
	mov	a,r5
	swap	a
	xch	a,@r0
	swap	a
	anl	a,#0x0f
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x0f
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,@r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,r7
	swap	a
	xch	a,@r0
	swap	a
	anl	a,#0x0f
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x0f
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	jnb	acc.3,00113$
	orl	a,#0xfffffff0
00113$:
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:211: var5 = ((var3 >> 14) * (var3 >> 14)) >> 10;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x03
	mov	r3,a
	inc	r0
	mov	a,@r0
	add	a,@r0
	add	a,acc
	orl	a,r3
	mov	r3,a
	mov	a,@r0
	rl	a
	rl	a
	anl	a,#0x03
	jnb	acc.1,00114$
	orl	a,#0xfc
00114$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl, r2
	mov	dph, r3
	mov	b, r6
	mov	a, r7
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	ar4,r5
	mov	a,r6
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	c,acc.7
	rrc	a
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:212: var6 = (var4 * var5) >> 1;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	inc	r0
	mov	a, @r0
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:213: H    = (uint32_t)((var3 + var6) >> 12);
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,r4
	add	a, @r0
	mov	a,r5
	inc	r0
	addc	a, @r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a, @r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a, @r0
	mov	r7,a
	mov	ar4,r5
	mov	a,r6
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r7
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	anl	a,#0x0f
	jnb	acc.3,00115$
	orl	a,#0xf0
00115$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:214: H    = (uint32_t)(((uint32_t)H * (uint32_t)1000) >> 12);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	ar4,r5
	mov	a,r6
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r7
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	r6,a
	mov	r7,#0x00
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:216: if (H > 100000) H = 100000;
	clr	c
	mov	a,#0xa0
	subb	a,r4
	mov	a,#0x86
	subb	a,r5
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00102$
	mov	r4,#0xa0
	mov	r5,#0x86
	mov	r6,#0x01
	mov	r7,#0x00
00102$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:217: return H;
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:218: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BME680_init'
;------------------------------------------------------------
;chip_id       Allocated to registers r7 
;i             Allocated to stack - _bp +1 +4 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:222: uint8_t BME680_init(void) {
;	-----------------------------------------
;	 function BME680_init
;	-----------------------------------------
_BME680_init:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:225: Serial_println("SPI init...");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_Serial_println
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:226: spi_init();
	lcall	_spi_init
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:237: for (i = 0; i < 20000UL; i++) { __asm nop __endasm; }
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
00105$:
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,#0x20
	inc	r0
	mov	a,@r0
	subb	a,#0x4e
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00101$
	nop	
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
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
	sjmp	00105$
00101$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:241: chip_id = reg_read(BME680_REG_CHIP_ID);
	mov	dpl, #0xd0
	lcall	_reg_read
	mov	r7, dpl
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:242: Serial_print("Chip ID: ");
	mov	dptr,#___str_1
	mov	b, #0x80
	push	ar7
	lcall	_Serial_print
	pop	ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:243: Serial_print_uint(chip_id);
	mov	ar5,r7
	mov	r6,#0x00
	mov	dpl, r5
	mov	dph, r6
	push	ar7
	lcall	_Serial_print_uint
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:244: Serial_println("");
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_Serial_println
	pop	ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:246: if (chip_id != BME680_CHIP_ID) {
	cjne	r7,#0x61,00128$
	sjmp	00103$
00128$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:247: Serial_println("Chip ID FAILED - expected 97");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_Serial_println
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:248: _state = BME680_STATE_ERROR;
	mov	__state,#0x05
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:249: return 0;
	mov	dpl, #0x00
	sjmp	00107$
00103$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:252: Serial_println("Chip ID OK");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_Serial_println
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:255: load_calibration();
	lcall	_load_calibration
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:256: Serial_print("T1 calib: ");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_Serial_print
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:257: Serial_print_uint(_calib.T1);
	mov	dpl,__calib
	mov	dph,(__calib + 1)
	lcall	_Serial_print_uint
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:258: Serial_println("");
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_Serial_println
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:261: reg_write(BME680_REG_CTRL_HUM,  BME680_OS_1X);
	mov	a,#0x01
	push	acc
	mov	dpl, #0x72
	lcall	_reg_write
	dec	sp
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:262: reg_write(BME680_REG_CTRL_MEAS, (BME680_OS_2X << 5) | (BME680_OS_4X << 2) | BME680_MODE_SLEEP);
	mov	a,#0x4c
	push	acc
	mov	dpl, #0x74
	lcall	_reg_write
	dec	sp
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:265: reg_write(BME680_REG_CONFIG, (BME680_FILTER_4 << 2));
	mov	a,#0x08
	push	acc
	mov	dpl, #0x75
	lcall	_reg_write
	dec	sp
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:268: reg_write(BME680_REG_CTRL_GAS1, 0x00);
	clr	a
	push	acc
	mov	dpl, #0x71
	lcall	_reg_write
	dec	sp
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:270: _state = BME680_STATE_IDLE;
	mov	__state,#0x00
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:271: return 1;
	mov	dpl, #0x01
00107$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:272: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BME680_update'
;------------------------------------------------------------
;out           Allocated to stack - _bp -5 +3 
;tick          Allocated to registers r6 r7 
;raw           Allocated to stack - _bp +8 +8 
;adc_T         Allocated to stack - _bp +16 +4 
;adc_P         Allocated to stack - _bp +20 +4 
;adc_H         Allocated to stack - _bp +24 +2 
;status        Allocated to registers 
;sloc0         Allocated to stack - _bp +1 +4 
;sloc1         Allocated to stack - _bp +5 +3 
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:274: uint8_t BME680_update(unsigned int tick, BME680_Data *out) {
;	-----------------------------------------
;	 function BME680_update
;	-----------------------------------------
_BME680_update:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x19
	mov	sp,a
	mov	r6, dpl
	mov	r7, dph
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:280: switch (_state) {
	mov	a,__state
	add	a,#0xff - 0x05
	jnc	00133$
	ljmp	00112$
00133$:
	mov	a,__state
	mov	b,#0x03
	mul	ab
	mov	dptr,#00134$
	jmp	@a+dptr
00134$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00106$
	ljmp	00109$
	ljmp	00112$
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:282: case BME680_STATE_IDLE:
00101$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:283: _state = BME680_STATE_TRIGGER;
	mov	__state,#0x01
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:284: break;
	ljmp	00112$
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:286: case BME680_STATE_TRIGGER:
00102$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:287: reg_write(BME680_REG_CTRL_MEAS,
	push	ar7
	push	ar6
	mov	a,#0x4d
	push	acc
	mov	dpl, #0x74
	lcall	_reg_write
	dec	sp
	pop	ar6
	pop	ar7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:289: _wait_start = tick;
	mov	__wait_start,r6
	mov	(__wait_start + 1),r7
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:290: _state = BME680_STATE_WAITING;
	mov	__state,#0x02
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:291: break;
	ljmp	00112$
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:293: case BME680_STATE_WAITING:
00103$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:294: if ((tick - _wait_start) >= BME680_MEAS_WAIT_TICKS) {
	mov	a,r6
	clr	c
	subb	a,__wait_start
	mov	r6,a
	mov	a,r7
	subb	a,(__wait_start + 1)
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x19
	mov	a,r7
	subb	a,#0x00
	jnc	00135$
	ljmp	00112$
00135$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:295: _state = BME680_STATE_READ;
	mov	__state,#0x03
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:297: break;
	ljmp	00112$
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:299: case BME680_STATE_READ:
00106$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:300: status = reg_read(BME680_REG_MEAS_STATUS);
	mov	dpl, #0x1d
	lcall	_reg_read
	mov	a, dpl
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:301: if (status & 0x80) {
	jb	acc.7,00136$
	ljmp	00112$
00136$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:302: reg_read_burst(BME680_REG_PRES_MSB, raw, 8);
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar1
	mov	a,#0x08
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, #0x1f
	lcall	_reg_read_burst
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:304: adc_P = ((uint32_t)raw[0] << 12) |
	mov	ar7,@r1
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar6
	mov	a,r5
	swap	a
	anl	a,#0xf0
	xch	a,@r0
	swap	a
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0xf0
	xch	a,@r0
	xrl	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r7
	swap	a
	anl	a,#0x0f
	dec	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	swap	a
	anl	a,#0xf0
	dec	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:305: ((uint32_t)raw[1] << 4)  |
	mov	a,r1
	inc	a
	mov	r0,a
	mov	ar3,@r0
	mov	ar2,r3
	clr	a
	mov	r3,a
	mov	r6,a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,r3
	swap	a
	anl	a,#0x0f
	orl	a,r6
	mov	r6,a
	mov	a,r3
	swap	a
	anl	a,#0xf0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,r2
	orl	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:306: ((uint32_t)raw[2] >> 4);
	mov	a,#0x02
	add	a, r1
	mov	r0,a
	mov	ar5,@r0
	mov	ar4,r5
	clr	a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	a,r4
	orl	a,@r0
	mov	@r1,a
	mov	a,r5
	inc	r0
	orl	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r6
	inc	r0
	orl	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:308: adc_T = ((uint32_t)raw[3] << 12) |
	mov	a,#0x03
	add	a, r1
	mov	r0,a
	mov	ar3,@r0
	mov	ar2,r3
	mov	r3,#0x00
	mov	r6,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar3
	mov	a,r6
	swap	a
	anl	a,#0xf0
	xch	a,@r0
	swap	a
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0xf0
	xch	a,@r0
	xrl	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r2
	swap	a
	anl	a,#0x0f
	dec	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r2
	swap	a
	anl	a,#0xf0
	dec	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:309: ((uint32_t)raw[4] << 4)  |
	mov	a,#0x04
	add	a, r1
	mov	r0,a
	mov	ar5,@r0
	mov	ar4,r5
	clr	a
	mov	r5,a
	mov	r6,a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,r5
	swap	a
	anl	a,#0x0f
	orl	a,r6
	mov	r6,a
	mov	a,r5
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,r4
	orl	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:310: ((uint32_t)raw[5] >> 4);
	mov	a,#0x05
	add	a, r1
	mov	r0,a
	mov	ar3,@r0
	mov	ar2,r3
	clr	a
	mov	r3,a
	mov	r6,a
	mov	r7,a
	mov	a,r3
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r3
	mov	r3,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,r2
	orl	a,@r0
	mov	@r1,a
	mov	a,r3
	inc	r0
	orl	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r6
	inc	r0
	orl	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:312: adc_H = ((uint16_t)raw[6] << 8) | raw[7];
	mov	a,#0x06
	add	a, r1
	mov	r0,a
	mov	ar5,@r0
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,#0x07
	add	a, r1
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	a,r7
	orl	a,r5
	mov	@r0,a
	mov	a,r6
	orl	a,r4
	inc	r0
	mov	@r0,a
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:314: out->temperature = compensate_temperature(adc_T);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	clr	a
	lcall	_compensate_temperature
	mov	r2, dpl
	mov	r4, dph
	mov	r5, b
	mov	r7, a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:315: out->pressure    = compensate_pressure(adc_P);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x04
	add	a, @r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a, @r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	inc	r0
	mov	b, @r0
	clr	a
	lcall	_compensate_pressure
	mov	r2, dpl
	mov	r3, dph
	mov	r4, b
	mov	r7, a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:316: out->humidity    = compensate_humidity(adc_H);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x08
	add	a, @r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a, @r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	lcall	_compensate_humidity
	mov	r2, dpl
	mov	r3, dph
	mov	r4, b
	mov	r7, a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:318: _state = BME680_STATE_DONE;
	mov	__state,#0x04
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:319: return 1;
	mov	dpl, #0x01
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:323: case BME680_STATE_DONE:
	sjmp	00113$
00109$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:324: _state = BME680_STATE_IDLE;
	mov	__state,#0x00
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:330: }
00112$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:332: return 0;
	mov	dpl, #0x00
00113$:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:333: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BME680_getState'
;------------------------------------------------------------
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:335: BME680_State BME680_getState(void) {
;	-----------------------------------------
;	 function BME680_getState
;	-----------------------------------------
_BME680_getState:
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:336: return _state;
	mov	dpl, __state
;	C:\Users\Clovisf\Documents\ch552\bme680\BME680.c:337: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "SPI init..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Chip ID: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Chip ID FAILED - expected 97"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Chip ID OK"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "T1 calib: "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
