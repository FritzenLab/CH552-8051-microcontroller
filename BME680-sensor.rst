                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module BME680_sensor
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_init
                                     13 	.globl _clock_init
                                     14 	.globl _timer0_ISR
                                     15 	.globl _BME680_update
                                     16 	.globl _BME680_init
                                     17 	.globl _Serial_println
                                     18 	.globl _Serial_print_uint
                                     19 	.globl _Serial_print
                                     20 	.globl _Serial_begin
                                     21 	.globl _UIF_BUS_RST
                                     22 	.globl _UIF_DETECT
                                     23 	.globl _UIF_TRANSFER
                                     24 	.globl _UIF_SUSPEND
                                     25 	.globl _UIF_HST_SOF
                                     26 	.globl _UIF_FIFO_OV
                                     27 	.globl _U_SIE_FREE
                                     28 	.globl _U_TOG_OK
                                     29 	.globl _U_IS_NAK
                                     30 	.globl _ADC_CHAN0
                                     31 	.globl _ADC_CHAN1
                                     32 	.globl _CMP_CHAN
                                     33 	.globl _ADC_START
                                     34 	.globl _ADC_IF
                                     35 	.globl _CMP_IF
                                     36 	.globl _CMPO
                                     37 	.globl _U1RI
                                     38 	.globl _U1TI
                                     39 	.globl _U1RB8
                                     40 	.globl _U1TB8
                                     41 	.globl _U1REN
                                     42 	.globl _U1SMOD
                                     43 	.globl _U1SM0
                                     44 	.globl _S0_R_FIFO
                                     45 	.globl _S0_T_FIFO
                                     46 	.globl _S0_FREE
                                     47 	.globl _S0_IF_BYTE
                                     48 	.globl _S0_IF_FIRST
                                     49 	.globl _S0_IF_OV
                                     50 	.globl _S0_FST_ACT
                                     51 	.globl _CP_RL2
                                     52 	.globl _C_T2
                                     53 	.globl _TR2
                                     54 	.globl _EXEN2
                                     55 	.globl _TCLK
                                     56 	.globl _RCLK
                                     57 	.globl _EXF2
                                     58 	.globl _CAP1F
                                     59 	.globl _TF2
                                     60 	.globl _RI
                                     61 	.globl _TI
                                     62 	.globl _RB8
                                     63 	.globl _TB8
                                     64 	.globl _REN
                                     65 	.globl _SM2
                                     66 	.globl _SM1
                                     67 	.globl _SM0
                                     68 	.globl _IT0
                                     69 	.globl _IE0
                                     70 	.globl _IT1
                                     71 	.globl _IE1
                                     72 	.globl _TR0
                                     73 	.globl _TF0
                                     74 	.globl _TR1
                                     75 	.globl _TF1
                                     76 	.globl _RXD
                                     77 	.globl _PWM1_
                                     78 	.globl _TXD
                                     79 	.globl _PWM2_
                                     80 	.globl _AIN3
                                     81 	.globl _VBUS1
                                     82 	.globl _INT0
                                     83 	.globl _TXD1_
                                     84 	.globl _INT1
                                     85 	.globl _T0
                                     86 	.globl _RXD1_
                                     87 	.globl _PWM2
                                     88 	.globl _T1
                                     89 	.globl _UDP
                                     90 	.globl _UDM
                                     91 	.globl _TIN0
                                     92 	.globl _CAP1
                                     93 	.globl _T2
                                     94 	.globl _AIN0
                                     95 	.globl _VBUS2
                                     96 	.globl _TIN1
                                     97 	.globl _CAP2
                                     98 	.globl _T2EX
                                     99 	.globl _RXD_
                                    100 	.globl _TXD_
                                    101 	.globl _AIN1
                                    102 	.globl _UCC1
                                    103 	.globl _TIN2
                                    104 	.globl _SCS
                                    105 	.globl _CAP1_
                                    106 	.globl _T2_
                                    107 	.globl _AIN2
                                    108 	.globl _UCC2
                                    109 	.globl _TIN3
                                    110 	.globl _PWM1
                                    111 	.globl _MOSI
                                    112 	.globl _TIN4
                                    113 	.globl _RXD1
                                    114 	.globl _MISO
                                    115 	.globl _TIN5
                                    116 	.globl _TXD1
                                    117 	.globl _SCK
                                    118 	.globl _IE_SPI0
                                    119 	.globl _IE_TKEY
                                    120 	.globl _IE_USB
                                    121 	.globl _IE_ADC
                                    122 	.globl _IE_UART1
                                    123 	.globl _IE_PWMX
                                    124 	.globl _IE_GPIO
                                    125 	.globl _IE_WDOG
                                    126 	.globl _PX0
                                    127 	.globl _PT0
                                    128 	.globl _PX1
                                    129 	.globl _PT1
                                    130 	.globl _PS
                                    131 	.globl _PT2
                                    132 	.globl _PL_FLAG
                                    133 	.globl _PH_FLAG
                                    134 	.globl _EX0
                                    135 	.globl _ET0
                                    136 	.globl _EX1
                                    137 	.globl _ET1
                                    138 	.globl _ES
                                    139 	.globl _ET2
                                    140 	.globl _E_DIS
                                    141 	.globl _EA
                                    142 	.globl _P
                                    143 	.globl _F1
                                    144 	.globl _OV
                                    145 	.globl _RS0
                                    146 	.globl _RS1
                                    147 	.globl _F0
                                    148 	.globl _AC
                                    149 	.globl _CY
                                    150 	.globl _UEP1_DMA_H
                                    151 	.globl _UEP1_DMA_L
                                    152 	.globl _UEP1_DMA
                                    153 	.globl _UEP0_DMA_H
                                    154 	.globl _UEP0_DMA_L
                                    155 	.globl _UEP0_DMA
                                    156 	.globl _UEP2_3_MOD
                                    157 	.globl _UEP4_1_MOD
                                    158 	.globl _UEP3_DMA_H
                                    159 	.globl _UEP3_DMA_L
                                    160 	.globl _UEP3_DMA
                                    161 	.globl _UEP2_DMA_H
                                    162 	.globl _UEP2_DMA_L
                                    163 	.globl _UEP2_DMA
                                    164 	.globl _USB_DEV_AD
                                    165 	.globl _USB_CTRL
                                    166 	.globl _USB_INT_EN
                                    167 	.globl _UEP4_T_LEN
                                    168 	.globl _UEP4_CTRL
                                    169 	.globl _UEP0_T_LEN
                                    170 	.globl _UEP0_CTRL
                                    171 	.globl _USB_RX_LEN
                                    172 	.globl _USB_MIS_ST
                                    173 	.globl _USB_INT_ST
                                    174 	.globl _USB_INT_FG
                                    175 	.globl _UEP3_T_LEN
                                    176 	.globl _UEP3_CTRL
                                    177 	.globl _UEP2_T_LEN
                                    178 	.globl _UEP2_CTRL
                                    179 	.globl _UEP1_T_LEN
                                    180 	.globl _UEP1_CTRL
                                    181 	.globl _UDEV_CTRL
                                    182 	.globl _USB_C_CTRL
                                    183 	.globl _TKEY_DATH
                                    184 	.globl _TKEY_DATL
                                    185 	.globl _TKEY_DAT
                                    186 	.globl _TKEY_CTRL
                                    187 	.globl _ADC_DATA
                                    188 	.globl _ADC_CFG
                                    189 	.globl _ADC_CTRL
                                    190 	.globl _SBAUD1
                                    191 	.globl _SBUF1
                                    192 	.globl _SCON1
                                    193 	.globl _SPI0_SETUP
                                    194 	.globl _SPI0_CK_SE
                                    195 	.globl _SPI0_CTRL
                                    196 	.globl _SPI0_DATA
                                    197 	.globl _SPI0_STAT
                                    198 	.globl _PWM_CK_SE
                                    199 	.globl _PWM_CTRL
                                    200 	.globl _PWM_DATA1
                                    201 	.globl _PWM_DATA2
                                    202 	.globl _T2CAP1H
                                    203 	.globl _T2CAP1L
                                    204 	.globl _T2CAP1
                                    205 	.globl _TH2
                                    206 	.globl _TL2
                                    207 	.globl _T2COUNT
                                    208 	.globl _RCAP2H
                                    209 	.globl _RCAP2L
                                    210 	.globl _RCAP2
                                    211 	.globl _T2MOD
                                    212 	.globl _T2CON
                                    213 	.globl _SBUF
                                    214 	.globl _SCON
                                    215 	.globl _TH1
                                    216 	.globl _TH0
                                    217 	.globl _TL1
                                    218 	.globl _TL0
                                    219 	.globl _TMOD
                                    220 	.globl _TCON
                                    221 	.globl _XBUS_AUX
                                    222 	.globl _PIN_FUNC
                                    223 	.globl _P3_DIR_PU
                                    224 	.globl _P3_MOD_OC
                                    225 	.globl _P3
                                    226 	.globl _P2
                                    227 	.globl _P1_DIR_PU
                                    228 	.globl _P1_MOD_OC
                                    229 	.globl _P1
                                    230 	.globl _ROM_CTRL
                                    231 	.globl _ROM_DATA_H
                                    232 	.globl _ROM_DATA_L
                                    233 	.globl _ROM_DATA
                                    234 	.globl _ROM_ADDR_H
                                    235 	.globl _ROM_ADDR_L
                                    236 	.globl _ROM_ADDR
                                    237 	.globl _GPIO_IE
                                    238 	.globl _IP_EX
                                    239 	.globl _IE_EX
                                    240 	.globl _IP
                                    241 	.globl _IE
                                    242 	.globl _WDOG_COUNT
                                    243 	.globl _RESET_KEEP
                                    244 	.globl _WAKE_CTRL
                                    245 	.globl _CLOCK_CFG
                                    246 	.globl _PCON
                                    247 	.globl _GLOBAL_CFG
                                    248 	.globl _SAFE_MOD
                                    249 	.globl _DPH
                                    250 	.globl _DPL
                                    251 	.globl _SP
                                    252 	.globl _B
                                    253 	.globl _ACC
                                    254 	.globl _PSW
                                    255 	.globl _tick_10ms
                                    256 ;--------------------------------------------------------
                                    257 ; special function registers
                                    258 ;--------------------------------------------------------
                                    259 	.area RSEG    (ABS,DATA)
      000000                        260 	.org 0x0000
                           0000D0   261 _PSW	=	0x00d0
                           0000E0   262 _ACC	=	0x00e0
                           0000F0   263 _B	=	0x00f0
                           000081   264 _SP	=	0x0081
                           000082   265 _DPL	=	0x0082
                           000083   266 _DPH	=	0x0083
                           0000A1   267 _SAFE_MOD	=	0x00a1
                           0000B1   268 _GLOBAL_CFG	=	0x00b1
                           000087   269 _PCON	=	0x0087
                           0000B9   270 _CLOCK_CFG	=	0x00b9
                           0000A9   271 _WAKE_CTRL	=	0x00a9
                           0000FE   272 _RESET_KEEP	=	0x00fe
                           0000FF   273 _WDOG_COUNT	=	0x00ff
                           0000A8   274 _IE	=	0x00a8
                           0000B8   275 _IP	=	0x00b8
                           0000E8   276 _IE_EX	=	0x00e8
                           0000E9   277 _IP_EX	=	0x00e9
                           0000C7   278 _GPIO_IE	=	0x00c7
                           008584   279 _ROM_ADDR	=	0x8584
                           000084   280 _ROM_ADDR_L	=	0x0084
                           000085   281 _ROM_ADDR_H	=	0x0085
                           008F8E   282 _ROM_DATA	=	0x8f8e
                           00008E   283 _ROM_DATA_L	=	0x008e
                           00008F   284 _ROM_DATA_H	=	0x008f
                           000086   285 _ROM_CTRL	=	0x0086
                           000090   286 _P1	=	0x0090
                           000092   287 _P1_MOD_OC	=	0x0092
                           000093   288 _P1_DIR_PU	=	0x0093
                           0000A0   289 _P2	=	0x00a0
                           0000B0   290 _P3	=	0x00b0
                           000096   291 _P3_MOD_OC	=	0x0096
                           000097   292 _P3_DIR_PU	=	0x0097
                           0000C6   293 _PIN_FUNC	=	0x00c6
                           0000A2   294 _XBUS_AUX	=	0x00a2
                           000088   295 _TCON	=	0x0088
                           000089   296 _TMOD	=	0x0089
                           00008A   297 _TL0	=	0x008a
                           00008B   298 _TL1	=	0x008b
                           00008C   299 _TH0	=	0x008c
                           00008D   300 _TH1	=	0x008d
                           000098   301 _SCON	=	0x0098
                           000099   302 _SBUF	=	0x0099
                           0000C8   303 _T2CON	=	0x00c8
                           0000C9   304 _T2MOD	=	0x00c9
                           00CBCA   305 _RCAP2	=	0xcbca
                           0000CA   306 _RCAP2L	=	0x00ca
                           0000CB   307 _RCAP2H	=	0x00cb
                           00CDCC   308 _T2COUNT	=	0xcdcc
                           0000CC   309 _TL2	=	0x00cc
                           0000CD   310 _TH2	=	0x00cd
                           00CFCE   311 _T2CAP1	=	0xcfce
                           0000CE   312 _T2CAP1L	=	0x00ce
                           0000CF   313 _T2CAP1H	=	0x00cf
                           00009B   314 _PWM_DATA2	=	0x009b
                           00009C   315 _PWM_DATA1	=	0x009c
                           00009D   316 _PWM_CTRL	=	0x009d
                           00009E   317 _PWM_CK_SE	=	0x009e
                           0000F8   318 _SPI0_STAT	=	0x00f8
                           0000F9   319 _SPI0_DATA	=	0x00f9
                           0000FA   320 _SPI0_CTRL	=	0x00fa
                           0000FB   321 _SPI0_CK_SE	=	0x00fb
                           0000FC   322 _SPI0_SETUP	=	0x00fc
                           0000C0   323 _SCON1	=	0x00c0
                           0000C1   324 _SBUF1	=	0x00c1
                           0000C2   325 _SBAUD1	=	0x00c2
                           000080   326 _ADC_CTRL	=	0x0080
                           00009A   327 _ADC_CFG	=	0x009a
                           00009F   328 _ADC_DATA	=	0x009f
                           0000C3   329 _TKEY_CTRL	=	0x00c3
                           00C5C4   330 _TKEY_DAT	=	0xc5c4
                           0000C4   331 _TKEY_DATL	=	0x00c4
                           0000C5   332 _TKEY_DATH	=	0x00c5
                           000091   333 _USB_C_CTRL	=	0x0091
                           0000D1   334 _UDEV_CTRL	=	0x00d1
                           0000D2   335 _UEP1_CTRL	=	0x00d2
                           0000D3   336 _UEP1_T_LEN	=	0x00d3
                           0000D4   337 _UEP2_CTRL	=	0x00d4
                           0000D5   338 _UEP2_T_LEN	=	0x00d5
                           0000D6   339 _UEP3_CTRL	=	0x00d6
                           0000D7   340 _UEP3_T_LEN	=	0x00d7
                           0000D8   341 _USB_INT_FG	=	0x00d8
                           0000D9   342 _USB_INT_ST	=	0x00d9
                           0000DA   343 _USB_MIS_ST	=	0x00da
                           0000DB   344 _USB_RX_LEN	=	0x00db
                           0000DC   345 _UEP0_CTRL	=	0x00dc
                           0000DD   346 _UEP0_T_LEN	=	0x00dd
                           0000DE   347 _UEP4_CTRL	=	0x00de
                           0000DF   348 _UEP4_T_LEN	=	0x00df
                           0000E1   349 _USB_INT_EN	=	0x00e1
                           0000E2   350 _USB_CTRL	=	0x00e2
                           0000E3   351 _USB_DEV_AD	=	0x00e3
                           00E5E4   352 _UEP2_DMA	=	0xe5e4
                           0000E4   353 _UEP2_DMA_L	=	0x00e4
                           0000E5   354 _UEP2_DMA_H	=	0x00e5
                           00E7E6   355 _UEP3_DMA	=	0xe7e6
                           0000E6   356 _UEP3_DMA_L	=	0x00e6
                           0000E7   357 _UEP3_DMA_H	=	0x00e7
                           0000EA   358 _UEP4_1_MOD	=	0x00ea
                           0000EB   359 _UEP2_3_MOD	=	0x00eb
                           00EDEC   360 _UEP0_DMA	=	0xedec
                           0000EC   361 _UEP0_DMA_L	=	0x00ec
                           0000ED   362 _UEP0_DMA_H	=	0x00ed
                           00EFEE   363 _UEP1_DMA	=	0xefee
                           0000EE   364 _UEP1_DMA_L	=	0x00ee
                           0000EF   365 _UEP1_DMA_H	=	0x00ef
                                    366 ;--------------------------------------------------------
                                    367 ; special function bits
                                    368 ;--------------------------------------------------------
                                    369 	.area RSEG    (ABS,DATA)
      000000                        370 	.org 0x0000
                           0000D7   371 _CY	=	0x00d7
                           0000D6   372 _AC	=	0x00d6
                           0000D5   373 _F0	=	0x00d5
                           0000D4   374 _RS1	=	0x00d4
                           0000D3   375 _RS0	=	0x00d3
                           0000D2   376 _OV	=	0x00d2
                           0000D1   377 _F1	=	0x00d1
                           0000D0   378 _P	=	0x00d0
                           0000AF   379 _EA	=	0x00af
                           0000AE   380 _E_DIS	=	0x00ae
                           0000AD   381 _ET2	=	0x00ad
                           0000AC   382 _ES	=	0x00ac
                           0000AB   383 _ET1	=	0x00ab
                           0000AA   384 _EX1	=	0x00aa
                           0000A9   385 _ET0	=	0x00a9
                           0000A8   386 _EX0	=	0x00a8
                           0000BF   387 _PH_FLAG	=	0x00bf
                           0000BE   388 _PL_FLAG	=	0x00be
                           0000BD   389 _PT2	=	0x00bd
                           0000BC   390 _PS	=	0x00bc
                           0000BB   391 _PT1	=	0x00bb
                           0000BA   392 _PX1	=	0x00ba
                           0000B9   393 _PT0	=	0x00b9
                           0000B8   394 _PX0	=	0x00b8
                           0000EF   395 _IE_WDOG	=	0x00ef
                           0000EE   396 _IE_GPIO	=	0x00ee
                           0000ED   397 _IE_PWMX	=	0x00ed
                           0000EC   398 _IE_UART1	=	0x00ec
                           0000EB   399 _IE_ADC	=	0x00eb
                           0000EA   400 _IE_USB	=	0x00ea
                           0000E9   401 _IE_TKEY	=	0x00e9
                           0000E8   402 _IE_SPI0	=	0x00e8
                           000097   403 _SCK	=	0x0097
                           000097   404 _TXD1	=	0x0097
                           000097   405 _TIN5	=	0x0097
                           000096   406 _MISO	=	0x0096
                           000096   407 _RXD1	=	0x0096
                           000096   408 _TIN4	=	0x0096
                           000095   409 _MOSI	=	0x0095
                           000095   410 _PWM1	=	0x0095
                           000095   411 _TIN3	=	0x0095
                           000095   412 _UCC2	=	0x0095
                           000095   413 _AIN2	=	0x0095
                           000094   414 _T2_	=	0x0094
                           000094   415 _CAP1_	=	0x0094
                           000094   416 _SCS	=	0x0094
                           000094   417 _TIN2	=	0x0094
                           000094   418 _UCC1	=	0x0094
                           000094   419 _AIN1	=	0x0094
                           000093   420 _TXD_	=	0x0093
                           000092   421 _RXD_	=	0x0092
                           000091   422 _T2EX	=	0x0091
                           000091   423 _CAP2	=	0x0091
                           000091   424 _TIN1	=	0x0091
                           000091   425 _VBUS2	=	0x0091
                           000091   426 _AIN0	=	0x0091
                           000090   427 _T2	=	0x0090
                           000090   428 _CAP1	=	0x0090
                           000090   429 _TIN0	=	0x0090
                           0000B7   430 _UDM	=	0x00b7
                           0000B6   431 _UDP	=	0x00b6
                           0000B5   432 _T1	=	0x00b5
                           0000B4   433 _PWM2	=	0x00b4
                           0000B4   434 _RXD1_	=	0x00b4
                           0000B4   435 _T0	=	0x00b4
                           0000B3   436 _INT1	=	0x00b3
                           0000B2   437 _TXD1_	=	0x00b2
                           0000B2   438 _INT0	=	0x00b2
                           0000B2   439 _VBUS1	=	0x00b2
                           0000B2   440 _AIN3	=	0x00b2
                           0000B1   441 _PWM2_	=	0x00b1
                           0000B1   442 _TXD	=	0x00b1
                           0000B0   443 _PWM1_	=	0x00b0
                           0000B0   444 _RXD	=	0x00b0
                           00008F   445 _TF1	=	0x008f
                           00008E   446 _TR1	=	0x008e
                           00008D   447 _TF0	=	0x008d
                           00008C   448 _TR0	=	0x008c
                           00008B   449 _IE1	=	0x008b
                           00008A   450 _IT1	=	0x008a
                           000089   451 _IE0	=	0x0089
                           000088   452 _IT0	=	0x0088
                           00009F   453 _SM0	=	0x009f
                           00009E   454 _SM1	=	0x009e
                           00009D   455 _SM2	=	0x009d
                           00009C   456 _REN	=	0x009c
                           00009B   457 _TB8	=	0x009b
                           00009A   458 _RB8	=	0x009a
                           000099   459 _TI	=	0x0099
                           000098   460 _RI	=	0x0098
                           0000CF   461 _TF2	=	0x00cf
                           0000CF   462 _CAP1F	=	0x00cf
                           0000CE   463 _EXF2	=	0x00ce
                           0000CD   464 _RCLK	=	0x00cd
                           0000CC   465 _TCLK	=	0x00cc
                           0000CB   466 _EXEN2	=	0x00cb
                           0000CA   467 _TR2	=	0x00ca
                           0000C9   468 _C_T2	=	0x00c9
                           0000C8   469 _CP_RL2	=	0x00c8
                           0000FF   470 _S0_FST_ACT	=	0x00ff
                           0000FE   471 _S0_IF_OV	=	0x00fe
                           0000FD   472 _S0_IF_FIRST	=	0x00fd
                           0000FC   473 _S0_IF_BYTE	=	0x00fc
                           0000FB   474 _S0_FREE	=	0x00fb
                           0000FA   475 _S0_T_FIFO	=	0x00fa
                           0000F8   476 _S0_R_FIFO	=	0x00f8
                           0000C7   477 _U1SM0	=	0x00c7
                           0000C5   478 _U1SMOD	=	0x00c5
                           0000C4   479 _U1REN	=	0x00c4
                           0000C3   480 _U1TB8	=	0x00c3
                           0000C2   481 _U1RB8	=	0x00c2
                           0000C1   482 _U1TI	=	0x00c1
                           0000C0   483 _U1RI	=	0x00c0
                           000087   484 _CMPO	=	0x0087
                           000086   485 _CMP_IF	=	0x0086
                           000085   486 _ADC_IF	=	0x0085
                           000084   487 _ADC_START	=	0x0084
                           000083   488 _CMP_CHAN	=	0x0083
                           000081   489 _ADC_CHAN1	=	0x0081
                           000080   490 _ADC_CHAN0	=	0x0080
                           0000DF   491 _U_IS_NAK	=	0x00df
                           0000DE   492 _U_TOG_OK	=	0x00de
                           0000DD   493 _U_SIE_FREE	=	0x00dd
                           0000DC   494 _UIF_FIFO_OV	=	0x00dc
                           0000DB   495 _UIF_HST_SOF	=	0x00db
                           0000DA   496 _UIF_SUSPEND	=	0x00da
                           0000D9   497 _UIF_TRANSFER	=	0x00d9
                           0000D8   498 _UIF_DETECT	=	0x00d8
                           0000D8   499 _UIF_BUS_RST	=	0x00d8
                                    500 ;--------------------------------------------------------
                                    501 ; overlayable register banks
                                    502 ;--------------------------------------------------------
                                    503 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        504 	.ds 8
                                    505 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        506 	.ds 8
                                    507 ;--------------------------------------------------------
                                    508 ; internal ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area DSEG    (DATA)
      000010                        511 _tick_10ms::
      000010                        512 	.ds 2
      000012                        513 _serialTime:
      000012                        514 	.ds 2
                                    515 ;--------------------------------------------------------
                                    516 ; overlayable items in internal ram
                                    517 ;--------------------------------------------------------
                                    518 ;--------------------------------------------------------
                                    519 ; Stack segment in internal ram
                                    520 ;--------------------------------------------------------
                                    521 	.area SSEG
      00003A                        522 __start__stack:
      00003A                        523 	.ds	1
                                    524 
                                    525 ;--------------------------------------------------------
                                    526 ; indirectly addressable internal ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area ISEG    (DATA)
                                    529 ;--------------------------------------------------------
                                    530 ; absolute internal ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area IABS    (ABS,DATA)
                                    533 	.area IABS    (ABS,DATA)
                                    534 ;--------------------------------------------------------
                                    535 ; bit data
                                    536 ;--------------------------------------------------------
                                    537 	.area BSEG    (BIT)
                                    538 ;--------------------------------------------------------
                                    539 ; paged external ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area PSEG    (PAG,XDATA)
                                    542 ;--------------------------------------------------------
                                    543 ; uninitialized external ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area XSEG    (XDATA)
                                    546 ;--------------------------------------------------------
                                    547 ; absolute external ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area XABS    (ABS,XDATA)
                                    550 ;--------------------------------------------------------
                                    551 ; initialized external ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area XISEG   (XDATA)
                                    554 	.area HOME    (CODE)
                                    555 	.area GSINIT0 (CODE)
                                    556 	.area GSINIT1 (CODE)
                                    557 	.area GSINIT2 (CODE)
                                    558 	.area GSINIT3 (CODE)
                                    559 	.area GSINIT4 (CODE)
                                    560 	.area GSINIT5 (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 	.area GSFINAL (CODE)
                                    563 	.area CSEG    (CODE)
                                    564 ;--------------------------------------------------------
                                    565 ; interrupt vector
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
      000000                        568 __interrupt_vect:
      000000 02 00 54         [24]  569 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  570 	reti
      000004                        571 	.ds	7
      00000B 02 00 C9         [24]  572 	ljmp	_timer0_ISR
                                    573 ; restartable atomic support routines
      00000E                        574 	.ds	2
      000010                        575 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  576 	nop
      000011 00               [12]  577 	nop
      000012                        578 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  579 	movx	a, @r0
      000013 FB               [12]  580 	mov	r3, a
      000014 EA               [12]  581 	mov	a, r2
      000015 F2               [24]  582 	movx	@r0, a
      000016 80 2C            [24]  583 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  584 	nop
      000019 00               [12]  585 	nop
      00001A                        586 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  587 	movx	a, @dptr
      00001B FB               [12]  588 	mov	r3, a
      00001C EA               [12]  589 	mov	a, r2
      00001D F0               [24]  590 	movx	@dptr, a
      00001E 80 24            [24]  591 	sjmp	sdcc_atomic_exchange_exit
      000020                        592 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  593 	mov	a, @r0
      000021 B5 02 02         [24]  594 	cjne	a, ar2, .+#5
      000024 EB               [12]  595 	mov	a, r3
      000025 F6               [12]  596 	mov	@r0, a
      000026 22               [24]  597 	ret
      000027 00               [12]  598 	nop
      000028                        599 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  600 	movx	a, @r0
      000029 B5 02 02         [24]  601 	cjne	a, ar2, .+#5
      00002C EB               [12]  602 	mov	a, r3
      00002D F2               [24]  603 	movx	@r0, a
      00002E 22               [24]  604 	ret
      00002F 00               [12]  605 	nop
      000030                        606 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  607 	movx	a, @dptr
      000031 B5 02 02         [24]  608 	cjne	a, ar2, .+#5
      000034 EB               [12]  609 	mov	a, r3
      000035 F0               [24]  610 	movx	@dptr, a
      000036 22               [24]  611 	ret
      000037                        612 sdcc_atomic_exchange_rollback_end::
                                    613 
      000037                        614 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  615 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  616 	mov	r0, dpl
      00003C 20 F5 D3         [24]  617 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        618 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  619 	mov	a, r2
      000040 C6               [12]  620 	xch	a, @r0
      000041 F5 82            [12]  621 	mov	dpl, a
      000043 22               [24]  622 	ret
      000044                        623 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  624 	mov	dpl, r3
      000046 22               [24]  625 	ret
      000047                        626 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  627 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  628 	mov	r0, dpl
      00004C 20 F5 D9         [24]  629 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  630 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    631 ;--------------------------------------------------------
                                    632 ; global & static initialisations
                                    633 ;--------------------------------------------------------
                                    634 	.area HOME    (CODE)
                                    635 	.area GSINIT  (CODE)
                                    636 	.area GSFINAL (CODE)
                                    637 	.area GSINIT  (CODE)
                                    638 	.globl __sdcc_gsinit_startup
                                    639 	.globl __sdcc_program_startup
                                    640 	.globl __start__stack
                                    641 	.globl __mcs51_genXINIT
                                    642 	.globl __mcs51_genXRAMCLEAR
                                    643 	.globl __mcs51_genRAMCLEAR
                                    644 ;	BME680-sensor.c:7: volatile unsigned int tick_10ms = 0;
      0000AD E4               [12]  645 	clr	a
      0000AE F5 10            [12]  646 	mov	_tick_10ms,a
      0000B0 F5 11            [12]  647 	mov	(_tick_10ms + 1),a
                                    648 ;	BME680-sensor.c:8: static unsigned int   serialTime = 0;
      0000B2 F5 12            [12]  649 	mov	_serialTime,a
      0000B4 F5 13            [12]  650 	mov	(_serialTime + 1),a
                                    651 	.area GSFINAL (CODE)
      0000C6 02 00 51         [24]  652 	ljmp	__sdcc_program_startup
                                    653 ;--------------------------------------------------------
                                    654 ; Home
                                    655 ;--------------------------------------------------------
                                    656 	.area HOME    (CODE)
                                    657 	.area HOME    (CODE)
      000051                        658 __sdcc_program_startup:
      000051 02 02 EC         [24]  659 	ljmp	_main
                                    660 ;	return from main will return to caller
                                    661 ;--------------------------------------------------------
                                    662 ; code
                                    663 ;--------------------------------------------------------
                                    664 	.area CSEG    (CODE)
                                    665 ;------------------------------------------------------------
                                    666 ;Allocation info for local variables in function 'timer0_ISR'
                                    667 ;------------------------------------------------------------
                                    668 ;	BME680-sensor.c:11: void timer0_ISR(void) __interrupt(INT_NO_TMR0) __using(1) {
                                    669 ;	-----------------------------------------
                                    670 ;	 function timer0_ISR
                                    671 ;	-----------------------------------------
      0000C9                        672 _timer0_ISR:
                           00000F   673 	ar7 = 0x0f
                           00000E   674 	ar6 = 0x0e
                           00000D   675 	ar5 = 0x0d
                           00000C   676 	ar4 = 0x0c
                           00000B   677 	ar3 = 0x0b
                           00000A   678 	ar2 = 0x0a
                           000009   679 	ar1 = 0x09
                           000008   680 	ar0 = 0x08
      0000C9 C0 E0            [24]  681 	push	acc
      0000CB C0 D0            [24]  682 	push	psw
      0000CD 75 D0 08         [24]  683 	mov	psw,#0x08
                                    684 ;	BME680-sensor.c:12: TF0 = 0;
                                    685 ;	assignBit
      0000D0 C2 8D            [12]  686 	clr	_TF0
                                    687 ;	BME680-sensor.c:13: TH0 = 0xB1;
      0000D2 75 8C B1         [24]  688 	mov	_TH0,#0xb1
                                    689 ;	BME680-sensor.c:14: TL0 = 0xE0;
      0000D5 75 8A E0         [24]  690 	mov	_TL0,#0xe0
                                    691 ;	BME680-sensor.c:15: tick_10ms++;
      0000D8 AE 10            [24]  692 	mov	r6,_tick_10ms
      0000DA AF 11            [24]  693 	mov	r7,(_tick_10ms + 1)
      0000DC 74 01            [12]  694 	mov	a,#0x01
      0000DE 2E               [12]  695 	add	a, r6
      0000DF F5 10            [12]  696 	mov	_tick_10ms,a
      0000E1 E4               [12]  697 	clr	a
      0000E2 3F               [12]  698 	addc	a, r7
      0000E3 F5 11            [12]  699 	mov	(_tick_10ms + 1),a
                                    700 ;	BME680-sensor.c:16: serialTime++;
      0000E5 05 12            [12]  701 	inc	_serialTime
      0000E7 E4               [12]  702 	clr	a
      0000E8 B5 12 02         [24]  703 	cjne	a,_serialTime,00103$
      0000EB 05 13            [12]  704 	inc	(_serialTime + 1)
      0000ED                        705 00103$:
                                    706 ;	BME680-sensor.c:17: }
      0000ED D0 D0            [24]  707 	pop	psw
      0000EF D0 E0            [24]  708 	pop	acc
      0000F1 32               [24]  709 	reti
                                    710 ;	eliminated unneeded push/pop dpl
                                    711 ;	eliminated unneeded push/pop dph
                                    712 ;	eliminated unneeded push/pop b
                                    713 ;------------------------------------------------------------
                                    714 ;Allocation info for local variables in function 'clock_init'
                                    715 ;------------------------------------------------------------
                                    716 ;	BME680-sensor.c:20: void clock_init(void) {
                                    717 ;	-----------------------------------------
                                    718 ;	 function clock_init
                                    719 ;	-----------------------------------------
      0000F2                        720 _clock_init:
                           000007   721 	ar7 = 0x07
                           000006   722 	ar6 = 0x06
                           000005   723 	ar5 = 0x05
                           000004   724 	ar4 = 0x04
                           000003   725 	ar3 = 0x03
                           000002   726 	ar2 = 0x02
                           000001   727 	ar1 = 0x01
                           000000   728 	ar0 = 0x00
                                    729 ;	BME680-sensor.c:21: SAFE_MOD = 0x55;
      0000F2 75 A1 55         [24]  730 	mov	_SAFE_MOD,#0x55
                                    731 ;	BME680-sensor.c:22: SAFE_MOD = 0xAA;
      0000F5 75 A1 AA         [24]  732 	mov	_SAFE_MOD,#0xaa
                                    733 ;	BME680-sensor.c:23: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;   // Fsys = 24MHz
      0000F8 74 F8            [12]  734 	mov	a,#0xf8
      0000FA 55 B9            [12]  735 	anl	a,_CLOCK_CFG
      0000FC 44 06            [12]  736 	orl	a,#0x06
      0000FE F5 B9            [12]  737 	mov	_CLOCK_CFG,a
                                    738 ;	BME680-sensor.c:24: SAFE_MOD = 0x00;
      000100 75 A1 00         [24]  739 	mov	_SAFE_MOD,#0x00
                                    740 ;	BME680-sensor.c:25: }
      000103 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'timer0_init'
                                    744 ;------------------------------------------------------------
                                    745 ;	BME680-sensor.c:28: void timer0_init(void) {
                                    746 ;	-----------------------------------------
                                    747 ;	 function timer0_init
                                    748 ;	-----------------------------------------
      000104                        749 _timer0_init:
                                    750 ;	BME680-sensor.c:29: TMOD &= ~0x03;
      000104 53 89 FC         [24]  751 	anl	_TMOD,#0xfc
                                    752 ;	BME680-sensor.c:30: TMOD |=  0x01;   // mode 1, 16-bit
      000107 43 89 01         [24]  753 	orl	_TMOD,#0x01
                                    754 ;	BME680-sensor.c:31: TH0 = 0xB1;
      00010A 75 8C B1         [24]  755 	mov	_TH0,#0xb1
                                    756 ;	BME680-sensor.c:32: TL0 = 0xE0;      // 10ms @ 24MHz / 12
      00010D 75 8A E0         [24]  757 	mov	_TL0,#0xe0
                                    758 ;	BME680-sensor.c:33: TF0 = 0;
                                    759 ;	assignBit
      000110 C2 8D            [12]  760 	clr	_TF0
                                    761 ;	BME680-sensor.c:34: ET0 = 1;
                                    762 ;	assignBit
      000112 D2 A9            [12]  763 	setb	_ET0
                                    764 ;	BME680-sensor.c:35: TR0 = 1;
                                    765 ;	assignBit
      000114 D2 8C            [12]  766 	setb	_TR0
                                    767 ;	BME680-sensor.c:36: EA  = 1;
                                    768 ;	assignBit
      000116 D2 AF            [12]  769 	setb	_EA
                                    770 ;	BME680-sensor.c:37: }
      000118 22               [24]  771 	ret
                                    772 ;------------------------------------------------------------
                                    773 ;Allocation info for local variables in function 'print_fixed2'
                                    774 ;------------------------------------------------------------
                                    775 ;val           Allocated to stack - _bp +1 +4 
                                    776 ;frac          Allocated to registers r4 
                                    777 ;------------------------------------------------------------
                                    778 ;	BME680-sensor.c:41: static void print_fixed2(int32_t val) {
                                    779 ;	-----------------------------------------
                                    780 ;	 function print_fixed2
                                    781 ;	-----------------------------------------
      000119                        782 _print_fixed2:
      000119 C0 39            [24]  783 	push	_bp
      00011B 85 81 39         [24]  784 	mov	_bp,sp
      00011E C0 82            [24]  785 	push	dpl
      000120 C0 83            [24]  786 	push	dph
      000122 C0 F0            [24]  787 	push	b
      000124 C0 E0            [24]  788 	push	acc
                                    789 ;	BME680-sensor.c:42: if (val < 0) {
      000126 A8 39            [24]  790 	mov	r0,_bp
      000128 08               [12]  791 	inc	r0
      000129 08               [12]  792 	inc	r0
      00012A 08               [12]  793 	inc	r0
      00012B 08               [12]  794 	inc	r0
      00012C E6               [12]  795 	mov	a,@r0
      00012D 30 E7 1C         [24]  796 	jnb	acc.7,00102$
                                    797 ;	BME680-sensor.c:43: Serial_print("-");
      000130 90 1F 33         [24]  798 	mov	dptr,#___str_0
      000133 75 F0 80         [24]  799 	mov	b, #0x80
      000136 12 1B 03         [24]  800 	lcall	_Serial_print
                                    801 ;	BME680-sensor.c:44: val = -val;
      000139 A8 39            [24]  802 	mov	r0,_bp
      00013B 08               [12]  803 	inc	r0
      00013C C3               [12]  804 	clr	c
      00013D E4               [12]  805 	clr	a
      00013E 96               [12]  806 	subb	a,@r0
      00013F F6               [12]  807 	mov	@r0,a
      000140 08               [12]  808 	inc	r0
      000141 E4               [12]  809 	clr	a
      000142 96               [12]  810 	subb	a,@r0
      000143 F6               [12]  811 	mov	@r0,a
      000144 08               [12]  812 	inc	r0
      000145 E4               [12]  813 	clr	a
      000146 96               [12]  814 	subb	a,@r0
      000147 F6               [12]  815 	mov	@r0,a
      000148 08               [12]  816 	inc	r0
      000149 E4               [12]  817 	clr	a
      00014A 96               [12]  818 	subb	a,@r0
      00014B F6               [12]  819 	mov	@r0,a
      00014C                        820 00102$:
                                    821 ;	BME680-sensor.c:46: Serial_print_uint((uint16_t)(val / 100));
      00014C 74 64            [12]  822 	mov	a,#0x64
      00014E C0 E0            [24]  823 	push	acc
      000150 E4               [12]  824 	clr	a
      000151 C0 E0            [24]  825 	push	acc
      000153 C0 E0            [24]  826 	push	acc
      000155 C0 E0            [24]  827 	push	acc
      000157 A8 39            [24]  828 	mov	r0,_bp
      000159 08               [12]  829 	inc	r0
      00015A 86 82            [24]  830 	mov	dpl, @r0
      00015C 08               [12]  831 	inc	r0
      00015D 86 83            [24]  832 	mov	dph, @r0
      00015F 08               [12]  833 	inc	r0
      000160 86 F0            [24]  834 	mov	b, @r0
      000162 08               [12]  835 	inc	r0
      000163 E6               [12]  836 	mov	a, @r0
      000164 12 1D 5E         [24]  837 	lcall	__divslong
      000167 AA 82            [24]  838 	mov	r2, dpl
      000169 AB 83            [24]  839 	mov	r3, dph
      00016B E5 81            [12]  840 	mov	a,sp
      00016D 24 FC            [12]  841 	add	a,#0xfc
      00016F F5 81            [12]  842 	mov	sp,a
      000171 8A 82            [24]  843 	mov	dpl,r2
      000173 8B 83            [24]  844 	mov	dph,r3
      000175 12 1B 2E         [24]  845 	lcall	_Serial_print_uint
                                    846 ;	BME680-sensor.c:47: Serial_print(".");
      000178 90 1F 35         [24]  847 	mov	dptr,#___str_1
      00017B 75 F0 80         [24]  848 	mov	b, #0x80
      00017E 12 1B 03         [24]  849 	lcall	_Serial_print
                                    850 ;	BME680-sensor.c:48: uint8_t frac = (uint8_t)(val % 100);
      000181 74 64            [12]  851 	mov	a,#0x64
      000183 C0 E0            [24]  852 	push	acc
      000185 E4               [12]  853 	clr	a
      000186 C0 E0            [24]  854 	push	acc
      000188 C0 E0            [24]  855 	push	acc
      00018A C0 E0            [24]  856 	push	acc
      00018C A8 39            [24]  857 	mov	r0,_bp
      00018E 08               [12]  858 	inc	r0
      00018F 86 82            [24]  859 	mov	dpl, @r0
      000191 08               [12]  860 	inc	r0
      000192 86 83            [24]  861 	mov	dph, @r0
      000194 08               [12]  862 	inc	r0
      000195 86 F0            [24]  863 	mov	b, @r0
      000197 08               [12]  864 	inc	r0
      000198 E6               [12]  865 	mov	a, @r0
      000199 12 1C 98         [24]  866 	lcall	__modslong
      00019C AC 82            [24]  867 	mov	r4, dpl
      00019E E5 81            [12]  868 	mov	a,sp
      0001A0 24 FC            [12]  869 	add	a,#0xfc
      0001A2 F5 81            [12]  870 	mov	sp,a
                                    871 ;	BME680-sensor.c:49: if (frac < 10) Serial_print("0");
      0001A4 BC 0A 00         [24]  872 	cjne	r4,#0x0a,00120$
      0001A7                        873 00120$:
      0001A7 50 0D            [24]  874 	jnc	00104$
      0001A9 90 1F 37         [24]  875 	mov	dptr,#___str_2
      0001AC 75 F0 80         [24]  876 	mov	b, #0x80
      0001AF C0 04            [24]  877 	push	ar4
      0001B1 12 1B 03         [24]  878 	lcall	_Serial_print
      0001B4 D0 04            [24]  879 	pop	ar4
      0001B6                        880 00104$:
                                    881 ;	BME680-sensor.c:50: Serial_print_uint(frac);
      0001B6 7F 00            [12]  882 	mov	r7,#0x00
      0001B8 8C 82            [24]  883 	mov	dpl, r4
      0001BA 8F 83            [24]  884 	mov	dph, r7
      0001BC 12 1B 2E         [24]  885 	lcall	_Serial_print_uint
                                    886 ;	BME680-sensor.c:51: }
      0001BF 85 39 81         [24]  887 	mov	sp,_bp
      0001C2 D0 39            [24]  888 	pop	_bp
      0001C4 22               [24]  889 	ret
                                    890 ;------------------------------------------------------------
                                    891 ;Allocation info for local variables in function 'print_pa_hpa'
                                    892 ;------------------------------------------------------------
                                    893 ;pa            Allocated to registers r4 r5 r6 r7 
                                    894 ;hpa100        Allocated to stack - _bp +1 +4 
                                    895 ;------------------------------------------------------------
                                    896 ;	BME680-sensor.c:55: static void print_pa_hpa(uint32_t pa) {
                                    897 ;	-----------------------------------------
                                    898 ;	 function print_pa_hpa
                                    899 ;	-----------------------------------------
      0001C5                        900 _print_pa_hpa:
      0001C5 C0 39            [24]  901 	push	_bp
      0001C7 85 81 39         [24]  902 	mov	_bp,sp
      0001CA AC 82            [24]  903 	mov	r4,dpl
      0001CC AD 83            [24]  904 	mov	r5,dph
      0001CE AE F0            [24]  905 	mov	r6,b
      0001D0 FF               [12]  906 	mov	r7,a
      0001D1 E5 81            [12]  907 	mov	a,sp
      0001D3 24 04            [12]  908 	add	a,#0x04
      0001D5 F5 81            [12]  909 	mov	sp,a
                                    910 ;	BME680-sensor.c:57: uint32_t hpa100 = pa / 10;   // hPa * 10 (one decimal)
      0001D7 74 0A            [12]  911 	mov	a,#0x0a
      0001D9 C0 E0            [24]  912 	push	acc
      0001DB E4               [12]  913 	clr	a
      0001DC C0 E0            [24]  914 	push	acc
      0001DE C0 E0            [24]  915 	push	acc
      0001E0 C0 E0            [24]  916 	push	acc
                                    917 ;	BME680-sensor.c:58: Serial_print_uint((uint16_t)(hpa100 / 10));
      0001E2 8C 82            [24]  918 	mov	dpl, r4
      0001E4 8D 83            [24]  919 	mov	dph, r5
      0001E6 8E F0            [24]  920 	mov	b, r6
      0001E8 EF               [12]  921 	mov	a, r7
      0001E9 12 1D B4         [24]  922 	lcall	__divulong
      0001EC A8 39            [24]  923 	mov	r0,_bp
      0001EE 08               [12]  924 	inc	r0
      0001EF A6 82            [24]  925 	mov	@r0, dpl
      0001F1 08               [12]  926 	inc	r0
      0001F2 A6 83            [24]  927 	mov	@r0, dph
      0001F4 08               [12]  928 	inc	r0
      0001F5 A6 F0            [24]  929 	mov	@r0, b
      0001F7 08               [12]  930 	inc	r0
      0001F8 F6               [12]  931 	mov	@r0,a
      0001F9 E5 81            [12]  932 	mov	a,sp
      0001FB 24 FC            [12]  933 	add	a,#0xfc
      0001FD F5 81            [12]  934 	mov	sp,a
      0001FF 74 0A            [12]  935 	mov	a,#0x0a
      000201 C0 E0            [24]  936 	push	acc
      000203 E4               [12]  937 	clr	a
      000204 C0 E0            [24]  938 	push	acc
      000206 C0 E0            [24]  939 	push	acc
      000208 C0 E0            [24]  940 	push	acc
      00020A A8 39            [24]  941 	mov	r0,_bp
      00020C 08               [12]  942 	inc	r0
      00020D 86 82            [24]  943 	mov	dpl, @r0
      00020F 08               [12]  944 	inc	r0
      000210 86 83            [24]  945 	mov	dph, @r0
      000212 08               [12]  946 	inc	r0
      000213 86 F0            [24]  947 	mov	b, @r0
      000215 08               [12]  948 	inc	r0
      000216 E6               [12]  949 	mov	a, @r0
      000217 12 1D B4         [24]  950 	lcall	__divulong
      00021A AA 82            [24]  951 	mov	r2, dpl
      00021C AB 83            [24]  952 	mov	r3, dph
      00021E E5 81            [12]  953 	mov	a,sp
      000220 24 FC            [12]  954 	add	a,#0xfc
      000222 F5 81            [12]  955 	mov	sp,a
      000224 8A 82            [24]  956 	mov	dpl,r2
      000226 8B 83            [24]  957 	mov	dph,r3
      000228 12 1B 2E         [24]  958 	lcall	_Serial_print_uint
                                    959 ;	BME680-sensor.c:59: Serial_print(".");
      00022B 90 1F 35         [24]  960 	mov	dptr,#___str_1
      00022E 75 F0 80         [24]  961 	mov	b, #0x80
      000231 12 1B 03         [24]  962 	lcall	_Serial_print
                                    963 ;	BME680-sensor.c:60: Serial_print_uint((uint8_t)(hpa100 % 10));
      000234 74 0A            [12]  964 	mov	a,#0x0a
      000236 C0 E0            [24]  965 	push	acc
      000238 E4               [12]  966 	clr	a
      000239 C0 E0            [24]  967 	push	acc
      00023B C0 E0            [24]  968 	push	acc
      00023D C0 E0            [24]  969 	push	acc
      00023F A8 39            [24]  970 	mov	r0,_bp
      000241 08               [12]  971 	inc	r0
      000242 86 82            [24]  972 	mov	dpl, @r0
      000244 08               [12]  973 	inc	r0
      000245 86 83            [24]  974 	mov	dph, @r0
      000247 08               [12]  975 	inc	r0
      000248 86 F0            [24]  976 	mov	b, @r0
      00024A 08               [12]  977 	inc	r0
      00024B E6               [12]  978 	mov	a, @r0
      00024C 12 1C EC         [24]  979 	lcall	__modulong
      00024F AC 82            [24]  980 	mov	r4, dpl
      000251 E5 81            [12]  981 	mov	a,sp
      000253 24 FC            [12]  982 	add	a,#0xfc
      000255 F5 81            [12]  983 	mov	sp,a
      000257 7F 00            [12]  984 	mov	r7,#0x00
      000259 8C 82            [24]  985 	mov	dpl, r4
      00025B 8F 83            [24]  986 	mov	dph, r7
      00025D 12 1B 2E         [24]  987 	lcall	_Serial_print_uint
                                    988 ;	BME680-sensor.c:61: }
      000260 85 39 81         [24]  989 	mov	sp,_bp
      000263 D0 39            [24]  990 	pop	_bp
      000265 22               [24]  991 	ret
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'print_humidity'
                                    994 ;------------------------------------------------------------
                                    995 ;val           Allocated to registers r4 r5 r6 r7 
                                    996 ;------------------------------------------------------------
                                    997 ;	BME680-sensor.c:64: static void print_humidity(uint32_t val) {
                                    998 ;	-----------------------------------------
                                    999 ;	 function print_humidity
                                   1000 ;	-----------------------------------------
      000266                       1001 _print_humidity:
      000266 AC 82            [24] 1002 	mov	r4,dpl
      000268 AD 83            [24] 1003 	mov	r5,dph
      00026A AE F0            [24] 1004 	mov	r6,b
      00026C FF               [12] 1005 	mov	r7,a
                                   1006 ;	BME680-sensor.c:65: Serial_print_uint((uint16_t)(val / 1000));
      00026D C0 07            [24] 1007 	push	ar7
      00026F C0 06            [24] 1008 	push	ar6
      000271 C0 05            [24] 1009 	push	ar5
      000273 C0 04            [24] 1010 	push	ar4
      000275 74 E8            [12] 1011 	mov	a,#0xe8
      000277 C0 E0            [24] 1012 	push	acc
      000279 74 03            [12] 1013 	mov	a,#0x03
      00027B C0 E0            [24] 1014 	push	acc
      00027D E4               [12] 1015 	clr	a
      00027E C0 E0            [24] 1016 	push	acc
      000280 C0 E0            [24] 1017 	push	acc
      000282 8C 82            [24] 1018 	mov	dpl, r4
      000284 8D 83            [24] 1019 	mov	dph, r5
      000286 8E F0            [24] 1020 	mov	b, r6
      000288 EF               [12] 1021 	mov	a, r7
      000289 12 1D B4         [24] 1022 	lcall	__divulong
      00028C A8 82            [24] 1023 	mov	r0, dpl
      00028E A9 83            [24] 1024 	mov	r1, dph
      000290 E5 81            [12] 1025 	mov	a,sp
      000292 24 FC            [12] 1026 	add	a,#0xfc
      000294 F5 81            [12] 1027 	mov	sp,a
      000296 88 82            [24] 1028 	mov	dpl,r0
      000298 89 83            [24] 1029 	mov	dph,r1
      00029A 12 1B 2E         [24] 1030 	lcall	_Serial_print_uint
                                   1031 ;	BME680-sensor.c:66: Serial_print(".");
      00029D 90 1F 35         [24] 1032 	mov	dptr,#___str_1
      0002A0 75 F0 80         [24] 1033 	mov	b, #0x80
      0002A3 12 1B 03         [24] 1034 	lcall	_Serial_print
      0002A6 D0 04            [24] 1035 	pop	ar4
      0002A8 D0 05            [24] 1036 	pop	ar5
      0002AA D0 06            [24] 1037 	pop	ar6
      0002AC D0 07            [24] 1038 	pop	ar7
                                   1039 ;	BME680-sensor.c:67: Serial_print_uint((uint8_t)((val % 1000) / 100));
      0002AE 74 E8            [12] 1040 	mov	a,#0xe8
      0002B0 C0 E0            [24] 1041 	push	acc
      0002B2 74 03            [12] 1042 	mov	a,#0x03
      0002B4 C0 E0            [24] 1043 	push	acc
      0002B6 E4               [12] 1044 	clr	a
      0002B7 C0 E0            [24] 1045 	push	acc
      0002B9 C0 E0            [24] 1046 	push	acc
      0002BB 8C 82            [24] 1047 	mov	dpl, r4
      0002BD 8D 83            [24] 1048 	mov	dph, r5
      0002BF 8E F0            [24] 1049 	mov	b, r6
      0002C1 EF               [12] 1050 	mov	a, r7
      0002C2 12 1C EC         [24] 1051 	lcall	__modulong
      0002C5 AC 82            [24] 1052 	mov	r4, dpl
      0002C7 AD 83            [24] 1053 	mov	r5, dph
      0002C9 E5 81            [12] 1054 	mov	a,sp
      0002CB 24 FC            [12] 1055 	add	a,#0xfc
      0002CD F5 81            [12] 1056 	mov	sp,a
      0002CF 8C 82            [24] 1057 	mov	dpl,r4
      0002D1 8D 83            [24] 1058 	mov	dph,r5
      0002D3 74 64            [12] 1059 	mov	a,#0x64
      0002D5 C0 E0            [24] 1060 	push	acc
      0002D7 E4               [12] 1061 	clr	a
      0002D8 C0 E0            [24] 1062 	push	acc
      0002DA 12 1E F2         [24] 1063 	lcall	__divsint
      0002DD AE 82            [24] 1064 	mov	r6, dpl
      0002DF 15 81            [12] 1065 	dec	sp
      0002E1 15 81            [12] 1066 	dec	sp
      0002E3 7F 00            [12] 1067 	mov	r7,#0x00
      0002E5 8E 82            [24] 1068 	mov	dpl, r6
      0002E7 8F 83            [24] 1069 	mov	dph, r7
                                   1070 ;	BME680-sensor.c:68: }
      0002E9 02 1B 2E         [24] 1071 	ljmp	_Serial_print_uint
                                   1072 ;------------------------------------------------------------
                                   1073 ;Allocation info for local variables in function 'main'
                                   1074 ;------------------------------------------------------------
                                   1075 ;data          Allocated to stack - _bp +1 +12 
                                   1076 ;t             Allocated to registers r6 r7 
                                   1077 ;bme_ok        Allocated to registers 
                                   1078 ;i             Allocated to stack - _bp +13 +4 
                                   1079 ;------------------------------------------------------------
                                   1080 ;	BME680-sensor.c:71: void main(void) {
                                   1081 ;	-----------------------------------------
                                   1082 ;	 function main
                                   1083 ;	-----------------------------------------
      0002EC                       1084 _main:
      0002EC C0 39            [24] 1085 	push	_bp
      0002EE E5 81            [12] 1086 	mov	a,sp
      0002F0 F5 39            [12] 1087 	mov	_bp,a
      0002F2 24 10            [12] 1088 	add	a,#0x10
      0002F4 F5 81            [12] 1089 	mov	sp,a
                                   1090 ;	BME680-sensor.c:74: P1_MOD_OC &= ~(1 << 6);   // not open-drain
      0002F6 53 92 BF         [24] 1091 	anl	_P1_MOD_OC,#0xbf
                                   1092 ;	BME680-sensor.c:75: P1_DIR_PU  &= ~(1 << 6);  // input, no pull-up (float)
      0002F9 53 93 BF         [24] 1093 	anl	_P1_DIR_PU,#0xbf
                                   1094 ;	BME680-sensor.c:79: P1_MOD_OC &= ~(1 << 4);   // push-pull output
      0002FC 53 92 EF         [24] 1095 	anl	_P1_MOD_OC,#0xef
                                   1096 ;	BME680-sensor.c:80: P1_DIR_PU |=  (1 << 4);   // output enable
      0002FF 43 93 10         [24] 1097 	orl	_P1_DIR_PU,#0x10
                                   1098 ;	BME680-sensor.c:81: P1 &= ~(1 << 4);          // CS LOW — forces BME680 into SPI mode
      000302 53 90 EF         [24] 1099 	anl	_P1,#0xef
                                   1100 ;	BME680-sensor.c:87: clock_init();
      000305 12 00 F2         [24] 1101 	lcall	_clock_init
                                   1102 ;	BME680-sensor.c:88: timer0_init();
      000308 12 01 04         [24] 1103 	lcall	_timer0_init
                                   1104 ;	BME680-sensor.c:96: for (i = 0; i < 200000UL; i++) { __asm nop __endasm; }
      00030B E5 39            [12] 1105 	mov	a,_bp
      00030D 24 0D            [12] 1106 	add	a,#0x0d
      00030F F8               [12] 1107 	mov	r0,a
      000310 E4               [12] 1108 	clr	a
      000311 F6               [12] 1109 	mov	@r0,a
      000312 08               [12] 1110 	inc	r0
      000313 F6               [12] 1111 	mov	@r0,a
      000314 08               [12] 1112 	inc	r0
      000315 F6               [12] 1113 	mov	@r0,a
      000316 08               [12] 1114 	inc	r0
      000317 F6               [12] 1115 	mov	@r0,a
      000318                       1116 00116$:
      000318 E5 39            [12] 1117 	mov	a,_bp
      00031A 24 0D            [12] 1118 	add	a,#0x0d
      00031C F8               [12] 1119 	mov	r0,a
      00031D C3               [12] 1120 	clr	c
      00031E E6               [12] 1121 	mov	a,@r0
      00031F 94 40            [12] 1122 	subb	a,#0x40
      000321 08               [12] 1123 	inc	r0
      000322 E6               [12] 1124 	mov	a,@r0
      000323 94 0D            [12] 1125 	subb	a,#0x0d
      000325 08               [12] 1126 	inc	r0
      000326 E6               [12] 1127 	mov	a,@r0
      000327 94 03            [12] 1128 	subb	a,#0x03
      000329 08               [12] 1129 	inc	r0
      00032A E6               [12] 1130 	mov	a,@r0
      00032B 94 00            [12] 1131 	subb	a,#0x00
      00032D 50 28            [24] 1132 	jnc	00101$
      00032F 00               [12] 1133 	nop	
      000330 E5 39            [12] 1134 	mov	a,_bp
      000332 24 0D            [12] 1135 	add	a,#0x0d
      000334 F8               [12] 1136 	mov	r0,a
      000335 86 04            [24] 1137 	mov	ar4,@r0
      000337 08               [12] 1138 	inc	r0
      000338 86 05            [24] 1139 	mov	ar5,@r0
      00033A 08               [12] 1140 	inc	r0
      00033B 86 06            [24] 1141 	mov	ar6,@r0
      00033D 08               [12] 1142 	inc	r0
      00033E 86 07            [24] 1143 	mov	ar7,@r0
      000340 E5 39            [12] 1144 	mov	a,_bp
      000342 24 0D            [12] 1145 	add	a,#0x0d
      000344 F8               [12] 1146 	mov	r0,a
      000345 74 01            [12] 1147 	mov	a,#0x01
      000347 2C               [12] 1148 	add	a, r4
      000348 F6               [12] 1149 	mov	@r0,a
      000349 E4               [12] 1150 	clr	a
      00034A 3D               [12] 1151 	addc	a, r5
      00034B 08               [12] 1152 	inc	r0
      00034C F6               [12] 1153 	mov	@r0,a
      00034D E4               [12] 1154 	clr	a
      00034E 3E               [12] 1155 	addc	a, r6
      00034F 08               [12] 1156 	inc	r0
      000350 F6               [12] 1157 	mov	@r0,a
      000351 E4               [12] 1158 	clr	a
      000352 3F               [12] 1159 	addc	a, r7
      000353 08               [12] 1160 	inc	r0
      000354 F6               [12] 1161 	mov	@r0,a
      000355 80 C1            [24] 1162 	sjmp	00116$
      000357                       1163 00101$:
                                   1164 ;	BME680-sensor.c:102: SAFE_MOD = 0x55;
      000357 75 A1 55         [24] 1165 	mov	_SAFE_MOD,#0x55
                                   1166 ;	BME680-sensor.c:103: SAFE_MOD = 0xAA;
      00035A 75 A1 AA         [24] 1167 	mov	_SAFE_MOD,#0xaa
                                   1168 ;	BME680-sensor.c:104: GLOBAL_CFG &= ~bWDOG_EN;
      00035D 53 B1 FE         [24] 1169 	anl	_GLOBAL_CFG,#0xfe
                                   1170 ;	BME680-sensor.c:105: SAFE_MOD = 0x00;
      000360 75 A1 00         [24] 1171 	mov	_SAFE_MOD,#0x00
                                   1172 ;	BME680-sensor.c:107: Serial_begin();
      000363 12 1A CF         [24] 1173 	lcall	_Serial_begin
                                   1174 ;	BME680-sensor.c:109: Serial_println("BME680 + CH552 starting...");
      000366 90 1F 39         [24] 1175 	mov	dptr,#___str_3
      000369 75 F0 80         [24] 1176 	mov	b, #0x80
      00036C 12 1C 2E         [24] 1177 	lcall	_Serial_println
                                   1178 ;	BME680-sensor.c:111: bme_ok = BME680_init();
      00036F 12 16 9D         [24] 1179 	lcall	_BME680_init
      000372 E5 82            [12] 1180 	mov	a, dpl
                                   1181 ;	BME680-sensor.c:113: if (!bme_ok) {
      000374 70 40            [24] 1182 	jnz	00109$
                                   1183 ;	BME680-sensor.c:114: Serial_println("BME680 init FAILED - check wiring!");
      000376 90 1F 54         [24] 1184 	mov	dptr,#___str_4
      000379 75 F0 80         [24] 1185 	mov	b, #0x80
      00037C 12 1C 2E         [24] 1186 	lcall	_Serial_println
                                   1187 ;	BME680-sensor.c:116: P3_MOD_OC &= ~(1 << 0);
      00037F 53 96 FE         [24] 1188 	anl	_P3_MOD_OC,#0xfe
                                   1189 ;	BME680-sensor.c:117: P3_DIR_PU  |=  (1 << 0);
      000382 43 97 01         [24] 1190 	orl	_P3_DIR_PU,#0x01
                                   1191 ;	BME680-sensor.c:118: while (1) {
      000385                       1192 00106$:
                                   1193 ;	BME680-sensor.c:119: EA = 0; t = tick_10ms; EA = 1;
                                   1194 ;	assignBit
      000385 C2 AF            [12] 1195 	clr	_EA
      000387 AE 10            [24] 1196 	mov	r6,_tick_10ms
      000389 AF 11            [24] 1197 	mov	r7,(_tick_10ms + 1)
                                   1198 ;	assignBit
      00038B D2 AF            [12] 1199 	setb	_EA
                                   1200 ;	BME680-sensor.c:120: if (t % 10 < 5) P3 |=  (1 << 0);
      00038D 74 0A            [12] 1201 	mov	a,#0x0a
      00038F C0 E0            [24] 1202 	push	acc
      000391 E4               [12] 1203 	clr	a
      000392 C0 E0            [24] 1204 	push	acc
      000394 8E 82            [24] 1205 	mov	dpl, r6
      000396 8F 83            [24] 1206 	mov	dph, r7
      000398 12 1E AD         [24] 1207 	lcall	__moduint
      00039B AE 82            [24] 1208 	mov	r6, dpl
      00039D AF 83            [24] 1209 	mov	r7, dph
      00039F 15 81            [12] 1210 	dec	sp
      0003A1 15 81            [12] 1211 	dec	sp
      0003A3 C3               [12] 1212 	clr	c
      0003A4 EE               [12] 1213 	mov	a,r6
      0003A5 94 05            [12] 1214 	subb	a,#0x05
      0003A7 EF               [12] 1215 	mov	a,r7
      0003A8 94 00            [12] 1216 	subb	a,#0x00
      0003AA 50 05            [24] 1217 	jnc	00103$
      0003AC 43 B0 01         [24] 1218 	orl	_P3,#0x01
      0003AF 80 D4            [24] 1219 	sjmp	00106$
      0003B1                       1220 00103$:
                                   1221 ;	BME680-sensor.c:121: else             P3 &= ~(1 << 0);
      0003B1 53 B0 FE         [24] 1222 	anl	_P3,#0xfe
      0003B4 80 CF            [24] 1223 	sjmp	00106$
      0003B6                       1224 00109$:
                                   1225 ;	BME680-sensor.c:125: Serial_println("BME680 OK");
      0003B6 90 1F 77         [24] 1226 	mov	dptr,#___str_5
      0003B9 75 F0 80         [24] 1227 	mov	b, #0x80
      0003BC 12 1C 2E         [24] 1228 	lcall	_Serial_println
                                   1229 ;	BME680-sensor.c:126: Serial_println("----------------------------");
      0003BF 90 1F 81         [24] 1230 	mov	dptr,#___str_6
      0003C2 75 F0 80         [24] 1231 	mov	b, #0x80
      0003C5 12 1C 2E         [24] 1232 	lcall	_Serial_println
                                   1233 ;	BME680-sensor.c:128: while (1) {
      0003C8                       1234 00113$:
                                   1235 ;	BME680-sensor.c:129: EA = 0; t = tick_10ms; EA = 1;
                                   1236 ;	assignBit
      0003C8 C2 AF            [12] 1237 	clr	_EA
      0003CA AE 10            [24] 1238 	mov	r6,_tick_10ms
      0003CC AF 11            [24] 1239 	mov	r7,(_tick_10ms + 1)
                                   1240 ;	assignBit
      0003CE D2 AF            [12] 1241 	setb	_EA
                                   1242 ;	BME680-sensor.c:132: if (BME680_update(t, &data)) {
      0003D0 AD 39            [24] 1243 	mov	r5,_bp
      0003D2 0D               [12] 1244 	inc	r5
      0003D3 8D 02            [24] 1245 	mov	ar2,r5
      0003D5 7B 00            [12] 1246 	mov	r3,#0x00
      0003D7 7C 40            [12] 1247 	mov	r4,#0x40
      0003D9 C0 05            [24] 1248 	push	ar5
      0003DB C0 02            [24] 1249 	push	ar2
      0003DD C0 03            [24] 1250 	push	ar3
      0003DF C0 04            [24] 1251 	push	ar4
      0003E1 8E 82            [24] 1252 	mov	dpl, r6
      0003E3 8F 83            [24] 1253 	mov	dph, r7
      0003E5 12 17 9C         [24] 1254 	lcall	_BME680_update
      0003E8 AF 82            [24] 1255 	mov	r7, dpl
      0003EA 15 81            [12] 1256 	dec	sp
      0003EC 15 81            [12] 1257 	dec	sp
      0003EE 15 81            [12] 1258 	dec	sp
      0003F0 D0 05            [24] 1259 	pop	ar5
      0003F2 EF               [12] 1260 	mov	a,r7
      0003F3 60 D3            [24] 1261 	jz	00113$
                                   1262 ;	BME680-sensor.c:134: Serial_print("Temp: ");
      0003F5 90 1F 9E         [24] 1263 	mov	dptr,#___str_7
      0003F8 75 F0 80         [24] 1264 	mov	b, #0x80
      0003FB C0 05            [24] 1265 	push	ar5
      0003FD 12 1B 03         [24] 1266 	lcall	_Serial_print
      000400 D0 05            [24] 1267 	pop	ar5
                                   1268 ;	BME680-sensor.c:135: print_fixed2(data.temperature);
      000402 8D 01            [24] 1269 	mov	ar1,r5
      000404 87 03            [24] 1270 	mov	ar3,@r1
      000406 09               [12] 1271 	inc	r1
      000407 87 04            [24] 1272 	mov	ar4,@r1
      000409 09               [12] 1273 	inc	r1
      00040A 87 06            [24] 1274 	mov	ar6,@r1
      00040C 09               [12] 1275 	inc	r1
      00040D 87 07            [24] 1276 	mov	ar7,@r1
      00040F 19               [12] 1277 	dec	r1
      000410 19               [12] 1278 	dec	r1
      000411 19               [12] 1279 	dec	r1
      000412 8B 82            [24] 1280 	mov	dpl, r3
      000414 8C 83            [24] 1281 	mov	dph, r4
      000416 8E F0            [24] 1282 	mov	b, r6
      000418 EF               [12] 1283 	mov	a, r7
      000419 C0 05            [24] 1284 	push	ar5
      00041B 12 01 19         [24] 1285 	lcall	_print_fixed2
                                   1286 ;	BME680-sensor.c:136: Serial_print(" C  |  Pres: ");
      00041E 90 1F A5         [24] 1287 	mov	dptr,#___str_8
      000421 75 F0 80         [24] 1288 	mov	b, #0x80
      000424 12 1B 03         [24] 1289 	lcall	_Serial_print
      000427 D0 05            [24] 1290 	pop	ar5
                                   1291 ;	BME680-sensor.c:137: print_pa_hpa(data.pressure);
      000429 74 04            [12] 1292 	mov	a,#0x04
      00042B 2D               [12] 1293 	add	a, r5
      00042C F9               [12] 1294 	mov	r1,a
      00042D 87 03            [24] 1295 	mov	ar3,@r1
      00042F 09               [12] 1296 	inc	r1
      000430 87 04            [24] 1297 	mov	ar4,@r1
      000432 09               [12] 1298 	inc	r1
      000433 87 06            [24] 1299 	mov	ar6,@r1
      000435 09               [12] 1300 	inc	r1
      000436 87 07            [24] 1301 	mov	ar7,@r1
      000438 19               [12] 1302 	dec	r1
      000439 19               [12] 1303 	dec	r1
      00043A 19               [12] 1304 	dec	r1
      00043B 8B 82            [24] 1305 	mov	dpl, r3
      00043D 8C 83            [24] 1306 	mov	dph, r4
      00043F 8E F0            [24] 1307 	mov	b, r6
      000441 EF               [12] 1308 	mov	a, r7
      000442 C0 05            [24] 1309 	push	ar5
      000444 12 01 C5         [24] 1310 	lcall	_print_pa_hpa
                                   1311 ;	BME680-sensor.c:138: Serial_print(" hPa  |  Hum: ");
      000447 90 1F B3         [24] 1312 	mov	dptr,#___str_9
      00044A 75 F0 80         [24] 1313 	mov	b, #0x80
      00044D 12 1B 03         [24] 1314 	lcall	_Serial_print
      000450 D0 05            [24] 1315 	pop	ar5
                                   1316 ;	BME680-sensor.c:139: print_humidity(data.humidity);
      000452 74 08            [12] 1317 	mov	a,#0x08
      000454 2D               [12] 1318 	add	a, r5
      000455 F9               [12] 1319 	mov	r1,a
      000456 87 04            [24] 1320 	mov	ar4,@r1
      000458 09               [12] 1321 	inc	r1
      000459 87 05            [24] 1322 	mov	ar5,@r1
      00045B 09               [12] 1323 	inc	r1
      00045C 87 06            [24] 1324 	mov	ar6,@r1
      00045E 09               [12] 1325 	inc	r1
      00045F 87 07            [24] 1326 	mov	ar7,@r1
      000461 19               [12] 1327 	dec	r1
      000462 19               [12] 1328 	dec	r1
      000463 19               [12] 1329 	dec	r1
      000464 8C 82            [24] 1330 	mov	dpl, r4
      000466 8D 83            [24] 1331 	mov	dph, r5
      000468 8E F0            [24] 1332 	mov	b, r6
      00046A EF               [12] 1333 	mov	a, r7
      00046B 12 02 66         [24] 1334 	lcall	_print_humidity
                                   1335 ;	BME680-sensor.c:140: Serial_println(" %");
      00046E 90 1F C2         [24] 1336 	mov	dptr,#___str_10
      000471 75 F0 80         [24] 1337 	mov	b, #0x80
      000474 12 1C 2E         [24] 1338 	lcall	_Serial_println
      000477 02 03 C8         [24] 1339 	ljmp	00113$
                                   1340 ;	BME680-sensor.c:143: }
      00047A 85 39 81         [24] 1341 	mov	sp,_bp
      00047D D0 39            [24] 1342 	pop	_bp
      00047F 22               [24] 1343 	ret
                                   1344 	.area CSEG    (CODE)
                                   1345 	.area CONST   (CODE)
                                   1346 	.area CONST   (CODE)
      001F33                       1347 ___str_0:
      001F33 2D                    1348 	.ascii "-"
      001F34 00                    1349 	.db 0x00
                                   1350 	.area CSEG    (CODE)
                                   1351 	.area CONST   (CODE)
      001F35                       1352 ___str_1:
      001F35 2E                    1353 	.ascii "."
      001F36 00                    1354 	.db 0x00
                                   1355 	.area CSEG    (CODE)
                                   1356 	.area CONST   (CODE)
      001F37                       1357 ___str_2:
      001F37 30                    1358 	.ascii "0"
      001F38 00                    1359 	.db 0x00
                                   1360 	.area CSEG    (CODE)
                                   1361 	.area CONST   (CODE)
      001F39                       1362 ___str_3:
      001F39 42 4D 45 36 38 30 20  1363 	.ascii "BME680 + CH552 starting..."
             2B 20 43 48 35 35 32
             20 73 74 61 72 74 69
             6E 67 2E 2E 2E
      001F53 00                    1364 	.db 0x00
                                   1365 	.area CSEG    (CODE)
                                   1366 	.area CONST   (CODE)
      001F54                       1367 ___str_4:
      001F54 42 4D 45 36 38 30 20  1368 	.ascii "BME680 init FAILED - check wiring!"
             69 6E 69 74 20 46 41
             49 4C 45 44 20 2D 20
             63 68 65 63 6B 20 77
             69 72 69 6E 67 21
      001F76 00                    1369 	.db 0x00
                                   1370 	.area CSEG    (CODE)
                                   1371 	.area CONST   (CODE)
      001F77                       1372 ___str_5:
      001F77 42 4D 45 36 38 30 20  1373 	.ascii "BME680 OK"
             4F 4B
      001F80 00                    1374 	.db 0x00
                                   1375 	.area CSEG    (CODE)
                                   1376 	.area CONST   (CODE)
      001F81                       1377 ___str_6:
      001F81 2D 2D 2D 2D 2D 2D 2D  1378 	.ascii "----------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
      001F9D 00                    1379 	.db 0x00
                                   1380 	.area CSEG    (CODE)
                                   1381 	.area CONST   (CODE)
      001F9E                       1382 ___str_7:
      001F9E 54 65 6D 70 3A 20     1383 	.ascii "Temp: "
      001FA4 00                    1384 	.db 0x00
                                   1385 	.area CSEG    (CODE)
                                   1386 	.area CONST   (CODE)
      001FA5                       1387 ___str_8:
      001FA5 20 43 20 20 7C 20 20  1388 	.ascii " C  |  Pres: "
             50 72 65 73 3A 20
      001FB2 00                    1389 	.db 0x00
                                   1390 	.area CSEG    (CODE)
                                   1391 	.area CONST   (CODE)
      001FB3                       1392 ___str_9:
      001FB3 20 68 50 61 20 20 7C  1393 	.ascii " hPa  |  Hum: "
             20 20 48 75 6D 3A 20
      001FC1 00                    1394 	.db 0x00
                                   1395 	.area CSEG    (CODE)
                                   1396 	.area CONST   (CODE)
      001FC2                       1397 ___str_10:
      001FC2 20 25                 1398 	.ascii " %"
      001FC4 00                    1399 	.db 0x00
                                   1400 	.area CSEG    (CODE)
                                   1401 	.area XINIT   (CODE)
                                   1402 	.area CABS    (ABS,CODE)
