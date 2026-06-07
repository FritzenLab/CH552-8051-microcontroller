                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module watchdog_testing
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _extint1_init
                                     13 	.globl _timer0_init
                                     14 	.globl _UIF_BUS_RST
                                     15 	.globl _UIF_DETECT
                                     16 	.globl _UIF_TRANSFER
                                     17 	.globl _UIF_SUSPEND
                                     18 	.globl _UIF_HST_SOF
                                     19 	.globl _UIF_FIFO_OV
                                     20 	.globl _U_SIE_FREE
                                     21 	.globl _U_TOG_OK
                                     22 	.globl _U_IS_NAK
                                     23 	.globl _ADC_CHAN0
                                     24 	.globl _ADC_CHAN1
                                     25 	.globl _CMP_CHAN
                                     26 	.globl _ADC_START
                                     27 	.globl _ADC_IF
                                     28 	.globl _CMP_IF
                                     29 	.globl _CMPO
                                     30 	.globl _U1RI
                                     31 	.globl _U1TI
                                     32 	.globl _U1RB8
                                     33 	.globl _U1TB8
                                     34 	.globl _U1REN
                                     35 	.globl _U1SMOD
                                     36 	.globl _U1SM0
                                     37 	.globl _S0_R_FIFO
                                     38 	.globl _S0_T_FIFO
                                     39 	.globl _S0_FREE
                                     40 	.globl _S0_IF_BYTE
                                     41 	.globl _S0_IF_FIRST
                                     42 	.globl _S0_IF_OV
                                     43 	.globl _S0_FST_ACT
                                     44 	.globl _CP_RL2
                                     45 	.globl _C_T2
                                     46 	.globl _TR2
                                     47 	.globl _EXEN2
                                     48 	.globl _TCLK
                                     49 	.globl _RCLK
                                     50 	.globl _EXF2
                                     51 	.globl _CAP1F
                                     52 	.globl _TF2
                                     53 	.globl _RI
                                     54 	.globl _TI
                                     55 	.globl _RB8
                                     56 	.globl _TB8
                                     57 	.globl _REN
                                     58 	.globl _SM2
                                     59 	.globl _SM1
                                     60 	.globl _SM0
                                     61 	.globl _IT0
                                     62 	.globl _IE0
                                     63 	.globl _IT1
                                     64 	.globl _IE1
                                     65 	.globl _TR0
                                     66 	.globl _TF0
                                     67 	.globl _TR1
                                     68 	.globl _TF1
                                     69 	.globl _RXD
                                     70 	.globl _PWM1_
                                     71 	.globl _TXD
                                     72 	.globl _PWM2_
                                     73 	.globl _AIN3
                                     74 	.globl _VBUS1
                                     75 	.globl _INT0
                                     76 	.globl _TXD1_
                                     77 	.globl _INT1
                                     78 	.globl _T0
                                     79 	.globl _RXD1_
                                     80 	.globl _PWM2
                                     81 	.globl _T1
                                     82 	.globl _UDP
                                     83 	.globl _UDM
                                     84 	.globl _TIN0
                                     85 	.globl _CAP1
                                     86 	.globl _T2
                                     87 	.globl _AIN0
                                     88 	.globl _VBUS2
                                     89 	.globl _TIN1
                                     90 	.globl _CAP2
                                     91 	.globl _T2EX
                                     92 	.globl _RXD_
                                     93 	.globl _TXD_
                                     94 	.globl _AIN1
                                     95 	.globl _UCC1
                                     96 	.globl _TIN2
                                     97 	.globl _SCS
                                     98 	.globl _CAP1_
                                     99 	.globl _T2_
                                    100 	.globl _AIN2
                                    101 	.globl _UCC2
                                    102 	.globl _TIN3
                                    103 	.globl _PWM1
                                    104 	.globl _MOSI
                                    105 	.globl _TIN4
                                    106 	.globl _RXD1
                                    107 	.globl _MISO
                                    108 	.globl _TIN5
                                    109 	.globl _TXD1
                                    110 	.globl _SCK
                                    111 	.globl _IE_SPI0
                                    112 	.globl _IE_TKEY
                                    113 	.globl _IE_USB
                                    114 	.globl _IE_ADC
                                    115 	.globl _IE_UART1
                                    116 	.globl _IE_PWMX
                                    117 	.globl _IE_GPIO
                                    118 	.globl _IE_WDOG
                                    119 	.globl _PX0
                                    120 	.globl _PT0
                                    121 	.globl _PX1
                                    122 	.globl _PT1
                                    123 	.globl _PS
                                    124 	.globl _PT2
                                    125 	.globl _PL_FLAG
                                    126 	.globl _PH_FLAG
                                    127 	.globl _EX0
                                    128 	.globl _ET0
                                    129 	.globl _EX1
                                    130 	.globl _ET1
                                    131 	.globl _ES
                                    132 	.globl _ET2
                                    133 	.globl _E_DIS
                                    134 	.globl _EA
                                    135 	.globl _P
                                    136 	.globl _F1
                                    137 	.globl _OV
                                    138 	.globl _RS0
                                    139 	.globl _RS1
                                    140 	.globl _F0
                                    141 	.globl _AC
                                    142 	.globl _CY
                                    143 	.globl _UEP1_DMA_H
                                    144 	.globl _UEP1_DMA_L
                                    145 	.globl _UEP1_DMA
                                    146 	.globl _UEP0_DMA_H
                                    147 	.globl _UEP0_DMA_L
                                    148 	.globl _UEP0_DMA
                                    149 	.globl _UEP2_3_MOD
                                    150 	.globl _UEP4_1_MOD
                                    151 	.globl _UEP3_DMA_H
                                    152 	.globl _UEP3_DMA_L
                                    153 	.globl _UEP3_DMA
                                    154 	.globl _UEP2_DMA_H
                                    155 	.globl _UEP2_DMA_L
                                    156 	.globl _UEP2_DMA
                                    157 	.globl _USB_DEV_AD
                                    158 	.globl _USB_CTRL
                                    159 	.globl _USB_INT_EN
                                    160 	.globl _UEP4_T_LEN
                                    161 	.globl _UEP4_CTRL
                                    162 	.globl _UEP0_T_LEN
                                    163 	.globl _UEP0_CTRL
                                    164 	.globl _USB_RX_LEN
                                    165 	.globl _USB_MIS_ST
                                    166 	.globl _USB_INT_ST
                                    167 	.globl _USB_INT_FG
                                    168 	.globl _UEP3_T_LEN
                                    169 	.globl _UEP3_CTRL
                                    170 	.globl _UEP2_T_LEN
                                    171 	.globl _UEP2_CTRL
                                    172 	.globl _UEP1_T_LEN
                                    173 	.globl _UEP1_CTRL
                                    174 	.globl _UDEV_CTRL
                                    175 	.globl _USB_C_CTRL
                                    176 	.globl _TKEY_DATH
                                    177 	.globl _TKEY_DATL
                                    178 	.globl _TKEY_DAT
                                    179 	.globl _TKEY_CTRL
                                    180 	.globl _ADC_DATA
                                    181 	.globl _ADC_CFG
                                    182 	.globl _ADC_CTRL
                                    183 	.globl _SBAUD1
                                    184 	.globl _SBUF1
                                    185 	.globl _SCON1
                                    186 	.globl _SPI0_SETUP
                                    187 	.globl _SPI0_CK_SE
                                    188 	.globl _SPI0_CTRL
                                    189 	.globl _SPI0_DATA
                                    190 	.globl _SPI0_STAT
                                    191 	.globl _PWM_CK_SE
                                    192 	.globl _PWM_CTRL
                                    193 	.globl _PWM_DATA1
                                    194 	.globl _PWM_DATA2
                                    195 	.globl _T2CAP1H
                                    196 	.globl _T2CAP1L
                                    197 	.globl _T2CAP1
                                    198 	.globl _TH2
                                    199 	.globl _TL2
                                    200 	.globl _T2COUNT
                                    201 	.globl _RCAP2H
                                    202 	.globl _RCAP2L
                                    203 	.globl _RCAP2
                                    204 	.globl _T2MOD
                                    205 	.globl _T2CON
                                    206 	.globl _SBUF
                                    207 	.globl _SCON
                                    208 	.globl _TH1
                                    209 	.globl _TH0
                                    210 	.globl _TL1
                                    211 	.globl _TL0
                                    212 	.globl _TMOD
                                    213 	.globl _TCON
                                    214 	.globl _XBUS_AUX
                                    215 	.globl _PIN_FUNC
                                    216 	.globl _P3_DIR_PU
                                    217 	.globl _P3_MOD_OC
                                    218 	.globl _P3
                                    219 	.globl _P2
                                    220 	.globl _P1_DIR_PU
                                    221 	.globl _P1_MOD_OC
                                    222 	.globl _P1
                                    223 	.globl _ROM_CTRL
                                    224 	.globl _ROM_DATA_H
                                    225 	.globl _ROM_DATA_L
                                    226 	.globl _ROM_DATA
                                    227 	.globl _ROM_ADDR_H
                                    228 	.globl _ROM_ADDR_L
                                    229 	.globl _ROM_ADDR
                                    230 	.globl _GPIO_IE
                                    231 	.globl _IP_EX
                                    232 	.globl _IE_EX
                                    233 	.globl _IP
                                    234 	.globl _IE
                                    235 	.globl _WDOG_COUNT
                                    236 	.globl _RESET_KEEP
                                    237 	.globl _WAKE_CTRL
                                    238 	.globl _CLOCK_CFG
                                    239 	.globl _PCON
                                    240 	.globl _GLOBAL_CFG
                                    241 	.globl _SAFE_MOD
                                    242 	.globl _DPH
                                    243 	.globl _DPL
                                    244 	.globl _SP
                                    245 	.globl _B
                                    246 	.globl _ACC
                                    247 	.globl _PSW
                                    248 	.globl _ledON
                                    249 	.globl _debounce
                                    250 	.globl _button_irq
                                    251 	.globl _t
                                    252 	.globl _counter
                                    253 	.globl _serialTime
                                    254 	.globl _wdtCounter
                                    255 	.globl _debounceTimer
                                    256 	.globl _tick_10ms
                                    257 	.globl _clock_init
                                    258 	.globl _INT1_ISR
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
                                    510 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        511 	.ds 8
                                    512 ;--------------------------------------------------------
                                    513 ; internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area DSEG    (DATA)
      000010                        516 _tick_10ms::
      000010                        517 	.ds 2
      000012                        518 _debounceTimer::
      000012                        519 	.ds 2
      000014                        520 _wdtCounter::
      000014                        521 	.ds 2
      000016                        522 _serialTime::
      000016                        523 	.ds 2
      000018                        524 _counter::
      000018                        525 	.ds 2
      00001A                        526 _t::
      00001A                        527 	.ds 2
      00001C                        528 _blink_base:
      00001C                        529 	.ds 2
                                    530 ;--------------------------------------------------------
                                    531 ; overlayable items in internal ram
                                    532 ;--------------------------------------------------------
                                    533 ;--------------------------------------------------------
                                    534 ; Stack segment in internal ram
                                    535 ;--------------------------------------------------------
                                    536 	.area SSEG
      000021                        537 __start__stack:
      000021                        538 	.ds	1
                                    539 
                                    540 ;--------------------------------------------------------
                                    541 ; indirectly addressable internal ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area ISEG    (DATA)
                                    544 ;--------------------------------------------------------
                                    545 ; absolute internal ram data
                                    546 ;--------------------------------------------------------
                                    547 	.area IABS    (ABS,DATA)
                                    548 	.area IABS    (ABS,DATA)
                                    549 ;--------------------------------------------------------
                                    550 ; bit data
                                    551 ;--------------------------------------------------------
                                    552 	.area BSEG    (BIT)
      000000                        553 _button_irq::
      000000                        554 	.ds 1
      000001                        555 _debounce::
      000001                        556 	.ds 1
      000002                        557 _ledON::
      000002                        558 	.ds 1
      000003                        559 _wdt_started:
      000003                        560 	.ds 1
                                    561 ;--------------------------------------------------------
                                    562 ; paged external ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area PSEG    (PAG,XDATA)
                                    565 ;--------------------------------------------------------
                                    566 ; uninitialized external ram data
                                    567 ;--------------------------------------------------------
                                    568 	.area XSEG    (XDATA)
                                    569 ;--------------------------------------------------------
                                    570 ; absolute external ram data
                                    571 ;--------------------------------------------------------
                                    572 	.area XABS    (ABS,XDATA)
                                    573 ;--------------------------------------------------------
                                    574 ; initialized external ram data
                                    575 ;--------------------------------------------------------
                                    576 	.area XISEG   (XDATA)
                                    577 	.area HOME    (CODE)
                                    578 	.area GSINIT0 (CODE)
                                    579 	.area GSINIT1 (CODE)
                                    580 	.area GSINIT2 (CODE)
                                    581 	.area GSINIT3 (CODE)
                                    582 	.area GSINIT4 (CODE)
                                    583 	.area GSINIT5 (CODE)
                                    584 	.area GSINIT  (CODE)
                                    585 	.area GSFINAL (CODE)
                                    586 	.area CSEG    (CODE)
                                    587 ;--------------------------------------------------------
                                    588 ; interrupt vector
                                    589 ;--------------------------------------------------------
                                    590 	.area HOME    (CODE)
      000000                        591 __interrupt_vect:
      000000 02 00 5C         [24]  592 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  593 	reti
      000004                        594 	.ds	7
      00000B 02 01 03         [24]  595 	ljmp	_timer0_ISR
      00000E                        596 	.ds	5
      000013 02 00 F2         [24]  597 	ljmp	_INT1_ISR
                                    598 ; restartable atomic support routines
      000016                        599 	.ds	2
      000018                        600 sdcc_atomic_exchange_rollback_start::
      000018 00               [12]  601 	nop
      000019 00               [12]  602 	nop
      00001A                        603 sdcc_atomic_exchange_pdata_impl:
      00001A E2               [24]  604 	movx	a, @r0
      00001B FB               [12]  605 	mov	r3, a
      00001C EA               [12]  606 	mov	a, r2
      00001D F2               [24]  607 	movx	@r0, a
      00001E 80 2C            [24]  608 	sjmp	sdcc_atomic_exchange_exit
      000020 00               [12]  609 	nop
      000021 00               [12]  610 	nop
      000022                        611 sdcc_atomic_exchange_xdata_impl:
      000022 E0               [24]  612 	movx	a, @dptr
      000023 FB               [12]  613 	mov	r3, a
      000024 EA               [12]  614 	mov	a, r2
      000025 F0               [24]  615 	movx	@dptr, a
      000026 80 24            [24]  616 	sjmp	sdcc_atomic_exchange_exit
      000028                        617 sdcc_atomic_compare_exchange_idata_impl:
      000028 E6               [12]  618 	mov	a, @r0
      000029 B5 02 02         [24]  619 	cjne	a, ar2, .+#5
      00002C EB               [12]  620 	mov	a, r3
      00002D F6               [12]  621 	mov	@r0, a
      00002E 22               [24]  622 	ret
      00002F 00               [12]  623 	nop
      000030                        624 sdcc_atomic_compare_exchange_pdata_impl:
      000030 E2               [24]  625 	movx	a, @r0
      000031 B5 02 02         [24]  626 	cjne	a, ar2, .+#5
      000034 EB               [12]  627 	mov	a, r3
      000035 F2               [24]  628 	movx	@r0, a
      000036 22               [24]  629 	ret
      000037 00               [12]  630 	nop
      000038                        631 sdcc_atomic_compare_exchange_xdata_impl:
      000038 E0               [24]  632 	movx	a, @dptr
      000039 B5 02 02         [24]  633 	cjne	a, ar2, .+#5
      00003C EB               [12]  634 	mov	a, r3
      00003D F0               [24]  635 	movx	@dptr, a
      00003E 22               [24]  636 	ret
      00003F                        637 sdcc_atomic_exchange_rollback_end::
                                    638 
      00003F                        639 sdcc_atomic_exchange_gptr_impl::
      00003F 30 F6 E0         [24]  640 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000042 A8 82            [24]  641 	mov	r0, dpl
      000044 20 F5 D3         [24]  642 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000047                        643 sdcc_atomic_exchange_idata_impl:
      000047 EA               [12]  644 	mov	a, r2
      000048 C6               [12]  645 	xch	a, @r0
      000049 F5 82            [12]  646 	mov	dpl, a
      00004B 22               [24]  647 	ret
      00004C                        648 sdcc_atomic_exchange_exit:
      00004C 8B 82            [24]  649 	mov	dpl, r3
      00004E 22               [24]  650 	ret
      00004F                        651 sdcc_atomic_compare_exchange_gptr_impl::
      00004F 30 F6 E6         [24]  652 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000052 A8 82            [24]  653 	mov	r0, dpl
      000054 20 F5 D9         [24]  654 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000057 80 CF            [24]  655 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    656 ;--------------------------------------------------------
                                    657 ; global & static initialisations
                                    658 ;--------------------------------------------------------
                                    659 	.area HOME    (CODE)
                                    660 	.area GSINIT  (CODE)
                                    661 	.area GSFINAL (CODE)
                                    662 	.area GSINIT  (CODE)
                                    663 	.globl __sdcc_gsinit_startup
                                    664 	.globl __sdcc_program_startup
                                    665 	.globl __start__stack
                                    666 	.globl __mcs51_genXINIT
                                    667 	.globl __mcs51_genXRAMCLEAR
                                    668 	.globl __mcs51_genRAMCLEAR
                                    669 ;	watchdog-testing.c:5: volatile unsigned int tick_10ms = 0;
      0000B5 E4               [12]  670 	clr	a
      0000B6 F5 10            [12]  671 	mov	_tick_10ms,a
      0000B8 F5 11            [12]  672 	mov	(_tick_10ms + 1),a
                                    673 ;	watchdog-testing.c:6: volatile unsigned int debounceTimer = 0;
      0000BA F5 12            [12]  674 	mov	_debounceTimer,a
      0000BC F5 13            [12]  675 	mov	(_debounceTimer + 1),a
                                    676 ;	watchdog-testing.c:7: volatile unsigned int wdtCounter = 1;
      0000BE 75 14 01         [24]  677 	mov	_wdtCounter,#0x01
      0000C1 F5 15            [12]  678 	mov	(_wdtCounter + 1),a
                                    679 ;	watchdog-testing.c:11: unsigned int serialTime= 0;
      0000C3 F5 16            [12]  680 	mov	_serialTime,a
      0000C5 F5 17            [12]  681 	mov	(_serialTime + 1),a
                                    682 ;	watchdog-testing.c:12: unsigned int counter= 0;
      0000C7 F5 18            [12]  683 	mov	_counter,a
      0000C9 F5 19            [12]  684 	mov	(_counter + 1),a
                                    685 ;	watchdog-testing.c:15: static unsigned int blink_base = 0;
      0000CB F5 1C            [12]  686 	mov	_blink_base,a
      0000CD F5 1D            [12]  687 	mov	(_blink_base + 1),a
                                    688 ;	watchdog-testing.c:8: volatile __bit button_irq = 0;
                                    689 ;	assignBit
      0000CF C2 00            [12]  690 	clr	_button_irq
                                    691 ;	watchdog-testing.c:9: volatile __bit debounce = 0;
                                    692 ;	assignBit
      0000D1 C2 01            [12]  693 	clr	_debounce
                                    694 ;	watchdog-testing.c:10: volatile __bit ledON = 0;
                                    695 ;	assignBit
      0000D3 C2 02            [12]  696 	clr	_ledON
                                    697 ;	watchdog-testing.c:14: static __bit wdt_started = 0;
                                    698 ;	assignBit
      0000D5 C2 03            [12]  699 	clr	_wdt_started
                                    700 	.area GSFINAL (CODE)
      0000DA 02 00 59         [24]  701 	ljmp	__sdcc_program_startup
                                    702 ;--------------------------------------------------------
                                    703 ; Home
                                    704 ;--------------------------------------------------------
                                    705 	.area HOME    (CODE)
                                    706 	.area HOME    (CODE)
      000059                        707 __sdcc_program_startup:
      000059 02 01 A7         [24]  708 	ljmp	_main
                                    709 ;	return from main will return to caller
                                    710 ;--------------------------------------------------------
                                    711 ; code
                                    712 ;--------------------------------------------------------
                                    713 	.area CSEG    (CODE)
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'clock_init'
                                    716 ;------------------------------------------------------------
                                    717 ;	watchdog-testing.c:22: void clock_init(void) {
                                    718 ;	-----------------------------------------
                                    719 ;	 function clock_init
                                    720 ;	-----------------------------------------
      0000DD                        721 _clock_init:
                           000007   722 	ar7 = 0x07
                           000006   723 	ar6 = 0x06
                           000005   724 	ar5 = 0x05
                           000004   725 	ar4 = 0x04
                           000003   726 	ar3 = 0x03
                           000002   727 	ar2 = 0x02
                           000001   728 	ar1 = 0x01
                           000000   729 	ar0 = 0x00
                                    730 ;	watchdog-testing.c:23: SAFE_MOD = 0x55;
      0000DD 75 A1 55         [24]  731 	mov	_SAFE_MOD,#0x55
                                    732 ;	watchdog-testing.c:24: SAFE_MOD = 0xAA;
      0000E0 75 A1 AA         [24]  733 	mov	_SAFE_MOD,#0xaa
                                    734 ;	watchdog-testing.c:25: CLOCK_CFG |= bOSC_EN_INT; 
      0000E3 43 B9 80         [24]  735 	orl	_CLOCK_CFG,#0x80
                                    736 ;	watchdog-testing.c:27: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0000E6 74 F8            [12]  737 	mov	a,#0xf8
      0000E8 55 B9            [12]  738 	anl	a,_CLOCK_CFG
      0000EA 44 06            [12]  739 	orl	a,#0x06
      0000EC F5 B9            [12]  740 	mov	_CLOCK_CFG,a
                                    741 ;	watchdog-testing.c:29: SAFE_MOD = 0x00;
      0000EE 75 A1 00         [24]  742 	mov	_SAFE_MOD,#0x00
                                    743 ;	watchdog-testing.c:30: }
      0000F1 22               [24]  744 	ret
                                    745 ;------------------------------------------------------------
                                    746 ;Allocation info for local variables in function 'INT1_ISR'
                                    747 ;------------------------------------------------------------
                                    748 ;	watchdog-testing.c:31: void INT1_ISR(void) __interrupt (INT_NO_INT1)// You can do __interrupt (2) if you prefer 
                                    749 ;	-----------------------------------------
                                    750 ;	 function INT1_ISR
                                    751 ;	-----------------------------------------
      0000F2                        752 _INT1_ISR:
      0000F2 C0 E0            [24]  753 	push	acc
                                    754 ;	watchdog-testing.c:33: if (!(P3 & (1 << 3))) {   // only accept if pin is LOW. This prevents
      0000F4 E5 B0            [12]  755 	mov	a,_P3
      0000F6 20 E3 07         [24]  756 	jb	acc.3,00105$
                                    757 ;	watchdog-testing.c:34: if (!debounce) {        // only register if not already debouncing
      0000F9 20 01 04         [24]  758 	jb	_debounce,00105$
                                    759 ;	watchdog-testing.c:35: button_irq = 1;
                                    760 ;	assignBit
      0000FC D2 00            [12]  761 	setb	_button_irq
                                    762 ;	watchdog-testing.c:36: debounce = 1;       // arm immediately, atomically
                                    763 ;	assignBit
      0000FE D2 01            [12]  764 	setb	_debounce
      000100                        765 00105$:
                                    766 ;	watchdog-testing.c:39: }
      000100 D0 E0            [24]  767 	pop	acc
      000102 32               [24]  768 	reti
                                    769 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    770 ;	eliminated unneeded push/pop not_psw
                                    771 ;	eliminated unneeded push/pop dpl
                                    772 ;	eliminated unneeded push/pop dph
                                    773 ;	eliminated unneeded push/pop b
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'timer0_ISR'
                                    776 ;------------------------------------------------------------
                                    777 ;	watchdog-testing.c:40: void timer0_ISR(void) __interrupt(1) __using(1){ 
                                    778 ;	-----------------------------------------
                                    779 ;	 function timer0_ISR
                                    780 ;	-----------------------------------------
      000103                        781 _timer0_ISR:
                           00000F   782 	ar7 = 0x0f
                           00000E   783 	ar6 = 0x0e
                           00000D   784 	ar5 = 0x0d
                           00000C   785 	ar4 = 0x0c
                           00000B   786 	ar3 = 0x0b
                           00000A   787 	ar2 = 0x0a
                           000009   788 	ar1 = 0x09
                           000008   789 	ar0 = 0x08
      000103 C0 E0            [24]  790 	push	acc
      000105 C0 D0            [24]  791 	push	psw
      000107 75 D0 08         [24]  792 	mov	psw,#0x08
                                    793 ;	watchdog-testing.c:42: TF0 = 0;  // clear overflow flag (important for robustness)
                                    794 ;	assignBit
      00010A C2 8D            [12]  795 	clr	_TF0
                                    796 ;	watchdog-testing.c:43: TH0 = 0xB1;
      00010C 75 8C B1         [24]  797 	mov	_TH0,#0xb1
                                    798 ;	watchdog-testing.c:44: TL0 = 0xE0;
      00010F 75 8A E0         [24]  799 	mov	_TL0,#0xe0
                                    800 ;	watchdog-testing.c:45: tick_10ms++; // this is the 10ms tick for LED blinking
      000112 AE 10            [24]  801 	mov	r6,_tick_10ms
      000114 AF 11            [24]  802 	mov	r7,(_tick_10ms + 1)
      000116 74 01            [12]  803 	mov	a,#0x01
      000118 2E               [12]  804 	add	a, r6
      000119 F5 10            [12]  805 	mov	_tick_10ms,a
      00011B E4               [12]  806 	clr	a
      00011C 3F               [12]  807 	addc	a, r7
      00011D F5 11            [12]  808 	mov	(_tick_10ms + 1),a
                                    809 ;	watchdog-testing.c:46: serialTime++; // this is the timer for Serial_println transmissions
      00011F 05 16            [12]  810 	inc	_serialTime
      000121 E4               [12]  811 	clr	a
      000122 B5 16 02         [24]  812 	cjne	a,_serialTime,00119$
      000125 05 17            [12]  813 	inc	(_serialTime + 1)
      000127                        814 00119$:
                                    815 ;	watchdog-testing.c:47: if(debounce){ // if external interrupt happened, activate debounce timer
      000127 30 01 1F         [24]  816 	jnb	_debounce,00105$
                                    817 ;	watchdog-testing.c:48: debounceTimer++;
      00012A AE 12            [24]  818 	mov	r6,_debounceTimer
      00012C AF 13            [24]  819 	mov	r7,(_debounceTimer + 1)
      00012E 74 01            [12]  820 	mov	a,#0x01
      000130 2E               [12]  821 	add	a, r6
      000131 F5 12            [12]  822 	mov	_debounceTimer,a
      000133 E4               [12]  823 	clr	a
      000134 3F               [12]  824 	addc	a, r7
      000135 F5 13            [12]  825 	mov	(_debounceTimer + 1),a
                                    826 ;	watchdog-testing.c:49: if(debounceTimer >= 60){ // after 600ms of not detecting the push-button
      000137 C3               [12]  827 	clr	c
      000138 E5 12            [12]  828 	mov	a,_debounceTimer
      00013A 94 3C            [12]  829 	subb	a,#0x3c
      00013C E5 13            [12]  830 	mov	a,(_debounceTimer + 1)
      00013E 94 00            [12]  831 	subb	a,#0x00
      000140 40 07            [24]  832 	jc	00105$
                                    833 ;	watchdog-testing.c:50: debounce= 0; // turn debounce delay OFF
                                    834 ;	assignBit
      000142 C2 01            [12]  835 	clr	_debounce
                                    836 ;	watchdog-testing.c:51: debounceTimer= 0; // and clear timer/counter for next time
      000144 E4               [12]  837 	clr	a
      000145 F5 12            [12]  838 	mov	_debounceTimer,a
      000147 F5 13            [12]  839 	mov	(_debounceTimer + 1),a
      000149                        840 00105$:
                                    841 ;	watchdog-testing.c:54: }
      000149 D0 D0            [24]  842 	pop	psw
      00014B D0 E0            [24]  843 	pop	acc
      00014D 32               [24]  844 	reti
                                    845 ;	eliminated unneeded push/pop dpl
                                    846 ;	eliminated unneeded push/pop dph
                                    847 ;	eliminated unneeded push/pop b
                                    848 ;------------------------------------------------------------
                                    849 ;Allocation info for local variables in function 'timer0_init'
                                    850 ;------------------------------------------------------------
                                    851 ;	watchdog-testing.c:58: void timer0_init(void) {
                                    852 ;	-----------------------------------------
                                    853 ;	 function timer0_init
                                    854 ;	-----------------------------------------
      00014E                        855 _timer0_init:
                           000007   856 	ar7 = 0x07
                           000006   857 	ar6 = 0x06
                           000005   858 	ar5 = 0x05
                           000004   859 	ar4 = 0x04
                           000003   860 	ar3 = 0x03
                           000002   861 	ar2 = 0x02
                           000001   862 	ar1 = 0x01
                           000000   863 	ar0 = 0x00
                                    864 ;	watchdog-testing.c:60: T2MOD &= ~bTMR_CLK;   // disable fast clock mode
      00014E 53 C9 7F         [24]  865 	anl	_T2MOD,#0x7f
                                    866 ;	watchdog-testing.c:61: T2MOD &= ~bT0_CLK;    // Timer0 = Fsys/12
      000151 53 C9 EF         [24]  867 	anl	_T2MOD,#0xef
                                    868 ;	watchdog-testing.c:62: TMOD &= ~0x03;  // clear Timer0 mode bits
      000154 53 89 FC         [24]  869 	anl	_TMOD,#0xfc
                                    870 ;	watchdog-testing.c:63: TMOD |=  0x01;  // Timer0 mode 1: 16-bit
      000157 43 89 01         [24]  871 	orl	_TMOD,#0x01
                                    872 ;	watchdog-testing.c:66: TH0 = 0xB1;
      00015A 75 8C B1         [24]  873 	mov	_TH0,#0xb1
                                    874 ;	watchdog-testing.c:67: TL0 = 0xE0;
      00015D 75 8A E0         [24]  875 	mov	_TL0,#0xe0
                                    876 ;	watchdog-testing.c:69: TF0 = 0;
                                    877 ;	assignBit
      000160 C2 8D            [12]  878 	clr	_TF0
                                    879 ;	watchdog-testing.c:71: ET0 = 1;   // enable Timer0 interrupt
                                    880 ;	assignBit
      000162 D2 A9            [12]  881 	setb	_ET0
                                    882 ;	watchdog-testing.c:72: TR0 = 1;   // start Timer0
                                    883 ;	assignBit
      000164 D2 8C            [12]  884 	setb	_TR0
                                    885 ;	watchdog-testing.c:73: EA = 1;
                                    886 ;	assignBit
      000166 D2 AF            [12]  887 	setb	_EA
                                    888 ;	watchdog-testing.c:74: }
      000168 22               [24]  889 	ret
                                    890 ;------------------------------------------------------------
                                    891 ;Allocation info for local variables in function 'extint1_init'
                                    892 ;------------------------------------------------------------
                                    893 ;	watchdog-testing.c:75: void extint1_init(void) {
                                    894 ;	-----------------------------------------
                                    895 ;	 function extint1_init
                                    896 ;	-----------------------------------------
      000169                        897 _extint1_init:
                                    898 ;	watchdog-testing.c:76: IT1 = 1;   // falling edge
                                    899 ;	assignBit
      000169 D2 8A            [12]  900 	setb	_IT1
                                    901 ;	watchdog-testing.c:77: EX1 = 1;   // enable INT1
                                    902 ;	assignBit
      00016B D2 AA            [12]  903 	setb	_EX1
                                    904 ;	watchdog-testing.c:78: }
      00016D 22               [24]  905 	ret
                                    906 ;------------------------------------------------------------
                                    907 ;Allocation info for local variables in function 'blink_led'
                                    908 ;------------------------------------------------------------
                                    909 ;t             Allocated to registers r6 r7 
                                    910 ;phase         Allocated to registers r4 r5 
                                    911 ;------------------------------------------------------------
                                    912 ;	watchdog-testing.c:79: void blink_led(unsigned int t) {
                                    913 ;	-----------------------------------------
                                    914 ;	 function blink_led
                                    915 ;	-----------------------------------------
      00016E                        916 _blink_led:
      00016E AE 82            [24]  917 	mov	r6, dpl
      000170 AF 83            [24]  918 	mov	r7, dph
                                    919 ;	watchdog-testing.c:80: unsigned int phase = t - blink_base;
      000172 EE               [12]  920 	mov	a,r6
      000173 C3               [12]  921 	clr	c
      000174 95 1C            [12]  922 	subb	a,_blink_base
      000176 FC               [12]  923 	mov	r4,a
      000177 EF               [12]  924 	mov	a,r7
      000178 95 1D            [12]  925 	subb	a,(_blink_base + 1)
      00017A FD               [12]  926 	mov	r5,a
                                    927 ;	watchdog-testing.c:82: if (phase < 30) {
      00017B C3               [12]  928 	clr	c
      00017C EC               [12]  929 	mov	a,r4
      00017D 94 1E            [12]  930 	subb	a,#0x1e
      00017F ED               [12]  931 	mov	a,r5
      000180 94 00            [12]  932 	subb	a,#0x00
      000182 50 04            [24]  933 	jnc	00105$
                                    934 ;	watchdog-testing.c:83: P3 |= (1 << 0);
      000184 43 B0 01         [24]  935 	orl	_P3,#0x01
      000187 22               [24]  936 	ret
      000188                        937 00105$:
                                    938 ;	watchdog-testing.c:84: } else if (phase < 60) {
      000188 C3               [12]  939 	clr	c
      000189 EC               [12]  940 	mov	a,r4
      00018A 94 3C            [12]  941 	subb	a,#0x3c
      00018C ED               [12]  942 	mov	a,r5
      00018D 94 00            [12]  943 	subb	a,#0x00
      00018F 50 04            [24]  944 	jnc	00102$
                                    945 ;	watchdog-testing.c:85: P3 &= ~(1 << 0);
      000191 53 B0 FE         [24]  946 	anl	_P3,#0xfe
      000194 22               [24]  947 	ret
      000195                        948 00102$:
                                    949 ;	watchdog-testing.c:87: blink_base = t;
      000195 8E 1C            [24]  950 	mov	_blink_base,r6
      000197 8F 1D            [24]  951 	mov	(_blink_base + 1),r7
                                    952 ;	watchdog-testing.c:88: wdtCounter++; // increment watchdog activation "countdown"
      000199 AE 14            [24]  953 	mov	r6,_wdtCounter
      00019B AF 15            [24]  954 	mov	r7,(_wdtCounter + 1)
      00019D 74 01            [12]  955 	mov	a,#0x01
      00019F 2E               [12]  956 	add	a, r6
      0001A0 F5 14            [12]  957 	mov	_wdtCounter,a
      0001A2 E4               [12]  958 	clr	a
      0001A3 3F               [12]  959 	addc	a, r7
      0001A4 F5 15            [12]  960 	mov	(_wdtCounter + 1),a
                                    961 ;	watchdog-testing.c:90: }
      0001A6 22               [24]  962 	ret
                                    963 ;------------------------------------------------------------
                                    964 ;Allocation info for local variables in function 'main'
                                    965 ;------------------------------------------------------------
                                    966 ;	watchdog-testing.c:92: void main(void) {
                                    967 ;	-----------------------------------------
                                    968 ;	 function main
                                    969 ;	-----------------------------------------
      0001A7                        970 _main:
                                    971 ;	watchdog-testing.c:93: clock_init();
      0001A7 12 00 DD         [24]  972 	lcall	_clock_init
                                    973 ;	watchdog-testing.c:94: extint1_init();
      0001AA 12 01 69         [24]  974 	lcall	_extint1_init
                                    975 ;	watchdog-testing.c:95: timer0_init();  
      0001AD 12 01 4E         [24]  976 	lcall	_timer0_init
                                    977 ;	watchdog-testing.c:99: P3_MOD_OC &= ~(1 << 0);   // push-pull
      0001B0 53 96 FE         [24]  978 	anl	_P3_MOD_OC,#0xfe
                                    979 ;	watchdog-testing.c:100: P3_DIR_PU |=  (1 << 0);   // enable strong output drive
      0001B3 43 97 01         [24]  980 	orl	_P3_DIR_PU,#0x01
                                    981 ;	watchdog-testing.c:103: P3_MOD_OC &= ~(1 << 1);   // push-pull
      0001B6 53 96 FD         [24]  982 	anl	_P3_MOD_OC,#0xfd
                                    983 ;	watchdog-testing.c:104: P3_DIR_PU |=  (1 << 1);   // enable strong output drive
      0001B9 43 97 02         [24]  984 	orl	_P3_DIR_PU,#0x02
                                    985 ;	watchdog-testing.c:106: P3_MOD_OC &= ~(1 << 3);   // normal input
      0001BC 53 96 F7         [24]  986 	anl	_P3_MOD_OC,#0xf7
                                    987 ;	watchdog-testing.c:107: P3_DIR_PU |=  (1 << 3);   // enable pull-up
      0001BF 43 97 08         [24]  988 	orl	_P3_DIR_PU,#0x08
                                    989 ;	watchdog-testing.c:108: P3 |= (1 << 3);           // pull-up
      0001C2 43 B0 08         [24]  990 	orl	_P3,#0x08
                                    991 ;	watchdog-testing.c:110: P3 &= ~(1 << 0);  // Make LED pin P3.0 "start" as OFF
      0001C5 53 B0 FE         [24]  992 	anl	_P3,#0xfe
                                    993 ;	watchdog-testing.c:111: P3 &= ~(1 << 1);  // Watchdog indicator pin to LOW
      0001C8 53 B0 FD         [24]  994 	anl	_P3,#0xfd
                                    995 ;	watchdog-testing.c:113: while (1) {
      0001CB                        996 00119$:
                                    997 ;	watchdog-testing.c:115: if (!wdt_started && tick_10ms > 50) {  // wait ~500ms before activating watchdog
      0001CB 20 03 18         [24]  998 	jb	_wdt_started,00102$
      0001CE C3               [12]  999 	clr	c
      0001CF 74 32            [12] 1000 	mov	a,#0x32
      0001D1 95 10            [12] 1001 	subb	a,_tick_10ms
      0001D3 E4               [12] 1002 	clr	a
      0001D4 95 11            [12] 1003 	subb	a,(_tick_10ms + 1)
      0001D6 50 0E            [24] 1004 	jnc	00102$
                                   1005 ;	watchdog-testing.c:116: SAFE_MOD = 0x55;
      0001D8 75 A1 55         [24] 1006 	mov	_SAFE_MOD,#0x55
                                   1007 ;	watchdog-testing.c:117: SAFE_MOD = 0xAA;
      0001DB 75 A1 AA         [24] 1008 	mov	_SAFE_MOD,#0xaa
                                   1009 ;	watchdog-testing.c:118: GLOBAL_CFG |= bWDOG_EN;
      0001DE 43 B1 01         [24] 1010 	orl	_GLOBAL_CFG,#0x01
                                   1011 ;	watchdog-testing.c:119: SAFE_MOD = 0x00;
      0001E1 75 A1 00         [24] 1012 	mov	_SAFE_MOD,#0x00
                                   1013 ;	watchdog-testing.c:121: wdt_started = 1;
                                   1014 ;	assignBit
      0001E4 D2 03            [12] 1015 	setb	_wdt_started
      0001E6                       1016 00102$:
                                   1017 ;	watchdog-testing.c:123: EA = 0;
                                   1018 ;	assignBit
      0001E6 C2 AF            [12] 1019 	clr	_EA
                                   1020 ;	watchdog-testing.c:124: t = tick_10ms;
      0001E8 85 10 1A         [24] 1021 	mov	_t,_tick_10ms
      0001EB 85 11 1B         [24] 1022 	mov	(_t + 1),(_tick_10ms + 1)
                                   1023 ;	watchdog-testing.c:125: EA = 1;
                                   1024 ;	assignBit
      0001EE D2 AF            [12] 1025 	setb	_EA
                                   1026 ;	watchdog-testing.c:127: if (button_irq && debounce) {
      0001F0 30 00 13         [24] 1027 	jnb	_button_irq,00108$
      0001F3 30 01 10         [24] 1028 	jnb	_debounce,00108$
                                   1029 ;	watchdog-testing.c:128: button_irq = 0;
                                   1030 ;	assignBit
      0001F6 C2 00            [12] 1031 	clr	_button_irq
                                   1032 ;	watchdog-testing.c:130: if (ledON == 0) {
      0001F8 20 02 09         [24] 1033 	jb	_ledON,00105$
                                   1034 ;	watchdog-testing.c:131: ledON = 1;
                                   1035 ;	assignBit
      0001FB D2 02            [12] 1036 	setb	_ledON
                                   1037 ;	watchdog-testing.c:132: wdtCounter = 0;
      0001FD E4               [12] 1038 	clr	a
      0001FE F5 14            [12] 1039 	mov	_wdtCounter,a
      000200 F5 15            [12] 1040 	mov	(_wdtCounter + 1),a
      000202 80 02            [24] 1041 	sjmp	00108$
      000204                       1042 00105$:
                                   1043 ;	watchdog-testing.c:134: ledON = 0;
                                   1044 ;	assignBit
      000204 C2 02            [12] 1045 	clr	_ledON
      000206                       1046 00108$:
                                   1047 ;	watchdog-testing.c:138: if (ledON) {
      000206 30 02 0C         [24] 1048 	jnb	_ledON,00111$
                                   1049 ;	watchdog-testing.c:142: P3 |= (1 << 1);             
      000209 43 B0 02         [24] 1050 	orl	_P3,#0x02
                                   1051 ;	watchdog-testing.c:143: blink_led(t);            
      00020C 85 1A 82         [24] 1052 	mov	dpl, _t
      00020F 85 1B 83         [24] 1053 	mov	dph, (_t + 1)
      000212 12 01 6E         [24] 1054 	lcall	_blink_led
      000215                       1055 00111$:
                                   1056 ;	watchdog-testing.c:146: if (wdtCounter >= 6) {
      000215 C3               [12] 1057 	clr	c
      000216 E5 14            [12] 1058 	mov	a,_wdtCounter
      000218 94 06            [12] 1059 	subb	a,#0x06
      00021A E5 15            [12] 1060 	mov	a,(_wdtCounter + 1)
      00021C 94 00            [12] 1061 	subb	a,#0x00
      00021E 40 11            [24] 1062 	jc	00116$
                                   1063 ;	watchdog-testing.c:147: SAFE_MOD = 0x55;
      000220 75 A1 55         [24] 1064 	mov	_SAFE_MOD,#0x55
                                   1065 ;	watchdog-testing.c:148: SAFE_MOD = 0xAA;
      000223 75 A1 AA         [24] 1066 	mov	_SAFE_MOD,#0xaa
                                   1067 ;	watchdog-testing.c:149: USB_CTRL = 0x00;
      000226 75 E2 00         [24] 1068 	mov	_USB_CTRL,#0x00
                                   1069 ;	watchdog-testing.c:150: SAFE_MOD = 0x00;
      000229 75 A1 00         [24] 1070 	mov	_SAFE_MOD,#0x00
                                   1071 ;	watchdog-testing.c:151: EA = 0;
                                   1072 ;	assignBit
      00022C C2 AF            [12] 1073 	clr	_EA
                                   1074 ;	watchdog-testing.c:152: while (1) { __asm nop __endasm; }
      00022E                       1075 00113$:
      00022E 00               [12] 1076 	nop	
      00022F 80 FD            [24] 1077 	sjmp	00113$
      000231                       1078 00116$:
                                   1079 ;	watchdog-testing.c:154: WDOG_COUNT = 0x01;   // feed normally
      000231 75 FF 01         [24] 1080 	mov	_WDOG_COUNT,#0x01
                                   1081 ;	watchdog-testing.c:157: }
      000234 80 95            [24] 1082 	sjmp	00119$
                                   1083 	.area CSEG    (CODE)
                                   1084 	.area CONST   (CODE)
                                   1085 	.area XINIT   (CODE)
                                   1086 	.area CABS    (ABS,CODE)
