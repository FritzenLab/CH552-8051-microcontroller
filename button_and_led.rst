                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module button_and_led
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_init
                                     13 	.globl _UIF_BUS_RST
                                     14 	.globl _UIF_DETECT
                                     15 	.globl _UIF_TRANSFER
                                     16 	.globl _UIF_SUSPEND
                                     17 	.globl _UIF_HST_SOF
                                     18 	.globl _UIF_FIFO_OV
                                     19 	.globl _U_SIE_FREE
                                     20 	.globl _U_TOG_OK
                                     21 	.globl _U_IS_NAK
                                     22 	.globl _ADC_CHAN0
                                     23 	.globl _ADC_CHAN1
                                     24 	.globl _CMP_CHAN
                                     25 	.globl _ADC_START
                                     26 	.globl _ADC_IF
                                     27 	.globl _CMP_IF
                                     28 	.globl _CMPO
                                     29 	.globl _U1RI
                                     30 	.globl _U1TI
                                     31 	.globl _U1RB8
                                     32 	.globl _U1TB8
                                     33 	.globl _U1REN
                                     34 	.globl _U1SMOD
                                     35 	.globl _U1SM0
                                     36 	.globl _S0_R_FIFO
                                     37 	.globl _S0_T_FIFO
                                     38 	.globl _S0_FREE
                                     39 	.globl _S0_IF_BYTE
                                     40 	.globl _S0_IF_FIRST
                                     41 	.globl _S0_IF_OV
                                     42 	.globl _S0_FST_ACT
                                     43 	.globl _CP_RL2
                                     44 	.globl _C_T2
                                     45 	.globl _TR2
                                     46 	.globl _EXEN2
                                     47 	.globl _TCLK
                                     48 	.globl _RCLK
                                     49 	.globl _EXF2
                                     50 	.globl _CAP1F
                                     51 	.globl _TF2
                                     52 	.globl _RI
                                     53 	.globl _TI
                                     54 	.globl _RB8
                                     55 	.globl _TB8
                                     56 	.globl _REN
                                     57 	.globl _SM2
                                     58 	.globl _SM1
                                     59 	.globl _SM0
                                     60 	.globl _IT0
                                     61 	.globl _IE0
                                     62 	.globl _IT1
                                     63 	.globl _IE1
                                     64 	.globl _TR0
                                     65 	.globl _TF0
                                     66 	.globl _TR1
                                     67 	.globl _TF1
                                     68 	.globl _RXD
                                     69 	.globl _PWM1_
                                     70 	.globl _TXD
                                     71 	.globl _PWM2_
                                     72 	.globl _AIN3
                                     73 	.globl _VBUS1
                                     74 	.globl _INT0
                                     75 	.globl _TXD1_
                                     76 	.globl _INT1
                                     77 	.globl _T0
                                     78 	.globl _RXD1_
                                     79 	.globl _PWM2
                                     80 	.globl _T1
                                     81 	.globl _UDP
                                     82 	.globl _UDM
                                     83 	.globl _TIN0
                                     84 	.globl _CAP1
                                     85 	.globl _T2
                                     86 	.globl _AIN0
                                     87 	.globl _VBUS2
                                     88 	.globl _TIN1
                                     89 	.globl _CAP2
                                     90 	.globl _T2EX
                                     91 	.globl _RXD_
                                     92 	.globl _TXD_
                                     93 	.globl _AIN1
                                     94 	.globl _UCC1
                                     95 	.globl _TIN2
                                     96 	.globl _SCS
                                     97 	.globl _CAP1_
                                     98 	.globl _T2_
                                     99 	.globl _AIN2
                                    100 	.globl _UCC2
                                    101 	.globl _TIN3
                                    102 	.globl _PWM1
                                    103 	.globl _MOSI
                                    104 	.globl _TIN4
                                    105 	.globl _RXD1
                                    106 	.globl _MISO
                                    107 	.globl _TIN5
                                    108 	.globl _TXD1
                                    109 	.globl _SCK
                                    110 	.globl _IE_SPI0
                                    111 	.globl _IE_TKEY
                                    112 	.globl _IE_USB
                                    113 	.globl _IE_ADC
                                    114 	.globl _IE_UART1
                                    115 	.globl _IE_PWMX
                                    116 	.globl _IE_GPIO
                                    117 	.globl _IE_WDOG
                                    118 	.globl _PX0
                                    119 	.globl _PT0
                                    120 	.globl _PX1
                                    121 	.globl _PT1
                                    122 	.globl _PS
                                    123 	.globl _PT2
                                    124 	.globl _PL_FLAG
                                    125 	.globl _PH_FLAG
                                    126 	.globl _EX0
                                    127 	.globl _ET0
                                    128 	.globl _EX1
                                    129 	.globl _ET1
                                    130 	.globl _ES
                                    131 	.globl _ET2
                                    132 	.globl _E_DIS
                                    133 	.globl _EA
                                    134 	.globl _P
                                    135 	.globl _F1
                                    136 	.globl _OV
                                    137 	.globl _RS0
                                    138 	.globl _RS1
                                    139 	.globl _F0
                                    140 	.globl _AC
                                    141 	.globl _CY
                                    142 	.globl _UEP1_DMA_H
                                    143 	.globl _UEP1_DMA_L
                                    144 	.globl _UEP1_DMA
                                    145 	.globl _UEP0_DMA_H
                                    146 	.globl _UEP0_DMA_L
                                    147 	.globl _UEP0_DMA
                                    148 	.globl _UEP2_3_MOD
                                    149 	.globl _UEP4_1_MOD
                                    150 	.globl _UEP3_DMA_H
                                    151 	.globl _UEP3_DMA_L
                                    152 	.globl _UEP3_DMA
                                    153 	.globl _UEP2_DMA_H
                                    154 	.globl _UEP2_DMA_L
                                    155 	.globl _UEP2_DMA
                                    156 	.globl _USB_DEV_AD
                                    157 	.globl _USB_CTRL
                                    158 	.globl _USB_INT_EN
                                    159 	.globl _UEP4_T_LEN
                                    160 	.globl _UEP4_CTRL
                                    161 	.globl _UEP0_T_LEN
                                    162 	.globl _UEP0_CTRL
                                    163 	.globl _USB_RX_LEN
                                    164 	.globl _USB_MIS_ST
                                    165 	.globl _USB_INT_ST
                                    166 	.globl _USB_INT_FG
                                    167 	.globl _UEP3_T_LEN
                                    168 	.globl _UEP3_CTRL
                                    169 	.globl _UEP2_T_LEN
                                    170 	.globl _UEP2_CTRL
                                    171 	.globl _UEP1_T_LEN
                                    172 	.globl _UEP1_CTRL
                                    173 	.globl _UDEV_CTRL
                                    174 	.globl _USB_C_CTRL
                                    175 	.globl _TKEY_DATH
                                    176 	.globl _TKEY_DATL
                                    177 	.globl _TKEY_DAT
                                    178 	.globl _TKEY_CTRL
                                    179 	.globl _ADC_DATA
                                    180 	.globl _ADC_CFG
                                    181 	.globl _ADC_CTRL
                                    182 	.globl _SBAUD1
                                    183 	.globl _SBUF1
                                    184 	.globl _SCON1
                                    185 	.globl _SPI0_SETUP
                                    186 	.globl _SPI0_CK_SE
                                    187 	.globl _SPI0_CTRL
                                    188 	.globl _SPI0_DATA
                                    189 	.globl _SPI0_STAT
                                    190 	.globl _PWM_CK_SE
                                    191 	.globl _PWM_CTRL
                                    192 	.globl _PWM_DATA1
                                    193 	.globl _PWM_DATA2
                                    194 	.globl _T2CAP1H
                                    195 	.globl _T2CAP1L
                                    196 	.globl _T2CAP1
                                    197 	.globl _TH2
                                    198 	.globl _TL2
                                    199 	.globl _T2COUNT
                                    200 	.globl _RCAP2H
                                    201 	.globl _RCAP2L
                                    202 	.globl _RCAP2
                                    203 	.globl _T2MOD
                                    204 	.globl _T2CON
                                    205 	.globl _SBUF
                                    206 	.globl _SCON
                                    207 	.globl _TH1
                                    208 	.globl _TH0
                                    209 	.globl _TL1
                                    210 	.globl _TL0
                                    211 	.globl _TMOD
                                    212 	.globl _TCON
                                    213 	.globl _XBUS_AUX
                                    214 	.globl _PIN_FUNC
                                    215 	.globl _P3_DIR_PU
                                    216 	.globl _P3_MOD_OC
                                    217 	.globl _P3
                                    218 	.globl _P2
                                    219 	.globl _P1_DIR_PU
                                    220 	.globl _P1_MOD_OC
                                    221 	.globl _P1
                                    222 	.globl _ROM_CTRL
                                    223 	.globl _ROM_DATA_H
                                    224 	.globl _ROM_DATA_L
                                    225 	.globl _ROM_DATA
                                    226 	.globl _ROM_ADDR_H
                                    227 	.globl _ROM_ADDR_L
                                    228 	.globl _ROM_ADDR
                                    229 	.globl _GPIO_IE
                                    230 	.globl _IP_EX
                                    231 	.globl _IE_EX
                                    232 	.globl _IP
                                    233 	.globl _IE
                                    234 	.globl _WDOG_COUNT
                                    235 	.globl _RESET_KEEP
                                    236 	.globl _WAKE_CTRL
                                    237 	.globl _CLOCK_CFG
                                    238 	.globl _PCON
                                    239 	.globl _GLOBAL_CFG
                                    240 	.globl _SAFE_MOD
                                    241 	.globl _DPH
                                    242 	.globl _DPL
                                    243 	.globl _SP
                                    244 	.globl _B
                                    245 	.globl _ACC
                                    246 	.globl _PSW
                                    247 	.globl _raw_button_prev_accepted
                                    248 	.globl _raw_button_prev
                                    249 	.globl _raw
                                    250 	.globl _currentButton
                                    251 	.globl _debounce_start
                                    252 	.globl _counter
                                    253 	.globl _led_state
                                    254 	.globl _button
                                    255 	.globl _tick_100us
                                    256 	.globl _clock_init
                                    257 	.globl _timer0_ISR
                                    258 	.globl _blink_led
                                    259 ;--------------------------------------------------------
                                    260 ; special function registers
                                    261 ;--------------------------------------------------------
                                    262 	.area RSEG    (ABS,DATA)
      000000                        263 	.org 0x0000
                           0000D0   264 _PSW	=	0x00d0
                           0000E0   265 _ACC	=	0x00e0
                           0000F0   266 _B	=	0x00f0
                           000081   267 _SP	=	0x0081
                           000082   268 _DPL	=	0x0082
                           000083   269 _DPH	=	0x0083
                           0000A1   270 _SAFE_MOD	=	0x00a1
                           0000B1   271 _GLOBAL_CFG	=	0x00b1
                           000087   272 _PCON	=	0x0087
                           0000B9   273 _CLOCK_CFG	=	0x00b9
                           0000A9   274 _WAKE_CTRL	=	0x00a9
                           0000FE   275 _RESET_KEEP	=	0x00fe
                           0000FF   276 _WDOG_COUNT	=	0x00ff
                           0000A8   277 _IE	=	0x00a8
                           0000B8   278 _IP	=	0x00b8
                           0000E8   279 _IE_EX	=	0x00e8
                           0000E9   280 _IP_EX	=	0x00e9
                           0000C7   281 _GPIO_IE	=	0x00c7
                           008584   282 _ROM_ADDR	=	0x8584
                           000084   283 _ROM_ADDR_L	=	0x0084
                           000085   284 _ROM_ADDR_H	=	0x0085
                           008F8E   285 _ROM_DATA	=	0x8f8e
                           00008E   286 _ROM_DATA_L	=	0x008e
                           00008F   287 _ROM_DATA_H	=	0x008f
                           000086   288 _ROM_CTRL	=	0x0086
                           000090   289 _P1	=	0x0090
                           000092   290 _P1_MOD_OC	=	0x0092
                           000093   291 _P1_DIR_PU	=	0x0093
                           0000A0   292 _P2	=	0x00a0
                           0000B0   293 _P3	=	0x00b0
                           000096   294 _P3_MOD_OC	=	0x0096
                           000097   295 _P3_DIR_PU	=	0x0097
                           0000C6   296 _PIN_FUNC	=	0x00c6
                           0000A2   297 _XBUS_AUX	=	0x00a2
                           000088   298 _TCON	=	0x0088
                           000089   299 _TMOD	=	0x0089
                           00008A   300 _TL0	=	0x008a
                           00008B   301 _TL1	=	0x008b
                           00008C   302 _TH0	=	0x008c
                           00008D   303 _TH1	=	0x008d
                           000098   304 _SCON	=	0x0098
                           000099   305 _SBUF	=	0x0099
                           0000C8   306 _T2CON	=	0x00c8
                           0000C9   307 _T2MOD	=	0x00c9
                           00CBCA   308 _RCAP2	=	0xcbca
                           0000CA   309 _RCAP2L	=	0x00ca
                           0000CB   310 _RCAP2H	=	0x00cb
                           00CDCC   311 _T2COUNT	=	0xcdcc
                           0000CC   312 _TL2	=	0x00cc
                           0000CD   313 _TH2	=	0x00cd
                           00CFCE   314 _T2CAP1	=	0xcfce
                           0000CE   315 _T2CAP1L	=	0x00ce
                           0000CF   316 _T2CAP1H	=	0x00cf
                           00009B   317 _PWM_DATA2	=	0x009b
                           00009C   318 _PWM_DATA1	=	0x009c
                           00009D   319 _PWM_CTRL	=	0x009d
                           00009E   320 _PWM_CK_SE	=	0x009e
                           0000F8   321 _SPI0_STAT	=	0x00f8
                           0000F9   322 _SPI0_DATA	=	0x00f9
                           0000FA   323 _SPI0_CTRL	=	0x00fa
                           0000FB   324 _SPI0_CK_SE	=	0x00fb
                           0000FC   325 _SPI0_SETUP	=	0x00fc
                           0000C0   326 _SCON1	=	0x00c0
                           0000C1   327 _SBUF1	=	0x00c1
                           0000C2   328 _SBAUD1	=	0x00c2
                           000080   329 _ADC_CTRL	=	0x0080
                           00009A   330 _ADC_CFG	=	0x009a
                           00009F   331 _ADC_DATA	=	0x009f
                           0000C3   332 _TKEY_CTRL	=	0x00c3
                           00C5C4   333 _TKEY_DAT	=	0xc5c4
                           0000C4   334 _TKEY_DATL	=	0x00c4
                           0000C5   335 _TKEY_DATH	=	0x00c5
                           000091   336 _USB_C_CTRL	=	0x0091
                           0000D1   337 _UDEV_CTRL	=	0x00d1
                           0000D2   338 _UEP1_CTRL	=	0x00d2
                           0000D3   339 _UEP1_T_LEN	=	0x00d3
                           0000D4   340 _UEP2_CTRL	=	0x00d4
                           0000D5   341 _UEP2_T_LEN	=	0x00d5
                           0000D6   342 _UEP3_CTRL	=	0x00d6
                           0000D7   343 _UEP3_T_LEN	=	0x00d7
                           0000D8   344 _USB_INT_FG	=	0x00d8
                           0000D9   345 _USB_INT_ST	=	0x00d9
                           0000DA   346 _USB_MIS_ST	=	0x00da
                           0000DB   347 _USB_RX_LEN	=	0x00db
                           0000DC   348 _UEP0_CTRL	=	0x00dc
                           0000DD   349 _UEP0_T_LEN	=	0x00dd
                           0000DE   350 _UEP4_CTRL	=	0x00de
                           0000DF   351 _UEP4_T_LEN	=	0x00df
                           0000E1   352 _USB_INT_EN	=	0x00e1
                           0000E2   353 _USB_CTRL	=	0x00e2
                           0000E3   354 _USB_DEV_AD	=	0x00e3
                           00E5E4   355 _UEP2_DMA	=	0xe5e4
                           0000E4   356 _UEP2_DMA_L	=	0x00e4
                           0000E5   357 _UEP2_DMA_H	=	0x00e5
                           00E7E6   358 _UEP3_DMA	=	0xe7e6
                           0000E6   359 _UEP3_DMA_L	=	0x00e6
                           0000E7   360 _UEP3_DMA_H	=	0x00e7
                           0000EA   361 _UEP4_1_MOD	=	0x00ea
                           0000EB   362 _UEP2_3_MOD	=	0x00eb
                           00EDEC   363 _UEP0_DMA	=	0xedec
                           0000EC   364 _UEP0_DMA_L	=	0x00ec
                           0000ED   365 _UEP0_DMA_H	=	0x00ed
                           00EFEE   366 _UEP1_DMA	=	0xefee
                           0000EE   367 _UEP1_DMA_L	=	0x00ee
                           0000EF   368 _UEP1_DMA_H	=	0x00ef
                                    369 ;--------------------------------------------------------
                                    370 ; special function bits
                                    371 ;--------------------------------------------------------
                                    372 	.area RSEG    (ABS,DATA)
      000000                        373 	.org 0x0000
                           0000D7   374 _CY	=	0x00d7
                           0000D6   375 _AC	=	0x00d6
                           0000D5   376 _F0	=	0x00d5
                           0000D4   377 _RS1	=	0x00d4
                           0000D3   378 _RS0	=	0x00d3
                           0000D2   379 _OV	=	0x00d2
                           0000D1   380 _F1	=	0x00d1
                           0000D0   381 _P	=	0x00d0
                           0000AF   382 _EA	=	0x00af
                           0000AE   383 _E_DIS	=	0x00ae
                           0000AD   384 _ET2	=	0x00ad
                           0000AC   385 _ES	=	0x00ac
                           0000AB   386 _ET1	=	0x00ab
                           0000AA   387 _EX1	=	0x00aa
                           0000A9   388 _ET0	=	0x00a9
                           0000A8   389 _EX0	=	0x00a8
                           0000BF   390 _PH_FLAG	=	0x00bf
                           0000BE   391 _PL_FLAG	=	0x00be
                           0000BD   392 _PT2	=	0x00bd
                           0000BC   393 _PS	=	0x00bc
                           0000BB   394 _PT1	=	0x00bb
                           0000BA   395 _PX1	=	0x00ba
                           0000B9   396 _PT0	=	0x00b9
                           0000B8   397 _PX0	=	0x00b8
                           0000EF   398 _IE_WDOG	=	0x00ef
                           0000EE   399 _IE_GPIO	=	0x00ee
                           0000ED   400 _IE_PWMX	=	0x00ed
                           0000EC   401 _IE_UART1	=	0x00ec
                           0000EB   402 _IE_ADC	=	0x00eb
                           0000EA   403 _IE_USB	=	0x00ea
                           0000E9   404 _IE_TKEY	=	0x00e9
                           0000E8   405 _IE_SPI0	=	0x00e8
                           000097   406 _SCK	=	0x0097
                           000097   407 _TXD1	=	0x0097
                           000097   408 _TIN5	=	0x0097
                           000096   409 _MISO	=	0x0096
                           000096   410 _RXD1	=	0x0096
                           000096   411 _TIN4	=	0x0096
                           000095   412 _MOSI	=	0x0095
                           000095   413 _PWM1	=	0x0095
                           000095   414 _TIN3	=	0x0095
                           000095   415 _UCC2	=	0x0095
                           000095   416 _AIN2	=	0x0095
                           000094   417 _T2_	=	0x0094
                           000094   418 _CAP1_	=	0x0094
                           000094   419 _SCS	=	0x0094
                           000094   420 _TIN2	=	0x0094
                           000094   421 _UCC1	=	0x0094
                           000094   422 _AIN1	=	0x0094
                           000093   423 _TXD_	=	0x0093
                           000092   424 _RXD_	=	0x0092
                           000091   425 _T2EX	=	0x0091
                           000091   426 _CAP2	=	0x0091
                           000091   427 _TIN1	=	0x0091
                           000091   428 _VBUS2	=	0x0091
                           000091   429 _AIN0	=	0x0091
                           000090   430 _T2	=	0x0090
                           000090   431 _CAP1	=	0x0090
                           000090   432 _TIN0	=	0x0090
                           0000B7   433 _UDM	=	0x00b7
                           0000B6   434 _UDP	=	0x00b6
                           0000B5   435 _T1	=	0x00b5
                           0000B4   436 _PWM2	=	0x00b4
                           0000B4   437 _RXD1_	=	0x00b4
                           0000B4   438 _T0	=	0x00b4
                           0000B3   439 _INT1	=	0x00b3
                           0000B2   440 _TXD1_	=	0x00b2
                           0000B2   441 _INT0	=	0x00b2
                           0000B2   442 _VBUS1	=	0x00b2
                           0000B2   443 _AIN3	=	0x00b2
                           0000B1   444 _PWM2_	=	0x00b1
                           0000B1   445 _TXD	=	0x00b1
                           0000B0   446 _PWM1_	=	0x00b0
                           0000B0   447 _RXD	=	0x00b0
                           00008F   448 _TF1	=	0x008f
                           00008E   449 _TR1	=	0x008e
                           00008D   450 _TF0	=	0x008d
                           00008C   451 _TR0	=	0x008c
                           00008B   452 _IE1	=	0x008b
                           00008A   453 _IT1	=	0x008a
                           000089   454 _IE0	=	0x0089
                           000088   455 _IT0	=	0x0088
                           00009F   456 _SM0	=	0x009f
                           00009E   457 _SM1	=	0x009e
                           00009D   458 _SM2	=	0x009d
                           00009C   459 _REN	=	0x009c
                           00009B   460 _TB8	=	0x009b
                           00009A   461 _RB8	=	0x009a
                           000099   462 _TI	=	0x0099
                           000098   463 _RI	=	0x0098
                           0000CF   464 _TF2	=	0x00cf
                           0000CF   465 _CAP1F	=	0x00cf
                           0000CE   466 _EXF2	=	0x00ce
                           0000CD   467 _RCLK	=	0x00cd
                           0000CC   468 _TCLK	=	0x00cc
                           0000CB   469 _EXEN2	=	0x00cb
                           0000CA   470 _TR2	=	0x00ca
                           0000C9   471 _C_T2	=	0x00c9
                           0000C8   472 _CP_RL2	=	0x00c8
                           0000FF   473 _S0_FST_ACT	=	0x00ff
                           0000FE   474 _S0_IF_OV	=	0x00fe
                           0000FD   475 _S0_IF_FIRST	=	0x00fd
                           0000FC   476 _S0_IF_BYTE	=	0x00fc
                           0000FB   477 _S0_FREE	=	0x00fb
                           0000FA   478 _S0_T_FIFO	=	0x00fa
                           0000F8   479 _S0_R_FIFO	=	0x00f8
                           0000C7   480 _U1SM0	=	0x00c7
                           0000C5   481 _U1SMOD	=	0x00c5
                           0000C4   482 _U1REN	=	0x00c4
                           0000C3   483 _U1TB8	=	0x00c3
                           0000C2   484 _U1RB8	=	0x00c2
                           0000C1   485 _U1TI	=	0x00c1
                           0000C0   486 _U1RI	=	0x00c0
                           000087   487 _CMPO	=	0x0087
                           000086   488 _CMP_IF	=	0x0086
                           000085   489 _ADC_IF	=	0x0085
                           000084   490 _ADC_START	=	0x0084
                           000083   491 _CMP_CHAN	=	0x0083
                           000081   492 _ADC_CHAN1	=	0x0081
                           000080   493 _ADC_CHAN0	=	0x0080
                           0000DF   494 _U_IS_NAK	=	0x00df
                           0000DE   495 _U_TOG_OK	=	0x00de
                           0000DD   496 _U_SIE_FREE	=	0x00dd
                           0000DC   497 _UIF_FIFO_OV	=	0x00dc
                           0000DB   498 _UIF_HST_SOF	=	0x00db
                           0000DA   499 _UIF_SUSPEND	=	0x00da
                           0000D9   500 _UIF_TRANSFER	=	0x00d9
                           0000D8   501 _UIF_DETECT	=	0x00d8
                           0000D8   502 _UIF_BUS_RST	=	0x00d8
                                    503 ;--------------------------------------------------------
                                    504 ; overlayable register banks
                                    505 ;--------------------------------------------------------
                                    506 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        507 	.ds 8
                                    508 ;--------------------------------------------------------
                                    509 ; internal ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area DSEG    (DATA)
      000008                        512 _tick_100us::
      000008                        513 	.ds 2
      00000A                        514 _button::
      00000A                        515 	.ds 2
      00000C                        516 _led_state::
      00000C                        517 	.ds 1
      00000D                        518 _counter::
      00000D                        519 	.ds 2
      00000F                        520 _debounce_start::
      00000F                        521 	.ds 2
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
      000000                        545 _currentButton::
      000000                        546 	.ds 1
      000001                        547 _raw::
      000001                        548 	.ds 1
      000002                        549 _raw_button_prev::
      000002                        550 	.ds 1
      000003                        551 _raw_button_prev_accepted::
      000003                        552 	.ds 1
                                    553 ;--------------------------------------------------------
                                    554 ; paged external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area PSEG    (PAG,XDATA)
                                    557 ;--------------------------------------------------------
                                    558 ; uninitialized external ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area XSEG    (XDATA)
                                    561 ;--------------------------------------------------------
                                    562 ; absolute external ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area XABS    (ABS,XDATA)
                                    565 ;--------------------------------------------------------
                                    566 ; initialized external ram data
                                    567 ;--------------------------------------------------------
                                    568 	.area XISEG   (XDATA)
                                    569 	.area HOME    (CODE)
                                    570 	.area GSINIT0 (CODE)
                                    571 	.area GSINIT1 (CODE)
                                    572 	.area GSINIT2 (CODE)
                                    573 	.area GSINIT3 (CODE)
                                    574 	.area GSINIT4 (CODE)
                                    575 	.area GSINIT5 (CODE)
                                    576 	.area GSINIT  (CODE)
                                    577 	.area GSFINAL (CODE)
                                    578 	.area CSEG    (CODE)
                                    579 ;--------------------------------------------------------
                                    580 ; interrupt vector
                                    581 ;--------------------------------------------------------
                                    582 	.area HOME    (CODE)
      000000                        583 __interrupt_vect:
      000000 02 00 54         [24]  584 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  585 	reti
      000004                        586 	.ds	7
      00000B 02 00 DC         [24]  587 	ljmp	_timer0_ISR
                                    588 ; restartable atomic support routines
      00000E                        589 	.ds	2
      000010                        590 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  591 	nop
      000011 00               [12]  592 	nop
      000012                        593 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  594 	movx	a, @r0
      000013 FB               [12]  595 	mov	r3, a
      000014 EA               [12]  596 	mov	a, r2
      000015 F2               [24]  597 	movx	@r0, a
      000016 80 2C            [24]  598 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  599 	nop
      000019 00               [12]  600 	nop
      00001A                        601 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  602 	movx	a, @dptr
      00001B FB               [12]  603 	mov	r3, a
      00001C EA               [12]  604 	mov	a, r2
      00001D F0               [24]  605 	movx	@dptr, a
      00001E 80 24            [24]  606 	sjmp	sdcc_atomic_exchange_exit
      000020                        607 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  608 	mov	a, @r0
      000021 B5 02 02         [24]  609 	cjne	a, ar2, .+#5
      000024 EB               [12]  610 	mov	a, r3
      000025 F6               [12]  611 	mov	@r0, a
      000026 22               [24]  612 	ret
      000027 00               [12]  613 	nop
      000028                        614 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  615 	movx	a, @r0
      000029 B5 02 02         [24]  616 	cjne	a, ar2, .+#5
      00002C EB               [12]  617 	mov	a, r3
      00002D F2               [24]  618 	movx	@r0, a
      00002E 22               [24]  619 	ret
      00002F 00               [12]  620 	nop
      000030                        621 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  622 	movx	a, @dptr
      000031 B5 02 02         [24]  623 	cjne	a, ar2, .+#5
      000034 EB               [12]  624 	mov	a, r3
      000035 F0               [24]  625 	movx	@dptr, a
      000036 22               [24]  626 	ret
      000037                        627 sdcc_atomic_exchange_rollback_end::
                                    628 
      000037                        629 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  630 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  631 	mov	r0, dpl
      00003C 20 F5 D3         [24]  632 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        633 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  634 	mov	a, r2
      000040 C6               [12]  635 	xch	a, @r0
      000041 F5 82            [12]  636 	mov	dpl, a
      000043 22               [24]  637 	ret
      000044                        638 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  639 	mov	dpl, r3
      000046 22               [24]  640 	ret
      000047                        641 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  642 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  643 	mov	r0, dpl
      00004C 20 F5 D9         [24]  644 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  645 	sjmp	sdcc_atomic_compare_exchange_idata_impl
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
                                    659 ;	button_and_led.c:5: volatile unsigned int tick_100us = 0;
      0000AD E4               [12]  660 	clr	a
      0000AE F5 08            [12]  661 	mov	_tick_100us,a
      0000B0 F5 09            [12]  662 	mov	(_tick_100us + 1),a
                                    663 ;	button_and_led.c:7: unsigned char led_state = 0;
      0000B2 F5 0C            [12]  664 	mov	_led_state,a
                                    665 ;	button_and_led.c:9: unsigned int counter= 0;
      0000B4 F5 0D            [12]  666 	mov	_counter,a
      0000B6 F5 0E            [12]  667 	mov	(_counter + 1),a
                                    668 ;	button_and_led.c:11: volatile unsigned int debounce_start = 0;
      0000B8 F5 0F            [12]  669 	mov	_debounce_start,a
      0000BA F5 10            [12]  670 	mov	(_debounce_start + 1),a
                                    671 ;	button_and_led.c:8: __bit currentButton= 0;
                                    672 ;	assignBit
      0000BC C2 00            [12]  673 	clr	_currentButton
                                    674 ;	button_and_led.c:12: __bit raw= 0;
                                    675 ;	assignBit
      0000BE C2 01            [12]  676 	clr	_raw
                                    677 ;	button_and_led.c:13: __bit raw_button_prev = 0;
                                    678 ;	assignBit
      0000C0 C2 02            [12]  679 	clr	_raw_button_prev
                                    680 ;	button_and_led.c:14: __bit raw_button_prev_accepted = 0;  // tracks last accepted (debounced) state
                                    681 ;	assignBit
      0000C2 C2 03            [12]  682 	clr	_raw_button_prev_accepted
                                    683 	.area GSFINAL (CODE)
      0000C7 02 00 51         [24]  684 	ljmp	__sdcc_program_startup
                                    685 ;--------------------------------------------------------
                                    686 ; Home
                                    687 ;--------------------------------------------------------
                                    688 	.area HOME    (CODE)
                                    689 	.area HOME    (CODE)
      000051                        690 __sdcc_program_startup:
      000051 02 01 54         [24]  691 	ljmp	_main
                                    692 ;	return from main will return to caller
                                    693 ;--------------------------------------------------------
                                    694 ; code
                                    695 ;--------------------------------------------------------
                                    696 	.area CSEG    (CODE)
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'clock_init'
                                    699 ;------------------------------------------------------------
                                    700 ;	button_and_led.c:22: void clock_init(void) {
                                    701 ;	-----------------------------------------
                                    702 ;	 function clock_init
                                    703 ;	-----------------------------------------
      0000CA                        704 _clock_init:
                           000007   705 	ar7 = 0x07
                           000006   706 	ar6 = 0x06
                           000005   707 	ar5 = 0x05
                           000004   708 	ar4 = 0x04
                           000003   709 	ar3 = 0x03
                           000002   710 	ar2 = 0x02
                           000001   711 	ar1 = 0x01
                           000000   712 	ar0 = 0x00
                                    713 ;	button_and_led.c:23: SAFE_MOD = 0x55;
      0000CA 75 A1 55         [24]  714 	mov	_SAFE_MOD,#0x55
                                    715 ;	button_and_led.c:24: SAFE_MOD = 0xAA;
      0000CD 75 A1 AA         [24]  716 	mov	_SAFE_MOD,#0xaa
                                    717 ;	button_and_led.c:26: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0000D0 74 F8            [12]  718 	mov	a,#0xf8
      0000D2 55 B9            [12]  719 	anl	a,_CLOCK_CFG
      0000D4 44 06            [12]  720 	orl	a,#0x06
      0000D6 F5 B9            [12]  721 	mov	_CLOCK_CFG,a
                                    722 ;	button_and_led.c:28: SAFE_MOD = 0x00;
      0000D8 75 A1 00         [24]  723 	mov	_SAFE_MOD,#0x00
                                    724 ;	button_and_led.c:29: }
      0000DB 22               [24]  725 	ret
                                    726 ;------------------------------------------------------------
                                    727 ;Allocation info for local variables in function 'timer0_ISR'
                                    728 ;------------------------------------------------------------
                                    729 ;	button_and_led.c:31: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
                                    730 ;	-----------------------------------------
                                    731 ;	 function timer0_ISR
                                    732 ;	-----------------------------------------
      0000DC                        733 _timer0_ISR:
      0000DC C0 E0            [24]  734 	push	acc
      0000DE C0 07            [24]  735 	push	ar7
      0000E0 C0 06            [24]  736 	push	ar6
      0000E2 C0 D0            [24]  737 	push	psw
      0000E4 75 D0 00         [24]  738 	mov	psw,#0x00
                                    739 ;	button_and_led.c:32: TF0 = 0;  // clear overflow flag (important for robustness)
                                    740 ;	assignBit
      0000E7 C2 8D            [12]  741 	clr	_TF0
                                    742 ;	button_and_led.c:40: TH0 = 0xFF;
      0000E9 75 8C FF         [24]  743 	mov	_TH0,#0xff
                                    744 ;	button_and_led.c:41: TL0 = 0x38;
      0000EC 75 8A 38         [24]  745 	mov	_TL0,#0x38
                                    746 ;	button_and_led.c:43: if(tick_100us <= 5000){
      0000EF C3               [12]  747 	clr	c
      0000F0 74 88            [12]  748 	mov	a,#0x88
      0000F2 95 08            [12]  749 	subb	a,_tick_100us
      0000F4 74 13            [12]  750 	mov	a,#0x13
      0000F6 95 09            [12]  751 	subb	a,(_tick_100us + 1)
      0000F8 40 0F            [24]  752 	jc	00102$
                                    753 ;	button_and_led.c:44: tick_100us++;
      0000FA AE 08            [24]  754 	mov	r6,_tick_100us
      0000FC AF 09            [24]  755 	mov	r7,(_tick_100us + 1)
      0000FE 74 01            [12]  756 	mov	a,#0x01
      000100 2E               [12]  757 	add	a, r6
      000101 F5 08            [12]  758 	mov	_tick_100us,a
      000103 E4               [12]  759 	clr	a
      000104 3F               [12]  760 	addc	a, r7
      000105 F5 09            [12]  761 	mov	(_tick_100us + 1),a
      000107 80 05            [24]  762 	sjmp	00104$
      000109                        763 00102$:
                                    764 ;	button_and_led.c:46: tick_100us= 0;
      000109 E4               [12]  765 	clr	a
      00010A F5 08            [12]  766 	mov	_tick_100us,a
      00010C F5 09            [12]  767 	mov	(_tick_100us + 1),a
      00010E                        768 00104$:
                                    769 ;	button_and_led.c:49: }
      00010E D0 D0            [24]  770 	pop	psw
      000110 D0 06            [24]  771 	pop	ar6
      000112 D0 07            [24]  772 	pop	ar7
      000114 D0 E0            [24]  773 	pop	acc
      000116 32               [24]  774 	reti
                                    775 ;	eliminated unneeded push/pop dpl
                                    776 ;	eliminated unneeded push/pop dph
                                    777 ;	eliminated unneeded push/pop b
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'timer0_init'
                                    780 ;------------------------------------------------------------
                                    781 ;	button_and_led.c:51: void timer0_init(void) {
                                    782 ;	-----------------------------------------
                                    783 ;	 function timer0_init
                                    784 ;	-----------------------------------------
      000117                        785 _timer0_init:
                                    786 ;	button_and_led.c:52: TMOD &= ~0x03;  // clear Timer0 mode bits
      000117 53 89 FC         [24]  787 	anl	_TMOD,#0xfc
                                    788 ;	button_and_led.c:53: TMOD |=  0x01;  // Timer0 mode 1: 16-bit
      00011A 43 89 01         [24]  789 	orl	_TMOD,#0x01
                                    790 ;	button_and_led.c:62: TH0 = 0xFF;
      00011D 75 8C FF         [24]  791 	mov	_TH0,#0xff
                                    792 ;	button_and_led.c:63: TL0 = 0x38;
      000120 75 8A 38         [24]  793 	mov	_TL0,#0x38
                                    794 ;	button_and_led.c:65: ET0 = 1;   // enable Timer0 interrupt
                                    795 ;	assignBit
      000123 D2 A9            [12]  796 	setb	_ET0
                                    797 ;	button_and_led.c:66: TR0 = 1;   // start Timer0
                                    798 ;	assignBit
      000125 D2 8C            [12]  799 	setb	_TR0
                                    800 ;	button_and_led.c:67: EA = 1;
                                    801 ;	assignBit
      000127 D2 AF            [12]  802 	setb	_EA
                                    803 ;	button_and_led.c:68: }
      000129 22               [24]  804 	ret
                                    805 ;------------------------------------------------------------
                                    806 ;Allocation info for local variables in function 'blink_led'
                                    807 ;------------------------------------------------------------
                                    808 ;	button_and_led.c:70: void blink_led(void) {
                                    809 ;	-----------------------------------------
                                    810 ;	 function blink_led
                                    811 ;	-----------------------------------------
      00012A                        812 _blink_led:
                                    813 ;	button_and_led.c:71: if(tick_100us % 5000 < 2500){
      00012A 74 88            [12]  814 	mov	a,#0x88
      00012C C0 E0            [24]  815 	push	acc
      00012E 74 13            [12]  816 	mov	a,#0x13
      000130 C0 E0            [24]  817 	push	acc
      000132 85 08 82         [24]  818 	mov	dpl, _tick_100us
      000135 85 09 83         [24]  819 	mov	dph, (_tick_100us + 1)
      000138 12 07 D0         [24]  820 	lcall	__moduint
      00013B AE 82            [24]  821 	mov	r6, dpl
      00013D AF 83            [24]  822 	mov	r7, dph
      00013F 15 81            [12]  823 	dec	sp
      000141 15 81            [12]  824 	dec	sp
      000143 C3               [12]  825 	clr	c
      000144 EE               [12]  826 	mov	a,r6
      000145 94 C4            [12]  827 	subb	a,#0xc4
      000147 EF               [12]  828 	mov	a,r7
      000148 94 09            [12]  829 	subb	a,#0x09
      00014A 50 04            [24]  830 	jnc	00102$
                                    831 ;	button_and_led.c:72: P3 |= (1 << 0);  // LED ON
      00014C 43 B0 01         [24]  832 	orl	_P3,#0x01
      00014F 22               [24]  833 	ret
      000150                        834 00102$:
                                    835 ;	button_and_led.c:74: P3 &= ~(1 << 0); // LED OFF
      000150 53 B0 FE         [24]  836 	anl	_P3,#0xfe
                                    837 ;	button_and_led.c:76: }
      000153 22               [24]  838 	ret
                                    839 ;------------------------------------------------------------
                                    840 ;Allocation info for local variables in function 'main'
                                    841 ;------------------------------------------------------------
                                    842 ;	button_and_led.c:78: void main(void) {
                                    843 ;	-----------------------------------------
                                    844 ;	 function main
                                    845 ;	-----------------------------------------
      000154                        846 _main:
                                    847 ;	button_and_led.c:79: clock_init();
      000154 12 00 CA         [24]  848 	lcall	_clock_init
                                    849 ;	button_and_led.c:80: timer0_init();
      000157 12 01 17         [24]  850 	lcall	_timer0_init
                                    851 ;	button_and_led.c:83: SAFE_MOD = 0x55;
      00015A 75 A1 55         [24]  852 	mov	_SAFE_MOD,#0x55
                                    853 ;	button_and_led.c:84: SAFE_MOD = 0xAA;
      00015D 75 A1 AA         [24]  854 	mov	_SAFE_MOD,#0xaa
                                    855 ;	button_and_led.c:85: GLOBAL_CFG &= ~bWDOG_EN;   // turn off watchdog
      000160 53 B1 FE         [24]  856 	anl	_GLOBAL_CFG,#0xfe
                                    857 ;	button_and_led.c:86: SAFE_MOD = 0x00;
      000163 75 A1 00         [24]  858 	mov	_SAFE_MOD,#0x00
                                    859 ;	button_and_led.c:90: P3_MOD_OC &= ~0x01;   // not open-drain
      000166 53 96 FE         [24]  860 	anl	_P3_MOD_OC,#0xfe
                                    861 ;	button_and_led.c:91: P3_DIR_PU |= 0x01;    // output, with pull-up
      000169 43 97 01         [24]  862 	orl	_P3_DIR_PU,#0x01
                                    863 ;	button_and_led.c:94: P1_MOD_OC |=  (1 << 4);   // open-drain mode → required for pull-up
      00016C 43 92 10         [24]  864 	orl	_P1_MOD_OC,#0x10
                                    865 ;	button_and_led.c:95: P1_DIR_PU  |=  (1 << 4);  // pull-up enabled
      00016F 43 93 10         [24]  866 	orl	_P1_DIR_PU,#0x10
                                    867 ;	button_and_led.c:98: Serial_begin();
      000172 12 04 71         [24]  868 	lcall	_Serial_begin
                                    869 ;	button_and_led.c:100: while (1) {
      000175                        870 00116$:
                                    871 ;	button_and_led.c:101: raw = !(P1 & (1 << 4)); // read raw pin, pressed = 1
      000175 E5 90            [12]  872 	mov	a,_P1
      000177 C4               [12]  873 	swap	a
      000178 54 01            [12]  874 	anl	a,#0x01
      00017A B4 01 00         [24]  875 	cjne	a,#0x01,00162$
      00017D                        876 00162$:
                                    877 ;	button_and_led.c:103: if (raw != raw_button_prev) {
      00017D 92 01            [24]  878 	mov  _raw,c
      00017F 20 02 01         [24]  879 	jb	_raw_button_prev,00163$
      000182 B3               [12]  880 	cpl	c
      000183                        881 00163$:
      000183 40 0C            [24]  882 	jc	00110$
                                    883 ;	button_and_led.c:105: debounce_start = tick_100us;
      000185 85 08 0F         [24]  884 	mov	_debounce_start,_tick_100us
      000188 85 09 10         [24]  885 	mov	(_debounce_start + 1),(_tick_100us + 1)
                                    886 ;	button_and_led.c:106: raw_button_prev = raw;
                                    887 ;	assignBit
      00018B A2 01            [12]  888 	mov	c,_raw
      00018D 92 02            [24]  889 	mov	_raw_button_prev,c
      00018F 80 25            [24]  890 	sjmp	00111$
      000191                        891 00110$:
                                    892 ;	button_and_led.c:107: } else if ((tick_100us - debounce_start) >= DEBOUNCE_TICKS) {
      000191 E5 08            [12]  893 	mov	a,_tick_100us
      000193 C3               [12]  894 	clr	c
      000194 95 0F            [12]  895 	subb	a,_debounce_start
      000196 FE               [12]  896 	mov	r6,a
      000197 E5 09            [12]  897 	mov	a,(_tick_100us + 1)
      000199 95 10            [12]  898 	subb	a,(_debounce_start + 1)
      00019B FF               [12]  899 	mov	r7,a
      00019C C3               [12]  900 	clr	c
      00019D EE               [12]  901 	mov	a,r6
      00019E 94 C8            [12]  902 	subb	a,#0xc8
      0001A0 EF               [12]  903 	mov	a,r7
      0001A1 94 00            [12]  904 	subb	a,#0x00
      0001A3 40 11            [24]  905 	jc	00111$
                                    906 ;	button_and_led.c:109: if (raw == 1 && raw_button_prev_accepted == 0) {
      0001A5 30 01 09         [24]  907 	jnb	_raw,00104$
      0001A8 20 03 06         [24]  908 	jb	_raw_button_prev_accepted,00104$
                                    909 ;	button_and_led.c:111: currentButton = !currentButton;
      0001AB B2 00            [12]  910 	cpl	_currentButton
                                    911 ;	button_and_led.c:112: raw_button_prev_accepted = 1;
                                    912 ;	assignBit
      0001AD D2 03            [12]  913 	setb	_raw_button_prev_accepted
      0001AF 80 05            [24]  914 	sjmp	00111$
      0001B1                        915 00104$:
                                    916 ;	button_and_led.c:113: } else if (raw == 0) {
      0001B1 20 01 02         [24]  917 	jb	_raw,00111$
                                    918 ;	button_and_led.c:115: raw_button_prev_accepted = 0;
                                    919 ;	assignBit
      0001B4 C2 03            [12]  920 	clr	_raw_button_prev_accepted
      0001B6                        921 00111$:
                                    922 ;	button_and_led.c:119: if (currentButton) blink_led();
      0001B6 30 00 05         [24]  923 	jnb	_currentButton,00113$
      0001B9 12 01 2A         [24]  924 	lcall	_blink_led
      0001BC 80 B7            [24]  925 	sjmp	00116$
      0001BE                        926 00113$:
                                    927 ;	button_and_led.c:120: else P3 &= ~0x01; // LED OFF
      0001BE 53 B0 FE         [24]  928 	anl	_P3,#0xfe
                                    929 ;	button_and_led.c:122: }
      0001C1 80 B2            [24]  930 	sjmp	00116$
                                    931 	.area CSEG    (CODE)
                                    932 	.area CONST   (CODE)
                                    933 	.area XINIT   (CODE)
                                    934 	.area CABS    (ABS,CODE)
