                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _VoltageCMPModeInit_PARM_2
                                     12 	.globl _UIF_BUS_RST
                                     13 	.globl _UIF_DETECT
                                     14 	.globl _UIF_TRANSFER
                                     15 	.globl _UIF_SUSPEND
                                     16 	.globl _UIF_HST_SOF
                                     17 	.globl _UIF_FIFO_OV
                                     18 	.globl _U_SIE_FREE
                                     19 	.globl _U_TOG_OK
                                     20 	.globl _U_IS_NAK
                                     21 	.globl _ADC_CHAN0
                                     22 	.globl _ADC_CHAN1
                                     23 	.globl _CMP_CHAN
                                     24 	.globl _ADC_START
                                     25 	.globl _ADC_IF
                                     26 	.globl _CMP_IF
                                     27 	.globl _CMPO
                                     28 	.globl _U1RI
                                     29 	.globl _U1TI
                                     30 	.globl _U1RB8
                                     31 	.globl _U1TB8
                                     32 	.globl _U1REN
                                     33 	.globl _U1SMOD
                                     34 	.globl _U1SM0
                                     35 	.globl _S0_R_FIFO
                                     36 	.globl _S0_T_FIFO
                                     37 	.globl _S0_FREE
                                     38 	.globl _S0_IF_BYTE
                                     39 	.globl _S0_IF_FIRST
                                     40 	.globl _S0_IF_OV
                                     41 	.globl _S0_FST_ACT
                                     42 	.globl _CP_RL2
                                     43 	.globl _C_T2
                                     44 	.globl _TR2
                                     45 	.globl _EXEN2
                                     46 	.globl _TCLK
                                     47 	.globl _RCLK
                                     48 	.globl _EXF2
                                     49 	.globl _CAP1F
                                     50 	.globl _TF2
                                     51 	.globl _RI
                                     52 	.globl _TI
                                     53 	.globl _RB8
                                     54 	.globl _TB8
                                     55 	.globl _REN
                                     56 	.globl _SM2
                                     57 	.globl _SM1
                                     58 	.globl _SM0
                                     59 	.globl _IT0
                                     60 	.globl _IE0
                                     61 	.globl _IT1
                                     62 	.globl _IE1
                                     63 	.globl _TR0
                                     64 	.globl _TF0
                                     65 	.globl _TR1
                                     66 	.globl _TF1
                                     67 	.globl _RXD
                                     68 	.globl _PWM1_
                                     69 	.globl _TXD
                                     70 	.globl _PWM2_
                                     71 	.globl _AIN3
                                     72 	.globl _VBUS1
                                     73 	.globl _INT0
                                     74 	.globl _TXD1_
                                     75 	.globl _INT1
                                     76 	.globl _T0
                                     77 	.globl _RXD1_
                                     78 	.globl _PWM2
                                     79 	.globl _T1
                                     80 	.globl _UDP
                                     81 	.globl _UDM
                                     82 	.globl _TIN0
                                     83 	.globl _CAP1
                                     84 	.globl _T2
                                     85 	.globl _AIN0
                                     86 	.globl _VBUS2
                                     87 	.globl _TIN1
                                     88 	.globl _CAP2
                                     89 	.globl _T2EX
                                     90 	.globl _RXD_
                                     91 	.globl _TXD_
                                     92 	.globl _AIN1
                                     93 	.globl _UCC1
                                     94 	.globl _TIN2
                                     95 	.globl _SCS
                                     96 	.globl _CAP1_
                                     97 	.globl _T2_
                                     98 	.globl _AIN2
                                     99 	.globl _UCC2
                                    100 	.globl _TIN3
                                    101 	.globl _PWM1
                                    102 	.globl _MOSI
                                    103 	.globl _TIN4
                                    104 	.globl _RXD1
                                    105 	.globl _MISO
                                    106 	.globl _TIN5
                                    107 	.globl _TXD1
                                    108 	.globl _SCK
                                    109 	.globl _IE_SPI0
                                    110 	.globl _IE_TKEY
                                    111 	.globl _IE_USB
                                    112 	.globl _IE_ADC
                                    113 	.globl _IE_UART1
                                    114 	.globl _IE_PWMX
                                    115 	.globl _IE_GPIO
                                    116 	.globl _IE_WDOG
                                    117 	.globl _PX0
                                    118 	.globl _PT0
                                    119 	.globl _PX1
                                    120 	.globl _PT1
                                    121 	.globl _PS
                                    122 	.globl _PT2
                                    123 	.globl _PL_FLAG
                                    124 	.globl _PH_FLAG
                                    125 	.globl _EX0
                                    126 	.globl _ET0
                                    127 	.globl _EX1
                                    128 	.globl _ET1
                                    129 	.globl _ES
                                    130 	.globl _ET2
                                    131 	.globl _E_DIS
                                    132 	.globl _EA
                                    133 	.globl _P
                                    134 	.globl _F1
                                    135 	.globl _OV
                                    136 	.globl _RS0
                                    137 	.globl _RS1
                                    138 	.globl _F0
                                    139 	.globl _AC
                                    140 	.globl _CY
                                    141 	.globl _UEP1_DMA_H
                                    142 	.globl _UEP1_DMA_L
                                    143 	.globl _UEP1_DMA
                                    144 	.globl _UEP0_DMA_H
                                    145 	.globl _UEP0_DMA_L
                                    146 	.globl _UEP0_DMA
                                    147 	.globl _UEP2_3_MOD
                                    148 	.globl _UEP4_1_MOD
                                    149 	.globl _UEP3_DMA_H
                                    150 	.globl _UEP3_DMA_L
                                    151 	.globl _UEP3_DMA
                                    152 	.globl _UEP2_DMA_H
                                    153 	.globl _UEP2_DMA_L
                                    154 	.globl _UEP2_DMA
                                    155 	.globl _USB_DEV_AD
                                    156 	.globl _USB_CTRL
                                    157 	.globl _USB_INT_EN
                                    158 	.globl _UEP4_T_LEN
                                    159 	.globl _UEP4_CTRL
                                    160 	.globl _UEP0_T_LEN
                                    161 	.globl _UEP0_CTRL
                                    162 	.globl _USB_RX_LEN
                                    163 	.globl _USB_MIS_ST
                                    164 	.globl _USB_INT_ST
                                    165 	.globl _USB_INT_FG
                                    166 	.globl _UEP3_T_LEN
                                    167 	.globl _UEP3_CTRL
                                    168 	.globl _UEP2_T_LEN
                                    169 	.globl _UEP2_CTRL
                                    170 	.globl _UEP1_T_LEN
                                    171 	.globl _UEP1_CTRL
                                    172 	.globl _UDEV_CTRL
                                    173 	.globl _USB_C_CTRL
                                    174 	.globl _TKEY_DATH
                                    175 	.globl _TKEY_DATL
                                    176 	.globl _TKEY_DAT
                                    177 	.globl _TKEY_CTRL
                                    178 	.globl _ADC_DATA
                                    179 	.globl _ADC_CFG
                                    180 	.globl _ADC_CTRL
                                    181 	.globl _SBAUD1
                                    182 	.globl _SBUF1
                                    183 	.globl _SCON1
                                    184 	.globl _SPI0_SETUP
                                    185 	.globl _SPI0_CK_SE
                                    186 	.globl _SPI0_CTRL
                                    187 	.globl _SPI0_DATA
                                    188 	.globl _SPI0_STAT
                                    189 	.globl _PWM_CK_SE
                                    190 	.globl _PWM_CTRL
                                    191 	.globl _PWM_DATA1
                                    192 	.globl _PWM_DATA2
                                    193 	.globl _T2CAP1H
                                    194 	.globl _T2CAP1L
                                    195 	.globl _T2CAP1
                                    196 	.globl _TH2
                                    197 	.globl _TL2
                                    198 	.globl _T2COUNT
                                    199 	.globl _RCAP2H
                                    200 	.globl _RCAP2L
                                    201 	.globl _RCAP2
                                    202 	.globl _T2MOD
                                    203 	.globl _T2CON
                                    204 	.globl _SBUF
                                    205 	.globl _SCON
                                    206 	.globl _TH1
                                    207 	.globl _TH0
                                    208 	.globl _TL1
                                    209 	.globl _TL0
                                    210 	.globl _TMOD
                                    211 	.globl _TCON
                                    212 	.globl _XBUS_AUX
                                    213 	.globl _PIN_FUNC
                                    214 	.globl _P3_DIR_PU
                                    215 	.globl _P3_MOD_OC
                                    216 	.globl _P3
                                    217 	.globl _P2
                                    218 	.globl _P1_DIR_PU
                                    219 	.globl _P1_MOD_OC
                                    220 	.globl _P1
                                    221 	.globl _ROM_CTRL
                                    222 	.globl _ROM_DATA_H
                                    223 	.globl _ROM_DATA_L
                                    224 	.globl _ROM_DATA
                                    225 	.globl _ROM_ADDR_H
                                    226 	.globl _ROM_ADDR_L
                                    227 	.globl _ROM_ADDR
                                    228 	.globl _GPIO_IE
                                    229 	.globl _IP_EX
                                    230 	.globl _IE_EX
                                    231 	.globl _IP
                                    232 	.globl _IE
                                    233 	.globl _WDOG_COUNT
                                    234 	.globl _RESET_KEEP
                                    235 	.globl _WAKE_CTRL
                                    236 	.globl _CLOCK_CFG
                                    237 	.globl _PCON
                                    238 	.globl _GLOBAL_CFG
                                    239 	.globl _SAFE_MOD
                                    240 	.globl _DPH
                                    241 	.globl _DPL
                                    242 	.globl _SP
                                    243 	.globl _B
                                    244 	.globl _ACC
                                    245 	.globl _PSW
                                    246 	.globl _ADCInit
                                    247 	.globl _ADC_ChannelSelect
                                    248 	.globl _VoltageCMPModeInit
                                    249 ;--------------------------------------------------------
                                    250 ; special function registers
                                    251 ;--------------------------------------------------------
                                    252 	.area RSEG    (ABS,DATA)
      000000                        253 	.org 0x0000
                           0000D0   254 _PSW	=	0x00d0
                           0000E0   255 _ACC	=	0x00e0
                           0000F0   256 _B	=	0x00f0
                           000081   257 _SP	=	0x0081
                           000082   258 _DPL	=	0x0082
                           000083   259 _DPH	=	0x0083
                           0000A1   260 _SAFE_MOD	=	0x00a1
                           0000B1   261 _GLOBAL_CFG	=	0x00b1
                           000087   262 _PCON	=	0x0087
                           0000B9   263 _CLOCK_CFG	=	0x00b9
                           0000A9   264 _WAKE_CTRL	=	0x00a9
                           0000FE   265 _RESET_KEEP	=	0x00fe
                           0000FF   266 _WDOG_COUNT	=	0x00ff
                           0000A8   267 _IE	=	0x00a8
                           0000B8   268 _IP	=	0x00b8
                           0000E8   269 _IE_EX	=	0x00e8
                           0000E9   270 _IP_EX	=	0x00e9
                           0000C7   271 _GPIO_IE	=	0x00c7
                           008584   272 _ROM_ADDR	=	0x8584
                           000084   273 _ROM_ADDR_L	=	0x0084
                           000085   274 _ROM_ADDR_H	=	0x0085
                           008F8E   275 _ROM_DATA	=	0x8f8e
                           00008E   276 _ROM_DATA_L	=	0x008e
                           00008F   277 _ROM_DATA_H	=	0x008f
                           000086   278 _ROM_CTRL	=	0x0086
                           000090   279 _P1	=	0x0090
                           000092   280 _P1_MOD_OC	=	0x0092
                           000093   281 _P1_DIR_PU	=	0x0093
                           0000A0   282 _P2	=	0x00a0
                           0000B0   283 _P3	=	0x00b0
                           000096   284 _P3_MOD_OC	=	0x0096
                           000097   285 _P3_DIR_PU	=	0x0097
                           0000C6   286 _PIN_FUNC	=	0x00c6
                           0000A2   287 _XBUS_AUX	=	0x00a2
                           000088   288 _TCON	=	0x0088
                           000089   289 _TMOD	=	0x0089
                           00008A   290 _TL0	=	0x008a
                           00008B   291 _TL1	=	0x008b
                           00008C   292 _TH0	=	0x008c
                           00008D   293 _TH1	=	0x008d
                           000098   294 _SCON	=	0x0098
                           000099   295 _SBUF	=	0x0099
                           0000C8   296 _T2CON	=	0x00c8
                           0000C9   297 _T2MOD	=	0x00c9
                           00CBCA   298 _RCAP2	=	0xcbca
                           0000CA   299 _RCAP2L	=	0x00ca
                           0000CB   300 _RCAP2H	=	0x00cb
                           00CDCC   301 _T2COUNT	=	0xcdcc
                           0000CC   302 _TL2	=	0x00cc
                           0000CD   303 _TH2	=	0x00cd
                           00CFCE   304 _T2CAP1	=	0xcfce
                           0000CE   305 _T2CAP1L	=	0x00ce
                           0000CF   306 _T2CAP1H	=	0x00cf
                           00009B   307 _PWM_DATA2	=	0x009b
                           00009C   308 _PWM_DATA1	=	0x009c
                           00009D   309 _PWM_CTRL	=	0x009d
                           00009E   310 _PWM_CK_SE	=	0x009e
                           0000F8   311 _SPI0_STAT	=	0x00f8
                           0000F9   312 _SPI0_DATA	=	0x00f9
                           0000FA   313 _SPI0_CTRL	=	0x00fa
                           0000FB   314 _SPI0_CK_SE	=	0x00fb
                           0000FC   315 _SPI0_SETUP	=	0x00fc
                           0000C0   316 _SCON1	=	0x00c0
                           0000C1   317 _SBUF1	=	0x00c1
                           0000C2   318 _SBAUD1	=	0x00c2
                           000080   319 _ADC_CTRL	=	0x0080
                           00009A   320 _ADC_CFG	=	0x009a
                           00009F   321 _ADC_DATA	=	0x009f
                           0000C3   322 _TKEY_CTRL	=	0x00c3
                           00C5C4   323 _TKEY_DAT	=	0xc5c4
                           0000C4   324 _TKEY_DATL	=	0x00c4
                           0000C5   325 _TKEY_DATH	=	0x00c5
                           000091   326 _USB_C_CTRL	=	0x0091
                           0000D1   327 _UDEV_CTRL	=	0x00d1
                           0000D2   328 _UEP1_CTRL	=	0x00d2
                           0000D3   329 _UEP1_T_LEN	=	0x00d3
                           0000D4   330 _UEP2_CTRL	=	0x00d4
                           0000D5   331 _UEP2_T_LEN	=	0x00d5
                           0000D6   332 _UEP3_CTRL	=	0x00d6
                           0000D7   333 _UEP3_T_LEN	=	0x00d7
                           0000D8   334 _USB_INT_FG	=	0x00d8
                           0000D9   335 _USB_INT_ST	=	0x00d9
                           0000DA   336 _USB_MIS_ST	=	0x00da
                           0000DB   337 _USB_RX_LEN	=	0x00db
                           0000DC   338 _UEP0_CTRL	=	0x00dc
                           0000DD   339 _UEP0_T_LEN	=	0x00dd
                           0000DE   340 _UEP4_CTRL	=	0x00de
                           0000DF   341 _UEP4_T_LEN	=	0x00df
                           0000E1   342 _USB_INT_EN	=	0x00e1
                           0000E2   343 _USB_CTRL	=	0x00e2
                           0000E3   344 _USB_DEV_AD	=	0x00e3
                           00E5E4   345 _UEP2_DMA	=	0xe5e4
                           0000E4   346 _UEP2_DMA_L	=	0x00e4
                           0000E5   347 _UEP2_DMA_H	=	0x00e5
                           00E7E6   348 _UEP3_DMA	=	0xe7e6
                           0000E6   349 _UEP3_DMA_L	=	0x00e6
                           0000E7   350 _UEP3_DMA_H	=	0x00e7
                           0000EA   351 _UEP4_1_MOD	=	0x00ea
                           0000EB   352 _UEP2_3_MOD	=	0x00eb
                           00EDEC   353 _UEP0_DMA	=	0xedec
                           0000EC   354 _UEP0_DMA_L	=	0x00ec
                           0000ED   355 _UEP0_DMA_H	=	0x00ed
                           00EFEE   356 _UEP1_DMA	=	0xefee
                           0000EE   357 _UEP1_DMA_L	=	0x00ee
                           0000EF   358 _UEP1_DMA_H	=	0x00ef
                                    359 ;--------------------------------------------------------
                                    360 ; special function bits
                                    361 ;--------------------------------------------------------
                                    362 	.area RSEG    (ABS,DATA)
      000000                        363 	.org 0x0000
                           0000D7   364 _CY	=	0x00d7
                           0000D6   365 _AC	=	0x00d6
                           0000D5   366 _F0	=	0x00d5
                           0000D4   367 _RS1	=	0x00d4
                           0000D3   368 _RS0	=	0x00d3
                           0000D2   369 _OV	=	0x00d2
                           0000D1   370 _F1	=	0x00d1
                           0000D0   371 _P	=	0x00d0
                           0000AF   372 _EA	=	0x00af
                           0000AE   373 _E_DIS	=	0x00ae
                           0000AD   374 _ET2	=	0x00ad
                           0000AC   375 _ES	=	0x00ac
                           0000AB   376 _ET1	=	0x00ab
                           0000AA   377 _EX1	=	0x00aa
                           0000A9   378 _ET0	=	0x00a9
                           0000A8   379 _EX0	=	0x00a8
                           0000BF   380 _PH_FLAG	=	0x00bf
                           0000BE   381 _PL_FLAG	=	0x00be
                           0000BD   382 _PT2	=	0x00bd
                           0000BC   383 _PS	=	0x00bc
                           0000BB   384 _PT1	=	0x00bb
                           0000BA   385 _PX1	=	0x00ba
                           0000B9   386 _PT0	=	0x00b9
                           0000B8   387 _PX0	=	0x00b8
                           0000EF   388 _IE_WDOG	=	0x00ef
                           0000EE   389 _IE_GPIO	=	0x00ee
                           0000ED   390 _IE_PWMX	=	0x00ed
                           0000EC   391 _IE_UART1	=	0x00ec
                           0000EB   392 _IE_ADC	=	0x00eb
                           0000EA   393 _IE_USB	=	0x00ea
                           0000E9   394 _IE_TKEY	=	0x00e9
                           0000E8   395 _IE_SPI0	=	0x00e8
                           000097   396 _SCK	=	0x0097
                           000097   397 _TXD1	=	0x0097
                           000097   398 _TIN5	=	0x0097
                           000096   399 _MISO	=	0x0096
                           000096   400 _RXD1	=	0x0096
                           000096   401 _TIN4	=	0x0096
                           000095   402 _MOSI	=	0x0095
                           000095   403 _PWM1	=	0x0095
                           000095   404 _TIN3	=	0x0095
                           000095   405 _UCC2	=	0x0095
                           000095   406 _AIN2	=	0x0095
                           000094   407 _T2_	=	0x0094
                           000094   408 _CAP1_	=	0x0094
                           000094   409 _SCS	=	0x0094
                           000094   410 _TIN2	=	0x0094
                           000094   411 _UCC1	=	0x0094
                           000094   412 _AIN1	=	0x0094
                           000093   413 _TXD_	=	0x0093
                           000092   414 _RXD_	=	0x0092
                           000091   415 _T2EX	=	0x0091
                           000091   416 _CAP2	=	0x0091
                           000091   417 _TIN1	=	0x0091
                           000091   418 _VBUS2	=	0x0091
                           000091   419 _AIN0	=	0x0091
                           000090   420 _T2	=	0x0090
                           000090   421 _CAP1	=	0x0090
                           000090   422 _TIN0	=	0x0090
                           0000B7   423 _UDM	=	0x00b7
                           0000B6   424 _UDP	=	0x00b6
                           0000B5   425 _T1	=	0x00b5
                           0000B4   426 _PWM2	=	0x00b4
                           0000B4   427 _RXD1_	=	0x00b4
                           0000B4   428 _T0	=	0x00b4
                           0000B3   429 _INT1	=	0x00b3
                           0000B2   430 _TXD1_	=	0x00b2
                           0000B2   431 _INT0	=	0x00b2
                           0000B2   432 _VBUS1	=	0x00b2
                           0000B2   433 _AIN3	=	0x00b2
                           0000B1   434 _PWM2_	=	0x00b1
                           0000B1   435 _TXD	=	0x00b1
                           0000B0   436 _PWM1_	=	0x00b0
                           0000B0   437 _RXD	=	0x00b0
                           00008F   438 _TF1	=	0x008f
                           00008E   439 _TR1	=	0x008e
                           00008D   440 _TF0	=	0x008d
                           00008C   441 _TR0	=	0x008c
                           00008B   442 _IE1	=	0x008b
                           00008A   443 _IT1	=	0x008a
                           000089   444 _IE0	=	0x0089
                           000088   445 _IT0	=	0x0088
                           00009F   446 _SM0	=	0x009f
                           00009E   447 _SM1	=	0x009e
                           00009D   448 _SM2	=	0x009d
                           00009C   449 _REN	=	0x009c
                           00009B   450 _TB8	=	0x009b
                           00009A   451 _RB8	=	0x009a
                           000099   452 _TI	=	0x0099
                           000098   453 _RI	=	0x0098
                           0000CF   454 _TF2	=	0x00cf
                           0000CF   455 _CAP1F	=	0x00cf
                           0000CE   456 _EXF2	=	0x00ce
                           0000CD   457 _RCLK	=	0x00cd
                           0000CC   458 _TCLK	=	0x00cc
                           0000CB   459 _EXEN2	=	0x00cb
                           0000CA   460 _TR2	=	0x00ca
                           0000C9   461 _C_T2	=	0x00c9
                           0000C8   462 _CP_RL2	=	0x00c8
                           0000FF   463 _S0_FST_ACT	=	0x00ff
                           0000FE   464 _S0_IF_OV	=	0x00fe
                           0000FD   465 _S0_IF_FIRST	=	0x00fd
                           0000FC   466 _S0_IF_BYTE	=	0x00fc
                           0000FB   467 _S0_FREE	=	0x00fb
                           0000FA   468 _S0_T_FIFO	=	0x00fa
                           0000F8   469 _S0_R_FIFO	=	0x00f8
                           0000C7   470 _U1SM0	=	0x00c7
                           0000C5   471 _U1SMOD	=	0x00c5
                           0000C4   472 _U1REN	=	0x00c4
                           0000C3   473 _U1TB8	=	0x00c3
                           0000C2   474 _U1RB8	=	0x00c2
                           0000C1   475 _U1TI	=	0x00c1
                           0000C0   476 _U1RI	=	0x00c0
                           000087   477 _CMPO	=	0x0087
                           000086   478 _CMP_IF	=	0x0086
                           000085   479 _ADC_IF	=	0x0085
                           000084   480 _ADC_START	=	0x0084
                           000083   481 _CMP_CHAN	=	0x0083
                           000081   482 _ADC_CHAN1	=	0x0081
                           000080   483 _ADC_CHAN0	=	0x0080
                           0000DF   484 _U_IS_NAK	=	0x00df
                           0000DE   485 _U_TOG_OK	=	0x00de
                           0000DD   486 _U_SIE_FREE	=	0x00dd
                           0000DC   487 _UIF_FIFO_OV	=	0x00dc
                           0000DB   488 _UIF_HST_SOF	=	0x00db
                           0000DA   489 _UIF_SUSPEND	=	0x00da
                           0000D9   490 _UIF_TRANSFER	=	0x00d9
                           0000D8   491 _UIF_DETECT	=	0x00d8
                           0000D8   492 _UIF_BUS_RST	=	0x00d8
                                    493 ;--------------------------------------------------------
                                    494 ; overlayable register banks
                                    495 ;--------------------------------------------------------
                                    496 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        497 	.ds 8
                                    498 ;--------------------------------------------------------
                                    499 ; internal ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area DSEG    (DATA)
                                    502 ;--------------------------------------------------------
                                    503 ; overlayable items in internal ram
                                    504 ;--------------------------------------------------------
                                    505 	.area	OSEG    (OVR,DATA)
                                    506 	.area	OSEG    (OVR,DATA)
                                    507 	.area	OSEG    (OVR,DATA)
      000014                        508 _VoltageCMPModeInit_PARM_2:
      000014                        509 	.ds 1
                                    510 ;--------------------------------------------------------
                                    511 ; indirectly addressable internal ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area ISEG    (DATA)
                                    514 ;--------------------------------------------------------
                                    515 ; absolute internal ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area IABS    (ABS,DATA)
                                    518 	.area IABS    (ABS,DATA)
                                    519 ;--------------------------------------------------------
                                    520 ; bit data
                                    521 ;--------------------------------------------------------
                                    522 	.area BSEG    (BIT)
                                    523 ;--------------------------------------------------------
                                    524 ; paged external ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area PSEG    (PAG,XDATA)
                                    527 ;--------------------------------------------------------
                                    528 ; uninitialized external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XSEG    (XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; absolute external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XABS    (ABS,XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; initialized external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XISEG   (XDATA)
                                    539 	.area HOME    (CODE)
                                    540 	.area GSINIT0 (CODE)
                                    541 	.area GSINIT1 (CODE)
                                    542 	.area GSINIT2 (CODE)
                                    543 	.area GSINIT3 (CODE)
                                    544 	.area GSINIT4 (CODE)
                                    545 	.area GSINIT5 (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 	.area GSFINAL (CODE)
                                    548 	.area CSEG    (CODE)
                                    549 ;--------------------------------------------------------
                                    550 ; global & static initialisations
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
                                    553 	.area GSINIT  (CODE)
                                    554 	.area GSFINAL (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 ;--------------------------------------------------------
                                    557 ; Home
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
                                    560 	.area HOME    (CODE)
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'ADCInit'
                                    567 ;------------------------------------------------------------
                                    568 ;speed         Allocated to registers r7 
                                    569 ;------------------------------------------------------------
                                    570 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:27: void ADCInit(uint8_t speed)
                                    571 ;	-----------------------------------------
                                    572 ;	 function ADCInit
                                    573 ;	-----------------------------------------
      000210                        574 _ADCInit:
                           000007   575 	ar7 = 0x07
                           000006   576 	ar6 = 0x06
                           000005   577 	ar5 = 0x05
                           000004   578 	ar4 = 0x04
                           000003   579 	ar3 = 0x03
                           000002   580 	ar2 = 0x02
                           000001   581 	ar1 = 0x01
                           000000   582 	ar0 = 0x00
      000210 AF 82            [24]  583 	mov	r7, dpl
                                    584 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:29: ADC_CFG = (ADC_CFG & ~bADC_CLK) | speed;
      000212 74 FE            [12]  585 	mov	a,#0xfe
      000214 55 9A            [12]  586 	anl	a,_ADC_CFG
      000216 4F               [12]  587 	orl	a,r7
      000217 F5 9A            [12]  588 	mov	_ADC_CFG,a
                                    589 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:30: ADC_CFG |= bADC_EN;                                                        //ADC power enable
      000219 43 9A 08         [24]  590 	orl	_ADC_CFG,#0x08
                                    591 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:35: }
      00021C 22               [24]  592 	ret
                                    593 ;------------------------------------------------------------
                                    594 ;Allocation info for local variables in function 'ADC_ChannelSelect'
                                    595 ;------------------------------------------------------------
                                    596 ;ch            Allocated to registers r7 
                                    597 ;------------------------------------------------------------
                                    598 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:45: uint8_t ADC_ChannelSelect(uint8_t ch)
                                    599 ;	-----------------------------------------
                                    600 ;	 function ADC_ChannelSelect
                                    601 ;	-----------------------------------------
      00021D                        602 _ADC_ChannelSelect:
                                    603 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:47: if(ch == 0){ADC_CHAN1 =0;ADC_CHAN0=0;P1_DIR_PU &= ~bAIN0;}                 //AIN0
      00021D E5 82            [12]  604 	mov	a,dpl
      00021F FF               [12]  605 	mov	r7,a
      000220 70 09            [24]  606 	jnz	00111$
                                    607 ;	assignBit
      000222 C2 81            [12]  608 	clr	_ADC_CHAN1
                                    609 ;	assignBit
      000224 C2 80            [12]  610 	clr	_ADC_CHAN0
      000226 53 93 FD         [24]  611 	anl	_P1_DIR_PU,#0xfd
      000229 80 28            [24]  612 	sjmp	00112$
      00022B                        613 00111$:
                                    614 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:48: else if(ch == 1){ADC_CHAN1 =0;ADC_CHAN0=1;P1_DIR_PU &= ~bAIN1;}            //AIN1
      00022B BF 01 09         [24]  615 	cjne	r7,#0x01,00108$
                                    616 ;	assignBit
      00022E C2 81            [12]  617 	clr	_ADC_CHAN1
                                    618 ;	assignBit
      000230 D2 80            [12]  619 	setb	_ADC_CHAN0
      000232 53 93 EF         [24]  620 	anl	_P1_DIR_PU,#0xef
      000235 80 1C            [24]  621 	sjmp	00112$
      000237                        622 00108$:
                                    623 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:49: else if(ch == 2){ADC_CHAN1 =1;ADC_CHAN0=0;P1_DIR_PU &= ~bAIN2;}            //AIN2
      000237 BF 02 09         [24]  624 	cjne	r7,#0x02,00105$
                                    625 ;	assignBit
      00023A D2 81            [12]  626 	setb	_ADC_CHAN1
                                    627 ;	assignBit
      00023C C2 80            [12]  628 	clr	_ADC_CHAN0
      00023E 53 93 DF         [24]  629 	anl	_P1_DIR_PU,#0xdf
      000241 80 10            [24]  630 	sjmp	00112$
      000243                        631 00105$:
                                    632 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:50: else if(ch == 3){ADC_CHAN1 =1;ADC_CHAN0=1;P3_DIR_PU &= ~bAIN3;}            //AIN3
      000243 BF 03 09         [24]  633 	cjne	r7,#0x03,00102$
                                    634 ;	assignBit
      000246 D2 81            [12]  635 	setb	_ADC_CHAN1
                                    636 ;	assignBit
      000248 D2 80            [12]  637 	setb	_ADC_CHAN0
      00024A 53 97 FB         [24]  638 	anl	_P3_DIR_PU,#0xfb
      00024D 80 04            [24]  639 	sjmp	00112$
      00024F                        640 00102$:
                                    641 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:51: else return FAIL;
      00024F 75 82 FF         [24]  642 	mov	dpl, #0xff
      000252 22               [24]  643 	ret
      000253                        644 00112$:
                                    645 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:52: return SUCCESS;
      000253 75 82 01         [24]  646 	mov	dpl, #0x01
                                    647 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:53: }
      000256 22               [24]  648 	ret
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'VoltageCMPModeInit'
                                    651 ;------------------------------------------------------------
                                    652 ;re            Allocated with name '_VoltageCMPModeInit_PARM_2'
                                    653 ;fo            Allocated to registers r7 
                                    654 ;------------------------------------------------------------
                                    655 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:64: uint8_t VoltageCMPModeInit(uint8_t fo,uint8_t re)
                                    656 ;	-----------------------------------------
                                    657 ;	 function VoltageCMPModeInit
                                    658 ;	-----------------------------------------
      000257                        659 _VoltageCMPModeInit:
      000257 AF 82            [24]  660 	mov	r7, dpl
                                    661 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:66: ADC_CFG |= bCMP_EN;                                                        // level comparison power enable
      000259 43 9A 04         [24]  662 	orl	_ADC_CFG,#0x04
                                    663 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:67: if(re == 1){
      00025C 74 01            [12]  664 	mov	a,#0x01
      00025E B5 14 25         [24]  665 	cjne	a,_VoltageCMPModeInit_PARM_2,00123$
                                    666 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:68: if(fo == 0) {ADC_CHAN1 =0;ADC_CHAN0=0;CMP_CHAN =0;}                      // AIN0 and AIN1
      000261 EF               [12]  667 	mov	a,r7
      000262 70 08            [24]  668 	jnz	00108$
                                    669 ;	assignBit
      000264 C2 81            [12]  670 	clr	_ADC_CHAN1
                                    671 ;	assignBit
      000266 C2 80            [12]  672 	clr	_ADC_CHAN0
                                    673 ;	assignBit
      000268 C2 83            [12]  674 	clr	_CMP_CHAN
      00026A 80 48            [24]  675 	sjmp	00124$
      00026C                        676 00108$:
                                    677 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:69: else if(fo == 2) {ADC_CHAN1 =1;ADC_CHAN0=0;CMP_CHAN =0;}                 //AIN2 and AIN1
      00026C BF 02 08         [24]  678 	cjne	r7,#0x02,00105$
                                    679 ;	assignBit
      00026F D2 81            [12]  680 	setb	_ADC_CHAN1
                                    681 ;	assignBit
      000271 C2 80            [12]  682 	clr	_ADC_CHAN0
                                    683 ;	assignBit
      000273 C2 83            [12]  684 	clr	_CMP_CHAN
      000275 80 3D            [24]  685 	sjmp	00124$
      000277                        686 00105$:
                                    687 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:70: else if(fo == 3) {ADC_CHAN1 =1;ADC_CHAN0=1;CMP_CHAN =0; }                //AIN3 and AIN1			
      000277 BF 03 08         [24]  688 	cjne	r7,#0x03,00102$
                                    689 ;	assignBit
      00027A D2 81            [12]  690 	setb	_ADC_CHAN1
                                    691 ;	assignBit
      00027C D2 80            [12]  692 	setb	_ADC_CHAN0
                                    693 ;	assignBit
      00027E C2 83            [12]  694 	clr	_CMP_CHAN
      000280 80 32            [24]  695 	sjmp	00124$
      000282                        696 00102$:
                                    697 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:71: else return FAIL;
      000282 75 82 FF         [24]  698 	mov	dpl, #0xff
      000285 22               [24]  699 	ret
      000286                        700 00123$:
                                    701 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:73: else if(re == 3){
      000286 74 03            [12]  702 	mov	a,#0x03
      000288 B5 14 25         [24]  703 	cjne	a,_VoltageCMPModeInit_PARM_2,00120$
                                    704 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:74: if(fo == 0) {ADC_CHAN1 =0;ADC_CHAN0=0;CMP_CHAN =0;}                      //AIN0 and AIN1
      00028B EF               [12]  705 	mov	a,r7
      00028C 70 08            [24]  706 	jnz	00117$
                                    707 ;	assignBit
      00028E C2 81            [12]  708 	clr	_ADC_CHAN1
                                    709 ;	assignBit
      000290 C2 80            [12]  710 	clr	_ADC_CHAN0
                                    711 ;	assignBit
      000292 C2 83            [12]  712 	clr	_CMP_CHAN
      000294 80 1E            [24]  713 	sjmp	00124$
      000296                        714 00117$:
                                    715 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:75: else if(fo == 1) {ADC_CHAN1 =0;ADC_CHAN0=1;CMP_CHAN =0;}                 //AIN1 and AIN1
      000296 BF 01 08         [24]  716 	cjne	r7,#0x01,00114$
                                    717 ;	assignBit
      000299 C2 81            [12]  718 	clr	_ADC_CHAN1
                                    719 ;	assignBit
      00029B D2 80            [12]  720 	setb	_ADC_CHAN0
                                    721 ;	assignBit
      00029D C2 83            [12]  722 	clr	_CMP_CHAN
      00029F 80 13            [24]  723 	sjmp	00124$
      0002A1                        724 00114$:
                                    725 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:76: else if(fo == 2) {ADC_CHAN1 =1;ADC_CHAN0=0;CMP_CHAN =0;}                 //AIN2 and AIN1		
      0002A1 BF 02 08         [24]  726 	cjne	r7,#0x02,00111$
                                    727 ;	assignBit
      0002A4 D2 81            [12]  728 	setb	_ADC_CHAN1
                                    729 ;	assignBit
      0002A6 C2 80            [12]  730 	clr	_ADC_CHAN0
                                    731 ;	assignBit
      0002A8 C2 83            [12]  732 	clr	_CMP_CHAN
      0002AA 80 08            [24]  733 	sjmp	00124$
      0002AC                        734 00111$:
                                    735 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:77: else return FAIL;
      0002AC 75 82 FF         [24]  736 	mov	dpl, #0xff
      0002AF 22               [24]  737 	ret
      0002B0                        738 00120$:
                                    739 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:79: else return FAIL;
      0002B0 75 82 FF         [24]  740 	mov	dpl, #0xff
      0002B3 22               [24]  741 	ret
      0002B4                        742 00124$:
                                    743 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:85: return SUCCESS;
      0002B4 75 82 01         [24]  744 	mov	dpl, #0x01
                                    745 ;	C:\Users\Clovisf\Documents\ch552\adc\adc.c:86: }
      0002B7 22               [24]  746 	ret
                                    747 	.area CSEG    (CODE)
                                    748 	.area CONST   (CODE)
                                    749 	.area XINIT   (CODE)
                                    750 	.area CABS    (ABS,CODE)
