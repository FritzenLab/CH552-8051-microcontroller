                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module external_interrupt_led
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_init
                                     13 	.globl _INT1_ISR
                                     14 	.globl _Serial_println_uint
                                     15 	.globl _Serial_println
                                     16 	.globl _Serial_begin
                                     17 	.globl _UIF_BUS_RST
                                     18 	.globl _UIF_DETECT
                                     19 	.globl _UIF_TRANSFER
                                     20 	.globl _UIF_SUSPEND
                                     21 	.globl _UIF_HST_SOF
                                     22 	.globl _UIF_FIFO_OV
                                     23 	.globl _U_SIE_FREE
                                     24 	.globl _U_TOG_OK
                                     25 	.globl _U_IS_NAK
                                     26 	.globl _ADC_CHAN0
                                     27 	.globl _ADC_CHAN1
                                     28 	.globl _CMP_CHAN
                                     29 	.globl _ADC_START
                                     30 	.globl _ADC_IF
                                     31 	.globl _CMP_IF
                                     32 	.globl _CMPO
                                     33 	.globl _U1RI
                                     34 	.globl _U1TI
                                     35 	.globl _U1RB8
                                     36 	.globl _U1TB8
                                     37 	.globl _U1REN
                                     38 	.globl _U1SMOD
                                     39 	.globl _U1SM0
                                     40 	.globl _S0_R_FIFO
                                     41 	.globl _S0_T_FIFO
                                     42 	.globl _S0_FREE
                                     43 	.globl _S0_IF_BYTE
                                     44 	.globl _S0_IF_FIRST
                                     45 	.globl _S0_IF_OV
                                     46 	.globl _S0_FST_ACT
                                     47 	.globl _CP_RL2
                                     48 	.globl _C_T2
                                     49 	.globl _TR2
                                     50 	.globl _EXEN2
                                     51 	.globl _TCLK
                                     52 	.globl _RCLK
                                     53 	.globl _EXF2
                                     54 	.globl _CAP1F
                                     55 	.globl _TF2
                                     56 	.globl _RI
                                     57 	.globl _TI
                                     58 	.globl _RB8
                                     59 	.globl _TB8
                                     60 	.globl _REN
                                     61 	.globl _SM2
                                     62 	.globl _SM1
                                     63 	.globl _SM0
                                     64 	.globl _IT0
                                     65 	.globl _IE0
                                     66 	.globl _IT1
                                     67 	.globl _IE1
                                     68 	.globl _TR0
                                     69 	.globl _TF0
                                     70 	.globl _TR1
                                     71 	.globl _TF1
                                     72 	.globl _RXD
                                     73 	.globl _PWM1_
                                     74 	.globl _TXD
                                     75 	.globl _PWM2_
                                     76 	.globl _AIN3
                                     77 	.globl _VBUS1
                                     78 	.globl _INT0
                                     79 	.globl _TXD1_
                                     80 	.globl _INT1
                                     81 	.globl _T0
                                     82 	.globl _RXD1_
                                     83 	.globl _PWM2
                                     84 	.globl _T1
                                     85 	.globl _UDP
                                     86 	.globl _UDM
                                     87 	.globl _TIN0
                                     88 	.globl _CAP1
                                     89 	.globl _T2
                                     90 	.globl _AIN0
                                     91 	.globl _VBUS2
                                     92 	.globl _TIN1
                                     93 	.globl _CAP2
                                     94 	.globl _T2EX
                                     95 	.globl _RXD_
                                     96 	.globl _TXD_
                                     97 	.globl _AIN1
                                     98 	.globl _UCC1
                                     99 	.globl _TIN2
                                    100 	.globl _SCS
                                    101 	.globl _CAP1_
                                    102 	.globl _T2_
                                    103 	.globl _AIN2
                                    104 	.globl _UCC2
                                    105 	.globl _TIN3
                                    106 	.globl _PWM1
                                    107 	.globl _MOSI
                                    108 	.globl _TIN4
                                    109 	.globl _RXD1
                                    110 	.globl _MISO
                                    111 	.globl _TIN5
                                    112 	.globl _TXD1
                                    113 	.globl _SCK
                                    114 	.globl _IE_SPI0
                                    115 	.globl _IE_TKEY
                                    116 	.globl _IE_USB
                                    117 	.globl _IE_ADC
                                    118 	.globl _IE_UART1
                                    119 	.globl _IE_PWMX
                                    120 	.globl _IE_GPIO
                                    121 	.globl _IE_WDOG
                                    122 	.globl _PX0
                                    123 	.globl _PT0
                                    124 	.globl _PX1
                                    125 	.globl _PT1
                                    126 	.globl _PS
                                    127 	.globl _PT2
                                    128 	.globl _PL_FLAG
                                    129 	.globl _PH_FLAG
                                    130 	.globl _EX0
                                    131 	.globl _ET0
                                    132 	.globl _EX1
                                    133 	.globl _ET1
                                    134 	.globl _ES
                                    135 	.globl _ET2
                                    136 	.globl _E_DIS
                                    137 	.globl _EA
                                    138 	.globl _P
                                    139 	.globl _F1
                                    140 	.globl _OV
                                    141 	.globl _RS0
                                    142 	.globl _RS1
                                    143 	.globl _F0
                                    144 	.globl _AC
                                    145 	.globl _CY
                                    146 	.globl _UEP1_DMA_H
                                    147 	.globl _UEP1_DMA_L
                                    148 	.globl _UEP1_DMA
                                    149 	.globl _UEP0_DMA_H
                                    150 	.globl _UEP0_DMA_L
                                    151 	.globl _UEP0_DMA
                                    152 	.globl _UEP2_3_MOD
                                    153 	.globl _UEP4_1_MOD
                                    154 	.globl _UEP3_DMA_H
                                    155 	.globl _UEP3_DMA_L
                                    156 	.globl _UEP3_DMA
                                    157 	.globl _UEP2_DMA_H
                                    158 	.globl _UEP2_DMA_L
                                    159 	.globl _UEP2_DMA
                                    160 	.globl _USB_DEV_AD
                                    161 	.globl _USB_CTRL
                                    162 	.globl _USB_INT_EN
                                    163 	.globl _UEP4_T_LEN
                                    164 	.globl _UEP4_CTRL
                                    165 	.globl _UEP0_T_LEN
                                    166 	.globl _UEP0_CTRL
                                    167 	.globl _USB_RX_LEN
                                    168 	.globl _USB_MIS_ST
                                    169 	.globl _USB_INT_ST
                                    170 	.globl _USB_INT_FG
                                    171 	.globl _UEP3_T_LEN
                                    172 	.globl _UEP3_CTRL
                                    173 	.globl _UEP2_T_LEN
                                    174 	.globl _UEP2_CTRL
                                    175 	.globl _UEP1_T_LEN
                                    176 	.globl _UEP1_CTRL
                                    177 	.globl _UDEV_CTRL
                                    178 	.globl _USB_C_CTRL
                                    179 	.globl _TKEY_DATH
                                    180 	.globl _TKEY_DATL
                                    181 	.globl _TKEY_DAT
                                    182 	.globl _TKEY_CTRL
                                    183 	.globl _ADC_DATA
                                    184 	.globl _ADC_CFG
                                    185 	.globl _ADC_CTRL
                                    186 	.globl _SBAUD1
                                    187 	.globl _SBUF1
                                    188 	.globl _SCON1
                                    189 	.globl _SPI0_SETUP
                                    190 	.globl _SPI0_CK_SE
                                    191 	.globl _SPI0_CTRL
                                    192 	.globl _SPI0_DATA
                                    193 	.globl _SPI0_STAT
                                    194 	.globl _PWM_CK_SE
                                    195 	.globl _PWM_CTRL
                                    196 	.globl _PWM_DATA1
                                    197 	.globl _PWM_DATA2
                                    198 	.globl _T2CAP1H
                                    199 	.globl _T2CAP1L
                                    200 	.globl _T2CAP1
                                    201 	.globl _TH2
                                    202 	.globl _TL2
                                    203 	.globl _T2COUNT
                                    204 	.globl _RCAP2H
                                    205 	.globl _RCAP2L
                                    206 	.globl _RCAP2
                                    207 	.globl _T2MOD
                                    208 	.globl _T2CON
                                    209 	.globl _SBUF
                                    210 	.globl _SCON
                                    211 	.globl _TH1
                                    212 	.globl _TH0
                                    213 	.globl _TL1
                                    214 	.globl _TL0
                                    215 	.globl _TMOD
                                    216 	.globl _TCON
                                    217 	.globl _XBUS_AUX
                                    218 	.globl _PIN_FUNC
                                    219 	.globl _P3_DIR_PU
                                    220 	.globl _P3_MOD_OC
                                    221 	.globl _P3
                                    222 	.globl _P2
                                    223 	.globl _P1_DIR_PU
                                    224 	.globl _P1_MOD_OC
                                    225 	.globl _P1
                                    226 	.globl _ROM_CTRL
                                    227 	.globl _ROM_DATA_H
                                    228 	.globl _ROM_DATA_L
                                    229 	.globl _ROM_DATA
                                    230 	.globl _ROM_ADDR_H
                                    231 	.globl _ROM_ADDR_L
                                    232 	.globl _ROM_ADDR
                                    233 	.globl _GPIO_IE
                                    234 	.globl _IP_EX
                                    235 	.globl _IE_EX
                                    236 	.globl _IP
                                    237 	.globl _IE
                                    238 	.globl _WDOG_COUNT
                                    239 	.globl _RESET_KEEP
                                    240 	.globl _WAKE_CTRL
                                    241 	.globl _CLOCK_CFG
                                    242 	.globl _PCON
                                    243 	.globl _GLOBAL_CFG
                                    244 	.globl _SAFE_MOD
                                    245 	.globl _DPH
                                    246 	.globl _DPL
                                    247 	.globl _SP
                                    248 	.globl _B
                                    249 	.globl _ACC
                                    250 	.globl _PSW
                                    251 	.globl _ledON
                                    252 	.globl _debounce
                                    253 	.globl _button_irq
                                    254 	.globl _counter
                                    255 	.globl _serialTime
                                    256 	.globl _debounceTimer
                                    257 	.globl _tick_10ms
                                    258 	.globl _clock_init
                                    259 	.globl _timer0_ISR
                                    260 	.globl _blink_led
                                    261 ;--------------------------------------------------------
                                    262 ; special function registers
                                    263 ;--------------------------------------------------------
                                    264 	.area RSEG    (ABS,DATA)
      000000                        265 	.org 0x0000
                           0000D0   266 _PSW	=	0x00d0
                           0000E0   267 _ACC	=	0x00e0
                           0000F0   268 _B	=	0x00f0
                           000081   269 _SP	=	0x0081
                           000082   270 _DPL	=	0x0082
                           000083   271 _DPH	=	0x0083
                           0000A1   272 _SAFE_MOD	=	0x00a1
                           0000B1   273 _GLOBAL_CFG	=	0x00b1
                           000087   274 _PCON	=	0x0087
                           0000B9   275 _CLOCK_CFG	=	0x00b9
                           0000A9   276 _WAKE_CTRL	=	0x00a9
                           0000FE   277 _RESET_KEEP	=	0x00fe
                           0000FF   278 _WDOG_COUNT	=	0x00ff
                           0000A8   279 _IE	=	0x00a8
                           0000B8   280 _IP	=	0x00b8
                           0000E8   281 _IE_EX	=	0x00e8
                           0000E9   282 _IP_EX	=	0x00e9
                           0000C7   283 _GPIO_IE	=	0x00c7
                           008584   284 _ROM_ADDR	=	0x8584
                           000084   285 _ROM_ADDR_L	=	0x0084
                           000085   286 _ROM_ADDR_H	=	0x0085
                           008F8E   287 _ROM_DATA	=	0x8f8e
                           00008E   288 _ROM_DATA_L	=	0x008e
                           00008F   289 _ROM_DATA_H	=	0x008f
                           000086   290 _ROM_CTRL	=	0x0086
                           000090   291 _P1	=	0x0090
                           000092   292 _P1_MOD_OC	=	0x0092
                           000093   293 _P1_DIR_PU	=	0x0093
                           0000A0   294 _P2	=	0x00a0
                           0000B0   295 _P3	=	0x00b0
                           000096   296 _P3_MOD_OC	=	0x0096
                           000097   297 _P3_DIR_PU	=	0x0097
                           0000C6   298 _PIN_FUNC	=	0x00c6
                           0000A2   299 _XBUS_AUX	=	0x00a2
                           000088   300 _TCON	=	0x0088
                           000089   301 _TMOD	=	0x0089
                           00008A   302 _TL0	=	0x008a
                           00008B   303 _TL1	=	0x008b
                           00008C   304 _TH0	=	0x008c
                           00008D   305 _TH1	=	0x008d
                           000098   306 _SCON	=	0x0098
                           000099   307 _SBUF	=	0x0099
                           0000C8   308 _T2CON	=	0x00c8
                           0000C9   309 _T2MOD	=	0x00c9
                           00CBCA   310 _RCAP2	=	0xcbca
                           0000CA   311 _RCAP2L	=	0x00ca
                           0000CB   312 _RCAP2H	=	0x00cb
                           00CDCC   313 _T2COUNT	=	0xcdcc
                           0000CC   314 _TL2	=	0x00cc
                           0000CD   315 _TH2	=	0x00cd
                           00CFCE   316 _T2CAP1	=	0xcfce
                           0000CE   317 _T2CAP1L	=	0x00ce
                           0000CF   318 _T2CAP1H	=	0x00cf
                           00009B   319 _PWM_DATA2	=	0x009b
                           00009C   320 _PWM_DATA1	=	0x009c
                           00009D   321 _PWM_CTRL	=	0x009d
                           00009E   322 _PWM_CK_SE	=	0x009e
                           0000F8   323 _SPI0_STAT	=	0x00f8
                           0000F9   324 _SPI0_DATA	=	0x00f9
                           0000FA   325 _SPI0_CTRL	=	0x00fa
                           0000FB   326 _SPI0_CK_SE	=	0x00fb
                           0000FC   327 _SPI0_SETUP	=	0x00fc
                           0000C0   328 _SCON1	=	0x00c0
                           0000C1   329 _SBUF1	=	0x00c1
                           0000C2   330 _SBAUD1	=	0x00c2
                           000080   331 _ADC_CTRL	=	0x0080
                           00009A   332 _ADC_CFG	=	0x009a
                           00009F   333 _ADC_DATA	=	0x009f
                           0000C3   334 _TKEY_CTRL	=	0x00c3
                           00C5C4   335 _TKEY_DAT	=	0xc5c4
                           0000C4   336 _TKEY_DATL	=	0x00c4
                           0000C5   337 _TKEY_DATH	=	0x00c5
                           000091   338 _USB_C_CTRL	=	0x0091
                           0000D1   339 _UDEV_CTRL	=	0x00d1
                           0000D2   340 _UEP1_CTRL	=	0x00d2
                           0000D3   341 _UEP1_T_LEN	=	0x00d3
                           0000D4   342 _UEP2_CTRL	=	0x00d4
                           0000D5   343 _UEP2_T_LEN	=	0x00d5
                           0000D6   344 _UEP3_CTRL	=	0x00d6
                           0000D7   345 _UEP3_T_LEN	=	0x00d7
                           0000D8   346 _USB_INT_FG	=	0x00d8
                           0000D9   347 _USB_INT_ST	=	0x00d9
                           0000DA   348 _USB_MIS_ST	=	0x00da
                           0000DB   349 _USB_RX_LEN	=	0x00db
                           0000DC   350 _UEP0_CTRL	=	0x00dc
                           0000DD   351 _UEP0_T_LEN	=	0x00dd
                           0000DE   352 _UEP4_CTRL	=	0x00de
                           0000DF   353 _UEP4_T_LEN	=	0x00df
                           0000E1   354 _USB_INT_EN	=	0x00e1
                           0000E2   355 _USB_CTRL	=	0x00e2
                           0000E3   356 _USB_DEV_AD	=	0x00e3
                           00E5E4   357 _UEP2_DMA	=	0xe5e4
                           0000E4   358 _UEP2_DMA_L	=	0x00e4
                           0000E5   359 _UEP2_DMA_H	=	0x00e5
                           00E7E6   360 _UEP3_DMA	=	0xe7e6
                           0000E6   361 _UEP3_DMA_L	=	0x00e6
                           0000E7   362 _UEP3_DMA_H	=	0x00e7
                           0000EA   363 _UEP4_1_MOD	=	0x00ea
                           0000EB   364 _UEP2_3_MOD	=	0x00eb
                           00EDEC   365 _UEP0_DMA	=	0xedec
                           0000EC   366 _UEP0_DMA_L	=	0x00ec
                           0000ED   367 _UEP0_DMA_H	=	0x00ed
                           00EFEE   368 _UEP1_DMA	=	0xefee
                           0000EE   369 _UEP1_DMA_L	=	0x00ee
                           0000EF   370 _UEP1_DMA_H	=	0x00ef
                                    371 ;--------------------------------------------------------
                                    372 ; special function bits
                                    373 ;--------------------------------------------------------
                                    374 	.area RSEG    (ABS,DATA)
      000000                        375 	.org 0x0000
                           0000D7   376 _CY	=	0x00d7
                           0000D6   377 _AC	=	0x00d6
                           0000D5   378 _F0	=	0x00d5
                           0000D4   379 _RS1	=	0x00d4
                           0000D3   380 _RS0	=	0x00d3
                           0000D2   381 _OV	=	0x00d2
                           0000D1   382 _F1	=	0x00d1
                           0000D0   383 _P	=	0x00d0
                           0000AF   384 _EA	=	0x00af
                           0000AE   385 _E_DIS	=	0x00ae
                           0000AD   386 _ET2	=	0x00ad
                           0000AC   387 _ES	=	0x00ac
                           0000AB   388 _ET1	=	0x00ab
                           0000AA   389 _EX1	=	0x00aa
                           0000A9   390 _ET0	=	0x00a9
                           0000A8   391 _EX0	=	0x00a8
                           0000BF   392 _PH_FLAG	=	0x00bf
                           0000BE   393 _PL_FLAG	=	0x00be
                           0000BD   394 _PT2	=	0x00bd
                           0000BC   395 _PS	=	0x00bc
                           0000BB   396 _PT1	=	0x00bb
                           0000BA   397 _PX1	=	0x00ba
                           0000B9   398 _PT0	=	0x00b9
                           0000B8   399 _PX0	=	0x00b8
                           0000EF   400 _IE_WDOG	=	0x00ef
                           0000EE   401 _IE_GPIO	=	0x00ee
                           0000ED   402 _IE_PWMX	=	0x00ed
                           0000EC   403 _IE_UART1	=	0x00ec
                           0000EB   404 _IE_ADC	=	0x00eb
                           0000EA   405 _IE_USB	=	0x00ea
                           0000E9   406 _IE_TKEY	=	0x00e9
                           0000E8   407 _IE_SPI0	=	0x00e8
                           000097   408 _SCK	=	0x0097
                           000097   409 _TXD1	=	0x0097
                           000097   410 _TIN5	=	0x0097
                           000096   411 _MISO	=	0x0096
                           000096   412 _RXD1	=	0x0096
                           000096   413 _TIN4	=	0x0096
                           000095   414 _MOSI	=	0x0095
                           000095   415 _PWM1	=	0x0095
                           000095   416 _TIN3	=	0x0095
                           000095   417 _UCC2	=	0x0095
                           000095   418 _AIN2	=	0x0095
                           000094   419 _T2_	=	0x0094
                           000094   420 _CAP1_	=	0x0094
                           000094   421 _SCS	=	0x0094
                           000094   422 _TIN2	=	0x0094
                           000094   423 _UCC1	=	0x0094
                           000094   424 _AIN1	=	0x0094
                           000093   425 _TXD_	=	0x0093
                           000092   426 _RXD_	=	0x0092
                           000091   427 _T2EX	=	0x0091
                           000091   428 _CAP2	=	0x0091
                           000091   429 _TIN1	=	0x0091
                           000091   430 _VBUS2	=	0x0091
                           000091   431 _AIN0	=	0x0091
                           000090   432 _T2	=	0x0090
                           000090   433 _CAP1	=	0x0090
                           000090   434 _TIN0	=	0x0090
                           0000B7   435 _UDM	=	0x00b7
                           0000B6   436 _UDP	=	0x00b6
                           0000B5   437 _T1	=	0x00b5
                           0000B4   438 _PWM2	=	0x00b4
                           0000B4   439 _RXD1_	=	0x00b4
                           0000B4   440 _T0	=	0x00b4
                           0000B3   441 _INT1	=	0x00b3
                           0000B2   442 _TXD1_	=	0x00b2
                           0000B2   443 _INT0	=	0x00b2
                           0000B2   444 _VBUS1	=	0x00b2
                           0000B2   445 _AIN3	=	0x00b2
                           0000B1   446 _PWM2_	=	0x00b1
                           0000B1   447 _TXD	=	0x00b1
                           0000B0   448 _PWM1_	=	0x00b0
                           0000B0   449 _RXD	=	0x00b0
                           00008F   450 _TF1	=	0x008f
                           00008E   451 _TR1	=	0x008e
                           00008D   452 _TF0	=	0x008d
                           00008C   453 _TR0	=	0x008c
                           00008B   454 _IE1	=	0x008b
                           00008A   455 _IT1	=	0x008a
                           000089   456 _IE0	=	0x0089
                           000088   457 _IT0	=	0x0088
                           00009F   458 _SM0	=	0x009f
                           00009E   459 _SM1	=	0x009e
                           00009D   460 _SM2	=	0x009d
                           00009C   461 _REN	=	0x009c
                           00009B   462 _TB8	=	0x009b
                           00009A   463 _RB8	=	0x009a
                           000099   464 _TI	=	0x0099
                           000098   465 _RI	=	0x0098
                           0000CF   466 _TF2	=	0x00cf
                           0000CF   467 _CAP1F	=	0x00cf
                           0000CE   468 _EXF2	=	0x00ce
                           0000CD   469 _RCLK	=	0x00cd
                           0000CC   470 _TCLK	=	0x00cc
                           0000CB   471 _EXEN2	=	0x00cb
                           0000CA   472 _TR2	=	0x00ca
                           0000C9   473 _C_T2	=	0x00c9
                           0000C8   474 _CP_RL2	=	0x00c8
                           0000FF   475 _S0_FST_ACT	=	0x00ff
                           0000FE   476 _S0_IF_OV	=	0x00fe
                           0000FD   477 _S0_IF_FIRST	=	0x00fd
                           0000FC   478 _S0_IF_BYTE	=	0x00fc
                           0000FB   479 _S0_FREE	=	0x00fb
                           0000FA   480 _S0_T_FIFO	=	0x00fa
                           0000F8   481 _S0_R_FIFO	=	0x00f8
                           0000C7   482 _U1SM0	=	0x00c7
                           0000C5   483 _U1SMOD	=	0x00c5
                           0000C4   484 _U1REN	=	0x00c4
                           0000C3   485 _U1TB8	=	0x00c3
                           0000C2   486 _U1RB8	=	0x00c2
                           0000C1   487 _U1TI	=	0x00c1
                           0000C0   488 _U1RI	=	0x00c0
                           000087   489 _CMPO	=	0x0087
                           000086   490 _CMP_IF	=	0x0086
                           000085   491 _ADC_IF	=	0x0085
                           000084   492 _ADC_START	=	0x0084
                           000083   493 _CMP_CHAN	=	0x0083
                           000081   494 _ADC_CHAN1	=	0x0081
                           000080   495 _ADC_CHAN0	=	0x0080
                           0000DF   496 _U_IS_NAK	=	0x00df
                           0000DE   497 _U_TOG_OK	=	0x00de
                           0000DD   498 _U_SIE_FREE	=	0x00dd
                           0000DC   499 _UIF_FIFO_OV	=	0x00dc
                           0000DB   500 _UIF_HST_SOF	=	0x00db
                           0000DA   501 _UIF_SUSPEND	=	0x00da
                           0000D9   502 _UIF_TRANSFER	=	0x00d9
                           0000D8   503 _UIF_DETECT	=	0x00d8
                           0000D8   504 _UIF_BUS_RST	=	0x00d8
                                    505 ;--------------------------------------------------------
                                    506 ; overlayable register banks
                                    507 ;--------------------------------------------------------
                                    508 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        509 	.ds 8
                                    510 ;--------------------------------------------------------
                                    511 ; internal ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area DSEG    (DATA)
      000008                        514 _tick_10ms::
      000008                        515 	.ds 2
      00000A                        516 _debounceTimer::
      00000A                        517 	.ds 2
      00000C                        518 _serialTime::
      00000C                        519 	.ds 2
      00000E                        520 _counter::
      00000E                        521 	.ds 2
                                    522 ;--------------------------------------------------------
                                    523 ; overlayable items in internal ram
                                    524 ;--------------------------------------------------------
                                    525 ;--------------------------------------------------------
                                    526 ; Stack segment in internal ram
                                    527 ;--------------------------------------------------------
                                    528 	.area SSEG
      000021                        529 __start__stack:
      000021                        530 	.ds	1
                                    531 
                                    532 ;--------------------------------------------------------
                                    533 ; indirectly addressable internal ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area ISEG    (DATA)
                                    536 ;--------------------------------------------------------
                                    537 ; absolute internal ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area IABS    (ABS,DATA)
                                    540 	.area IABS    (ABS,DATA)
                                    541 ;--------------------------------------------------------
                                    542 ; bit data
                                    543 ;--------------------------------------------------------
                                    544 	.area BSEG    (BIT)
      000000                        545 _button_irq::
      000000                        546 	.ds 1
      000001                        547 _debounce::
      000001                        548 	.ds 1
      000002                        549 _ledON::
      000002                        550 	.ds 1
                                    551 ;--------------------------------------------------------
                                    552 ; paged external ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area PSEG    (PAG,XDATA)
                                    555 ;--------------------------------------------------------
                                    556 ; uninitialized external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area XSEG    (XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; absolute external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XABS    (ABS,XDATA)
                                    563 ;--------------------------------------------------------
                                    564 ; initialized external ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area XISEG   (XDATA)
                                    567 	.area HOME    (CODE)
                                    568 	.area GSINIT0 (CODE)
                                    569 	.area GSINIT1 (CODE)
                                    570 	.area GSINIT2 (CODE)
                                    571 	.area GSINIT3 (CODE)
                                    572 	.area GSINIT4 (CODE)
                                    573 	.area GSINIT5 (CODE)
                                    574 	.area GSINIT  (CODE)
                                    575 	.area GSFINAL (CODE)
                                    576 	.area CSEG    (CODE)
                                    577 ;--------------------------------------------------------
                                    578 ; interrupt vector
                                    579 ;--------------------------------------------------------
                                    580 	.area HOME    (CODE)
      000000                        581 __interrupt_vect:
      000000 02 00 5C         [24]  582 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  583 	reti
      000004                        584 	.ds	7
      00000B 02 00 EF         [24]  585 	ljmp	_timer0_ISR
      00000E                        586 	.ds	5
      000013 02 00 E1         [24]  587 	ljmp	_INT1_ISR
                                    588 ; restartable atomic support routines
      000016                        589 	.ds	2
      000018                        590 sdcc_atomic_exchange_rollback_start::
      000018 00               [12]  591 	nop
      000019 00               [12]  592 	nop
      00001A                        593 sdcc_atomic_exchange_pdata_impl:
      00001A E2               [24]  594 	movx	a, @r0
      00001B FB               [12]  595 	mov	r3, a
      00001C EA               [12]  596 	mov	a, r2
      00001D F2               [24]  597 	movx	@r0, a
      00001E 80 2C            [24]  598 	sjmp	sdcc_atomic_exchange_exit
      000020 00               [12]  599 	nop
      000021 00               [12]  600 	nop
      000022                        601 sdcc_atomic_exchange_xdata_impl:
      000022 E0               [24]  602 	movx	a, @dptr
      000023 FB               [12]  603 	mov	r3, a
      000024 EA               [12]  604 	mov	a, r2
      000025 F0               [24]  605 	movx	@dptr, a
      000026 80 24            [24]  606 	sjmp	sdcc_atomic_exchange_exit
      000028                        607 sdcc_atomic_compare_exchange_idata_impl:
      000028 E6               [12]  608 	mov	a, @r0
      000029 B5 02 02         [24]  609 	cjne	a, ar2, .+#5
      00002C EB               [12]  610 	mov	a, r3
      00002D F6               [12]  611 	mov	@r0, a
      00002E 22               [24]  612 	ret
      00002F 00               [12]  613 	nop
      000030                        614 sdcc_atomic_compare_exchange_pdata_impl:
      000030 E2               [24]  615 	movx	a, @r0
      000031 B5 02 02         [24]  616 	cjne	a, ar2, .+#5
      000034 EB               [12]  617 	mov	a, r3
      000035 F2               [24]  618 	movx	@r0, a
      000036 22               [24]  619 	ret
      000037 00               [12]  620 	nop
      000038                        621 sdcc_atomic_compare_exchange_xdata_impl:
      000038 E0               [24]  622 	movx	a, @dptr
      000039 B5 02 02         [24]  623 	cjne	a, ar2, .+#5
      00003C EB               [12]  624 	mov	a, r3
      00003D F0               [24]  625 	movx	@dptr, a
      00003E 22               [24]  626 	ret
      00003F                        627 sdcc_atomic_exchange_rollback_end::
                                    628 
      00003F                        629 sdcc_atomic_exchange_gptr_impl::
      00003F 30 F6 E0         [24]  630 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000042 A8 82            [24]  631 	mov	r0, dpl
      000044 20 F5 D3         [24]  632 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000047                        633 sdcc_atomic_exchange_idata_impl:
      000047 EA               [12]  634 	mov	a, r2
      000048 C6               [12]  635 	xch	a, @r0
      000049 F5 82            [12]  636 	mov	dpl, a
      00004B 22               [24]  637 	ret
      00004C                        638 sdcc_atomic_exchange_exit:
      00004C 8B 82            [24]  639 	mov	dpl, r3
      00004E 22               [24]  640 	ret
      00004F                        641 sdcc_atomic_compare_exchange_gptr_impl::
      00004F 30 F6 E6         [24]  642 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000052 A8 82            [24]  643 	mov	r0, dpl
      000054 20 F5 D9         [24]  644 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000057 80 CF            [24]  645 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    646 ;--------------------------------------------------------
                                    647 ; global & static initialisations
                                    648 ;--------------------------------------------------------
                                    649 	.area HOME    (CODE)
                                    650 	.area GSINIT  (CODE)
                                    651 	.area GSFINAL (CODE)
                                    652 	.area GSINIT  (CODE)
                                    653 	.globl __sdcc_gsinit_startup
                                    654 	.globl __sdcc_program_startup
                                    655 	.globl __start__stack
                                    656 	.globl __mcs51_genXINIT
                                    657 	.globl __mcs51_genXRAMCLEAR
                                    658 	.globl __mcs51_genRAMCLEAR
                                    659 ;	external-interrupt-led.c:5: volatile unsigned int tick_10ms = 0;
      0000B5 E4               [12]  660 	clr	a
      0000B6 F5 08            [12]  661 	mov	_tick_10ms,a
      0000B8 F5 09            [12]  662 	mov	(_tick_10ms + 1),a
                                    663 ;	external-interrupt-led.c:6: volatile unsigned int debounceTimer = 0;
      0000BA F5 0A            [12]  664 	mov	_debounceTimer,a
      0000BC F5 0B            [12]  665 	mov	(_debounceTimer + 1),a
                                    666 ;	external-interrupt-led.c:10: unsigned int serialTime= 0;
      0000BE F5 0C            [12]  667 	mov	_serialTime,a
      0000C0 F5 0D            [12]  668 	mov	(_serialTime + 1),a
                                    669 ;	external-interrupt-led.c:11: unsigned int counter= 0;
      0000C2 F5 0E            [12]  670 	mov	_counter,a
      0000C4 F5 0F            [12]  671 	mov	(_counter + 1),a
                                    672 ;	external-interrupt-led.c:7: volatile __bit button_irq = 0;
                                    673 ;	assignBit
      0000C6 C2 00            [12]  674 	clr	_button_irq
                                    675 ;	external-interrupt-led.c:8: volatile __bit debounce = 0;
                                    676 ;	assignBit
      0000C8 C2 01            [12]  677 	clr	_debounce
                                    678 ;	external-interrupt-led.c:9: volatile __bit ledON = 0;
                                    679 ;	assignBit
      0000CA C2 02            [12]  680 	clr	_ledON
                                    681 	.area GSFINAL (CODE)
      0000CC 02 00 59         [24]  682 	ljmp	__sdcc_program_startup
                                    683 ;--------------------------------------------------------
                                    684 ; Home
                                    685 ;--------------------------------------------------------
                                    686 	.area HOME    (CODE)
                                    687 	.area HOME    (CODE)
      000059                        688 __sdcc_program_startup:
      000059 02 01 7B         [24]  689 	ljmp	_main
                                    690 ;	return from main will return to caller
                                    691 ;--------------------------------------------------------
                                    692 ; code
                                    693 ;--------------------------------------------------------
                                    694 	.area CSEG    (CODE)
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'clock_init'
                                    697 ;------------------------------------------------------------
                                    698 ;	external-interrupt-led.c:17: void clock_init(void) {
                                    699 ;	-----------------------------------------
                                    700 ;	 function clock_init
                                    701 ;	-----------------------------------------
      0000CF                        702 _clock_init:
                           000007   703 	ar7 = 0x07
                           000006   704 	ar6 = 0x06
                           000005   705 	ar5 = 0x05
                           000004   706 	ar4 = 0x04
                           000003   707 	ar3 = 0x03
                           000002   708 	ar2 = 0x02
                           000001   709 	ar1 = 0x01
                           000000   710 	ar0 = 0x00
                                    711 ;	external-interrupt-led.c:18: SAFE_MOD = 0x55;
      0000CF 75 A1 55         [24]  712 	mov	_SAFE_MOD,#0x55
                                    713 ;	external-interrupt-led.c:19: SAFE_MOD = 0xAA;
      0000D2 75 A1 AA         [24]  714 	mov	_SAFE_MOD,#0xaa
                                    715 ;	external-interrupt-led.c:21: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0000D5 74 F8            [12]  716 	mov	a,#0xf8
      0000D7 55 B9            [12]  717 	anl	a,_CLOCK_CFG
      0000D9 44 06            [12]  718 	orl	a,#0x06
      0000DB F5 B9            [12]  719 	mov	_CLOCK_CFG,a
                                    720 ;	external-interrupt-led.c:23: SAFE_MOD = 0x00;
      0000DD 75 A1 00         [24]  721 	mov	_SAFE_MOD,#0x00
                                    722 ;	external-interrupt-led.c:24: }
      0000E0 22               [24]  723 	ret
                                    724 ;------------------------------------------------------------
                                    725 ;Allocation info for local variables in function 'INT1_ISR'
                                    726 ;------------------------------------------------------------
                                    727 ;	external-interrupt-led.c:25: void INT1_ISR(void) __interrupt (INT_NO_INT1) // interrupt number 2 
                                    728 ;	-----------------------------------------
                                    729 ;	 function INT1_ISR
                                    730 ;	-----------------------------------------
      0000E1                        731 _INT1_ISR:
      0000E1 C0 E0            [24]  732 	push	acc
                                    733 ;	external-interrupt-led.c:27: if (!(P3 & (1 << 3))) {   // only accept if pin is LOW
      0000E3 E5 B0            [12]  734 	mov	a,_P3
      0000E5 20 E3 04         [24]  735 	jb	acc.3,00103$
                                    736 ;	external-interrupt-led.c:28: button_irq = 1;
                                    737 ;	assignBit
      0000E8 D2 00            [12]  738 	setb	_button_irq
                                    739 ;	external-interrupt-led.c:29: debounce= 1; // enter debounce time (300ms)
                                    740 ;	assignBit
      0000EA D2 01            [12]  741 	setb	_debounce
      0000EC                        742 00103$:
                                    743 ;	external-interrupt-led.c:31: }
      0000EC D0 E0            [24]  744 	pop	acc
      0000EE 32               [24]  745 	reti
                                    746 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    747 ;	eliminated unneeded push/pop not_psw
                                    748 ;	eliminated unneeded push/pop dpl
                                    749 ;	eliminated unneeded push/pop dph
                                    750 ;	eliminated unneeded push/pop b
                                    751 ;------------------------------------------------------------
                                    752 ;Allocation info for local variables in function 'timer0_ISR'
                                    753 ;------------------------------------------------------------
                                    754 ;	external-interrupt-led.c:32: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
                                    755 ;	-----------------------------------------
                                    756 ;	 function timer0_ISR
                                    757 ;	-----------------------------------------
      0000EF                        758 _timer0_ISR:
      0000EF C0 E0            [24]  759 	push	acc
      0000F1 C0 07            [24]  760 	push	ar7
      0000F3 C0 06            [24]  761 	push	ar6
      0000F5 C0 D0            [24]  762 	push	psw
      0000F7 75 D0 00         [24]  763 	mov	psw,#0x00
                                    764 ;	external-interrupt-led.c:33: TF0 = 0;  // clear overflow flag (important for robustness)
                                    765 ;	assignBit
      0000FA C2 8D            [12]  766 	clr	_TF0
                                    767 ;	external-interrupt-led.c:34: TH0 = 0xB1;
      0000FC 75 8C B1         [24]  768 	mov	_TH0,#0xb1
                                    769 ;	external-interrupt-led.c:35: TL0 = 0xE0;
      0000FF 75 8A E0         [24]  770 	mov	_TL0,#0xe0
                                    771 ;	external-interrupt-led.c:36: tick_10ms++; // this is the 10ms tick for LED blinking
      000102 AE 08            [24]  772 	mov	r6,_tick_10ms
      000104 AF 09            [24]  773 	mov	r7,(_tick_10ms + 1)
      000106 74 01            [12]  774 	mov	a,#0x01
      000108 2E               [12]  775 	add	a, r6
      000109 F5 08            [12]  776 	mov	_tick_10ms,a
      00010B E4               [12]  777 	clr	a
      00010C 3F               [12]  778 	addc	a, r7
      00010D F5 09            [12]  779 	mov	(_tick_10ms + 1),a
                                    780 ;	external-interrupt-led.c:37: serialTime++; // this is the timer for Serial_println transmissions
      00010F 05 0C            [12]  781 	inc	_serialTime
      000111 E4               [12]  782 	clr	a
      000112 B5 0C 02         [24]  783 	cjne	a,_serialTime,00119$
      000115 05 0D            [12]  784 	inc	(_serialTime + 1)
      000117                        785 00119$:
                                    786 ;	external-interrupt-led.c:38: if(debounce){ // if external interrupt happened, activate debounce timer
      000117 30 01 1F         [24]  787 	jnb	_debounce,00105$
                                    788 ;	external-interrupt-led.c:39: debounceTimer++;
      00011A AE 0A            [24]  789 	mov	r6,_debounceTimer
      00011C AF 0B            [24]  790 	mov	r7,(_debounceTimer + 1)
      00011E 74 01            [12]  791 	mov	a,#0x01
      000120 2E               [12]  792 	add	a, r6
      000121 F5 0A            [12]  793 	mov	_debounceTimer,a
      000123 E4               [12]  794 	clr	a
      000124 3F               [12]  795 	addc	a, r7
      000125 F5 0B            [12]  796 	mov	(_debounceTimer + 1),a
                                    797 ;	external-interrupt-led.c:40: if(debounceTimer >= 60){ // after 600ms of not detecting the push-button
      000127 C3               [12]  798 	clr	c
      000128 E5 0A            [12]  799 	mov	a,_debounceTimer
      00012A 94 3C            [12]  800 	subb	a,#0x3c
      00012C E5 0B            [12]  801 	mov	a,(_debounceTimer + 1)
      00012E 94 00            [12]  802 	subb	a,#0x00
      000130 40 07            [24]  803 	jc	00105$
                                    804 ;	external-interrupt-led.c:41: debounce= 0; // turn debounce delay OFF
                                    805 ;	assignBit
      000132 C2 01            [12]  806 	clr	_debounce
                                    807 ;	external-interrupt-led.c:42: debounceTimer= 0; // and clear timer/counter for next time
      000134 E4               [12]  808 	clr	a
      000135 F5 0A            [12]  809 	mov	_debounceTimer,a
      000137 F5 0B            [12]  810 	mov	(_debounceTimer + 1),a
      000139                        811 00105$:
                                    812 ;	external-interrupt-led.c:45: }
      000139 D0 D0            [24]  813 	pop	psw
      00013B D0 06            [24]  814 	pop	ar6
      00013D D0 07            [24]  815 	pop	ar7
      00013F D0 E0            [24]  816 	pop	acc
      000141 32               [24]  817 	reti
                                    818 ;	eliminated unneeded push/pop dpl
                                    819 ;	eliminated unneeded push/pop dph
                                    820 ;	eliminated unneeded push/pop b
                                    821 ;------------------------------------------------------------
                                    822 ;Allocation info for local variables in function 'timer0_init'
                                    823 ;------------------------------------------------------------
                                    824 ;	external-interrupt-led.c:47: void timer0_init(void) {
                                    825 ;	-----------------------------------------
                                    826 ;	 function timer0_init
                                    827 ;	-----------------------------------------
      000142                        828 _timer0_init:
                                    829 ;	external-interrupt-led.c:48: TMOD &= ~0x03;  // clear Timer0 mode bits
      000142 53 89 FC         [24]  830 	anl	_TMOD,#0xfc
                                    831 ;	external-interrupt-led.c:49: TMOD |=  0x01;  // Timer0 mode 1: 16-bit
      000145 43 89 01         [24]  832 	orl	_TMOD,#0x01
                                    833 ;	external-interrupt-led.c:53: TH0 = 0xB1;
      000148 75 8C B1         [24]  834 	mov	_TH0,#0xb1
                                    835 ;	external-interrupt-led.c:54: TL0 = 0xE0;
      00014B 75 8A E0         [24]  836 	mov	_TL0,#0xe0
                                    837 ;	external-interrupt-led.c:56: ET0 = 1;   // enable Timer0 interrupt
                                    838 ;	assignBit
      00014E D2 A9            [12]  839 	setb	_ET0
                                    840 ;	external-interrupt-led.c:57: TR0 = 1;   // start Timer0
                                    841 ;	assignBit
      000150 D2 8C            [12]  842 	setb	_TR0
                                    843 ;	external-interrupt-led.c:58: EX1 = 1; // enable external interrupt 1
                                    844 ;	assignBit
      000152 D2 AA            [12]  845 	setb	_EX1
                                    846 ;	external-interrupt-led.c:59: EA = 1;
                                    847 ;	assignBit
      000154 D2 AF            [12]  848 	setb	_EA
                                    849 ;	external-interrupt-led.c:60: }
      000156 22               [24]  850 	ret
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'blink_led'
                                    853 ;------------------------------------------------------------
                                    854 ;	external-interrupt-led.c:62: void blink_led(void) {
                                    855 ;	-----------------------------------------
                                    856 ;	 function blink_led
                                    857 ;	-----------------------------------------
      000157                        858 _blink_led:
                                    859 ;	external-interrupt-led.c:63: if(tick_10ms % 60 < 30){
      000157 75 10 3C         [24]  860 	mov	__moduint_PARM_2,#0x3c
      00015A 75 11 00         [24]  861 	mov	(__moduint_PARM_2 + 1),#0x00
      00015D 85 08 82         [24]  862 	mov	dpl, _tick_10ms
      000160 85 09 83         [24]  863 	mov	dph, (_tick_10ms + 1)
      000163 12 04 0E         [24]  864 	lcall	__moduint
      000166 AE 82            [24]  865 	mov	r6, dpl
      000168 AF 83            [24]  866 	mov	r7, dph
      00016A C3               [12]  867 	clr	c
      00016B EE               [12]  868 	mov	a,r6
      00016C 94 1E            [12]  869 	subb	a,#0x1e
      00016E EF               [12]  870 	mov	a,r7
      00016F 94 00            [12]  871 	subb	a,#0x00
      000171 50 04            [24]  872 	jnc	00102$
                                    873 ;	external-interrupt-led.c:64: P3 |= (1 << 0);  // LED ON
      000173 43 B0 01         [24]  874 	orl	_P3,#0x01
      000176 22               [24]  875 	ret
      000177                        876 00102$:
                                    877 ;	external-interrupt-led.c:66: P3 &= ~(1 << 0); // LED OFF
      000177 53 B0 FE         [24]  878 	anl	_P3,#0xfe
                                    879 ;	external-interrupt-led.c:68: }
      00017A 22               [24]  880 	ret
                                    881 ;------------------------------------------------------------
                                    882 ;Allocation info for local variables in function 'main'
                                    883 ;------------------------------------------------------------
                                    884 ;	external-interrupt-led.c:70: void main(void) {
                                    885 ;	-----------------------------------------
                                    886 ;	 function main
                                    887 ;	-----------------------------------------
      00017B                        888 _main:
                                    889 ;	external-interrupt-led.c:71: clock_init();
      00017B 12 00 CF         [24]  890 	lcall	_clock_init
                                    891 ;	external-interrupt-led.c:72: timer0_init();
      00017E 12 01 42         [24]  892 	lcall	_timer0_init
                                    893 ;	external-interrupt-led.c:75: SAFE_MOD = 0x55;
      000181 75 A1 55         [24]  894 	mov	_SAFE_MOD,#0x55
                                    895 ;	external-interrupt-led.c:76: SAFE_MOD = 0xAA;
      000184 75 A1 AA         [24]  896 	mov	_SAFE_MOD,#0xaa
                                    897 ;	external-interrupt-led.c:77: GLOBAL_CFG &= ~bWDOG_EN;   // turn off watchdog
      000187 53 B1 FE         [24]  898 	anl	_GLOBAL_CFG,#0xfe
                                    899 ;	external-interrupt-led.c:78: SAFE_MOD = 0x00;
      00018A 75 A1 00         [24]  900 	mov	_SAFE_MOD,#0x00
                                    901 ;	external-interrupt-led.c:82: P3_MOD_OC &= ~0x01;   // not open-drain
      00018D 53 96 FE         [24]  902 	anl	_P3_MOD_OC,#0xfe
                                    903 ;	external-interrupt-led.c:83: P3_DIR_PU |= 0x01;    // output, with pull-up
      000190 43 97 01         [24]  904 	orl	_P3_DIR_PU,#0x01
                                    905 ;	external-interrupt-led.c:86: P3_MOD_OC |=  (1 << 3);   // open-drain
      000193 43 96 08         [24]  906 	orl	_P3_MOD_OC,#0x08
                                    907 ;	external-interrupt-led.c:87: P3_DIR_PU |=  (1 << 3);   // enable pull-up (yes, |=, not &=)
      000196 43 97 08         [24]  908 	orl	_P3_DIR_PU,#0x08
                                    909 ;	external-interrupt-led.c:88: P3 |= (1 << 3);           // pull-up
      000199 43 B0 08         [24]  910 	orl	_P3,#0x08
                                    911 ;	external-interrupt-led.c:90: Serial_begin();
      00019C 12 02 8D         [24]  912 	lcall	_Serial_begin
                                    913 ;	external-interrupt-led.c:92: while (1) {
      00019F                        914 00113$:
                                    915 ;	external-interrupt-led.c:94: if(button_irq && !debounce) { // if push button was pressed and debounce has finished
      00019F 30 00 17         [24]  916 	jnb	_button_irq,00105$
      0001A2 20 01 14         [24]  917 	jb	_debounce,00105$
                                    918 ;	external-interrupt-led.c:95: button_irq = 0; // clear the external interrupt 1 bit            
                                    919 ;	assignBit
      0001A5 C2 00            [12]  920 	clr	_button_irq
                                    921 ;	external-interrupt-led.c:96: if(ledON == 0){ // every time we enter here the LED status changes
      0001A7 20 02 04         [24]  922 	jb	_ledON,00102$
                                    923 ;	external-interrupt-led.c:97: ledON= 1;
                                    924 ;	assignBit
      0001AA D2 02            [12]  925 	setb	_ledON
      0001AC 80 02            [24]  926 	sjmp	00103$
      0001AE                        927 00102$:
                                    928 ;	external-interrupt-led.c:99: ledON= 0;
                                    929 ;	assignBit
      0001AE C2 02            [12]  930 	clr	_ledON
      0001B0                        931 00103$:
                                    932 ;	external-interrupt-led.c:101: Serial_println("INT1 detected!");
      0001B0 90 04 7B         [24]  933 	mov	dptr,#___str_0
      0001B3 75 F0 80         [24]  934 	mov	b, #0x80
      0001B6 12 03 C7         [24]  935 	lcall	_Serial_println
      0001B9                        936 00105$:
                                    937 ;	external-interrupt-led.c:103: if(ledON){
      0001B9 30 02 05         [24]  938 	jnb	_ledON,00108$
                                    939 ;	external-interrupt-led.c:104: blink_led();
      0001BC 12 01 57         [24]  940 	lcall	_blink_led
      0001BF 80 03            [24]  941 	sjmp	00109$
      0001C1                        942 00108$:
                                    943 ;	external-interrupt-led.c:106: P3 &= ~0x01;   // LED OFF            
      0001C1 53 B0 FE         [24]  944 	anl	_P3,#0xfe
      0001C4                        945 00109$:
                                    946 ;	external-interrupt-led.c:108: if(serialTime > 100){
      0001C4 C3               [12]  947 	clr	c
      0001C5 74 64            [12]  948 	mov	a,#0x64
      0001C7 95 0C            [12]  949 	subb	a,_serialTime
      0001C9 E4               [12]  950 	clr	a
      0001CA 95 0D            [12]  951 	subb	a,(_serialTime + 1)
      0001CC 50 D1            [24]  952 	jnc	00113$
                                    953 ;	external-interrupt-led.c:109: serialTime= 0;
      0001CE E4               [12]  954 	clr	a
      0001CF F5 0C            [12]  955 	mov	_serialTime,a
      0001D1 F5 0D            [12]  956 	mov	(_serialTime + 1),a
                                    957 ;	external-interrupt-led.c:110: counter++;
      0001D3 05 0E            [12]  958 	inc	_counter
      0001D5 B5 0E 02         [24]  959 	cjne	a,_counter,00158$
      0001D8 05 0F            [12]  960 	inc	(_counter + 1)
      0001DA                        961 00158$:
                                    962 ;	external-interrupt-led.c:112: Serial_println_uint(counter);
      0001DA 85 0E 82         [24]  963 	mov	dpl, _counter
      0001DD 85 0F 83         [24]  964 	mov	dph, (_counter + 1)
      0001E0 12 03 D6         [24]  965 	lcall	_Serial_println_uint
                                    966 ;	external-interrupt-led.c:116: }
      0001E3 80 BA            [24]  967 	sjmp	00113$
                                    968 	.area CSEG    (CODE)
                                    969 	.area CONST   (CODE)
                                    970 	.area CONST   (CODE)
      00047B                        971 ___str_0:
      00047B 49 4E 54 31 20 64 65   972 	.ascii "INT1 detected!"
             74 65 63 74 65 64 21
      000489 00                     973 	.db 0x00
                                    974 	.area CSEG    (CODE)
                                    975 	.area XINIT   (CODE)
                                    976 	.area CABS    (ABS,CODE)
