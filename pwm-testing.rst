                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module pwm_testing
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
                                    247 	.globl _tick_10ms
                                    248 	.globl _clock_init
                                    249 	.globl _timer0_ISR
                                    250 	.globl _pwm_init
                                    251 ;--------------------------------------------------------
                                    252 ; special function registers
                                    253 ;--------------------------------------------------------
                                    254 	.area RSEG    (ABS,DATA)
      000000                        255 	.org 0x0000
                           0000D0   256 _PSW	=	0x00d0
                           0000E0   257 _ACC	=	0x00e0
                           0000F0   258 _B	=	0x00f0
                           000081   259 _SP	=	0x0081
                           000082   260 _DPL	=	0x0082
                           000083   261 _DPH	=	0x0083
                           0000A1   262 _SAFE_MOD	=	0x00a1
                           0000B1   263 _GLOBAL_CFG	=	0x00b1
                           000087   264 _PCON	=	0x0087
                           0000B9   265 _CLOCK_CFG	=	0x00b9
                           0000A9   266 _WAKE_CTRL	=	0x00a9
                           0000FE   267 _RESET_KEEP	=	0x00fe
                           0000FF   268 _WDOG_COUNT	=	0x00ff
                           0000A8   269 _IE	=	0x00a8
                           0000B8   270 _IP	=	0x00b8
                           0000E8   271 _IE_EX	=	0x00e8
                           0000E9   272 _IP_EX	=	0x00e9
                           0000C7   273 _GPIO_IE	=	0x00c7
                           008584   274 _ROM_ADDR	=	0x8584
                           000084   275 _ROM_ADDR_L	=	0x0084
                           000085   276 _ROM_ADDR_H	=	0x0085
                           008F8E   277 _ROM_DATA	=	0x8f8e
                           00008E   278 _ROM_DATA_L	=	0x008e
                           00008F   279 _ROM_DATA_H	=	0x008f
                           000086   280 _ROM_CTRL	=	0x0086
                           000090   281 _P1	=	0x0090
                           000092   282 _P1_MOD_OC	=	0x0092
                           000093   283 _P1_DIR_PU	=	0x0093
                           0000A0   284 _P2	=	0x00a0
                           0000B0   285 _P3	=	0x00b0
                           000096   286 _P3_MOD_OC	=	0x0096
                           000097   287 _P3_DIR_PU	=	0x0097
                           0000C6   288 _PIN_FUNC	=	0x00c6
                           0000A2   289 _XBUS_AUX	=	0x00a2
                           000088   290 _TCON	=	0x0088
                           000089   291 _TMOD	=	0x0089
                           00008A   292 _TL0	=	0x008a
                           00008B   293 _TL1	=	0x008b
                           00008C   294 _TH0	=	0x008c
                           00008D   295 _TH1	=	0x008d
                           000098   296 _SCON	=	0x0098
                           000099   297 _SBUF	=	0x0099
                           0000C8   298 _T2CON	=	0x00c8
                           0000C9   299 _T2MOD	=	0x00c9
                           00CBCA   300 _RCAP2	=	0xcbca
                           0000CA   301 _RCAP2L	=	0x00ca
                           0000CB   302 _RCAP2H	=	0x00cb
                           00CDCC   303 _T2COUNT	=	0xcdcc
                           0000CC   304 _TL2	=	0x00cc
                           0000CD   305 _TH2	=	0x00cd
                           00CFCE   306 _T2CAP1	=	0xcfce
                           0000CE   307 _T2CAP1L	=	0x00ce
                           0000CF   308 _T2CAP1H	=	0x00cf
                           00009B   309 _PWM_DATA2	=	0x009b
                           00009C   310 _PWM_DATA1	=	0x009c
                           00009D   311 _PWM_CTRL	=	0x009d
                           00009E   312 _PWM_CK_SE	=	0x009e
                           0000F8   313 _SPI0_STAT	=	0x00f8
                           0000F9   314 _SPI0_DATA	=	0x00f9
                           0000FA   315 _SPI0_CTRL	=	0x00fa
                           0000FB   316 _SPI0_CK_SE	=	0x00fb
                           0000FC   317 _SPI0_SETUP	=	0x00fc
                           0000C0   318 _SCON1	=	0x00c0
                           0000C1   319 _SBUF1	=	0x00c1
                           0000C2   320 _SBAUD1	=	0x00c2
                           000080   321 _ADC_CTRL	=	0x0080
                           00009A   322 _ADC_CFG	=	0x009a
                           00009F   323 _ADC_DATA	=	0x009f
                           0000C3   324 _TKEY_CTRL	=	0x00c3
                           00C5C4   325 _TKEY_DAT	=	0xc5c4
                           0000C4   326 _TKEY_DATL	=	0x00c4
                           0000C5   327 _TKEY_DATH	=	0x00c5
                           000091   328 _USB_C_CTRL	=	0x0091
                           0000D1   329 _UDEV_CTRL	=	0x00d1
                           0000D2   330 _UEP1_CTRL	=	0x00d2
                           0000D3   331 _UEP1_T_LEN	=	0x00d3
                           0000D4   332 _UEP2_CTRL	=	0x00d4
                           0000D5   333 _UEP2_T_LEN	=	0x00d5
                           0000D6   334 _UEP3_CTRL	=	0x00d6
                           0000D7   335 _UEP3_T_LEN	=	0x00d7
                           0000D8   336 _USB_INT_FG	=	0x00d8
                           0000D9   337 _USB_INT_ST	=	0x00d9
                           0000DA   338 _USB_MIS_ST	=	0x00da
                           0000DB   339 _USB_RX_LEN	=	0x00db
                           0000DC   340 _UEP0_CTRL	=	0x00dc
                           0000DD   341 _UEP0_T_LEN	=	0x00dd
                           0000DE   342 _UEP4_CTRL	=	0x00de
                           0000DF   343 _UEP4_T_LEN	=	0x00df
                           0000E1   344 _USB_INT_EN	=	0x00e1
                           0000E2   345 _USB_CTRL	=	0x00e2
                           0000E3   346 _USB_DEV_AD	=	0x00e3
                           00E5E4   347 _UEP2_DMA	=	0xe5e4
                           0000E4   348 _UEP2_DMA_L	=	0x00e4
                           0000E5   349 _UEP2_DMA_H	=	0x00e5
                           00E7E6   350 _UEP3_DMA	=	0xe7e6
                           0000E6   351 _UEP3_DMA_L	=	0x00e6
                           0000E7   352 _UEP3_DMA_H	=	0x00e7
                           0000EA   353 _UEP4_1_MOD	=	0x00ea
                           0000EB   354 _UEP2_3_MOD	=	0x00eb
                           00EDEC   355 _UEP0_DMA	=	0xedec
                           0000EC   356 _UEP0_DMA_L	=	0x00ec
                           0000ED   357 _UEP0_DMA_H	=	0x00ed
                           00EFEE   358 _UEP1_DMA	=	0xefee
                           0000EE   359 _UEP1_DMA_L	=	0x00ee
                           0000EF   360 _UEP1_DMA_H	=	0x00ef
                                    361 ;--------------------------------------------------------
                                    362 ; special function bits
                                    363 ;--------------------------------------------------------
                                    364 	.area RSEG    (ABS,DATA)
      000000                        365 	.org 0x0000
                           0000D7   366 _CY	=	0x00d7
                           0000D6   367 _AC	=	0x00d6
                           0000D5   368 _F0	=	0x00d5
                           0000D4   369 _RS1	=	0x00d4
                           0000D3   370 _RS0	=	0x00d3
                           0000D2   371 _OV	=	0x00d2
                           0000D1   372 _F1	=	0x00d1
                           0000D0   373 _P	=	0x00d0
                           0000AF   374 _EA	=	0x00af
                           0000AE   375 _E_DIS	=	0x00ae
                           0000AD   376 _ET2	=	0x00ad
                           0000AC   377 _ES	=	0x00ac
                           0000AB   378 _ET1	=	0x00ab
                           0000AA   379 _EX1	=	0x00aa
                           0000A9   380 _ET0	=	0x00a9
                           0000A8   381 _EX0	=	0x00a8
                           0000BF   382 _PH_FLAG	=	0x00bf
                           0000BE   383 _PL_FLAG	=	0x00be
                           0000BD   384 _PT2	=	0x00bd
                           0000BC   385 _PS	=	0x00bc
                           0000BB   386 _PT1	=	0x00bb
                           0000BA   387 _PX1	=	0x00ba
                           0000B9   388 _PT0	=	0x00b9
                           0000B8   389 _PX0	=	0x00b8
                           0000EF   390 _IE_WDOG	=	0x00ef
                           0000EE   391 _IE_GPIO	=	0x00ee
                           0000ED   392 _IE_PWMX	=	0x00ed
                           0000EC   393 _IE_UART1	=	0x00ec
                           0000EB   394 _IE_ADC	=	0x00eb
                           0000EA   395 _IE_USB	=	0x00ea
                           0000E9   396 _IE_TKEY	=	0x00e9
                           0000E8   397 _IE_SPI0	=	0x00e8
                           000097   398 _SCK	=	0x0097
                           000097   399 _TXD1	=	0x0097
                           000097   400 _TIN5	=	0x0097
                           000096   401 _MISO	=	0x0096
                           000096   402 _RXD1	=	0x0096
                           000096   403 _TIN4	=	0x0096
                           000095   404 _MOSI	=	0x0095
                           000095   405 _PWM1	=	0x0095
                           000095   406 _TIN3	=	0x0095
                           000095   407 _UCC2	=	0x0095
                           000095   408 _AIN2	=	0x0095
                           000094   409 _T2_	=	0x0094
                           000094   410 _CAP1_	=	0x0094
                           000094   411 _SCS	=	0x0094
                           000094   412 _TIN2	=	0x0094
                           000094   413 _UCC1	=	0x0094
                           000094   414 _AIN1	=	0x0094
                           000093   415 _TXD_	=	0x0093
                           000092   416 _RXD_	=	0x0092
                           000091   417 _T2EX	=	0x0091
                           000091   418 _CAP2	=	0x0091
                           000091   419 _TIN1	=	0x0091
                           000091   420 _VBUS2	=	0x0091
                           000091   421 _AIN0	=	0x0091
                           000090   422 _T2	=	0x0090
                           000090   423 _CAP1	=	0x0090
                           000090   424 _TIN0	=	0x0090
                           0000B7   425 _UDM	=	0x00b7
                           0000B6   426 _UDP	=	0x00b6
                           0000B5   427 _T1	=	0x00b5
                           0000B4   428 _PWM2	=	0x00b4
                           0000B4   429 _RXD1_	=	0x00b4
                           0000B4   430 _T0	=	0x00b4
                           0000B3   431 _INT1	=	0x00b3
                           0000B2   432 _TXD1_	=	0x00b2
                           0000B2   433 _INT0	=	0x00b2
                           0000B2   434 _VBUS1	=	0x00b2
                           0000B2   435 _AIN3	=	0x00b2
                           0000B1   436 _PWM2_	=	0x00b1
                           0000B1   437 _TXD	=	0x00b1
                           0000B0   438 _PWM1_	=	0x00b0
                           0000B0   439 _RXD	=	0x00b0
                           00008F   440 _TF1	=	0x008f
                           00008E   441 _TR1	=	0x008e
                           00008D   442 _TF0	=	0x008d
                           00008C   443 _TR0	=	0x008c
                           00008B   444 _IE1	=	0x008b
                           00008A   445 _IT1	=	0x008a
                           000089   446 _IE0	=	0x0089
                           000088   447 _IT0	=	0x0088
                           00009F   448 _SM0	=	0x009f
                           00009E   449 _SM1	=	0x009e
                           00009D   450 _SM2	=	0x009d
                           00009C   451 _REN	=	0x009c
                           00009B   452 _TB8	=	0x009b
                           00009A   453 _RB8	=	0x009a
                           000099   454 _TI	=	0x0099
                           000098   455 _RI	=	0x0098
                           0000CF   456 _TF2	=	0x00cf
                           0000CF   457 _CAP1F	=	0x00cf
                           0000CE   458 _EXF2	=	0x00ce
                           0000CD   459 _RCLK	=	0x00cd
                           0000CC   460 _TCLK	=	0x00cc
                           0000CB   461 _EXEN2	=	0x00cb
                           0000CA   462 _TR2	=	0x00ca
                           0000C9   463 _C_T2	=	0x00c9
                           0000C8   464 _CP_RL2	=	0x00c8
                           0000FF   465 _S0_FST_ACT	=	0x00ff
                           0000FE   466 _S0_IF_OV	=	0x00fe
                           0000FD   467 _S0_IF_FIRST	=	0x00fd
                           0000FC   468 _S0_IF_BYTE	=	0x00fc
                           0000FB   469 _S0_FREE	=	0x00fb
                           0000FA   470 _S0_T_FIFO	=	0x00fa
                           0000F8   471 _S0_R_FIFO	=	0x00f8
                           0000C7   472 _U1SM0	=	0x00c7
                           0000C5   473 _U1SMOD	=	0x00c5
                           0000C4   474 _U1REN	=	0x00c4
                           0000C3   475 _U1TB8	=	0x00c3
                           0000C2   476 _U1RB8	=	0x00c2
                           0000C1   477 _U1TI	=	0x00c1
                           0000C0   478 _U1RI	=	0x00c0
                           000087   479 _CMPO	=	0x0087
                           000086   480 _CMP_IF	=	0x0086
                           000085   481 _ADC_IF	=	0x0085
                           000084   482 _ADC_START	=	0x0084
                           000083   483 _CMP_CHAN	=	0x0083
                           000081   484 _ADC_CHAN1	=	0x0081
                           000080   485 _ADC_CHAN0	=	0x0080
                           0000DF   486 _U_IS_NAK	=	0x00df
                           0000DE   487 _U_TOG_OK	=	0x00de
                           0000DD   488 _U_SIE_FREE	=	0x00dd
                           0000DC   489 _UIF_FIFO_OV	=	0x00dc
                           0000DB   490 _UIF_HST_SOF	=	0x00db
                           0000DA   491 _UIF_SUSPEND	=	0x00da
                           0000D9   492 _UIF_TRANSFER	=	0x00d9
                           0000D8   493 _UIF_DETECT	=	0x00d8
                           0000D8   494 _UIF_BUS_RST	=	0x00d8
                                    495 ;--------------------------------------------------------
                                    496 ; overlayable register banks
                                    497 ;--------------------------------------------------------
                                    498 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        499 	.ds 8
                                    500 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        501 	.ds 8
                                    502 ;--------------------------------------------------------
                                    503 ; internal ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area DSEG    (DATA)
      000010                        506 _tick_10ms::
      000010                        507 	.ds 2
      000012                        508 _last_tick:
      000012                        509 	.ds 2
      000014                        510 _pwm_value:
      000014                        511 	.ds 1
                                    512 ;--------------------------------------------------------
                                    513 ; overlayable items in internal ram
                                    514 ;--------------------------------------------------------
                                    515 ;--------------------------------------------------------
                                    516 ; Stack segment in internal ram
                                    517 ;--------------------------------------------------------
                                    518 	.area SSEG
      000021                        519 __start__stack:
      000021                        520 	.ds	1
                                    521 
                                    522 ;--------------------------------------------------------
                                    523 ; indirectly addressable internal ram data
                                    524 ;--------------------------------------------------------
                                    525 	.area ISEG    (DATA)
                                    526 ;--------------------------------------------------------
                                    527 ; absolute internal ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area IABS    (ABS,DATA)
                                    530 	.area IABS    (ABS,DATA)
                                    531 ;--------------------------------------------------------
                                    532 ; bit data
                                    533 ;--------------------------------------------------------
                                    534 	.area BSEG    (BIT)
      000000                        535 _going_up:
      000000                        536 	.ds 1
                                    537 ;--------------------------------------------------------
                                    538 ; paged external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area PSEG    (PAG,XDATA)
                                    541 ;--------------------------------------------------------
                                    542 ; uninitialized external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XSEG    (XDATA)
                                    545 ;--------------------------------------------------------
                                    546 ; absolute external ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XABS    (ABS,XDATA)
                                    549 ;--------------------------------------------------------
                                    550 ; initialized external ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area XISEG   (XDATA)
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT0 (CODE)
                                    555 	.area GSINIT1 (CODE)
                                    556 	.area GSINIT2 (CODE)
                                    557 	.area GSINIT3 (CODE)
                                    558 	.area GSINIT4 (CODE)
                                    559 	.area GSINIT5 (CODE)
                                    560 	.area GSINIT  (CODE)
                                    561 	.area GSFINAL (CODE)
                                    562 	.area CSEG    (CODE)
                                    563 ;--------------------------------------------------------
                                    564 ; interrupt vector
                                    565 ;--------------------------------------------------------
                                    566 	.area HOME    (CODE)
      000000                        567 __interrupt_vect:
      000000 02 00 54         [24]  568 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  569 	reti
      000004                        570 	.ds	7
      00000B 02 00 D2         [24]  571 	ljmp	_timer0_ISR
                                    572 ; restartable atomic support routines
      00000E                        573 	.ds	2
      000010                        574 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  575 	nop
      000011 00               [12]  576 	nop
      000012                        577 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  578 	movx	a, @r0
      000013 FB               [12]  579 	mov	r3, a
      000014 EA               [12]  580 	mov	a, r2
      000015 F2               [24]  581 	movx	@r0, a
      000016 80 2C            [24]  582 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  583 	nop
      000019 00               [12]  584 	nop
      00001A                        585 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  586 	movx	a, @dptr
      00001B FB               [12]  587 	mov	r3, a
      00001C EA               [12]  588 	mov	a, r2
      00001D F0               [24]  589 	movx	@dptr, a
      00001E 80 24            [24]  590 	sjmp	sdcc_atomic_exchange_exit
      000020                        591 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  592 	mov	a, @r0
      000021 B5 02 02         [24]  593 	cjne	a, ar2, .+#5
      000024 EB               [12]  594 	mov	a, r3
      000025 F6               [12]  595 	mov	@r0, a
      000026 22               [24]  596 	ret
      000027 00               [12]  597 	nop
      000028                        598 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  599 	movx	a, @r0
      000029 B5 02 02         [24]  600 	cjne	a, ar2, .+#5
      00002C EB               [12]  601 	mov	a, r3
      00002D F2               [24]  602 	movx	@r0, a
      00002E 22               [24]  603 	ret
      00002F 00               [12]  604 	nop
      000030                        605 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  606 	movx	a, @dptr
      000031 B5 02 02         [24]  607 	cjne	a, ar2, .+#5
      000034 EB               [12]  608 	mov	a, r3
      000035 F0               [24]  609 	movx	@dptr, a
      000036 22               [24]  610 	ret
      000037                        611 sdcc_atomic_exchange_rollback_end::
                                    612 
      000037                        613 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  614 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  615 	mov	r0, dpl
      00003C 20 F5 D3         [24]  616 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        617 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  618 	mov	a, r2
      000040 C6               [12]  619 	xch	a, @r0
      000041 F5 82            [12]  620 	mov	dpl, a
      000043 22               [24]  621 	ret
      000044                        622 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  623 	mov	dpl, r3
      000046 22               [24]  624 	ret
      000047                        625 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  626 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  627 	mov	r0, dpl
      00004C 20 F5 D9         [24]  628 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  629 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    630 ;--------------------------------------------------------
                                    631 ; global & static initialisations
                                    632 ;--------------------------------------------------------
                                    633 	.area HOME    (CODE)
                                    634 	.area GSINIT  (CODE)
                                    635 	.area GSFINAL (CODE)
                                    636 	.area GSINIT  (CODE)
                                    637 	.globl __sdcc_gsinit_startup
                                    638 	.globl __sdcc_program_startup
                                    639 	.globl __start__stack
                                    640 	.globl __mcs51_genXINIT
                                    641 	.globl __mcs51_genXRAMCLEAR
                                    642 	.globl __mcs51_genRAMCLEAR
                                    643 ;	pwm-testing.c:4: volatile unsigned int tick_10ms = 0;
      0000AD E4               [12]  644 	clr	a
      0000AE F5 10            [12]  645 	mov	_tick_10ms,a
      0000B0 F5 11            [12]  646 	mov	(_tick_10ms + 1),a
                                    647 ;	pwm-testing.c:5: static unsigned int last_tick = 0;
      0000B2 F5 12            [12]  648 	mov	_last_tick,a
      0000B4 F5 13            [12]  649 	mov	(_last_tick + 1),a
                                    650 ;	pwm-testing.c:6: static uint8_t pwm_value = 0;
      0000B6 F5 14            [12]  651 	mov	_pwm_value,a
                                    652 ;	pwm-testing.c:7: static __bit going_up = 1;
                                    653 ;	assignBit
      0000B8 D2 00            [12]  654 	setb	_going_up
                                    655 	.area GSFINAL (CODE)
      0000BA 02 00 51         [24]  656 	ljmp	__sdcc_program_startup
                                    657 ;--------------------------------------------------------
                                    658 ; Home
                                    659 ;--------------------------------------------------------
                                    660 	.area HOME    (CODE)
                                    661 	.area HOME    (CODE)
      000051                        662 __sdcc_program_startup:
      000051 02 01 24         [24]  663 	ljmp	_main
                                    664 ;	return from main will return to caller
                                    665 ;--------------------------------------------------------
                                    666 ; code
                                    667 ;--------------------------------------------------------
                                    668 	.area CSEG    (CODE)
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'clock_init'
                                    671 ;------------------------------------------------------------
                                    672 ;	pwm-testing.c:13: void clock_init(void) {
                                    673 ;	-----------------------------------------
                                    674 ;	 function clock_init
                                    675 ;	-----------------------------------------
      0000BD                        676 _clock_init:
                           000007   677 	ar7 = 0x07
                           000006   678 	ar6 = 0x06
                           000005   679 	ar5 = 0x05
                           000004   680 	ar4 = 0x04
                           000003   681 	ar3 = 0x03
                           000002   682 	ar2 = 0x02
                           000001   683 	ar1 = 0x01
                           000000   684 	ar0 = 0x00
                                    685 ;	pwm-testing.c:14: SAFE_MOD = 0x55;
      0000BD 75 A1 55         [24]  686 	mov	_SAFE_MOD,#0x55
                                    687 ;	pwm-testing.c:15: SAFE_MOD = 0xAA;
      0000C0 75 A1 AA         [24]  688 	mov	_SAFE_MOD,#0xaa
                                    689 ;	pwm-testing.c:16: CLOCK_CFG |= bOSC_EN_INT;
      0000C3 43 B9 80         [24]  690 	orl	_CLOCK_CFG,#0x80
                                    691 ;	pwm-testing.c:17: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0000C6 74 F8            [12]  692 	mov	a,#0xf8
      0000C8 55 B9            [12]  693 	anl	a,_CLOCK_CFG
      0000CA 44 06            [12]  694 	orl	a,#0x06
      0000CC F5 B9            [12]  695 	mov	_CLOCK_CFG,a
                                    696 ;	pwm-testing.c:18: SAFE_MOD = 0x00;
      0000CE 75 A1 00         [24]  697 	mov	_SAFE_MOD,#0x00
                                    698 ;	pwm-testing.c:19: }
      0000D1 22               [24]  699 	ret
                                    700 ;------------------------------------------------------------
                                    701 ;Allocation info for local variables in function 'timer0_ISR'
                                    702 ;------------------------------------------------------------
                                    703 ;	pwm-testing.c:21: void timer0_ISR(void) __interrupt(1) __using(1) {
                                    704 ;	-----------------------------------------
                                    705 ;	 function timer0_ISR
                                    706 ;	-----------------------------------------
      0000D2                        707 _timer0_ISR:
                           00000F   708 	ar7 = 0x0f
                           00000E   709 	ar6 = 0x0e
                           00000D   710 	ar5 = 0x0d
                           00000C   711 	ar4 = 0x0c
                           00000B   712 	ar3 = 0x0b
                           00000A   713 	ar2 = 0x0a
                           000009   714 	ar1 = 0x09
                           000008   715 	ar0 = 0x08
      0000D2 C0 E0            [24]  716 	push	acc
      0000D4 C0 D0            [24]  717 	push	psw
      0000D6 75 D0 08         [24]  718 	mov	psw,#0x08
                                    719 ;	pwm-testing.c:22: TF0 = 0;
                                    720 ;	assignBit
      0000D9 C2 8D            [12]  721 	clr	_TF0
                                    722 ;	pwm-testing.c:23: TH0 = 0xB1;
      0000DB 75 8C B1         [24]  723 	mov	_TH0,#0xb1
                                    724 ;	pwm-testing.c:24: TL0 = 0xE0;
      0000DE 75 8A E0         [24]  725 	mov	_TL0,#0xe0
                                    726 ;	pwm-testing.c:25: tick_10ms++;
      0000E1 AE 10            [24]  727 	mov	r6,_tick_10ms
      0000E3 AF 11            [24]  728 	mov	r7,(_tick_10ms + 1)
      0000E5 74 01            [12]  729 	mov	a,#0x01
      0000E7 2E               [12]  730 	add	a, r6
      0000E8 F5 10            [12]  731 	mov	_tick_10ms,a
      0000EA E4               [12]  732 	clr	a
      0000EB 3F               [12]  733 	addc	a, r7
      0000EC F5 11            [12]  734 	mov	(_tick_10ms + 1),a
                                    735 ;	pwm-testing.c:26: }
      0000EE D0 D0            [24]  736 	pop	psw
      0000F0 D0 E0            [24]  737 	pop	acc
      0000F2 32               [24]  738 	reti
                                    739 ;	eliminated unneeded push/pop dpl
                                    740 ;	eliminated unneeded push/pop dph
                                    741 ;	eliminated unneeded push/pop b
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'timer0_init'
                                    744 ;------------------------------------------------------------
                                    745 ;	pwm-testing.c:28: void timer0_init(void) {
                                    746 ;	-----------------------------------------
                                    747 ;	 function timer0_init
                                    748 ;	-----------------------------------------
      0000F3                        749 _timer0_init:
                           000007   750 	ar7 = 0x07
                           000006   751 	ar6 = 0x06
                           000005   752 	ar5 = 0x05
                           000004   753 	ar4 = 0x04
                           000003   754 	ar3 = 0x03
                           000002   755 	ar2 = 0x02
                           000001   756 	ar1 = 0x01
                           000000   757 	ar0 = 0x00
                                    758 ;	pwm-testing.c:29: T2MOD &= ~bTMR_CLK;
      0000F3 53 C9 7F         [24]  759 	anl	_T2MOD,#0x7f
                                    760 ;	pwm-testing.c:30: T2MOD &= ~bT0_CLK;
      0000F6 53 C9 EF         [24]  761 	anl	_T2MOD,#0xef
                                    762 ;	pwm-testing.c:31: TMOD &= ~0x03;
      0000F9 53 89 FC         [24]  763 	anl	_TMOD,#0xfc
                                    764 ;	pwm-testing.c:32: TMOD |=  0x01;
      0000FC 43 89 01         [24]  765 	orl	_TMOD,#0x01
                                    766 ;	pwm-testing.c:33: TH0 = 0xB1;
      0000FF 75 8C B1         [24]  767 	mov	_TH0,#0xb1
                                    768 ;	pwm-testing.c:34: TL0 = 0xE0;
      000102 75 8A E0         [24]  769 	mov	_TL0,#0xe0
                                    770 ;	pwm-testing.c:35: TF0 = 0;
                                    771 ;	assignBit
      000105 C2 8D            [12]  772 	clr	_TF0
                                    773 ;	pwm-testing.c:36: ET0 = 1;
                                    774 ;	assignBit
      000107 D2 A9            [12]  775 	setb	_ET0
                                    776 ;	pwm-testing.c:37: TR0 = 1;
                                    777 ;	assignBit
      000109 D2 8C            [12]  778 	setb	_TR0
                                    779 ;	pwm-testing.c:38: EA = 1;
                                    780 ;	assignBit
      00010B D2 AF            [12]  781 	setb	_EA
                                    782 ;	pwm-testing.c:39: }
      00010D 22               [24]  783 	ret
                                    784 ;------------------------------------------------------------
                                    785 ;Allocation info for local variables in function 'pwm_init'
                                    786 ;------------------------------------------------------------
                                    787 ;	pwm-testing.c:41: void pwm_init(void) {
                                    788 ;	-----------------------------------------
                                    789 ;	 function pwm_init
                                    790 ;	-----------------------------------------
      00010E                        791 _pwm_init:
                                    792 ;	pwm-testing.c:44: PIN_FUNC &= ~bPWM1_PIN_X;
      00010E 53 C6 FB         [24]  793 	anl	_PIN_FUNC,#0xfb
                                    794 ;	pwm-testing.c:46: SPI0_CTRL &= ~bS0_MOSI_OE;  // make sure MOSI output is disabled
      000111 53 FA BF         [24]  795 	anl	_SPI0_CTRL,#0xbf
                                    796 ;	pwm-testing.c:49: P1_MOD_OC &= ~(1 << 5);
      000114 53 92 DF         [24]  797 	anl	_P1_MOD_OC,#0xdf
                                    798 ;	pwm-testing.c:50: P1_DIR_PU  |=  (1 << 5);
      000117 43 93 20         [24]  799 	orl	_P1_DIR_PU,#0x20
                                    800 ;	pwm-testing.c:54: PWM_CK_SE = 0x00; // this gives 2MHz / 256 = 7812.5 Hz ≈ 7.8kHz (without any divider)
      00011A 75 9E 00         [24]  801 	mov	_PWM_CK_SE,#0x00
                                    802 ;	pwm-testing.c:58: PWM_DATA1 = 0;
      00011D 75 9C 00         [24]  803 	mov	_PWM_DATA1,#0x00
                                    804 ;	pwm-testing.c:61: PWM_CTRL = bPWM1_OUT_EN;
      000120 75 9D 04         [24]  805 	mov	_PWM_CTRL,#0x04
                                    806 ;	pwm-testing.c:62: }
      000123 22               [24]  807 	ret
                                    808 ;------------------------------------------------------------
                                    809 ;Allocation info for local variables in function 'main'
                                    810 ;------------------------------------------------------------
                                    811 ;t             Allocated to registers r6 r7 
                                    812 ;------------------------------------------------------------
                                    813 ;	pwm-testing.c:64: void main(void) {
                                    814 ;	-----------------------------------------
                                    815 ;	 function main
                                    816 ;	-----------------------------------------
      000124                        817 _main:
                                    818 ;	pwm-testing.c:65: clock_init();
      000124 12 00 BD         [24]  819 	lcall	_clock_init
                                    820 ;	pwm-testing.c:66: timer0_init();
      000127 12 00 F3         [24]  821 	lcall	_timer0_init
                                    822 ;	pwm-testing.c:67: pwm_init();
      00012A 12 01 0E         [24]  823 	lcall	_pwm_init
                                    824 ;	pwm-testing.c:69: while (1) {
      00012D                        825 00113$:
                                    826 ;	pwm-testing.c:71: EA = 0;
                                    827 ;	assignBit
      00012D C2 AF            [12]  828 	clr	_EA
                                    829 ;	pwm-testing.c:72: t = tick_10ms;
      00012F AE 10            [24]  830 	mov	r6,_tick_10ms
      000131 AF 11            [24]  831 	mov	r7,(_tick_10ms + 1)
                                    832 ;	pwm-testing.c:73: EA = 1;
                                    833 ;	assignBit
      000133 D2 AF            [12]  834 	setb	_EA
                                    835 ;	pwm-testing.c:76: if ((t - last_tick) >= 1) {
      000135 EE               [12]  836 	mov	a,r6
      000136 C3               [12]  837 	clr	c
      000137 95 12            [12]  838 	subb	a,_last_tick
      000139 FC               [12]  839 	mov	r4,a
      00013A EF               [12]  840 	mov	a,r7
      00013B 95 13            [12]  841 	subb	a,(_last_tick + 1)
      00013D FD               [12]  842 	mov	r5,a
      00013E C3               [12]  843 	clr	c
      00013F EC               [12]  844 	mov	a,r4
      000140 94 01            [12]  845 	subb	a,#0x01
      000142 ED               [12]  846 	mov	a,r5
      000143 94 00            [12]  847 	subb	a,#0x00
      000145 40 E6            [24]  848 	jc	00113$
                                    849 ;	pwm-testing.c:77: last_tick = t;
      000147 8E 12            [24]  850 	mov	_last_tick,r6
      000149 8F 13            [24]  851 	mov	(_last_tick + 1),r7
                                    852 ;	pwm-testing.c:79: if (going_up) {
      00014B 30 00 14         [24]  853 	jnb	_going_up,00108$
                                    854 ;	pwm-testing.c:80: if (pwm_value >= 252) {
      00014E 74 04            [12]  855 	mov	a,#0x100 - 0xfc
      000150 25 14            [12]  856 	add	a,_pwm_value
      000152 50 07            [24]  857 	jnc	00102$
                                    858 ;	pwm-testing.c:81: pwm_value = 255;
      000154 75 14 FF         [24]  859 	mov	_pwm_value,#0xff
                                    860 ;	pwm-testing.c:82: going_up = 0;
                                    861 ;	assignBit
      000157 C2 00            [12]  862 	clr	_going_up
      000159 80 19            [24]  863 	sjmp	00109$
      00015B                        864 00102$:
                                    865 ;	pwm-testing.c:84: pwm_value += 1;
      00015B E5 14            [12]  866 	mov	a,_pwm_value
      00015D 04               [12]  867 	inc	a
      00015E F5 14            [12]  868 	mov	_pwm_value,a
      000160 80 12            [24]  869 	sjmp	00109$
      000162                        870 00108$:
                                    871 ;	pwm-testing.c:87: if (pwm_value <= 3) {
      000162 E5 14            [12]  872 	mov	a,_pwm_value
      000164 24 FC            [12]  873 	add	a,#0xff - 0x03
      000166 40 07            [24]  874 	jc	00105$
                                    875 ;	pwm-testing.c:88: pwm_value = 0;
      000168 75 14 00         [24]  876 	mov	_pwm_value,#0x00
                                    877 ;	pwm-testing.c:89: going_up = 1;
                                    878 ;	assignBit
      00016B D2 00            [12]  879 	setb	_going_up
      00016D 80 05            [24]  880 	sjmp	00109$
      00016F                        881 00105$:
                                    882 ;	pwm-testing.c:91: pwm_value -= 1;
      00016F E5 14            [12]  883 	mov	a,_pwm_value
      000171 14               [12]  884 	dec	a
      000172 F5 14            [12]  885 	mov	_pwm_value,a
      000174                        886 00109$:
                                    887 ;	pwm-testing.c:96: PWM_DATA1 = pwm_value; 
      000174 85 14 9C         [24]  888 	mov	_PWM_DATA1,_pwm_value
                                    889 ;	pwm-testing.c:99: }
      000177 80 B4            [24]  890 	sjmp	00113$
                                    891 	.area CSEG    (CODE)
                                    892 	.area CONST   (CODE)
                                    893 	.area XINIT   (CODE)
                                    894 	.area CABS    (ABS,CODE)
