                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module serial
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
                                    245 	.globl _Serial_begin
                                    246 	.globl _Serial_write
                                    247 	.globl _Serial_print
                                    248 	.globl _Serial_print_uint
                                    249 	.globl _Serial_println
                                    250 	.globl _Serial_println_uint
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
                                    500 ;--------------------------------------------------------
                                    501 ; internal ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area DSEG    (DATA)
                                    504 ;--------------------------------------------------------
                                    505 ; overlayable items in internal ram
                                    506 ;--------------------------------------------------------
                                    507 ;--------------------------------------------------------
                                    508 ; indirectly addressable internal ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area ISEG    (DATA)
                                    511 ;--------------------------------------------------------
                                    512 ; absolute internal ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area IABS    (ABS,DATA)
                                    515 	.area IABS    (ABS,DATA)
                                    516 ;--------------------------------------------------------
                                    517 ; bit data
                                    518 ;--------------------------------------------------------
                                    519 	.area BSEG    (BIT)
                                    520 ;--------------------------------------------------------
                                    521 ; paged external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area PSEG    (PAG,XDATA)
                                    524 ;--------------------------------------------------------
                                    525 ; uninitialized external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area XSEG    (XDATA)
                                    528 ;--------------------------------------------------------
                                    529 ; absolute external ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area XABS    (ABS,XDATA)
                                    532 ;--------------------------------------------------------
                                    533 ; initialized external ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area XISEG   (XDATA)
                                    536 	.area HOME    (CODE)
                                    537 	.area GSINIT0 (CODE)
                                    538 	.area GSINIT1 (CODE)
                                    539 	.area GSINIT2 (CODE)
                                    540 	.area GSINIT3 (CODE)
                                    541 	.area GSINIT4 (CODE)
                                    542 	.area GSINIT5 (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 	.area GSFINAL (CODE)
                                    545 	.area CSEG    (CODE)
                                    546 ;--------------------------------------------------------
                                    547 ; global & static initialisations
                                    548 ;--------------------------------------------------------
                                    549 	.area HOME    (CODE)
                                    550 	.area GSINIT  (CODE)
                                    551 	.area GSFINAL (CODE)
                                    552 	.area GSINIT  (CODE)
                                    553 ;--------------------------------------------------------
                                    554 ; Home
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area HOME    (CODE)
                                    558 ;--------------------------------------------------------
                                    559 ; code
                                    560 ;--------------------------------------------------------
                                    561 	.area CSEG    (CODE)
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'Serial_begin'
                                    564 ;------------------------------------------------------------
                                    565 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:5: void Serial_begin(void) {
                                    566 ;	-----------------------------------------
                                    567 ;	 function Serial_begin
                                    568 ;	-----------------------------------------
      001ACF                        569 _Serial_begin:
                           000007   570 	ar7 = 0x07
                           000006   571 	ar6 = 0x06
                           000005   572 	ar5 = 0x05
                           000004   573 	ar4 = 0x04
                           000003   574 	ar3 = 0x03
                           000002   575 	ar2 = 0x02
                           000001   576 	ar1 = 0x01
                           000000   577 	ar0 = 0x00
                                    578 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:6: SAFE_MOD = 0x55;
      001ACF 75 A1 55         [24]  579 	mov	_SAFE_MOD,#0x55
                                    580 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:7: SAFE_MOD = 0xAA;
      001AD2 75 A1 AA         [24]  581 	mov	_SAFE_MOD,#0xaa
                                    582 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:8: PIN_FUNC |= bUART1_PIN_X;   // UART1 on P3.2/P3.4
      001AD5 43 C6 20         [24]  583 	orl	_PIN_FUNC,#0x20
                                    584 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:9: SAFE_MOD = 0x00;
      001AD8 75 A1 00         [24]  585 	mov	_SAFE_MOD,#0x00
                                    586 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:12: T2MOD = 0;
      001ADB 75 C9 00         [24]  587 	mov	_T2MOD,#0x00
                                    588 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:13: T2CON = 0;
      001ADE 75 C8 00         [24]  589 	mov	_T2CON,#0x00
                                    590 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:16: P3_MOD_OC &= ~(1 << 2);
      001AE1 53 96 FB         [24]  591 	anl	_P3_MOD_OC,#0xfb
                                    592 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:17: P3_DIR_PU  |=  (1 << 2);
      001AE4 43 97 04         [24]  593 	orl	_P3_DIR_PU,#0x04
                                    594 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:20: P3_MOD_OC &= ~(1 << 4);
      001AE7 53 96 EF         [24]  595 	anl	_P3_MOD_OC,#0xef
                                    596 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:21: P3_DIR_PU  &= ~(1 << 4);
      001AEA 53 97 EF         [24]  597 	anl	_P3_DIR_PU,#0xef
                                    598 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:24: U1SM0  = 0;      // 8-bit
                                    599 ;	assignBit
      001AED C2 C7            [12]  600 	clr	_U1SM0
                                    601 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:25: U1SMOD = 1;      // baud x2
                                    602 ;	assignBit
      001AEF D2 C5            [12]  603 	setb	_U1SMOD
                                    604 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:26: SBAUD1 = 0x64;   // 9600 baud @ 24 MHz
      001AF1 75 C2 64         [24]  605 	mov	_SBAUD1,#0x64
                                    606 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:28: U1REN  = 1;      // enable RX
                                    607 ;	assignBit
      001AF4 D2 C4            [12]  608 	setb	_U1REN
                                    609 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:29: U1TI   = 1;      // mark TX ready
                                    610 ;	assignBit
      001AF6 D2 C1            [12]  611 	setb	_U1TI
                                    612 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:30: }
      001AF8 22               [24]  613 	ret
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'Serial_write'
                                    616 ;------------------------------------------------------------
                                    617 ;c             Allocated to registers r7 
                                    618 ;------------------------------------------------------------
                                    619 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:33: void Serial_write(char c) {
                                    620 ;	-----------------------------------------
                                    621 ;	 function Serial_write
                                    622 ;	-----------------------------------------
      001AF9                        623 _Serial_write:
      001AF9 AF 82            [24]  624 	mov	r7, dpl
                                    625 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:34: while (!U1TI);   // wait for TX ready
      001AFB                        626 00101$:
                                    627 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:35: U1TI = 0;        // clear flag
                                    628 ;	assignBit
      001AFB 10 C1 02         [24]  629 	jbc	_U1TI,00118$
      001AFE 80 FB            [24]  630 	sjmp	00101$
      001B00                        631 00118$:
                                    632 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:36: SBUF1 = c;       // send
      001B00 8F C1            [24]  633 	mov	_SBUF1,r7
                                    634 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:37: }
      001B02 22               [24]  635 	ret
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'Serial_print'
                                    638 ;------------------------------------------------------------
                                    639 ;s             Allocated to registers 
                                    640 ;------------------------------------------------------------
                                    641 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:40: void Serial_print(const char *s) {
                                    642 ;	-----------------------------------------
                                    643 ;	 function Serial_print
                                    644 ;	-----------------------------------------
      001B03                        645 _Serial_print:
      001B03 AD 82            [24]  646 	mov	r5, dpl
      001B05 AE 83            [24]  647 	mov	r6, dph
      001B07 AF F0            [24]  648 	mov	r7, b
                                    649 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:41: while (*s) Serial_write(*s++);
      001B09                        650 00101$:
      001B09 8D 82            [24]  651 	mov	dpl,r5
      001B0B 8E 83            [24]  652 	mov	dph,r6
      001B0D 8F F0            [24]  653 	mov	b,r7
      001B0F 12 1E 21         [24]  654 	lcall	__gptrget
      001B12 FC               [12]  655 	mov	r4,a
      001B13 60 18            [24]  656 	jz	00104$
      001B15 0D               [12]  657 	inc	r5
      001B16 BD 00 01         [24]  658 	cjne	r5,#0x00,00120$
      001B19 0E               [12]  659 	inc	r6
      001B1A                        660 00120$:
      001B1A 8C 82            [24]  661 	mov	dpl, r4
      001B1C C0 07            [24]  662 	push	ar7
      001B1E C0 06            [24]  663 	push	ar6
      001B20 C0 05            [24]  664 	push	ar5
      001B22 12 1A F9         [24]  665 	lcall	_Serial_write
      001B25 D0 05            [24]  666 	pop	ar5
      001B27 D0 06            [24]  667 	pop	ar6
      001B29 D0 07            [24]  668 	pop	ar7
      001B2B 80 DC            [24]  669 	sjmp	00101$
      001B2D                        670 00104$:
                                    671 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:42: }
      001B2D 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'Serial_print_uint'
                                    675 ;------------------------------------------------------------
                                    676 ;v             Allocated to registers r6 r7 
                                    677 ;------------------------------------------------------------
                                    678 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:45: void Serial_print_uint(unsigned int v) {
                                    679 ;	-----------------------------------------
                                    680 ;	 function Serial_print_uint
                                    681 ;	-----------------------------------------
      001B2E                        682 _Serial_print_uint:
      001B2E AE 82            [24]  683 	mov	r6, dpl
      001B30 AF 83            [24]  684 	mov	r7, dph
                                    685 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:46: if (v >= 10000) Serial_write('0' + (v / 10000) % 10);
      001B32 C3               [12]  686 	clr	c
      001B33 EE               [12]  687 	mov	a,r6
      001B34 94 10            [12]  688 	subb	a,#0x10
      001B36 EF               [12]  689 	mov	a,r7
      001B37 94 27            [12]  690 	subb	a,#0x27
      001B39 40 2C            [24]  691 	jc	00102$
      001B3B C0 07            [24]  692 	push	ar7
      001B3D C0 06            [24]  693 	push	ar6
      001B3F 74 10            [12]  694 	mov	a,#0x10
      001B41 C0 E0            [24]  695 	push	acc
      001B43 74 27            [12]  696 	mov	a,#0x27
      001B45 C0 E0            [24]  697 	push	acc
      001B47 8E 82            [24]  698 	mov	dpl, r6
      001B49 8F 83            [24]  699 	mov	dph, r7
      001B4B 12 1C 4C         [24]  700 	lcall	__divuint
      001B4E AC 82            [24]  701 	mov	r4, dpl
      001B50 15 81            [12]  702 	dec	sp
      001B52 15 81            [12]  703 	dec	sp
      001B54 75 F0 0A         [24]  704 	mov	b,#0x0a
      001B57 EC               [12]  705 	mov	a,r4
      001B58 84               [48]  706 	div	ab
      001B59 AC F0            [24]  707 	mov	r4,b
      001B5B 74 30            [12]  708 	mov	a,#0x30
      001B5D 2C               [12]  709 	add	a, r4
      001B5E F5 82            [12]  710 	mov	dpl,a
      001B60 12 1A F9         [24]  711 	lcall	_Serial_write
      001B63 D0 06            [24]  712 	pop	ar6
      001B65 D0 07            [24]  713 	pop	ar7
      001B67                        714 00102$:
                                    715 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:47: if (v >= 1000)  Serial_write('0' + (v / 1000)  % 10);
      001B67 C3               [12]  716 	clr	c
      001B68 EE               [12]  717 	mov	a,r6
      001B69 94 E8            [12]  718 	subb	a,#0xe8
      001B6B EF               [12]  719 	mov	a,r7
      001B6C 94 03            [12]  720 	subb	a,#0x03
      001B6E 40 2C            [24]  721 	jc	00104$
      001B70 C0 07            [24]  722 	push	ar7
      001B72 C0 06            [24]  723 	push	ar6
      001B74 74 E8            [12]  724 	mov	a,#0xe8
      001B76 C0 E0            [24]  725 	push	acc
      001B78 74 03            [12]  726 	mov	a,#0x03
      001B7A C0 E0            [24]  727 	push	acc
      001B7C 8E 82            [24]  728 	mov	dpl, r6
      001B7E 8F 83            [24]  729 	mov	dph, r7
      001B80 12 1C 4C         [24]  730 	lcall	__divuint
      001B83 AC 82            [24]  731 	mov	r4, dpl
      001B85 15 81            [12]  732 	dec	sp
      001B87 15 81            [12]  733 	dec	sp
      001B89 75 F0 0A         [24]  734 	mov	b,#0x0a
      001B8C EC               [12]  735 	mov	a,r4
      001B8D 84               [48]  736 	div	ab
      001B8E AC F0            [24]  737 	mov	r4,b
      001B90 74 30            [12]  738 	mov	a,#0x30
      001B92 2C               [12]  739 	add	a, r4
      001B93 F5 82            [12]  740 	mov	dpl,a
      001B95 12 1A F9         [24]  741 	lcall	_Serial_write
      001B98 D0 06            [24]  742 	pop	ar6
      001B9A D0 07            [24]  743 	pop	ar7
      001B9C                        744 00104$:
                                    745 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:48: if (v >= 100)   Serial_write('0' + (v / 100)   % 10);
      001B9C C3               [12]  746 	clr	c
      001B9D EE               [12]  747 	mov	a,r6
      001B9E 94 64            [12]  748 	subb	a,#0x64
      001BA0 EF               [12]  749 	mov	a,r7
      001BA1 94 00            [12]  750 	subb	a,#0x00
      001BA3 40 32            [24]  751 	jc	00106$
      001BA5 C0 07            [24]  752 	push	ar7
      001BA7 C0 06            [24]  753 	push	ar6
      001BA9 74 64            [12]  754 	mov	a,#0x64
      001BAB C0 E0            [24]  755 	push	acc
      001BAD E4               [12]  756 	clr	a
      001BAE C0 E0            [24]  757 	push	acc
      001BB0 8E 82            [24]  758 	mov	dpl, r6
      001BB2 8F 83            [24]  759 	mov	dph, r7
      001BB4 12 1C 4C         [24]  760 	lcall	__divuint
      001BB7 15 81            [12]  761 	dec	sp
      001BB9 15 81            [12]  762 	dec	sp
      001BBB 74 0A            [12]  763 	mov	a,#0x0a
      001BBD C0 E0            [24]  764 	push	acc
      001BBF E4               [12]  765 	clr	a
      001BC0 C0 E0            [24]  766 	push	acc
      001BC2 12 1E AD         [24]  767 	lcall	__moduint
      001BC5 AC 82            [24]  768 	mov	r4, dpl
      001BC7 15 81            [12]  769 	dec	sp
      001BC9 15 81            [12]  770 	dec	sp
      001BCB 74 30            [12]  771 	mov	a,#0x30
      001BCD 2C               [12]  772 	add	a, r4
      001BCE F5 82            [12]  773 	mov	dpl,a
      001BD0 12 1A F9         [24]  774 	lcall	_Serial_write
      001BD3 D0 06            [24]  775 	pop	ar6
      001BD5 D0 07            [24]  776 	pop	ar7
      001BD7                        777 00106$:
                                    778 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:49: if (v >= 10)    Serial_write('0' + (v / 10)    % 10);
      001BD7 C3               [12]  779 	clr	c
      001BD8 EE               [12]  780 	mov	a,r6
      001BD9 94 0A            [12]  781 	subb	a,#0x0a
      001BDB EF               [12]  782 	mov	a,r7
      001BDC 94 00            [12]  783 	subb	a,#0x00
      001BDE 40 32            [24]  784 	jc	00108$
      001BE0 C0 07            [24]  785 	push	ar7
      001BE2 C0 06            [24]  786 	push	ar6
      001BE4 74 0A            [12]  787 	mov	a,#0x0a
      001BE6 C0 E0            [24]  788 	push	acc
      001BE8 E4               [12]  789 	clr	a
      001BE9 C0 E0            [24]  790 	push	acc
      001BEB 8E 82            [24]  791 	mov	dpl, r6
      001BED 8F 83            [24]  792 	mov	dph, r7
      001BEF 12 1C 4C         [24]  793 	lcall	__divuint
      001BF2 15 81            [12]  794 	dec	sp
      001BF4 15 81            [12]  795 	dec	sp
      001BF6 74 0A            [12]  796 	mov	a,#0x0a
      001BF8 C0 E0            [24]  797 	push	acc
      001BFA E4               [12]  798 	clr	a
      001BFB C0 E0            [24]  799 	push	acc
      001BFD 12 1E AD         [24]  800 	lcall	__moduint
      001C00 AC 82            [24]  801 	mov	r4, dpl
      001C02 15 81            [12]  802 	dec	sp
      001C04 15 81            [12]  803 	dec	sp
      001C06 74 30            [12]  804 	mov	a,#0x30
      001C08 2C               [12]  805 	add	a, r4
      001C09 F5 82            [12]  806 	mov	dpl,a
      001C0B 12 1A F9         [24]  807 	lcall	_Serial_write
      001C0E D0 06            [24]  808 	pop	ar6
      001C10 D0 07            [24]  809 	pop	ar7
      001C12                        810 00108$:
                                    811 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:50: Serial_write('0' + (v % 10));
      001C12 74 0A            [12]  812 	mov	a,#0x0a
      001C14 C0 E0            [24]  813 	push	acc
      001C16 E4               [12]  814 	clr	a
      001C17 C0 E0            [24]  815 	push	acc
      001C19 8E 82            [24]  816 	mov	dpl, r6
      001C1B 8F 83            [24]  817 	mov	dph, r7
      001C1D 12 1E AD         [24]  818 	lcall	__moduint
      001C20 AE 82            [24]  819 	mov	r6, dpl
      001C22 15 81            [12]  820 	dec	sp
      001C24 15 81            [12]  821 	dec	sp
      001C26 74 30            [12]  822 	mov	a,#0x30
      001C28 2E               [12]  823 	add	a, r6
      001C29 F5 82            [12]  824 	mov	dpl,a
                                    825 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:51: }
      001C2B 02 1A F9         [24]  826 	ljmp	_Serial_write
                                    827 ;------------------------------------------------------------
                                    828 ;Allocation info for local variables in function 'Serial_println'
                                    829 ;------------------------------------------------------------
                                    830 ;s             Allocated to registers r5 r6 r7 
                                    831 ;------------------------------------------------------------
                                    832 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:54: void Serial_println(const char *s) {
                                    833 ;	-----------------------------------------
                                    834 ;	 function Serial_println
                                    835 ;	-----------------------------------------
      001C2E                        836 _Serial_println:
                                    837 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:55: Serial_print(s);
      001C2E 12 1B 03         [24]  838 	lcall	_Serial_print
                                    839 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:56: Serial_write('\r');
      001C31 75 82 0D         [24]  840 	mov	dpl, #0x0d
      001C34 12 1A F9         [24]  841 	lcall	_Serial_write
                                    842 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:57: Serial_write('\n');
      001C37 75 82 0A         [24]  843 	mov	dpl, #0x0a
                                    844 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:58: }
      001C3A 02 1A F9         [24]  845 	ljmp	_Serial_write
                                    846 ;------------------------------------------------------------
                                    847 ;Allocation info for local variables in function 'Serial_println_uint'
                                    848 ;------------------------------------------------------------
                                    849 ;v             Allocated to registers r6 r7 
                                    850 ;------------------------------------------------------------
                                    851 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:61: void Serial_println_uint(unsigned int v) {
                                    852 ;	-----------------------------------------
                                    853 ;	 function Serial_println_uint
                                    854 ;	-----------------------------------------
      001C3D                        855 _Serial_println_uint:
                                    856 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:62: Serial_print_uint(v);
      001C3D 12 1B 2E         [24]  857 	lcall	_Serial_print_uint
                                    858 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:63: Serial_write('\r');
      001C40 75 82 0D         [24]  859 	mov	dpl, #0x0d
      001C43 12 1A F9         [24]  860 	lcall	_Serial_write
                                    861 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:64: Serial_write('\n');
      001C46 75 82 0A         [24]  862 	mov	dpl, #0x0a
                                    863 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:65: }
      001C49 02 1A F9         [24]  864 	ljmp	_Serial_write
                                    865 	.area CSEG    (CODE)
                                    866 	.area CONST   (CODE)
                                    867 	.area XINIT   (CODE)
                                    868 	.area CABS    (ABS,CODE)
