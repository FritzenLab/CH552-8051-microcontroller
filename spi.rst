                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UIF_BUS_RST
                                     12 	.globl _UIF_DETECT
                                     13 	.globl _UIF_TRANSFER
                                     14 	.globl _UIF_SUSPEND
                                     15 	.globl _UIF_HST_SOF
                                     16 	.globl _UIF_FIFO_OV
                                     17 	.globl _U_SIE_FREE
                                     18 	.globl _U_TOG_OK
                                     19 	.globl _U_IS_NAK
                                     20 	.globl _ADC_CHAN0
                                     21 	.globl _ADC_CHAN1
                                     22 	.globl _CMP_CHAN
                                     23 	.globl _ADC_START
                                     24 	.globl _ADC_IF
                                     25 	.globl _CMP_IF
                                     26 	.globl _CMPO
                                     27 	.globl _U1RI
                                     28 	.globl _U1TI
                                     29 	.globl _U1RB8
                                     30 	.globl _U1TB8
                                     31 	.globl _U1REN
                                     32 	.globl _U1SMOD
                                     33 	.globl _U1SM0
                                     34 	.globl _S0_R_FIFO
                                     35 	.globl _S0_T_FIFO
                                     36 	.globl _S0_FREE
                                     37 	.globl _S0_IF_BYTE
                                     38 	.globl _S0_IF_FIRST
                                     39 	.globl _S0_IF_OV
                                     40 	.globl _S0_FST_ACT
                                     41 	.globl _CP_RL2
                                     42 	.globl _C_T2
                                     43 	.globl _TR2
                                     44 	.globl _EXEN2
                                     45 	.globl _TCLK
                                     46 	.globl _RCLK
                                     47 	.globl _EXF2
                                     48 	.globl _CAP1F
                                     49 	.globl _TF2
                                     50 	.globl _RI
                                     51 	.globl _TI
                                     52 	.globl _RB8
                                     53 	.globl _TB8
                                     54 	.globl _REN
                                     55 	.globl _SM2
                                     56 	.globl _SM1
                                     57 	.globl _SM0
                                     58 	.globl _IT0
                                     59 	.globl _IE0
                                     60 	.globl _IT1
                                     61 	.globl _IE1
                                     62 	.globl _TR0
                                     63 	.globl _TF0
                                     64 	.globl _TR1
                                     65 	.globl _TF1
                                     66 	.globl _RXD
                                     67 	.globl _PWM1_
                                     68 	.globl _TXD
                                     69 	.globl _PWM2_
                                     70 	.globl _AIN3
                                     71 	.globl _VBUS1
                                     72 	.globl _INT0
                                     73 	.globl _TXD1_
                                     74 	.globl _INT1
                                     75 	.globl _T0
                                     76 	.globl _RXD1_
                                     77 	.globl _PWM2
                                     78 	.globl _T1
                                     79 	.globl _UDP
                                     80 	.globl _UDM
                                     81 	.globl _TIN0
                                     82 	.globl _CAP1
                                     83 	.globl _T2
                                     84 	.globl _AIN0
                                     85 	.globl _VBUS2
                                     86 	.globl _TIN1
                                     87 	.globl _CAP2
                                     88 	.globl _T2EX
                                     89 	.globl _RXD_
                                     90 	.globl _TXD_
                                     91 	.globl _AIN1
                                     92 	.globl _UCC1
                                     93 	.globl _TIN2
                                     94 	.globl _SCS
                                     95 	.globl _CAP1_
                                     96 	.globl _T2_
                                     97 	.globl _AIN2
                                     98 	.globl _UCC2
                                     99 	.globl _TIN3
                                    100 	.globl _PWM1
                                    101 	.globl _MOSI
                                    102 	.globl _TIN4
                                    103 	.globl _RXD1
                                    104 	.globl _MISO
                                    105 	.globl _TIN5
                                    106 	.globl _TXD1
                                    107 	.globl _SCK
                                    108 	.globl _IE_SPI0
                                    109 	.globl _IE_TKEY
                                    110 	.globl _IE_USB
                                    111 	.globl _IE_ADC
                                    112 	.globl _IE_UART1
                                    113 	.globl _IE_PWMX
                                    114 	.globl _IE_GPIO
                                    115 	.globl _IE_WDOG
                                    116 	.globl _PX0
                                    117 	.globl _PT0
                                    118 	.globl _PX1
                                    119 	.globl _PT1
                                    120 	.globl _PS
                                    121 	.globl _PT2
                                    122 	.globl _PL_FLAG
                                    123 	.globl _PH_FLAG
                                    124 	.globl _EX0
                                    125 	.globl _ET0
                                    126 	.globl _EX1
                                    127 	.globl _ET1
                                    128 	.globl _ES
                                    129 	.globl _ET2
                                    130 	.globl _E_DIS
                                    131 	.globl _EA
                                    132 	.globl _P
                                    133 	.globl _F1
                                    134 	.globl _OV
                                    135 	.globl _RS0
                                    136 	.globl _RS1
                                    137 	.globl _F0
                                    138 	.globl _AC
                                    139 	.globl _CY
                                    140 	.globl _UEP1_DMA_H
                                    141 	.globl _UEP1_DMA_L
                                    142 	.globl _UEP1_DMA
                                    143 	.globl _UEP0_DMA_H
                                    144 	.globl _UEP0_DMA_L
                                    145 	.globl _UEP0_DMA
                                    146 	.globl _UEP2_3_MOD
                                    147 	.globl _UEP4_1_MOD
                                    148 	.globl _UEP3_DMA_H
                                    149 	.globl _UEP3_DMA_L
                                    150 	.globl _UEP3_DMA
                                    151 	.globl _UEP2_DMA_H
                                    152 	.globl _UEP2_DMA_L
                                    153 	.globl _UEP2_DMA
                                    154 	.globl _USB_DEV_AD
                                    155 	.globl _USB_CTRL
                                    156 	.globl _USB_INT_EN
                                    157 	.globl _UEP4_T_LEN
                                    158 	.globl _UEP4_CTRL
                                    159 	.globl _UEP0_T_LEN
                                    160 	.globl _UEP0_CTRL
                                    161 	.globl _USB_RX_LEN
                                    162 	.globl _USB_MIS_ST
                                    163 	.globl _USB_INT_ST
                                    164 	.globl _USB_INT_FG
                                    165 	.globl _UEP3_T_LEN
                                    166 	.globl _UEP3_CTRL
                                    167 	.globl _UEP2_T_LEN
                                    168 	.globl _UEP2_CTRL
                                    169 	.globl _UEP1_T_LEN
                                    170 	.globl _UEP1_CTRL
                                    171 	.globl _UDEV_CTRL
                                    172 	.globl _USB_C_CTRL
                                    173 	.globl _TKEY_DATH
                                    174 	.globl _TKEY_DATL
                                    175 	.globl _TKEY_DAT
                                    176 	.globl _TKEY_CTRL
                                    177 	.globl _ADC_DATA
                                    178 	.globl _ADC_CFG
                                    179 	.globl _ADC_CTRL
                                    180 	.globl _SBAUD1
                                    181 	.globl _SBUF1
                                    182 	.globl _SCON1
                                    183 	.globl _SPI0_SETUP
                                    184 	.globl _SPI0_CK_SE
                                    185 	.globl _SPI0_CTRL
                                    186 	.globl _SPI0_DATA
                                    187 	.globl _SPI0_STAT
                                    188 	.globl _PWM_CK_SE
                                    189 	.globl _PWM_CTRL
                                    190 	.globl _PWM_DATA1
                                    191 	.globl _PWM_DATA2
                                    192 	.globl _T2CAP1H
                                    193 	.globl _T2CAP1L
                                    194 	.globl _T2CAP1
                                    195 	.globl _TH2
                                    196 	.globl _TL2
                                    197 	.globl _T2COUNT
                                    198 	.globl _RCAP2H
                                    199 	.globl _RCAP2L
                                    200 	.globl _RCAP2
                                    201 	.globl _T2MOD
                                    202 	.globl _T2CON
                                    203 	.globl _SBUF
                                    204 	.globl _SCON
                                    205 	.globl _TH1
                                    206 	.globl _TH0
                                    207 	.globl _TL1
                                    208 	.globl _TL0
                                    209 	.globl _TMOD
                                    210 	.globl _TCON
                                    211 	.globl _XBUS_AUX
                                    212 	.globl _PIN_FUNC
                                    213 	.globl _P3_DIR_PU
                                    214 	.globl _P3_MOD_OC
                                    215 	.globl _P3
                                    216 	.globl _P2
                                    217 	.globl _P1_DIR_PU
                                    218 	.globl _P1_MOD_OC
                                    219 	.globl _P1
                                    220 	.globl _ROM_CTRL
                                    221 	.globl _ROM_DATA_H
                                    222 	.globl _ROM_DATA_L
                                    223 	.globl _ROM_DATA
                                    224 	.globl _ROM_ADDR_H
                                    225 	.globl _ROM_ADDR_L
                                    226 	.globl _ROM_ADDR
                                    227 	.globl _GPIO_IE
                                    228 	.globl _IP_EX
                                    229 	.globl _IE_EX
                                    230 	.globl _IP
                                    231 	.globl _IE
                                    232 	.globl _WDOG_COUNT
                                    233 	.globl _RESET_KEEP
                                    234 	.globl _WAKE_CTRL
                                    235 	.globl _CLOCK_CFG
                                    236 	.globl _PCON
                                    237 	.globl _GLOBAL_CFG
                                    238 	.globl _SAFE_MOD
                                    239 	.globl _DPH
                                    240 	.globl _DPL
                                    241 	.globl _SP
                                    242 	.globl _B
                                    243 	.globl _ACC
                                    244 	.globl _PSW
                                    245 	.globl _SPIMasterModeSet
                                    246 	.globl _CH554SPIInterruptInit
                                    247 	.globl _CH554SPIMasterWrite
                                    248 	.globl _CH554SPIMasterRead
                                    249 	.globl _SPISlvModeSet
                                    250 	.globl _CH554SPISlvWrite
                                    251 	.globl _CH554SPISlvRead
                                    252 ;--------------------------------------------------------
                                    253 ; special function registers
                                    254 ;--------------------------------------------------------
                                    255 	.area RSEG    (ABS,DATA)
      000000                        256 	.org 0x0000
                           0000D0   257 _PSW	=	0x00d0
                           0000E0   258 _ACC	=	0x00e0
                           0000F0   259 _B	=	0x00f0
                           000081   260 _SP	=	0x0081
                           000082   261 _DPL	=	0x0082
                           000083   262 _DPH	=	0x0083
                           0000A1   263 _SAFE_MOD	=	0x00a1
                           0000B1   264 _GLOBAL_CFG	=	0x00b1
                           000087   265 _PCON	=	0x0087
                           0000B9   266 _CLOCK_CFG	=	0x00b9
                           0000A9   267 _WAKE_CTRL	=	0x00a9
                           0000FE   268 _RESET_KEEP	=	0x00fe
                           0000FF   269 _WDOG_COUNT	=	0x00ff
                           0000A8   270 _IE	=	0x00a8
                           0000B8   271 _IP	=	0x00b8
                           0000E8   272 _IE_EX	=	0x00e8
                           0000E9   273 _IP_EX	=	0x00e9
                           0000C7   274 _GPIO_IE	=	0x00c7
                           008584   275 _ROM_ADDR	=	0x8584
                           000084   276 _ROM_ADDR_L	=	0x0084
                           000085   277 _ROM_ADDR_H	=	0x0085
                           008F8E   278 _ROM_DATA	=	0x8f8e
                           00008E   279 _ROM_DATA_L	=	0x008e
                           00008F   280 _ROM_DATA_H	=	0x008f
                           000086   281 _ROM_CTRL	=	0x0086
                           000090   282 _P1	=	0x0090
                           000092   283 _P1_MOD_OC	=	0x0092
                           000093   284 _P1_DIR_PU	=	0x0093
                           0000A0   285 _P2	=	0x00a0
                           0000B0   286 _P3	=	0x00b0
                           000096   287 _P3_MOD_OC	=	0x0096
                           000097   288 _P3_DIR_PU	=	0x0097
                           0000C6   289 _PIN_FUNC	=	0x00c6
                           0000A2   290 _XBUS_AUX	=	0x00a2
                           000088   291 _TCON	=	0x0088
                           000089   292 _TMOD	=	0x0089
                           00008A   293 _TL0	=	0x008a
                           00008B   294 _TL1	=	0x008b
                           00008C   295 _TH0	=	0x008c
                           00008D   296 _TH1	=	0x008d
                           000098   297 _SCON	=	0x0098
                           000099   298 _SBUF	=	0x0099
                           0000C8   299 _T2CON	=	0x00c8
                           0000C9   300 _T2MOD	=	0x00c9
                           00CBCA   301 _RCAP2	=	0xcbca
                           0000CA   302 _RCAP2L	=	0x00ca
                           0000CB   303 _RCAP2H	=	0x00cb
                           00CDCC   304 _T2COUNT	=	0xcdcc
                           0000CC   305 _TL2	=	0x00cc
                           0000CD   306 _TH2	=	0x00cd
                           00CFCE   307 _T2CAP1	=	0xcfce
                           0000CE   308 _T2CAP1L	=	0x00ce
                           0000CF   309 _T2CAP1H	=	0x00cf
                           00009B   310 _PWM_DATA2	=	0x009b
                           00009C   311 _PWM_DATA1	=	0x009c
                           00009D   312 _PWM_CTRL	=	0x009d
                           00009E   313 _PWM_CK_SE	=	0x009e
                           0000F8   314 _SPI0_STAT	=	0x00f8
                           0000F9   315 _SPI0_DATA	=	0x00f9
                           0000FA   316 _SPI0_CTRL	=	0x00fa
                           0000FB   317 _SPI0_CK_SE	=	0x00fb
                           0000FC   318 _SPI0_SETUP	=	0x00fc
                           0000C0   319 _SCON1	=	0x00c0
                           0000C1   320 _SBUF1	=	0x00c1
                           0000C2   321 _SBAUD1	=	0x00c2
                           000080   322 _ADC_CTRL	=	0x0080
                           00009A   323 _ADC_CFG	=	0x009a
                           00009F   324 _ADC_DATA	=	0x009f
                           0000C3   325 _TKEY_CTRL	=	0x00c3
                           00C5C4   326 _TKEY_DAT	=	0xc5c4
                           0000C4   327 _TKEY_DATL	=	0x00c4
                           0000C5   328 _TKEY_DATH	=	0x00c5
                           000091   329 _USB_C_CTRL	=	0x0091
                           0000D1   330 _UDEV_CTRL	=	0x00d1
                           0000D2   331 _UEP1_CTRL	=	0x00d2
                           0000D3   332 _UEP1_T_LEN	=	0x00d3
                           0000D4   333 _UEP2_CTRL	=	0x00d4
                           0000D5   334 _UEP2_T_LEN	=	0x00d5
                           0000D6   335 _UEP3_CTRL	=	0x00d6
                           0000D7   336 _UEP3_T_LEN	=	0x00d7
                           0000D8   337 _USB_INT_FG	=	0x00d8
                           0000D9   338 _USB_INT_ST	=	0x00d9
                           0000DA   339 _USB_MIS_ST	=	0x00da
                           0000DB   340 _USB_RX_LEN	=	0x00db
                           0000DC   341 _UEP0_CTRL	=	0x00dc
                           0000DD   342 _UEP0_T_LEN	=	0x00dd
                           0000DE   343 _UEP4_CTRL	=	0x00de
                           0000DF   344 _UEP4_T_LEN	=	0x00df
                           0000E1   345 _USB_INT_EN	=	0x00e1
                           0000E2   346 _USB_CTRL	=	0x00e2
                           0000E3   347 _USB_DEV_AD	=	0x00e3
                           00E5E4   348 _UEP2_DMA	=	0xe5e4
                           0000E4   349 _UEP2_DMA_L	=	0x00e4
                           0000E5   350 _UEP2_DMA_H	=	0x00e5
                           00E7E6   351 _UEP3_DMA	=	0xe7e6
                           0000E6   352 _UEP3_DMA_L	=	0x00e6
                           0000E7   353 _UEP3_DMA_H	=	0x00e7
                           0000EA   354 _UEP4_1_MOD	=	0x00ea
                           0000EB   355 _UEP2_3_MOD	=	0x00eb
                           00EDEC   356 _UEP0_DMA	=	0xedec
                           0000EC   357 _UEP0_DMA_L	=	0x00ec
                           0000ED   358 _UEP0_DMA_H	=	0x00ed
                           00EFEE   359 _UEP1_DMA	=	0xefee
                           0000EE   360 _UEP1_DMA_L	=	0x00ee
                           0000EF   361 _UEP1_DMA_H	=	0x00ef
                                    362 ;--------------------------------------------------------
                                    363 ; special function bits
                                    364 ;--------------------------------------------------------
                                    365 	.area RSEG    (ABS,DATA)
      000000                        366 	.org 0x0000
                           0000D7   367 _CY	=	0x00d7
                           0000D6   368 _AC	=	0x00d6
                           0000D5   369 _F0	=	0x00d5
                           0000D4   370 _RS1	=	0x00d4
                           0000D3   371 _RS0	=	0x00d3
                           0000D2   372 _OV	=	0x00d2
                           0000D1   373 _F1	=	0x00d1
                           0000D0   374 _P	=	0x00d0
                           0000AF   375 _EA	=	0x00af
                           0000AE   376 _E_DIS	=	0x00ae
                           0000AD   377 _ET2	=	0x00ad
                           0000AC   378 _ES	=	0x00ac
                           0000AB   379 _ET1	=	0x00ab
                           0000AA   380 _EX1	=	0x00aa
                           0000A9   381 _ET0	=	0x00a9
                           0000A8   382 _EX0	=	0x00a8
                           0000BF   383 _PH_FLAG	=	0x00bf
                           0000BE   384 _PL_FLAG	=	0x00be
                           0000BD   385 _PT2	=	0x00bd
                           0000BC   386 _PS	=	0x00bc
                           0000BB   387 _PT1	=	0x00bb
                           0000BA   388 _PX1	=	0x00ba
                           0000B9   389 _PT0	=	0x00b9
                           0000B8   390 _PX0	=	0x00b8
                           0000EF   391 _IE_WDOG	=	0x00ef
                           0000EE   392 _IE_GPIO	=	0x00ee
                           0000ED   393 _IE_PWMX	=	0x00ed
                           0000EC   394 _IE_UART1	=	0x00ec
                           0000EB   395 _IE_ADC	=	0x00eb
                           0000EA   396 _IE_USB	=	0x00ea
                           0000E9   397 _IE_TKEY	=	0x00e9
                           0000E8   398 _IE_SPI0	=	0x00e8
                           000097   399 _SCK	=	0x0097
                           000097   400 _TXD1	=	0x0097
                           000097   401 _TIN5	=	0x0097
                           000096   402 _MISO	=	0x0096
                           000096   403 _RXD1	=	0x0096
                           000096   404 _TIN4	=	0x0096
                           000095   405 _MOSI	=	0x0095
                           000095   406 _PWM1	=	0x0095
                           000095   407 _TIN3	=	0x0095
                           000095   408 _UCC2	=	0x0095
                           000095   409 _AIN2	=	0x0095
                           000094   410 _T2_	=	0x0094
                           000094   411 _CAP1_	=	0x0094
                           000094   412 _SCS	=	0x0094
                           000094   413 _TIN2	=	0x0094
                           000094   414 _UCC1	=	0x0094
                           000094   415 _AIN1	=	0x0094
                           000093   416 _TXD_	=	0x0093
                           000092   417 _RXD_	=	0x0092
                           000091   418 _T2EX	=	0x0091
                           000091   419 _CAP2	=	0x0091
                           000091   420 _TIN1	=	0x0091
                           000091   421 _VBUS2	=	0x0091
                           000091   422 _AIN0	=	0x0091
                           000090   423 _T2	=	0x0090
                           000090   424 _CAP1	=	0x0090
                           000090   425 _TIN0	=	0x0090
                           0000B7   426 _UDM	=	0x00b7
                           0000B6   427 _UDP	=	0x00b6
                           0000B5   428 _T1	=	0x00b5
                           0000B4   429 _PWM2	=	0x00b4
                           0000B4   430 _RXD1_	=	0x00b4
                           0000B4   431 _T0	=	0x00b4
                           0000B3   432 _INT1	=	0x00b3
                           0000B2   433 _TXD1_	=	0x00b2
                           0000B2   434 _INT0	=	0x00b2
                           0000B2   435 _VBUS1	=	0x00b2
                           0000B2   436 _AIN3	=	0x00b2
                           0000B1   437 _PWM2_	=	0x00b1
                           0000B1   438 _TXD	=	0x00b1
                           0000B0   439 _PWM1_	=	0x00b0
                           0000B0   440 _RXD	=	0x00b0
                           00008F   441 _TF1	=	0x008f
                           00008E   442 _TR1	=	0x008e
                           00008D   443 _TF0	=	0x008d
                           00008C   444 _TR0	=	0x008c
                           00008B   445 _IE1	=	0x008b
                           00008A   446 _IT1	=	0x008a
                           000089   447 _IE0	=	0x0089
                           000088   448 _IT0	=	0x0088
                           00009F   449 _SM0	=	0x009f
                           00009E   450 _SM1	=	0x009e
                           00009D   451 _SM2	=	0x009d
                           00009C   452 _REN	=	0x009c
                           00009B   453 _TB8	=	0x009b
                           00009A   454 _RB8	=	0x009a
                           000099   455 _TI	=	0x0099
                           000098   456 _RI	=	0x0098
                           0000CF   457 _TF2	=	0x00cf
                           0000CF   458 _CAP1F	=	0x00cf
                           0000CE   459 _EXF2	=	0x00ce
                           0000CD   460 _RCLK	=	0x00cd
                           0000CC   461 _TCLK	=	0x00cc
                           0000CB   462 _EXEN2	=	0x00cb
                           0000CA   463 _TR2	=	0x00ca
                           0000C9   464 _C_T2	=	0x00c9
                           0000C8   465 _CP_RL2	=	0x00c8
                           0000FF   466 _S0_FST_ACT	=	0x00ff
                           0000FE   467 _S0_IF_OV	=	0x00fe
                           0000FD   468 _S0_IF_FIRST	=	0x00fd
                           0000FC   469 _S0_IF_BYTE	=	0x00fc
                           0000FB   470 _S0_FREE	=	0x00fb
                           0000FA   471 _S0_T_FIFO	=	0x00fa
                           0000F8   472 _S0_R_FIFO	=	0x00f8
                           0000C7   473 _U1SM0	=	0x00c7
                           0000C5   474 _U1SMOD	=	0x00c5
                           0000C4   475 _U1REN	=	0x00c4
                           0000C3   476 _U1TB8	=	0x00c3
                           0000C2   477 _U1RB8	=	0x00c2
                           0000C1   478 _U1TI	=	0x00c1
                           0000C0   479 _U1RI	=	0x00c0
                           000087   480 _CMPO	=	0x0087
                           000086   481 _CMP_IF	=	0x0086
                           000085   482 _ADC_IF	=	0x0085
                           000084   483 _ADC_START	=	0x0084
                           000083   484 _CMP_CHAN	=	0x0083
                           000081   485 _ADC_CHAN1	=	0x0081
                           000080   486 _ADC_CHAN0	=	0x0080
                           0000DF   487 _U_IS_NAK	=	0x00df
                           0000DE   488 _U_TOG_OK	=	0x00de
                           0000DD   489 _U_SIE_FREE	=	0x00dd
                           0000DC   490 _UIF_FIFO_OV	=	0x00dc
                           0000DB   491 _UIF_HST_SOF	=	0x00db
                           0000DA   492 _UIF_SUSPEND	=	0x00da
                           0000D9   493 _UIF_TRANSFER	=	0x00d9
                           0000D8   494 _UIF_DETECT	=	0x00d8
                           0000D8   495 _UIF_BUS_RST	=	0x00d8
                                    496 ;--------------------------------------------------------
                                    497 ; overlayable register banks
                                    498 ;--------------------------------------------------------
                                    499 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        500 	.ds 8
                                    501 ;--------------------------------------------------------
                                    502 ; internal ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area DSEG    (DATA)
                                    505 ;--------------------------------------------------------
                                    506 ; overlayable items in internal ram
                                    507 ;--------------------------------------------------------
                                    508 ;--------------------------------------------------------
                                    509 ; indirectly addressable internal ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area ISEG    (DATA)
                                    512 ;--------------------------------------------------------
                                    513 ; absolute internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area IABS    (ABS,DATA)
                                    516 	.area IABS    (ABS,DATA)
                                    517 ;--------------------------------------------------------
                                    518 ; bit data
                                    519 ;--------------------------------------------------------
                                    520 	.area BSEG    (BIT)
                                    521 ;--------------------------------------------------------
                                    522 ; paged external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area PSEG    (PAG,XDATA)
                                    525 ;--------------------------------------------------------
                                    526 ; uninitialized external ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XSEG    (XDATA)
                                    529 ;--------------------------------------------------------
                                    530 ; absolute external ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area XABS    (ABS,XDATA)
                                    533 ;--------------------------------------------------------
                                    534 ; initialized external ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XISEG   (XDATA)
                                    537 	.area HOME    (CODE)
                                    538 	.area GSINIT0 (CODE)
                                    539 	.area GSINIT1 (CODE)
                                    540 	.area GSINIT2 (CODE)
                                    541 	.area GSINIT3 (CODE)
                                    542 	.area GSINIT4 (CODE)
                                    543 	.area GSINIT5 (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.area GSFINAL (CODE)
                                    546 	.area CSEG    (CODE)
                                    547 ;--------------------------------------------------------
                                    548 ; global & static initialisations
                                    549 ;--------------------------------------------------------
                                    550 	.area HOME    (CODE)
                                    551 	.area GSINIT  (CODE)
                                    552 	.area GSFINAL (CODE)
                                    553 	.area GSINIT  (CODE)
                                    554 ;--------------------------------------------------------
                                    555 ; Home
                                    556 ;--------------------------------------------------------
                                    557 	.area HOME    (CODE)
                                    558 	.area HOME    (CODE)
                                    559 ;--------------------------------------------------------
                                    560 ; code
                                    561 ;--------------------------------------------------------
                                    562 	.area CSEG    (CODE)
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'SPIMasterModeSet'
                                    565 ;------------------------------------------------------------
                                    566 ;mode          Allocated to registers r7 
                                    567 ;------------------------------------------------------------
                                    568 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:24: void SPIMasterModeSet(uint8_t mode)
                                    569 ;	-----------------------------------------
                                    570 ;	 function SPIMasterModeSet
                                    571 ;	-----------------------------------------
      000A7C                        572 _SPIMasterModeSet:
                           000007   573 	ar7 = 0x07
                           000006   574 	ar6 = 0x06
                           000005   575 	ar5 = 0x05
                           000004   576 	ar4 = 0x04
                           000003   577 	ar3 = 0x03
                           000002   578 	ar2 = 0x02
                           000001   579 	ar1 = 0x01
                           000000   580 	ar0 = 0x00
      000A7C AF 82            [24]  581 	mov	r7, dpl
                                    582 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:26: SPI0_SETUP = 0;                                                           //Master模式,高位在前
      000A7E 75 FC 00         [24]  583 	mov	_SPI0_SETUP,#0x00
                                    584 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:27: if(mode == 0){
      000A81 EF               [12]  585 	mov	a,r7
      000A82 70 05            [24]  586 	jnz	00104$
                                    587 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:28: SPI0_CTRL = 0x60;                                                       //模式0
      000A84 75 FA 60         [24]  588 	mov	_SPI0_CTRL,#0x60
      000A87 80 06            [24]  589 	sjmp	00105$
      000A89                        590 00104$:
                                    591 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:30: else if(mode == 3){
      000A89 BF 03 03         [24]  592 	cjne	r7,#0x03,00105$
                                    593 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:31: SPI0_CTRL = 0x68;                                                       //模式3
      000A8C 75 FA 68         [24]  594 	mov	_SPI0_CTRL,#0x68
      000A8F                        595 00105$:
                                    596 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:33: P1_MOD_OC &= 0x0F;
      000A8F 53 92 0F         [24]  597 	anl	_P1_MOD_OC,#0x0f
                                    598 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:34: P1_DIR_PU |= 0xB0;                                                        //SCS,MOSI,SCK设推挽输出
      000A92 43 93 B0         [24]  599 	orl	_P1_DIR_PU,#0xb0
                                    600 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:35: P1_DIR_PU &= 0xBF;                                                        //MISO禁用上拉电阻
      000A95 53 93 BF         [24]  601 	anl	_P1_DIR_PU,#0xbf
                                    602 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:41: SPI0_CK_SE = 11;   // 1 MHz at Fsys = 24 MHz
      000A98 75 FB 0B         [24]  603 	mov	_SPI0_CK_SE,#0x0b
                                    604 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:42: }
      000A9B 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'CH554SPIInterruptInit'
                                    608 ;------------------------------------------------------------
                                    609 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:51: void CH554SPIInterruptInit()
                                    610 ;	-----------------------------------------
                                    611 ;	 function CH554SPIInterruptInit
                                    612 ;	-----------------------------------------
      000A9C                        613 _CH554SPIInterruptInit:
                                    614 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:54: SPI0_SETUP |= bS0_IE_FIFO_OV | bS0_IE_BYTE;                                //使能接收1字节中断，使能FIFO溢出中断
      000A9C 43 FC 50         [24]  615 	orl	_SPI0_SETUP,#0x50
                                    616 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:55: SPI0_CTRL |= bS0_AUTO_IF;                                                  //自动清S0_IF_BYTE中断标志
      000A9F 43 FA 01         [24]  617 	orl	_SPI0_CTRL,#0x01
                                    618 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:56: SPI0_STAT |= 0xff;                                                         //清空SPI0中断标志
      000AA2 E5 F8            [12]  619 	mov	a,_SPI0_STAT
      000AA4 75 F8 FF         [24]  620 	mov	_SPI0_STAT,#0xff
                                    621 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:60: }
      000AA7 22               [24]  622 	ret
                                    623 ;------------------------------------------------------------
                                    624 ;Allocation info for local variables in function 'CH554SPIMasterWrite'
                                    625 ;------------------------------------------------------------
                                    626 ;dat           Allocated to registers 
                                    627 ;------------------------------------------------------------
                                    628 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:69: void CH554SPIMasterWrite(uint8_t dat)
                                    629 ;	-----------------------------------------
                                    630 ;	 function CH554SPIMasterWrite
                                    631 ;	-----------------------------------------
      000AA8                        632 _CH554SPIMasterWrite:
      000AA8 85 82 F9         [24]  633 	mov	_SPI0_DATA,dpl
                                    634 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:72: while(S0_FREE == 0);													   //等待传输完成
      000AAB                        635 00101$:
      000AAB 30 FB FD         [24]  636 	jnb	_S0_FREE,00101$
                                    637 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:74: }
      000AAE 22               [24]  638 	ret
                                    639 ;------------------------------------------------------------
                                    640 ;Allocation info for local variables in function 'CH554SPIMasterRead'
                                    641 ;------------------------------------------------------------
                                    642 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:83: uint8_t CH554SPIMasterRead()
                                    643 ;	-----------------------------------------
                                    644 ;	 function CH554SPIMasterRead
                                    645 ;	-----------------------------------------
      000AAF                        646 _CH554SPIMasterRead:
                                    647 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:85: SPI0_DATA = 0xff;
      000AAF 75 F9 FF         [24]  648 	mov	_SPI0_DATA,#0xff
                                    649 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:86: while(S0_FREE == 0);
      000AB2                        650 00101$:
      000AB2 30 FB FD         [24]  651 	jnb	_S0_FREE,00101$
                                    652 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:87: return SPI0_DATA;
      000AB5 85 F9 82         [24]  653 	mov	dpl, _SPI0_DATA
                                    654 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:88: }
      000AB8 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'SPISlvModeSet'
                                    658 ;------------------------------------------------------------
                                    659 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:97: void SPISlvModeSet( )
                                    660 ;	-----------------------------------------
                                    661 ;	 function SPISlvModeSet
                                    662 ;	-----------------------------------------
      000AB9                        663 _SPISlvModeSet:
                                    664 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:99: SPI0_SETUP = 0x80;                                                        //Slv模式,高位在前
      000AB9 75 FC 80         [24]  665 	mov	_SPI0_SETUP,#0x80
                                    666 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:100: SPI0_CTRL = 0x81;                                                         //读写FIFO,自动清S0_IF_BYTE标志
      000ABC 75 FA 81         [24]  667 	mov	_SPI0_CTRL,#0x81
                                    668 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:101: P1_MOD_OC &= 0x0F;
      000ABF 53 92 0F         [24]  669 	anl	_P1_MOD_OC,#0x0f
                                    670 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:102: P1_DIR_PU &= 0x0F;                                                        //SCS,MOSI,SCK,MISO全设置浮空输入
      000AC2 53 93 0F         [24]  671 	anl	_P1_DIR_PU,#0x0f
                                    672 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:103: }
      000AC5 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'CH554SPISlvWrite'
                                    676 ;------------------------------------------------------------
                                    677 ;dat           Allocated to registers 
                                    678 ;------------------------------------------------------------
                                    679 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:112: void CH554SPISlvWrite(uint8_t dat)
                                    680 ;	-----------------------------------------
                                    681 ;	 function CH554SPISlvWrite
                                    682 ;	-----------------------------------------
      000AC6                        683 _CH554SPISlvWrite:
      000AC6 85 82 F9         [24]  684 	mov	_SPI0_DATA,dpl
                                    685 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:115: while(S0_IF_BYTE==0);
      000AC9                        686 00101$:
                                    687 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:116: S0_IF_BYTE = 0;
                                    688 ;	assignBit
      000AC9 10 FC 02         [24]  689 	jbc	_S0_IF_BYTE,00118$
      000ACC 80 FB            [24]  690 	sjmp	00101$
      000ACE                        691 00118$:
                                    692 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:117: }
      000ACE 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'CH554SPISlvRead'
                                    696 ;------------------------------------------------------------
                                    697 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:126: uint8_t CH554SPISlvRead()
                                    698 ;	-----------------------------------------
                                    699 ;	 function CH554SPISlvRead
                                    700 ;	-----------------------------------------
      000ACF                        701 _CH554SPISlvRead:
                                    702 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:128: while(S0_IF_BYTE==0);
      000ACF                        703 00101$:
                                    704 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:129: S0_IF_BYTE = 0;
                                    705 ;	assignBit
      000ACF 10 FC 02         [24]  706 	jbc	_S0_IF_BYTE,00118$
      000AD2 80 FB            [24]  707 	sjmp	00101$
      000AD4                        708 00118$:
                                    709 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:130: return SPI0_DATA;
      000AD4 85 F9 82         [24]  710 	mov	dpl, _SPI0_DATA
                                    711 ;	C:\Users\Clovisf\Documents\ch552\spi\spi.c:131: }
      000AD7 22               [24]  712 	ret
                                    713 	.area CSEG    (CODE)
                                    714 	.area CONST   (CODE)
                                    715 	.area XINIT   (CODE)
                                    716 	.area CABS    (ABS,CODE)
