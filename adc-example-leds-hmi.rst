                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc_example_leds_hmi
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _blinkNow
                                     13 	.globl _blinkTwoLEDs
                                     14 	.globl _rawToMillivolts
                                     15 	.globl _timer0_init
                                     16 	.globl _analogReading
                                     17 	.globl _ADC_ChannelSelect
                                     18 	.globl _ADCInit
                                     19 	.globl _UIF_BUS_RST
                                     20 	.globl _UIF_DETECT
                                     21 	.globl _UIF_TRANSFER
                                     22 	.globl _UIF_SUSPEND
                                     23 	.globl _UIF_HST_SOF
                                     24 	.globl _UIF_FIFO_OV
                                     25 	.globl _U_SIE_FREE
                                     26 	.globl _U_TOG_OK
                                     27 	.globl _U_IS_NAK
                                     28 	.globl _ADC_CHAN0
                                     29 	.globl _ADC_CHAN1
                                     30 	.globl _CMP_CHAN
                                     31 	.globl _ADC_START
                                     32 	.globl _ADC_IF
                                     33 	.globl _CMP_IF
                                     34 	.globl _CMPO
                                     35 	.globl _U1RI
                                     36 	.globl _U1TI
                                     37 	.globl _U1RB8
                                     38 	.globl _U1TB8
                                     39 	.globl _U1REN
                                     40 	.globl _U1SMOD
                                     41 	.globl _U1SM0
                                     42 	.globl _S0_R_FIFO
                                     43 	.globl _S0_T_FIFO
                                     44 	.globl _S0_FREE
                                     45 	.globl _S0_IF_BYTE
                                     46 	.globl _S0_IF_FIRST
                                     47 	.globl _S0_IF_OV
                                     48 	.globl _S0_FST_ACT
                                     49 	.globl _CP_RL2
                                     50 	.globl _C_T2
                                     51 	.globl _TR2
                                     52 	.globl _EXEN2
                                     53 	.globl _TCLK
                                     54 	.globl _RCLK
                                     55 	.globl _EXF2
                                     56 	.globl _CAP1F
                                     57 	.globl _TF2
                                     58 	.globl _RI
                                     59 	.globl _TI
                                     60 	.globl _RB8
                                     61 	.globl _TB8
                                     62 	.globl _REN
                                     63 	.globl _SM2
                                     64 	.globl _SM1
                                     65 	.globl _SM0
                                     66 	.globl _IT0
                                     67 	.globl _IE0
                                     68 	.globl _IT1
                                     69 	.globl _IE1
                                     70 	.globl _TR0
                                     71 	.globl _TF0
                                     72 	.globl _TR1
                                     73 	.globl _TF1
                                     74 	.globl _RXD
                                     75 	.globl _PWM1_
                                     76 	.globl _TXD
                                     77 	.globl _PWM2_
                                     78 	.globl _AIN3
                                     79 	.globl _VBUS1
                                     80 	.globl _INT0
                                     81 	.globl _TXD1_
                                     82 	.globl _INT1
                                     83 	.globl _T0
                                     84 	.globl _RXD1_
                                     85 	.globl _PWM2
                                     86 	.globl _T1
                                     87 	.globl _UDP
                                     88 	.globl _UDM
                                     89 	.globl _TIN0
                                     90 	.globl _CAP1
                                     91 	.globl _T2
                                     92 	.globl _AIN0
                                     93 	.globl _VBUS2
                                     94 	.globl _TIN1
                                     95 	.globl _CAP2
                                     96 	.globl _T2EX
                                     97 	.globl _RXD_
                                     98 	.globl _TXD_
                                     99 	.globl _AIN1
                                    100 	.globl _UCC1
                                    101 	.globl _TIN2
                                    102 	.globl _SCS
                                    103 	.globl _CAP1_
                                    104 	.globl _T2_
                                    105 	.globl _AIN2
                                    106 	.globl _UCC2
                                    107 	.globl _TIN3
                                    108 	.globl _PWM1
                                    109 	.globl _MOSI
                                    110 	.globl _TIN4
                                    111 	.globl _RXD1
                                    112 	.globl _MISO
                                    113 	.globl _TIN5
                                    114 	.globl _TXD1
                                    115 	.globl _SCK
                                    116 	.globl _IE_SPI0
                                    117 	.globl _IE_TKEY
                                    118 	.globl _IE_USB
                                    119 	.globl _IE_ADC
                                    120 	.globl _IE_UART1
                                    121 	.globl _IE_PWMX
                                    122 	.globl _IE_GPIO
                                    123 	.globl _IE_WDOG
                                    124 	.globl _PX0
                                    125 	.globl _PT0
                                    126 	.globl _PX1
                                    127 	.globl _PT1
                                    128 	.globl _PS
                                    129 	.globl _PT2
                                    130 	.globl _PL_FLAG
                                    131 	.globl _PH_FLAG
                                    132 	.globl _EX0
                                    133 	.globl _ET0
                                    134 	.globl _EX1
                                    135 	.globl _ET1
                                    136 	.globl _ES
                                    137 	.globl _ET2
                                    138 	.globl _E_DIS
                                    139 	.globl _EA
                                    140 	.globl _P
                                    141 	.globl _F1
                                    142 	.globl _OV
                                    143 	.globl _RS0
                                    144 	.globl _RS1
                                    145 	.globl _F0
                                    146 	.globl _AC
                                    147 	.globl _CY
                                    148 	.globl _UEP1_DMA_H
                                    149 	.globl _UEP1_DMA_L
                                    150 	.globl _UEP1_DMA
                                    151 	.globl _UEP0_DMA_H
                                    152 	.globl _UEP0_DMA_L
                                    153 	.globl _UEP0_DMA
                                    154 	.globl _UEP2_3_MOD
                                    155 	.globl _UEP4_1_MOD
                                    156 	.globl _UEP3_DMA_H
                                    157 	.globl _UEP3_DMA_L
                                    158 	.globl _UEP3_DMA
                                    159 	.globl _UEP2_DMA_H
                                    160 	.globl _UEP2_DMA_L
                                    161 	.globl _UEP2_DMA
                                    162 	.globl _USB_DEV_AD
                                    163 	.globl _USB_CTRL
                                    164 	.globl _USB_INT_EN
                                    165 	.globl _UEP4_T_LEN
                                    166 	.globl _UEP4_CTRL
                                    167 	.globl _UEP0_T_LEN
                                    168 	.globl _UEP0_CTRL
                                    169 	.globl _USB_RX_LEN
                                    170 	.globl _USB_MIS_ST
                                    171 	.globl _USB_INT_ST
                                    172 	.globl _USB_INT_FG
                                    173 	.globl _UEP3_T_LEN
                                    174 	.globl _UEP3_CTRL
                                    175 	.globl _UEP2_T_LEN
                                    176 	.globl _UEP2_CTRL
                                    177 	.globl _UEP1_T_LEN
                                    178 	.globl _UEP1_CTRL
                                    179 	.globl _UDEV_CTRL
                                    180 	.globl _USB_C_CTRL
                                    181 	.globl _TKEY_DATH
                                    182 	.globl _TKEY_DATL
                                    183 	.globl _TKEY_DAT
                                    184 	.globl _TKEY_CTRL
                                    185 	.globl _ADC_DATA
                                    186 	.globl _ADC_CFG
                                    187 	.globl _ADC_CTRL
                                    188 	.globl _SBAUD1
                                    189 	.globl _SBUF1
                                    190 	.globl _SCON1
                                    191 	.globl _SPI0_SETUP
                                    192 	.globl _SPI0_CK_SE
                                    193 	.globl _SPI0_CTRL
                                    194 	.globl _SPI0_DATA
                                    195 	.globl _SPI0_STAT
                                    196 	.globl _PWM_CK_SE
                                    197 	.globl _PWM_CTRL
                                    198 	.globl _PWM_DATA1
                                    199 	.globl _PWM_DATA2
                                    200 	.globl _T2CAP1H
                                    201 	.globl _T2CAP1L
                                    202 	.globl _T2CAP1
                                    203 	.globl _TH2
                                    204 	.globl _TL2
                                    205 	.globl _T2COUNT
                                    206 	.globl _RCAP2H
                                    207 	.globl _RCAP2L
                                    208 	.globl _RCAP2
                                    209 	.globl _T2MOD
                                    210 	.globl _T2CON
                                    211 	.globl _SBUF
                                    212 	.globl _SCON
                                    213 	.globl _TH1
                                    214 	.globl _TH0
                                    215 	.globl _TL1
                                    216 	.globl _TL0
                                    217 	.globl _TMOD
                                    218 	.globl _TCON
                                    219 	.globl _XBUS_AUX
                                    220 	.globl _PIN_FUNC
                                    221 	.globl _P3_DIR_PU
                                    222 	.globl _P3_MOD_OC
                                    223 	.globl _P3
                                    224 	.globl _P2
                                    225 	.globl _P1_DIR_PU
                                    226 	.globl _P1_MOD_OC
                                    227 	.globl _P1
                                    228 	.globl _ROM_CTRL
                                    229 	.globl _ROM_DATA_H
                                    230 	.globl _ROM_DATA_L
                                    231 	.globl _ROM_DATA
                                    232 	.globl _ROM_ADDR_H
                                    233 	.globl _ROM_ADDR_L
                                    234 	.globl _ROM_ADDR
                                    235 	.globl _GPIO_IE
                                    236 	.globl _IP_EX
                                    237 	.globl _IE_EX
                                    238 	.globl _IP
                                    239 	.globl _IE
                                    240 	.globl _WDOG_COUNT
                                    241 	.globl _RESET_KEEP
                                    242 	.globl _WAKE_CTRL
                                    243 	.globl _CLOCK_CFG
                                    244 	.globl _PCON
                                    245 	.globl _GLOBAL_CFG
                                    246 	.globl _SAFE_MOD
                                    247 	.globl _DPH
                                    248 	.globl _DPL
                                    249 	.globl _SP
                                    250 	.globl _B
                                    251 	.globl _ACC
                                    252 	.globl _PSW
                                    253 	.globl _ledBlinkEnabled
                                    254 	.globl _buttonPrev
                                    255 	.globl _tensON
                                    256 	.globl _unitON
                                    257 	.globl _blinkNowToggle
                                    258 	.globl _conversionFinished
                                    259 	.globl _val
                                    260 	.globl _mVanalog
                                    261 	.globl _rawAnalog
                                    262 	.globl _countTens
                                    263 	.globl _countUnits
                                    264 	.globl _unit
                                    265 	.globl _tens
                                    266 	.globl _blinkCounter
                                    267 	.globl _tick_100us
                                    268 	.globl _clock_init
                                    269 	.globl _timer0_ISR
                                    270 	.globl _blink_led
                                    271 ;--------------------------------------------------------
                                    272 ; special function registers
                                    273 ;--------------------------------------------------------
                                    274 	.area RSEG    (ABS,DATA)
      000000                        275 	.org 0x0000
                           0000D0   276 _PSW	=	0x00d0
                           0000E0   277 _ACC	=	0x00e0
                           0000F0   278 _B	=	0x00f0
                           000081   279 _SP	=	0x0081
                           000082   280 _DPL	=	0x0082
                           000083   281 _DPH	=	0x0083
                           0000A1   282 _SAFE_MOD	=	0x00a1
                           0000B1   283 _GLOBAL_CFG	=	0x00b1
                           000087   284 _PCON	=	0x0087
                           0000B9   285 _CLOCK_CFG	=	0x00b9
                           0000A9   286 _WAKE_CTRL	=	0x00a9
                           0000FE   287 _RESET_KEEP	=	0x00fe
                           0000FF   288 _WDOG_COUNT	=	0x00ff
                           0000A8   289 _IE	=	0x00a8
                           0000B8   290 _IP	=	0x00b8
                           0000E8   291 _IE_EX	=	0x00e8
                           0000E9   292 _IP_EX	=	0x00e9
                           0000C7   293 _GPIO_IE	=	0x00c7
                           008584   294 _ROM_ADDR	=	0x8584
                           000084   295 _ROM_ADDR_L	=	0x0084
                           000085   296 _ROM_ADDR_H	=	0x0085
                           008F8E   297 _ROM_DATA	=	0x8f8e
                           00008E   298 _ROM_DATA_L	=	0x008e
                           00008F   299 _ROM_DATA_H	=	0x008f
                           000086   300 _ROM_CTRL	=	0x0086
                           000090   301 _P1	=	0x0090
                           000092   302 _P1_MOD_OC	=	0x0092
                           000093   303 _P1_DIR_PU	=	0x0093
                           0000A0   304 _P2	=	0x00a0
                           0000B0   305 _P3	=	0x00b0
                           000096   306 _P3_MOD_OC	=	0x0096
                           000097   307 _P3_DIR_PU	=	0x0097
                           0000C6   308 _PIN_FUNC	=	0x00c6
                           0000A2   309 _XBUS_AUX	=	0x00a2
                           000088   310 _TCON	=	0x0088
                           000089   311 _TMOD	=	0x0089
                           00008A   312 _TL0	=	0x008a
                           00008B   313 _TL1	=	0x008b
                           00008C   314 _TH0	=	0x008c
                           00008D   315 _TH1	=	0x008d
                           000098   316 _SCON	=	0x0098
                           000099   317 _SBUF	=	0x0099
                           0000C8   318 _T2CON	=	0x00c8
                           0000C9   319 _T2MOD	=	0x00c9
                           00CBCA   320 _RCAP2	=	0xcbca
                           0000CA   321 _RCAP2L	=	0x00ca
                           0000CB   322 _RCAP2H	=	0x00cb
                           00CDCC   323 _T2COUNT	=	0xcdcc
                           0000CC   324 _TL2	=	0x00cc
                           0000CD   325 _TH2	=	0x00cd
                           00CFCE   326 _T2CAP1	=	0xcfce
                           0000CE   327 _T2CAP1L	=	0x00ce
                           0000CF   328 _T2CAP1H	=	0x00cf
                           00009B   329 _PWM_DATA2	=	0x009b
                           00009C   330 _PWM_DATA1	=	0x009c
                           00009D   331 _PWM_CTRL	=	0x009d
                           00009E   332 _PWM_CK_SE	=	0x009e
                           0000F8   333 _SPI0_STAT	=	0x00f8
                           0000F9   334 _SPI0_DATA	=	0x00f9
                           0000FA   335 _SPI0_CTRL	=	0x00fa
                           0000FB   336 _SPI0_CK_SE	=	0x00fb
                           0000FC   337 _SPI0_SETUP	=	0x00fc
                           0000C0   338 _SCON1	=	0x00c0
                           0000C1   339 _SBUF1	=	0x00c1
                           0000C2   340 _SBAUD1	=	0x00c2
                           000080   341 _ADC_CTRL	=	0x0080
                           00009A   342 _ADC_CFG	=	0x009a
                           00009F   343 _ADC_DATA	=	0x009f
                           0000C3   344 _TKEY_CTRL	=	0x00c3
                           00C5C4   345 _TKEY_DAT	=	0xc5c4
                           0000C4   346 _TKEY_DATL	=	0x00c4
                           0000C5   347 _TKEY_DATH	=	0x00c5
                           000091   348 _USB_C_CTRL	=	0x0091
                           0000D1   349 _UDEV_CTRL	=	0x00d1
                           0000D2   350 _UEP1_CTRL	=	0x00d2
                           0000D3   351 _UEP1_T_LEN	=	0x00d3
                           0000D4   352 _UEP2_CTRL	=	0x00d4
                           0000D5   353 _UEP2_T_LEN	=	0x00d5
                           0000D6   354 _UEP3_CTRL	=	0x00d6
                           0000D7   355 _UEP3_T_LEN	=	0x00d7
                           0000D8   356 _USB_INT_FG	=	0x00d8
                           0000D9   357 _USB_INT_ST	=	0x00d9
                           0000DA   358 _USB_MIS_ST	=	0x00da
                           0000DB   359 _USB_RX_LEN	=	0x00db
                           0000DC   360 _UEP0_CTRL	=	0x00dc
                           0000DD   361 _UEP0_T_LEN	=	0x00dd
                           0000DE   362 _UEP4_CTRL	=	0x00de
                           0000DF   363 _UEP4_T_LEN	=	0x00df
                           0000E1   364 _USB_INT_EN	=	0x00e1
                           0000E2   365 _USB_CTRL	=	0x00e2
                           0000E3   366 _USB_DEV_AD	=	0x00e3
                           00E5E4   367 _UEP2_DMA	=	0xe5e4
                           0000E4   368 _UEP2_DMA_L	=	0x00e4
                           0000E5   369 _UEP2_DMA_H	=	0x00e5
                           00E7E6   370 _UEP3_DMA	=	0xe7e6
                           0000E6   371 _UEP3_DMA_L	=	0x00e6
                           0000E7   372 _UEP3_DMA_H	=	0x00e7
                           0000EA   373 _UEP4_1_MOD	=	0x00ea
                           0000EB   374 _UEP2_3_MOD	=	0x00eb
                           00EDEC   375 _UEP0_DMA	=	0xedec
                           0000EC   376 _UEP0_DMA_L	=	0x00ec
                           0000ED   377 _UEP0_DMA_H	=	0x00ed
                           00EFEE   378 _UEP1_DMA	=	0xefee
                           0000EE   379 _UEP1_DMA_L	=	0x00ee
                           0000EF   380 _UEP1_DMA_H	=	0x00ef
                                    381 ;--------------------------------------------------------
                                    382 ; special function bits
                                    383 ;--------------------------------------------------------
                                    384 	.area RSEG    (ABS,DATA)
      000000                        385 	.org 0x0000
                           0000D7   386 _CY	=	0x00d7
                           0000D6   387 _AC	=	0x00d6
                           0000D5   388 _F0	=	0x00d5
                           0000D4   389 _RS1	=	0x00d4
                           0000D3   390 _RS0	=	0x00d3
                           0000D2   391 _OV	=	0x00d2
                           0000D1   392 _F1	=	0x00d1
                           0000D0   393 _P	=	0x00d0
                           0000AF   394 _EA	=	0x00af
                           0000AE   395 _E_DIS	=	0x00ae
                           0000AD   396 _ET2	=	0x00ad
                           0000AC   397 _ES	=	0x00ac
                           0000AB   398 _ET1	=	0x00ab
                           0000AA   399 _EX1	=	0x00aa
                           0000A9   400 _ET0	=	0x00a9
                           0000A8   401 _EX0	=	0x00a8
                           0000BF   402 _PH_FLAG	=	0x00bf
                           0000BE   403 _PL_FLAG	=	0x00be
                           0000BD   404 _PT2	=	0x00bd
                           0000BC   405 _PS	=	0x00bc
                           0000BB   406 _PT1	=	0x00bb
                           0000BA   407 _PX1	=	0x00ba
                           0000B9   408 _PT0	=	0x00b9
                           0000B8   409 _PX0	=	0x00b8
                           0000EF   410 _IE_WDOG	=	0x00ef
                           0000EE   411 _IE_GPIO	=	0x00ee
                           0000ED   412 _IE_PWMX	=	0x00ed
                           0000EC   413 _IE_UART1	=	0x00ec
                           0000EB   414 _IE_ADC	=	0x00eb
                           0000EA   415 _IE_USB	=	0x00ea
                           0000E9   416 _IE_TKEY	=	0x00e9
                           0000E8   417 _IE_SPI0	=	0x00e8
                           000097   418 _SCK	=	0x0097
                           000097   419 _TXD1	=	0x0097
                           000097   420 _TIN5	=	0x0097
                           000096   421 _MISO	=	0x0096
                           000096   422 _RXD1	=	0x0096
                           000096   423 _TIN4	=	0x0096
                           000095   424 _MOSI	=	0x0095
                           000095   425 _PWM1	=	0x0095
                           000095   426 _TIN3	=	0x0095
                           000095   427 _UCC2	=	0x0095
                           000095   428 _AIN2	=	0x0095
                           000094   429 _T2_	=	0x0094
                           000094   430 _CAP1_	=	0x0094
                           000094   431 _SCS	=	0x0094
                           000094   432 _TIN2	=	0x0094
                           000094   433 _UCC1	=	0x0094
                           000094   434 _AIN1	=	0x0094
                           000093   435 _TXD_	=	0x0093
                           000092   436 _RXD_	=	0x0092
                           000091   437 _T2EX	=	0x0091
                           000091   438 _CAP2	=	0x0091
                           000091   439 _TIN1	=	0x0091
                           000091   440 _VBUS2	=	0x0091
                           000091   441 _AIN0	=	0x0091
                           000090   442 _T2	=	0x0090
                           000090   443 _CAP1	=	0x0090
                           000090   444 _TIN0	=	0x0090
                           0000B7   445 _UDM	=	0x00b7
                           0000B6   446 _UDP	=	0x00b6
                           0000B5   447 _T1	=	0x00b5
                           0000B4   448 _PWM2	=	0x00b4
                           0000B4   449 _RXD1_	=	0x00b4
                           0000B4   450 _T0	=	0x00b4
                           0000B3   451 _INT1	=	0x00b3
                           0000B2   452 _TXD1_	=	0x00b2
                           0000B2   453 _INT0	=	0x00b2
                           0000B2   454 _VBUS1	=	0x00b2
                           0000B2   455 _AIN3	=	0x00b2
                           0000B1   456 _PWM2_	=	0x00b1
                           0000B1   457 _TXD	=	0x00b1
                           0000B0   458 _PWM1_	=	0x00b0
                           0000B0   459 _RXD	=	0x00b0
                           00008F   460 _TF1	=	0x008f
                           00008E   461 _TR1	=	0x008e
                           00008D   462 _TF0	=	0x008d
                           00008C   463 _TR0	=	0x008c
                           00008B   464 _IE1	=	0x008b
                           00008A   465 _IT1	=	0x008a
                           000089   466 _IE0	=	0x0089
                           000088   467 _IT0	=	0x0088
                           00009F   468 _SM0	=	0x009f
                           00009E   469 _SM1	=	0x009e
                           00009D   470 _SM2	=	0x009d
                           00009C   471 _REN	=	0x009c
                           00009B   472 _TB8	=	0x009b
                           00009A   473 _RB8	=	0x009a
                           000099   474 _TI	=	0x0099
                           000098   475 _RI	=	0x0098
                           0000CF   476 _TF2	=	0x00cf
                           0000CF   477 _CAP1F	=	0x00cf
                           0000CE   478 _EXF2	=	0x00ce
                           0000CD   479 _RCLK	=	0x00cd
                           0000CC   480 _TCLK	=	0x00cc
                           0000CB   481 _EXEN2	=	0x00cb
                           0000CA   482 _TR2	=	0x00ca
                           0000C9   483 _C_T2	=	0x00c9
                           0000C8   484 _CP_RL2	=	0x00c8
                           0000FF   485 _S0_FST_ACT	=	0x00ff
                           0000FE   486 _S0_IF_OV	=	0x00fe
                           0000FD   487 _S0_IF_FIRST	=	0x00fd
                           0000FC   488 _S0_IF_BYTE	=	0x00fc
                           0000FB   489 _S0_FREE	=	0x00fb
                           0000FA   490 _S0_T_FIFO	=	0x00fa
                           0000F8   491 _S0_R_FIFO	=	0x00f8
                           0000C7   492 _U1SM0	=	0x00c7
                           0000C5   493 _U1SMOD	=	0x00c5
                           0000C4   494 _U1REN	=	0x00c4
                           0000C3   495 _U1TB8	=	0x00c3
                           0000C2   496 _U1RB8	=	0x00c2
                           0000C1   497 _U1TI	=	0x00c1
                           0000C0   498 _U1RI	=	0x00c0
                           000087   499 _CMPO	=	0x0087
                           000086   500 _CMP_IF	=	0x0086
                           000085   501 _ADC_IF	=	0x0085
                           000084   502 _ADC_START	=	0x0084
                           000083   503 _CMP_CHAN	=	0x0083
                           000081   504 _ADC_CHAN1	=	0x0081
                           000080   505 _ADC_CHAN0	=	0x0080
                           0000DF   506 _U_IS_NAK	=	0x00df
                           0000DE   507 _U_TOG_OK	=	0x00de
                           0000DD   508 _U_SIE_FREE	=	0x00dd
                           0000DC   509 _UIF_FIFO_OV	=	0x00dc
                           0000DB   510 _UIF_HST_SOF	=	0x00db
                           0000DA   511 _UIF_SUSPEND	=	0x00da
                           0000D9   512 _UIF_TRANSFER	=	0x00d9
                           0000D8   513 _UIF_DETECT	=	0x00d8
                           0000D8   514 _UIF_BUS_RST	=	0x00d8
                                    515 ;--------------------------------------------------------
                                    516 ; overlayable register banks
                                    517 ;--------------------------------------------------------
                                    518 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        519 	.ds 8
                                    520 ;--------------------------------------------------------
                                    521 ; overlayable bit register bank
                                    522 ;--------------------------------------------------------
                                    523 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        524 bits:
      000021                        525 	.ds 1
                           008000   526 	b0 = bits[0]
                           008100   527 	b1 = bits[1]
                           008200   528 	b2 = bits[2]
                           008300   529 	b3 = bits[3]
                           008400   530 	b4 = bits[4]
                           008500   531 	b5 = bits[5]
                           008600   532 	b6 = bits[6]
                           008700   533 	b7 = bits[7]
                                    534 ;--------------------------------------------------------
                                    535 ; internal ram data
                                    536 ;--------------------------------------------------------
                                    537 	.area DSEG    (DATA)
      000008                        538 _tick_100us::
      000008                        539 	.ds 2
      00000A                        540 _blinkCounter::
      00000A                        541 	.ds 2
      00000C                        542 _tens::
      00000C                        543 	.ds 2
      00000E                        544 _unit::
      00000E                        545 	.ds 2
      000010                        546 _countUnits::
      000010                        547 	.ds 2
      000012                        548 _countTens::
      000012                        549 	.ds 2
      000014                        550 _rawAnalog::
      000014                        551 	.ds 1
      000015                        552 _mVanalog::
      000015                        553 	.ds 2
      000017                        554 _val::
      000017                        555 	.ds 1
                                    556 ;--------------------------------------------------------
                                    557 ; overlayable items in internal ram
                                    558 ;--------------------------------------------------------
                                    559 ;--------------------------------------------------------
                                    560 ; Stack segment in internal ram
                                    561 ;--------------------------------------------------------
                                    562 	.area SSEG
      000022                        563 __start__stack:
      000022                        564 	.ds	1
                                    565 
                                    566 ;--------------------------------------------------------
                                    567 ; indirectly addressable internal ram data
                                    568 ;--------------------------------------------------------
                                    569 	.area ISEG    (DATA)
                                    570 ;--------------------------------------------------------
                                    571 ; absolute internal ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area IABS    (ABS,DATA)
                                    574 	.area IABS    (ABS,DATA)
                                    575 ;--------------------------------------------------------
                                    576 ; bit data
                                    577 ;--------------------------------------------------------
                                    578 	.area BSEG    (BIT)
      000000                        579 _conversionFinished::
      000000                        580 	.ds 1
      000001                        581 _blinkNowToggle::
      000001                        582 	.ds 1
      000002                        583 _unitON::
      000002                        584 	.ds 1
      000003                        585 _tensON::
      000003                        586 	.ds 1
      000004                        587 _buttonPrev::
      000004                        588 	.ds 1
      000005                        589 _ledBlinkEnabled::
      000005                        590 	.ds 1
                                    591 ;--------------------------------------------------------
                                    592 ; paged external ram data
                                    593 ;--------------------------------------------------------
                                    594 	.area PSEG    (PAG,XDATA)
                                    595 ;--------------------------------------------------------
                                    596 ; uninitialized external ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area XSEG    (XDATA)
                                    599 ;--------------------------------------------------------
                                    600 ; absolute external ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area XABS    (ABS,XDATA)
                                    603 ;--------------------------------------------------------
                                    604 ; initialized external ram data
                                    605 ;--------------------------------------------------------
                                    606 	.area XISEG   (XDATA)
                                    607 	.area HOME    (CODE)
                                    608 	.area GSINIT0 (CODE)
                                    609 	.area GSINIT1 (CODE)
                                    610 	.area GSINIT2 (CODE)
                                    611 	.area GSINIT3 (CODE)
                                    612 	.area GSINIT4 (CODE)
                                    613 	.area GSINIT5 (CODE)
                                    614 	.area GSINIT  (CODE)
                                    615 	.area GSFINAL (CODE)
                                    616 	.area CSEG    (CODE)
                                    617 ;--------------------------------------------------------
                                    618 ; interrupt vector
                                    619 ;--------------------------------------------------------
                                    620 	.area HOME    (CODE)
      000000                        621 __interrupt_vect:
      000000 02 00 54         [24]  622 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  623 	reti
      000004                        624 	.ds	7
      00000B 02 00 FD         [24]  625 	ljmp	_timer0_ISR
                                    626 ; restartable atomic support routines
      00000E                        627 	.ds	2
      000010                        628 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  629 	nop
      000011 00               [12]  630 	nop
      000012                        631 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  632 	movx	a, @r0
      000013 FB               [12]  633 	mov	r3, a
      000014 EA               [12]  634 	mov	a, r2
      000015 F2               [24]  635 	movx	@r0, a
      000016 80 2C            [24]  636 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  637 	nop
      000019 00               [12]  638 	nop
      00001A                        639 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  640 	movx	a, @dptr
      00001B FB               [12]  641 	mov	r3, a
      00001C EA               [12]  642 	mov	a, r2
      00001D F0               [24]  643 	movx	@dptr, a
      00001E 80 24            [24]  644 	sjmp	sdcc_atomic_exchange_exit
      000020                        645 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  646 	mov	a, @r0
      000021 B5 02 02         [24]  647 	cjne	a, ar2, .+#5
      000024 EB               [12]  648 	mov	a, r3
      000025 F6               [12]  649 	mov	@r0, a
      000026 22               [24]  650 	ret
      000027 00               [12]  651 	nop
      000028                        652 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  653 	movx	a, @r0
      000029 B5 02 02         [24]  654 	cjne	a, ar2, .+#5
      00002C EB               [12]  655 	mov	a, r3
      00002D F2               [24]  656 	movx	@r0, a
      00002E 22               [24]  657 	ret
      00002F 00               [12]  658 	nop
      000030                        659 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  660 	movx	a, @dptr
      000031 B5 02 02         [24]  661 	cjne	a, ar2, .+#5
      000034 EB               [12]  662 	mov	a, r3
      000035 F0               [24]  663 	movx	@dptr, a
      000036 22               [24]  664 	ret
      000037                        665 sdcc_atomic_exchange_rollback_end::
                                    666 
      000037                        667 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  668 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  669 	mov	r0, dpl
      00003C 20 F5 D3         [24]  670 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        671 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  672 	mov	a, r2
      000040 C6               [12]  673 	xch	a, @r0
      000041 F5 82            [12]  674 	mov	dpl, a
      000043 22               [24]  675 	ret
      000044                        676 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  677 	mov	dpl, r3
      000046 22               [24]  678 	ret
      000047                        679 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  680 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  681 	mov	r0, dpl
      00004C 20 F5 D9         [24]  682 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  683 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    684 ;--------------------------------------------------------
                                    685 ; global & static initialisations
                                    686 ;--------------------------------------------------------
                                    687 	.area HOME    (CODE)
                                    688 	.area GSINIT  (CODE)
                                    689 	.area GSFINAL (CODE)
                                    690 	.area GSINIT  (CODE)
                                    691 	.globl __sdcc_gsinit_startup
                                    692 	.globl __sdcc_program_startup
                                    693 	.globl __start__stack
                                    694 	.globl __mcs51_genXINIT
                                    695 	.globl __mcs51_genXRAMCLEAR
                                    696 	.globl __mcs51_genRAMCLEAR
                                    697 ;	adc-example-leds-hmi.c:5: volatile unsigned int tick_100us = 0;
      0000AD E4               [12]  698 	clr	a
      0000AE F5 08            [12]  699 	mov	_tick_100us,a
      0000B0 F5 09            [12]  700 	mov	(_tick_100us + 1),a
                                    701 ;	adc-example-leds-hmi.c:6: volatile unsigned int blinkCounter = 0;
      0000B2 F5 0A            [12]  702 	mov	_blinkCounter,a
      0000B4 F5 0B            [12]  703 	mov	(_blinkCounter + 1),a
                                    704 ;	adc-example-leds-hmi.c:7: volatile unsigned int tens = 0;
      0000B6 F5 0C            [12]  705 	mov	_tens,a
      0000B8 F5 0D            [12]  706 	mov	(_tens + 1),a
                                    707 ;	adc-example-leds-hmi.c:8: volatile unsigned int unit = 0;
      0000BA F5 0E            [12]  708 	mov	_unit,a
      0000BC F5 0F            [12]  709 	mov	(_unit + 1),a
                                    710 ;	adc-example-leds-hmi.c:9: unsigned int countUnits = 0;
      0000BE F5 10            [12]  711 	mov	_countUnits,a
      0000C0 F5 11            [12]  712 	mov	(_countUnits + 1),a
                                    713 ;	adc-example-leds-hmi.c:10: unsigned int countTens = 0;
      0000C2 F5 12            [12]  714 	mov	_countTens,a
      0000C4 F5 13            [12]  715 	mov	(_countTens + 1),a
                                    716 ;	adc-example-leds-hmi.c:11: uint8_t rawAnalog = 0;
      0000C6 F5 14            [12]  717 	mov	_rawAnalog,a
                                    718 ;	adc-example-leds-hmi.c:12: uint16_t mVanalog = 0;
      0000C8 F5 15            [12]  719 	mov	_mVanalog,a
      0000CA F5 16            [12]  720 	mov	(_mVanalog + 1),a
                                    721 ;	adc-example-leds-hmi.c:13: uint8_t val = 0;
      0000CC F5 17            [12]  722 	mov	_val,a
                                    723 ;	adc-example-leds-hmi.c:14: __bit conversionFinished = 1;
                                    724 ;	assignBit
      0000CE D2 00            [12]  725 	setb	_conversionFinished
                                    726 ;	adc-example-leds-hmi.c:15: __bit blinkNowToggle = 0;
                                    727 ;	assignBit
      0000D0 C2 01            [12]  728 	clr	_blinkNowToggle
                                    729 ;	adc-example-leds-hmi.c:16: __bit unitON = 0;
                                    730 ;	assignBit
      0000D2 C2 02            [12]  731 	clr	_unitON
                                    732 ;	adc-example-leds-hmi.c:17: __bit tensON = 0;
                                    733 ;	assignBit
      0000D4 C2 03            [12]  734 	clr	_tensON
                                    735 ;	adc-example-leds-hmi.c:18: __bit buttonPrev = 0;
                                    736 ;	assignBit
      0000D6 C2 04            [12]  737 	clr	_buttonPrev
                                    738 ;	adc-example-leds-hmi.c:19: __bit ledBlinkEnabled = 0;
                                    739 ;	assignBit
      0000D8 C2 05            [12]  740 	clr	_ledBlinkEnabled
                                    741 	.area GSFINAL (CODE)
      0000DD 02 00 51         [24]  742 	ljmp	__sdcc_program_startup
                                    743 ;--------------------------------------------------------
                                    744 ; Home
                                    745 ;--------------------------------------------------------
                                    746 	.area HOME    (CODE)
                                    747 	.area HOME    (CODE)
      000051                        748 __sdcc_program_startup:
      000051 02 02 BC         [24]  749 	ljmp	_main
                                    750 ;	return from main will return to caller
                                    751 ;--------------------------------------------------------
                                    752 ; code
                                    753 ;--------------------------------------------------------
                                    754 	.area CSEG    (CODE)
                                    755 ;------------------------------------------------------------
                                    756 ;Allocation info for local variables in function 'analogReading'
                                    757 ;------------------------------------------------------------
                                    758 ;	adc-example-leds-hmi.c:25: uint8_t analogReading(void) {
                                    759 ;	-----------------------------------------
                                    760 ;	 function analogReading
                                    761 ;	-----------------------------------------
      0000E0                        762 _analogReading:
                           000007   763 	ar7 = 0x07
                           000006   764 	ar6 = 0x06
                           000005   765 	ar5 = 0x05
                           000004   766 	ar4 = 0x04
                           000003   767 	ar3 = 0x03
                           000002   768 	ar2 = 0x02
                           000001   769 	ar1 = 0x01
                           000000   770 	ar0 = 0x00
                                    771 ;	adc-example-leds-hmi.c:26: ADC_START = 1;
                                    772 ;	assignBit
      0000E0 D2 84            [12]  773 	setb	_ADC_START
                                    774 ;	adc-example-leds-hmi.c:27: while (ADC_START);
      0000E2                        775 00101$:
      0000E2 20 84 FD         [24]  776 	jb	_ADC_START,00101$
                                    777 ;	adc-example-leds-hmi.c:28: ADC_IF = 0;
                                    778 ;	assignBit
      0000E5 C2 85            [12]  779 	clr	_ADC_IF
                                    780 ;	adc-example-leds-hmi.c:29: return ADC_DATA;
      0000E7 85 9F 82         [24]  781 	mov	dpl, _ADC_DATA
                                    782 ;	adc-example-leds-hmi.c:30: }
      0000EA 22               [24]  783 	ret
                                    784 ;------------------------------------------------------------
                                    785 ;Allocation info for local variables in function 'clock_init'
                                    786 ;------------------------------------------------------------
                                    787 ;	adc-example-leds-hmi.c:32: void clock_init(void) {
                                    788 ;	-----------------------------------------
                                    789 ;	 function clock_init
                                    790 ;	-----------------------------------------
      0000EB                        791 _clock_init:
                                    792 ;	adc-example-leds-hmi.c:33: SAFE_MOD = 0x55;
      0000EB 75 A1 55         [24]  793 	mov	_SAFE_MOD,#0x55
                                    794 ;	adc-example-leds-hmi.c:34: SAFE_MOD = 0xAA;
      0000EE 75 A1 AA         [24]  795 	mov	_SAFE_MOD,#0xaa
                                    796 ;	adc-example-leds-hmi.c:36: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0000F1 74 F8            [12]  797 	mov	a,#0xf8
      0000F3 55 B9            [12]  798 	anl	a,_CLOCK_CFG
      0000F5 44 06            [12]  799 	orl	a,#0x06
      0000F7 F5 B9            [12]  800 	mov	_CLOCK_CFG,a
                                    801 ;	adc-example-leds-hmi.c:37: SAFE_MOD = 0x00;
      0000F9 75 A1 00         [24]  802 	mov	_SAFE_MOD,#0x00
                                    803 ;	adc-example-leds-hmi.c:38: }
      0000FC 22               [24]  804 	ret
                                    805 ;------------------------------------------------------------
                                    806 ;Allocation info for local variables in function 'timer0_ISR'
                                    807 ;------------------------------------------------------------
                                    808 ;	adc-example-leds-hmi.c:40: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
                                    809 ;	-----------------------------------------
                                    810 ;	 function timer0_ISR
                                    811 ;	-----------------------------------------
      0000FD                        812 _timer0_ISR:
      0000FD C0 E0            [24]  813 	push	acc
      0000FF C0 07            [24]  814 	push	ar7
      000101 C0 06            [24]  815 	push	ar6
      000103 C0 D0            [24]  816 	push	psw
      000105 75 D0 00         [24]  817 	mov	psw,#0x00
                                    818 ;	adc-example-leds-hmi.c:41: TF0 = 0;
                                    819 ;	assignBit
      000108 C2 8D            [12]  820 	clr	_TF0
                                    821 ;	adc-example-leds-hmi.c:43: TH0 = 0xFF;
      00010A 75 8C FF         [24]  822 	mov	_TH0,#0xff
                                    823 ;	adc-example-leds-hmi.c:44: TL0 = 0x38;
      00010D 75 8A 38         [24]  824 	mov	_TL0,#0x38
                                    825 ;	adc-example-leds-hmi.c:45: tick_100us++;
      000110 AE 08            [24]  826 	mov	r6,_tick_100us
      000112 AF 09            [24]  827 	mov	r7,(_tick_100us + 1)
      000114 74 01            [12]  828 	mov	a,#0x01
      000116 2E               [12]  829 	add	a, r6
      000117 F5 08            [12]  830 	mov	_tick_100us,a
      000119 E4               [12]  831 	clr	a
      00011A 3F               [12]  832 	addc	a, r7
      00011B F5 09            [12]  833 	mov	(_tick_100us + 1),a
                                    834 ;	adc-example-leds-hmi.c:46: blinkCounter++;
      00011D AE 0A            [24]  835 	mov	r6,_blinkCounter
      00011F AF 0B            [24]  836 	mov	r7,(_blinkCounter + 1)
      000121 74 01            [12]  837 	mov	a,#0x01
      000123 2E               [12]  838 	add	a, r6
      000124 F5 0A            [12]  839 	mov	_blinkCounter,a
      000126 E4               [12]  840 	clr	a
      000127 3F               [12]  841 	addc	a, r7
      000128 F5 0B            [12]  842 	mov	(_blinkCounter + 1),a
                                    843 ;	adc-example-leds-hmi.c:47: }
      00012A D0 D0            [24]  844 	pop	psw
      00012C D0 06            [24]  845 	pop	ar6
      00012E D0 07            [24]  846 	pop	ar7
      000130 D0 E0            [24]  847 	pop	acc
      000132 32               [24]  848 	reti
                                    849 ;	eliminated unneeded push/pop dpl
                                    850 ;	eliminated unneeded push/pop dph
                                    851 ;	eliminated unneeded push/pop b
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'timer0_init'
                                    854 ;------------------------------------------------------------
                                    855 ;	adc-example-leds-hmi.c:49: void timer0_init(void) {
                                    856 ;	-----------------------------------------
                                    857 ;	 function timer0_init
                                    858 ;	-----------------------------------------
      000133                        859 _timer0_init:
                                    860 ;	adc-example-leds-hmi.c:51: TMOD &= ~0x03;
      000133 53 89 FC         [24]  861 	anl	_TMOD,#0xfc
                                    862 ;	adc-example-leds-hmi.c:52: TMOD |=  0x01;
      000136 43 89 01         [24]  863 	orl	_TMOD,#0x01
                                    864 ;	adc-example-leds-hmi.c:53: TH0 = 0xFF;
      000139 75 8C FF         [24]  865 	mov	_TH0,#0xff
                                    866 ;	adc-example-leds-hmi.c:54: TL0 = 0x38;
      00013C 75 8A 38         [24]  867 	mov	_TL0,#0x38
                                    868 ;	adc-example-leds-hmi.c:55: ET0 = 1;
                                    869 ;	assignBit
      00013F D2 A9            [12]  870 	setb	_ET0
                                    871 ;	adc-example-leds-hmi.c:56: TR0 = 1;
                                    872 ;	assignBit
      000141 D2 8C            [12]  873 	setb	_TR0
                                    874 ;	adc-example-leds-hmi.c:57: EA  = 1;
                                    875 ;	assignBit
      000143 D2 AF            [12]  876 	setb	_EA
                                    877 ;	adc-example-leds-hmi.c:58: }
      000145 22               [24]  878 	ret
                                    879 ;------------------------------------------------------------
                                    880 ;Allocation info for local variables in function 'blink_led'
                                    881 ;------------------------------------------------------------
                                    882 ;	adc-example-leds-hmi.c:60: void blink_led(void) {
                                    883 ;	-----------------------------------------
                                    884 ;	 function blink_led
                                    885 ;	-----------------------------------------
      000146                        886 _blink_led:
                                    887 ;	adc-example-leds-hmi.c:62: if (tick_100us < 2500) {
      000146 C3               [12]  888 	clr	c
      000147 E5 08            [12]  889 	mov	a,_tick_100us
      000149 94 C4            [12]  890 	subb	a,#0xc4
      00014B E5 09            [12]  891 	mov	a,(_tick_100us + 1)
      00014D 94 09            [12]  892 	subb	a,#0x09
      00014F 50 04            [24]  893 	jnc	00105$
                                    894 ;	adc-example-leds-hmi.c:63: P3 |=  (1 << 0);
      000151 43 B0 01         [24]  895 	orl	_P3,#0x01
      000154 22               [24]  896 	ret
      000155                        897 00105$:
                                    898 ;	adc-example-leds-hmi.c:64: } else if (tick_100us < 5000) {
      000155 C3               [12]  899 	clr	c
      000156 E5 08            [12]  900 	mov	a,_tick_100us
      000158 94 88            [12]  901 	subb	a,#0x88
      00015A E5 09            [12]  902 	mov	a,(_tick_100us + 1)
      00015C 94 13            [12]  903 	subb	a,#0x13
      00015E 50 04            [24]  904 	jnc	00102$
                                    905 ;	adc-example-leds-hmi.c:65: P3 &= ~(1 << 0);
      000160 53 B0 FE         [24]  906 	anl	_P3,#0xfe
      000163 22               [24]  907 	ret
      000164                        908 00102$:
                                    909 ;	adc-example-leds-hmi.c:67: tick_100us = 0;
      000164 E4               [12]  910 	clr	a
      000165 F5 08            [12]  911 	mov	_tick_100us,a
      000167 F5 09            [12]  912 	mov	(_tick_100us + 1),a
                                    913 ;	adc-example-leds-hmi.c:69: }
      000169 22               [24]  914 	ret
                                    915 ;------------------------------------------------------------
                                    916 ;Allocation info for local variables in function 'rawToMillivolts'
                                    917 ;------------------------------------------------------------
                                    918 ;raw           Allocated to registers r7 
                                    919 ;------------------------------------------------------------
                                    920 ;	adc-example-leds-hmi.c:71: uint16_t rawToMillivolts(uint8_t raw) {
                                    921 ;	-----------------------------------------
                                    922 ;	 function rawToMillivolts
                                    923 ;	-----------------------------------------
      00016A                        924 _rawToMillivolts:
      00016A AF 82            [24]  925 	mov	r7, dpl
                                    926 ;	adc-example-leds-hmi.c:75: return ((uint32_t)raw * 5000) / 255;
      00016C 7E 00            [12]  927 	mov	r6,#0x00
      00016E 7D 00            [12]  928 	mov	r5,#0x00
      000170 7C 00            [12]  929 	mov	r4,#0x00
      000172 C0 07            [24]  930 	push	ar7
      000174 C0 06            [24]  931 	push	ar6
      000176 C0 05            [24]  932 	push	ar5
      000178 C0 04            [24]  933 	push	ar4
      00017A 90 13 88         [24]  934 	mov	dptr,#0x1388
      00017D E4               [12]  935 	clr	a
      00017E F5 F0            [12]  936 	mov	b,a
      000180 12 09 CD         [24]  937 	lcall	__mullong
      000183 AC 82            [24]  938 	mov	r4, dpl
      000185 AD 83            [24]  939 	mov	r5, dph
      000187 AE F0            [24]  940 	mov	r6, b
      000189 FF               [12]  941 	mov	r7, a
      00018A E5 81            [12]  942 	mov	a,sp
      00018C 24 FC            [12]  943 	add	a,#0xfc
      00018E F5 81            [12]  944 	mov	sp,a
      000190 74 FF            [12]  945 	mov	a,#0xff
      000192 C0 E0            [24]  946 	push	acc
      000194 E4               [12]  947 	clr	a
      000195 C0 E0            [24]  948 	push	acc
      000197 C0 E0            [24]  949 	push	acc
      000199 C0 E0            [24]  950 	push	acc
      00019B 8C 82            [24]  951 	mov	dpl, r4
      00019D 8D 83            [24]  952 	mov	dph, r5
      00019F 8E F0            [24]  953 	mov	b, r6
      0001A1 EF               [12]  954 	mov	a, r7
      0001A2 12 09 07         [24]  955 	lcall	__divulong
      0001A5 AC 82            [24]  956 	mov	r4, dpl
      0001A7 AD 83            [24]  957 	mov	r5, dph
      0001A9 E5 81            [12]  958 	mov	a,sp
      0001AB 24 FC            [12]  959 	add	a,#0xfc
      0001AD F5 81            [12]  960 	mov	sp,a
      0001AF 8C 82            [24]  961 	mov	dpl,r4
      0001B1 8D 83            [24]  962 	mov	dph,r5
                                    963 ;	adc-example-leds-hmi.c:76: }
      0001B3 22               [24]  964 	ret
                                    965 ;------------------------------------------------------------
                                    966 ;Allocation info for local variables in function 'blinkTwoLEDs'
                                    967 ;------------------------------------------------------------
                                    968 ;v             Allocated to registers r7 
                                    969 ;------------------------------------------------------------
                                    970 ;	adc-example-leds-hmi.c:78: void blinkTwoLEDs(uint8_t v) {
                                    971 ;	-----------------------------------------
                                    972 ;	 function blinkTwoLEDs
                                    973 ;	-----------------------------------------
      0001B4                        974 _blinkTwoLEDs:
      0001B4 AF 82            [24]  975 	mov	r7, dpl
                                    976 ;	adc-example-leds-hmi.c:79: tens = v / 10;
      0001B6 8F 06            [24]  977 	mov	ar6,r7
      0001B8 75 F0 0A         [24]  978 	mov	b,#0x0a
      0001BB EE               [12]  979 	mov	a,r6
      0001BC 84               [48]  980 	div	ab
      0001BD F5 0C            [12]  981 	mov	_tens, a
      0001BF 75 0D 00         [24]  982 	mov	(_tens + 1),#0x00
                                    983 ;	adc-example-leds-hmi.c:80: unit = v % 10;
      0001C2 75 F0 0A         [24]  984 	mov	b,#0x0a
      0001C5 EF               [12]  985 	mov	a,r7
      0001C6 84               [48]  986 	div	ab
      0001C7 AF F0            [24]  987 	mov	r7,b
      0001C9 8F 0E            [24]  988 	mov	_unit,r7
                                    989 ;	adc-example-leds-hmi.c:85: countUnits   = 0;
      0001CB E4               [12]  990 	clr	a
      0001CC F5 0F            [12]  991 	mov	(_unit + 1),a
      0001CE F5 10            [12]  992 	mov	_countUnits,a
      0001D0 F5 11            [12]  993 	mov	(_countUnits + 1),a
                                    994 ;	adc-example-leds-hmi.c:86: countTens    = 0;
      0001D2 F5 12            [12]  995 	mov	_countTens,a
      0001D4 F5 13            [12]  996 	mov	(_countTens + 1),a
                                    997 ;	adc-example-leds-hmi.c:87: unitON       = 0;
                                    998 ;	assignBit
      0001D6 C2 02            [12]  999 	clr	_unitON
                                   1000 ;	adc-example-leds-hmi.c:88: tensON       = 0;
                                   1001 ;	assignBit
      0001D8 C2 03            [12] 1002 	clr	_tensON
                                   1003 ;	adc-example-leds-hmi.c:89: blinkCounter = 0;
      0001DA E4               [12] 1004 	clr	a
      0001DB F5 0A            [12] 1005 	mov	_blinkCounter,a
      0001DD F5 0B            [12] 1006 	mov	(_blinkCounter + 1),a
                                   1007 ;	adc-example-leds-hmi.c:90: blinkNowToggle = 1;
                                   1008 ;	assignBit
      0001DF D2 01            [12] 1009 	setb	_blinkNowToggle
                                   1010 ;	adc-example-leds-hmi.c:91: }
      0001E1 22               [24] 1011 	ret
                                   1012 ;------------------------------------------------------------
                                   1013 ;Allocation info for local variables in function 'blinkNow'
                                   1014 ;------------------------------------------------------------
                                   1015 ;	adc-example-leds-hmi.c:93: void blinkNow(void) {
                                   1016 ;	-----------------------------------------
                                   1017 ;	 function blinkNow
                                   1018 ;	-----------------------------------------
      0001E2                       1019 _blinkNow:
                                   1020 ;	adc-example-leds-hmi.c:94: if (!blinkNowToggle) return;
      0001E2 20 01 01         [24] 1021 	jb	_blinkNowToggle,00102$
      0001E5 22               [24] 1022 	ret
      0001E6                       1023 00102$:
                                   1024 ;	adc-example-leds-hmi.c:97: if (countUnits == 0 && countTens == 0) {
      0001E6 E5 10            [12] 1025 	mov	a,_countUnits
      0001E8 45 11            [12] 1026 	orl	a,(_countUnits + 1)
      0001EA 70 27            [24] 1027 	jnz	00110$
      0001EC E5 12            [12] 1028 	mov	a,_countTens
      0001EE 45 13            [12] 1029 	orl	a,(_countTens + 1)
      0001F0 70 21            [24] 1030 	jnz	00110$
                                   1031 ;	adc-example-leds-hmi.c:98: if (unit > 0) {
      0001F2 E5 0E            [12] 1032 	mov	a,_unit
      0001F4 45 0F            [12] 1033 	orl	a,(_unit + 1)
      0001F6 60 08            [24] 1034 	jz	00107$
                                   1035 ;	adc-example-leds-hmi.c:99: countUnits = 1;
      0001F8 75 10 01         [24] 1036 	mov	_countUnits,#0x01
      0001FB 75 11 00         [24] 1037 	mov	(_countUnits + 1),#0x00
      0001FE 80 13            [24] 1038 	sjmp	00110$
      000200                       1039 00107$:
                                   1040 ;	adc-example-leds-hmi.c:100: } else if (tens > 0) {
      000200 E5 0C            [12] 1041 	mov	a,_tens
      000202 45 0D            [12] 1042 	orl	a,(_tens + 1)
      000204 60 08            [24] 1043 	jz	00104$
                                   1044 ;	adc-example-leds-hmi.c:101: countTens = 1;
      000206 75 12 01         [24] 1045 	mov	_countTens,#0x01
      000209 75 13 00         [24] 1046 	mov	(_countTens + 1),#0x00
      00020C 80 05            [24] 1047 	sjmp	00110$
      00020E                       1048 00104$:
                                   1049 ;	adc-example-leds-hmi.c:103: blinkNowToggle = 0;
                                   1050 ;	assignBit
      00020E C2 01            [12] 1051 	clr	_blinkNowToggle
                                   1052 ;	adc-example-leds-hmi.c:104: conversionFinished = 1;
                                   1053 ;	assignBit
      000210 D2 00            [12] 1054 	setb	_conversionFinished
                                   1055 ;	adc-example-leds-hmi.c:105: return;
      000212 22               [24] 1056 	ret
      000213                       1057 00110$:
                                   1058 ;	adc-example-leds-hmi.c:110: if (blinkCounter < 2500) return;
      000213 C3               [12] 1059 	clr	c
      000214 E5 0A            [12] 1060 	mov	a,_blinkCounter
      000216 94 C4            [12] 1061 	subb	a,#0xc4
      000218 E5 0B            [12] 1062 	mov	a,(_blinkCounter + 1)
      00021A 94 09            [12] 1063 	subb	a,#0x09
      00021C 50 01            [24] 1064 	jnc	00113$
      00021E 22               [24] 1065 	ret
      00021F                       1066 00113$:
                                   1067 ;	adc-example-leds-hmi.c:111: blinkCounter = 0;
      00021F E4               [12] 1068 	clr	a
      000220 F5 0A            [12] 1069 	mov	_blinkCounter,a
      000222 F5 0B            [12] 1070 	mov	(_blinkCounter + 1),a
                                   1071 ;	adc-example-leds-hmi.c:114: if (countUnits == 1) {
      000224 04               [12] 1072 	inc	a
      000225 B5 10 06         [24] 1073 	cjne	a,_countUnits,00226$
      000228 14               [12] 1074 	dec	a
      000229 B5 11 02         [24] 1075 	cjne	a,(_countUnits + 1),00226$
      00022C 80 02            [24] 1076 	sjmp	00227$
      00022E                       1077 00226$:
      00022E 80 4E            [24] 1078 	sjmp	00123$
      000230                       1079 00227$:
                                   1080 ;	adc-example-leds-hmi.c:115: if (unit > 0) {
      000230 E5 0E            [12] 1081 	mov	a,_unit
      000232 45 0F            [12] 1082 	orl	a,(_unit + 1)
      000234 60 1F            [24] 1083 	jz	00120$
                                   1084 ;	adc-example-leds-hmi.c:116: if (unitON == 0) {
      000236 20 02 07         [24] 1085 	jb	_unitON,00115$
                                   1086 ;	adc-example-leds-hmi.c:117: P3 |=  (1 << 5);   // LED ON
      000239 43 B0 20         [24] 1087 	orl	_P3,#0x20
                                   1088 ;	adc-example-leds-hmi.c:118: unitON = 1;
                                   1089 ;	assignBit
      00023C D2 02            [12] 1090 	setb	_unitON
      00023E 80 3D            [24] 1091 	sjmp	00121$
      000240                       1092 00115$:
                                   1093 ;	adc-example-leds-hmi.c:120: P3 &= ~(1 << 5);   // LED OFF
      000240 53 B0 DF         [24] 1094 	anl	_P3,#0xdf
                                   1095 ;	adc-example-leds-hmi.c:121: unitON = 0;
                                   1096 ;	assignBit
      000243 C2 02            [12] 1097 	clr	_unitON
                                   1098 ;	adc-example-leds-hmi.c:122: unit--;            // decrement only on OFF edge — one full blink per count
      000245 AE 0E            [24] 1099 	mov	r6,_unit
      000247 AF 0F            [24] 1100 	mov	r7,(_unit + 1)
      000249 EE               [12] 1101 	mov	a,r6
      00024A 24 FF            [12] 1102 	add	a,#0xff
      00024C F5 0E            [12] 1103 	mov	_unit,a
      00024E EF               [12] 1104 	mov	a,r7
      00024F 34 FF            [12] 1105 	addc	a,#0xff
      000251 F5 0F            [12] 1106 	mov	(_unit + 1),a
      000253 80 28            [24] 1107 	sjmp	00121$
      000255                       1108 00120$:
                                   1109 ;	adc-example-leds-hmi.c:125: P3 &= ~(1 << 5);       // FIX: was (1<<4), must clear units LED (P3.5) before switching phase
      000255 53 B0 DF         [24] 1110 	anl	_P3,#0xdf
                                   1111 ;	adc-example-leds-hmi.c:126: unitON     = 0;
                                   1112 ;	assignBit
      000258 C2 02            [12] 1113 	clr	_unitON
                                   1114 ;	adc-example-leds-hmi.c:127: countUnits = 0;
      00025A E4               [12] 1115 	clr	a
      00025B F5 10            [12] 1116 	mov	_countUnits,a
      00025D F5 11            [12] 1117 	mov	(_countUnits + 1),a
                                   1118 ;	adc-example-leds-hmi.c:128: countTens  = (tens > 0) ? 1 : 0;  // FIX: only enter tens phase if tens > 0
      00025F E5 0C            [12] 1119 	mov	a,_tens
      000261 45 0D            [12] 1120 	orl	a,(_tens + 1)
      000263 60 06            [24] 1121 	jz	00134$
      000265 7E 01            [12] 1122 	mov	r6,#0x01
      000267 7F 00            [12] 1123 	mov	r7,#0x00
      000269 80 04            [24] 1124 	sjmp	00135$
      00026B                       1125 00134$:
      00026B 7E 00            [12] 1126 	mov	r6,#0x00
      00026D 7F 00            [12] 1127 	mov	r7,#0x00
      00026F                       1128 00135$:
      00026F 8E 12            [24] 1129 	mov	_countTens,r6
      000271 8F 13            [24] 1130 	mov	(_countTens + 1),r7
                                   1131 ;	adc-example-leds-hmi.c:129: if (countTens == 0) {
      000273 E5 12            [12] 1132 	mov	a,_countTens
      000275 45 13            [12] 1133 	orl	a,(_countTens + 1)
      000277 70 04            [24] 1134 	jnz	00121$
                                   1135 ;	adc-example-leds-hmi.c:130: blinkNowToggle = 0;
                                   1136 ;	assignBit
      000279 C2 01            [12] 1137 	clr	_blinkNowToggle
                                   1138 ;	adc-example-leds-hmi.c:131: conversionFinished = 1;
                                   1139 ;	assignBit
      00027B D2 00            [12] 1140 	setb	_conversionFinished
      00027D                       1141 00121$:
                                   1142 ;	adc-example-leds-hmi.c:134: return;
      00027D 22               [24] 1143 	ret
      00027E                       1144 00123$:
                                   1145 ;	adc-example-leds-hmi.c:138: if (countTens == 1) {
      00027E 74 01            [12] 1146 	mov	a,#0x01
      000280 B5 12 06         [24] 1147 	cjne	a,_countTens,00232$
      000283 14               [12] 1148 	dec	a
      000284 B5 13 02         [24] 1149 	cjne	a,(_countTens + 1),00232$
      000287 80 01            [24] 1150 	sjmp	00233$
      000289                       1151 00232$:
      000289 22               [24] 1152 	ret
      00028A                       1153 00233$:
                                   1154 ;	adc-example-leds-hmi.c:139: if (tens > 0) {
      00028A E5 0C            [12] 1155 	mov	a,_tens
      00028C 45 0D            [12] 1156 	orl	a,(_tens + 1)
      00028E 60 1D            [24] 1157 	jz	00128$
                                   1158 ;	adc-example-leds-hmi.c:140: if (tensON == 0) {
      000290 20 03 06         [24] 1159 	jb	_tensON,00125$
                                   1160 ;	adc-example-leds-hmi.c:141: P3 |=  (1 << 4);   // LED ON
      000293 43 B0 10         [24] 1161 	orl	_P3,#0x10
                                   1162 ;	adc-example-leds-hmi.c:142: tensON = 1;
                                   1163 ;	assignBit
      000296 D2 03            [12] 1164 	setb	_tensON
      000298 22               [24] 1165 	ret
      000299                       1166 00125$:
                                   1167 ;	adc-example-leds-hmi.c:144: P3 &= ~(1 << 4);   // LED OFF
      000299 53 B0 EF         [24] 1168 	anl	_P3,#0xef
                                   1169 ;	adc-example-leds-hmi.c:145: tensON = 0;
                                   1170 ;	assignBit
      00029C C2 03            [12] 1171 	clr	_tensON
                                   1172 ;	adc-example-leds-hmi.c:146: tens--;            // decrement only on OFF edge — one full blink per count
      00029E AE 0C            [24] 1173 	mov	r6,_tens
      0002A0 AF 0D            [24] 1174 	mov	r7,(_tens + 1)
      0002A2 EE               [12] 1175 	mov	a,r6
      0002A3 24 FF            [12] 1176 	add	a,#0xff
      0002A5 F5 0C            [12] 1177 	mov	_tens,a
      0002A7 EF               [12] 1178 	mov	a,r7
      0002A8 34 FF            [12] 1179 	addc	a,#0xff
      0002AA F5 0D            [12] 1180 	mov	(_tens + 1),a
      0002AC 22               [24] 1181 	ret
      0002AD                       1182 00128$:
                                   1183 ;	adc-example-leds-hmi.c:149: P3 &= ~(1 << 4);       // FIX: was (1<<5), must clear tens LED (P3.4) when done
      0002AD 53 B0 EF         [24] 1184 	anl	_P3,#0xef
                                   1185 ;	adc-example-leds-hmi.c:150: tensON         = 0;
                                   1186 ;	assignBit
      0002B0 C2 03            [12] 1187 	clr	_tensON
                                   1188 ;	adc-example-leds-hmi.c:151: countTens      = 0;
      0002B2 E4               [12] 1189 	clr	a
      0002B3 F5 12            [12] 1190 	mov	_countTens,a
      0002B5 F5 13            [12] 1191 	mov	(_countTens + 1),a
                                   1192 ;	adc-example-leds-hmi.c:152: blinkNowToggle = 0;
                                   1193 ;	assignBit
      0002B7 C2 01            [12] 1194 	clr	_blinkNowToggle
                                   1195 ;	adc-example-leds-hmi.c:153: conversionFinished = 1;
                                   1196 ;	assignBit
      0002B9 D2 00            [12] 1197 	setb	_conversionFinished
                                   1198 ;	adc-example-leds-hmi.c:156: }
      0002BB 22               [24] 1199 	ret
                                   1200 ;------------------------------------------------------------
                                   1201 ;Allocation info for local variables in function 'main'
                                   1202 ;------------------------------------------------------------
                                   1203 ;buttonNow     Allocated to registers r6 
                                   1204 ;------------------------------------------------------------
                                   1205 ;	adc-example-leds-hmi.c:158: void main(void) {
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function main
                                   1208 ;	-----------------------------------------
      0002BC                       1209 _main:
                                   1210 ;	adc-example-leds-hmi.c:159: clock_init();
      0002BC 12 00 EB         [24] 1211 	lcall	_clock_init
                                   1212 ;	adc-example-leds-hmi.c:160: timer0_init();
      0002BF 12 01 33         [24] 1213 	lcall	_timer0_init
                                   1214 ;	adc-example-leds-hmi.c:163: SAFE_MOD = 0x55;
      0002C2 75 A1 55         [24] 1215 	mov	_SAFE_MOD,#0x55
                                   1216 ;	adc-example-leds-hmi.c:164: SAFE_MOD = 0xAA;
      0002C5 75 A1 AA         [24] 1217 	mov	_SAFE_MOD,#0xaa
                                   1218 ;	adc-example-leds-hmi.c:165: GLOBAL_CFG &= ~bWDOG_EN;
      0002C8 53 B1 FE         [24] 1219 	anl	_GLOBAL_CFG,#0xfe
                                   1220 ;	adc-example-leds-hmi.c:166: SAFE_MOD = 0x00;
      0002CB 75 A1 00         [24] 1221 	mov	_SAFE_MOD,#0x00
                                   1222 ;	adc-example-leds-hmi.c:169: P3_MOD_OC &= ~(1 << 0);
      0002CE 53 96 FE         [24] 1223 	anl	_P3_MOD_OC,#0xfe
                                   1224 ;	adc-example-leds-hmi.c:170: P3_DIR_PU  |=  (1 << 0);
      0002D1 43 97 01         [24] 1225 	orl	_P3_DIR_PU,#0x01
                                   1226 ;	adc-example-leds-hmi.c:174: TMOD &= ~bT0_CT;                               // bT0_CT=0: timer, not counter on P3.4
      0002D4 53 89 FB         [24] 1227 	anl	_TMOD,#0xfb
                                   1228 ;	adc-example-leds-hmi.c:177: PIN_FUNC &= ~bUART1_PIN_X;
      0002D7 53 C6 DF         [24] 1229 	anl	_PIN_FUNC,#0xdf
                                   1230 ;	adc-example-leds-hmi.c:180: P3_MOD_OC &= ~((1 << 4) | (1 << 5));
      0002DA 53 96 CF         [24] 1231 	anl	_P3_MOD_OC,#0xcf
                                   1232 ;	adc-example-leds-hmi.c:181: P3_DIR_PU  |=  (1 << 4) | (1 << 5);
      0002DD 43 97 30         [24] 1233 	orl	_P3_DIR_PU,#0x30
                                   1234 ;	adc-example-leds-hmi.c:182: P3         &= ~((1 << 4) | (1 << 5));
      0002E0 53 B0 CF         [24] 1235 	anl	_P3,#0xcf
                                   1236 ;	adc-example-leds-hmi.c:186: P1_MOD_OC |=  (1 << 4);
      0002E3 43 92 10         [24] 1237 	orl	_P1_MOD_OC,#0x10
                                   1238 ;	adc-example-leds-hmi.c:187: P1_DIR_PU  |=  (1 << 4);
      0002E6 43 93 10         [24] 1239 	orl	_P1_DIR_PU,#0x10
                                   1240 ;	adc-example-leds-hmi.c:191: ADCInit(0);
      0002E9 75 82 00         [24] 1241 	mov	dpl, #0x00
      0002EC 12 03 53         [24] 1242 	lcall	_ADCInit
                                   1243 ;	adc-example-leds-hmi.c:192: ADC_ChannelSelect(2);
      0002EF 75 82 02         [24] 1244 	mov	dpl, #0x02
      0002F2 12 03 60         [24] 1245 	lcall	_ADC_ChannelSelect
                                   1246 ;	adc-example-leds-hmi.c:194: while (1) {
      0002F5                       1247 00114$:
                                   1248 ;	adc-example-leds-hmi.c:195: uint8_t buttonNow = !(P1 & (1 << 4));
      0002F5 E5 90            [12] 1249 	mov	a,_P1
      0002F7 C4               [12] 1250 	swap	a
      0002F8 54 01            [12] 1251 	anl	a,#0x01
      0002FA B4 01 00         [24] 1252 	cjne	a,#0x01,00166$
      0002FD                       1253 00166$:
      0002FD 92 08            [24] 1254 	mov  b0,c
      0002FF E4               [12] 1255 	clr	a
      000300 33               [12] 1256 	rlc	a
                                   1257 ;	adc-example-leds-hmi.c:198: if (buttonNow && !buttonPrev) {
      000301 FE               [12] 1258 	mov	r6,a
      000302 60 0B            [24] 1259 	jz	00104$
      000304 20 04 08         [24] 1260 	jb	_buttonPrev,00104$
                                   1261 ;	adc-example-leds-hmi.c:199: ledBlinkEnabled = !ledBlinkEnabled;
      000307 B2 05            [12] 1262 	cpl	_ledBlinkEnabled
                                   1263 ;	adc-example-leds-hmi.c:200: if (!ledBlinkEnabled) P3 &= ~(1 << 0);  // turn off immediately
      000309 20 05 03         [24] 1264 	jb	_ledBlinkEnabled,00104$
      00030C 53 B0 FE         [24] 1265 	anl	_P3,#0xfe
      00030F                       1266 00104$:
                                   1267 ;	adc-example-leds-hmi.c:202: buttonPrev = buttonNow;
                                   1268 ;	assignBit
      00030F EE               [12] 1269 	mov	a,r6
      000310 24 FF            [12] 1270 	add	a,#0xff
      000312 92 04            [24] 1271 	mov	_buttonPrev,c
                                   1272 ;	adc-example-leds-hmi.c:204: if (ledBlinkEnabled) {
      000314 30 05 03         [24] 1273 	jnb	_ledBlinkEnabled,00107$
                                   1274 ;	adc-example-leds-hmi.c:205: blink_led();
      000317 12 01 46         [24] 1275 	lcall	_blink_led
      00031A                       1276 00107$:
                                   1277 ;	adc-example-leds-hmi.c:209: if (conversionFinished && !blinkNowToggle) {
      00031A 30 00 31         [24] 1278 	jnb	_conversionFinished,00111$
      00031D 20 01 2E         [24] 1279 	jb	_blinkNowToggle,00111$
                                   1280 ;	adc-example-leds-hmi.c:210: mVanalog = rawToMillivolts(analogReading());
      000320 12 00 E0         [24] 1281 	lcall	_analogReading
      000323 12 01 6A         [24] 1282 	lcall	_rawToMillivolts
                                   1283 ;	adc-example-leds-hmi.c:211: val = mVanalog / 50;
      000326 85 82 15         [24] 1284 	mov	_mVanalog,dpl
      000329 85 83 16         [24] 1285 	mov  (_mVanalog + 1),dph
      00032C 74 32            [12] 1286 	mov	a,#0x32
      00032E C0 E0            [24] 1287 	push	acc
      000330 E4               [12] 1288 	clr	a
      000331 C0 E0            [24] 1289 	push	acc
      000333 12 08 BB         [24] 1290 	lcall	__divuint
      000336 AE 82            [24] 1291 	mov	r6, dpl
      000338 15 81            [12] 1292 	dec	sp
      00033A 15 81            [12] 1293 	dec	sp
                                   1294 ;	adc-example-leds-hmi.c:212: if (val > 99){
      00033C EE               [12] 1295 	mov	a,r6
      00033D F5 17            [12] 1296 	mov	_val,a
      00033F 24 9C            [12] 1297 	add	a,#0xff - 0x63
      000341 50 03            [24] 1298 	jnc	00109$
                                   1299 ;	adc-example-leds-hmi.c:213: val = 99;
      000343 75 17 63         [24] 1300 	mov	_val,#0x63
      000346                       1301 00109$:
                                   1302 ;	adc-example-leds-hmi.c:218: blinkTwoLEDs(val);
      000346 85 17 82         [24] 1303 	mov	dpl, _val
      000349 12 01 B4         [24] 1304 	lcall	_blinkTwoLEDs
                                   1305 ;	adc-example-leds-hmi.c:219: conversionFinished = 0;
                                   1306 ;	assignBit
      00034C C2 00            [12] 1307 	clr	_conversionFinished
      00034E                       1308 00111$:
                                   1309 ;	adc-example-leds-hmi.c:222: blinkNow();
      00034E 12 01 E2         [24] 1310 	lcall	_blinkNow
                                   1311 ;	adc-example-leds-hmi.c:224: }
      000351 80 A2            [24] 1312 	sjmp	00114$
                                   1313 	.area CSEG    (CODE)
                                   1314 	.area CONST   (CODE)
                                   1315 	.area XINIT   (CODE)
                                   1316 	.area CABS    (ABS,CODE)
