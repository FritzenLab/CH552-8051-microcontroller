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
                                    250 	.globl _Serial_println_int
                                    251 	.globl _Serial_println_uint
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
                                    564 ;Allocation info for local variables in function 'Serial_begin'
                                    565 ;------------------------------------------------------------
                                    566 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:5: void Serial_begin(void) {
                                    567 ;	-----------------------------------------
                                    568 ;	 function Serial_begin
                                    569 ;	-----------------------------------------
      000CDE                        570 _Serial_begin:
                           000007   571 	ar7 = 0x07
                           000006   572 	ar6 = 0x06
                           000005   573 	ar5 = 0x05
                           000004   574 	ar4 = 0x04
                           000003   575 	ar3 = 0x03
                           000002   576 	ar2 = 0x02
                           000001   577 	ar1 = 0x01
                           000000   578 	ar0 = 0x00
                                    579 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:6: SAFE_MOD = 0x55;
      000CDE 75 A1 55         [24]  580 	mov	_SAFE_MOD,#0x55
                                    581 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:7: SAFE_MOD = 0xAA;
      000CE1 75 A1 AA         [24]  582 	mov	_SAFE_MOD,#0xaa
                                    583 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:8: PIN_FUNC |= bUART1_PIN_X;   // UART1 on P3.2/P3.4
      000CE4 43 C6 20         [24]  584 	orl	_PIN_FUNC,#0x20
                                    585 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:9: SAFE_MOD = 0x00;
      000CE7 75 A1 00         [24]  586 	mov	_SAFE_MOD,#0x00
                                    587 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:12: T2MOD = 0;
      000CEA 75 C9 00         [24]  588 	mov	_T2MOD,#0x00
                                    589 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:13: T2CON = 0;
      000CED 75 C8 00         [24]  590 	mov	_T2CON,#0x00
                                    591 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:16: P3_MOD_OC &= ~(1 << 2);
      000CF0 53 96 FB         [24]  592 	anl	_P3_MOD_OC,#0xfb
                                    593 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:17: P3_DIR_PU  |=  (1 << 2);
      000CF3 43 97 04         [24]  594 	orl	_P3_DIR_PU,#0x04
                                    595 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:20: P3_MOD_OC &= ~(1 << 4);
      000CF6 53 96 EF         [24]  596 	anl	_P3_MOD_OC,#0xef
                                    597 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:21: P3_DIR_PU  &= ~(1 << 4);
      000CF9 53 97 EF         [24]  598 	anl	_P3_DIR_PU,#0xef
                                    599 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:24: U1SM0  = 0;      // 8-bit
                                    600 ;	assignBit
      000CFC C2 C7            [12]  601 	clr	_U1SM0
                                    602 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:25: U1SMOD = 1;      // baud x2
                                    603 ;	assignBit
      000CFE D2 C5            [12]  604 	setb	_U1SMOD
                                    605 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:26: SBAUD1 = 0x64;   // 9600 baud @ 24 MHz
      000D00 75 C2 64         [24]  606 	mov	_SBAUD1,#0x64
                                    607 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:28: U1REN  = 1;      // enable RX
                                    608 ;	assignBit
      000D03 D2 C4            [12]  609 	setb	_U1REN
                                    610 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:29: U1TI   = 1;      // mark TX ready
                                    611 ;	assignBit
      000D05 D2 C1            [12]  612 	setb	_U1TI
                                    613 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:30: }
      000D07 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'Serial_write'
                                    617 ;------------------------------------------------------------
                                    618 ;c             Allocated to registers r7 
                                    619 ;------------------------------------------------------------
                                    620 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:33: void Serial_write(char c) {
                                    621 ;	-----------------------------------------
                                    622 ;	 function Serial_write
                                    623 ;	-----------------------------------------
      000D08                        624 _Serial_write:
      000D08 AF 82            [24]  625 	mov	r7, dpl
                                    626 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:34: while (!U1TI);   // wait for TX ready
      000D0A                        627 00101$:
                                    628 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:35: U1TI = 0;        // clear flag
                                    629 ;	assignBit
      000D0A 10 C1 02         [24]  630 	jbc	_U1TI,00118$
      000D0D 80 FB            [24]  631 	sjmp	00101$
      000D0F                        632 00118$:
                                    633 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:36: SBUF1 = c;       // send
      000D0F 8F C1            [24]  634 	mov	_SBUF1,r7
                                    635 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:37: }
      000D11 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'Serial_print'
                                    639 ;------------------------------------------------------------
                                    640 ;s             Allocated to registers 
                                    641 ;------------------------------------------------------------
                                    642 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:40: void Serial_print(const char *s) {
                                    643 ;	-----------------------------------------
                                    644 ;	 function Serial_print
                                    645 ;	-----------------------------------------
      000D12                        646 _Serial_print:
      000D12 AD 82            [24]  647 	mov	r5, dpl
      000D14 AE 83            [24]  648 	mov	r6, dph
      000D16 AF F0            [24]  649 	mov	r7, b
                                    650 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:41: while (*s) Serial_write(*s++);
      000D18                        651 00101$:
      000D18 8D 82            [24]  652 	mov	dpl,r5
      000D1A 8E 83            [24]  653 	mov	dph,r6
      000D1C 8F F0            [24]  654 	mov	b,r7
      000D1E 12 10 73         [24]  655 	lcall	__gptrget
      000D21 FC               [12]  656 	mov	r4,a
      000D22 60 18            [24]  657 	jz	00104$
      000D24 0D               [12]  658 	inc	r5
      000D25 BD 00 01         [24]  659 	cjne	r5,#0x00,00120$
      000D28 0E               [12]  660 	inc	r6
      000D29                        661 00120$:
      000D29 8C 82            [24]  662 	mov	dpl, r4
      000D2B C0 07            [24]  663 	push	ar7
      000D2D C0 06            [24]  664 	push	ar6
      000D2F C0 05            [24]  665 	push	ar5
      000D31 12 0D 08         [24]  666 	lcall	_Serial_write
      000D34 D0 05            [24]  667 	pop	ar5
      000D36 D0 06            [24]  668 	pop	ar6
      000D38 D0 07            [24]  669 	pop	ar7
      000D3A 80 DC            [24]  670 	sjmp	00101$
      000D3C                        671 00104$:
                                    672 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:42: }
      000D3C 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'Serial_print_uint'
                                    676 ;------------------------------------------------------------
                                    677 ;v             Allocated to registers r6 r7 
                                    678 ;------------------------------------------------------------
                                    679 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:45: void Serial_print_uint(unsigned int v) {
                                    680 ;	-----------------------------------------
                                    681 ;	 function Serial_print_uint
                                    682 ;	-----------------------------------------
      000D3D                        683 _Serial_print_uint:
      000D3D AE 82            [24]  684 	mov	r6, dpl
      000D3F AF 83            [24]  685 	mov	r7, dph
                                    686 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:46: if (v >= 10000) Serial_write('0' + (v / 10000) % 10);
      000D41 C3               [12]  687 	clr	c
      000D42 EE               [12]  688 	mov	a,r6
      000D43 94 10            [12]  689 	subb	a,#0x10
      000D45 EF               [12]  690 	mov	a,r7
      000D46 94 27            [12]  691 	subb	a,#0x27
      000D48 40 2C            [24]  692 	jc	00102$
      000D4A C0 07            [24]  693 	push	ar7
      000D4C C0 06            [24]  694 	push	ar6
      000D4E 74 10            [12]  695 	mov	a,#0x10
      000D50 C0 E0            [24]  696 	push	acc
      000D52 74 27            [12]  697 	mov	a,#0x27
      000D54 C0 E0            [24]  698 	push	acc
      000D56 8E 82            [24]  699 	mov	dpl, r6
      000D58 8F 83            [24]  700 	mov	dph, r7
      000D5A 12 0F 98         [24]  701 	lcall	__divuint
      000D5D AC 82            [24]  702 	mov	r4, dpl
      000D5F 15 81            [12]  703 	dec	sp
      000D61 15 81            [12]  704 	dec	sp
      000D63 75 F0 0A         [24]  705 	mov	b,#0x0a
      000D66 EC               [12]  706 	mov	a,r4
      000D67 84               [48]  707 	div	ab
      000D68 AC F0            [24]  708 	mov	r4,b
      000D6A 74 30            [12]  709 	mov	a,#0x30
      000D6C 2C               [12]  710 	add	a, r4
      000D6D F5 82            [12]  711 	mov	dpl,a
      000D6F 12 0D 08         [24]  712 	lcall	_Serial_write
      000D72 D0 06            [24]  713 	pop	ar6
      000D74 D0 07            [24]  714 	pop	ar7
      000D76                        715 00102$:
                                    716 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:47: if (v >= 1000)  Serial_write('0' + (v / 1000)  % 10);
      000D76 C3               [12]  717 	clr	c
      000D77 EE               [12]  718 	mov	a,r6
      000D78 94 E8            [12]  719 	subb	a,#0xe8
      000D7A EF               [12]  720 	mov	a,r7
      000D7B 94 03            [12]  721 	subb	a,#0x03
      000D7D 40 2C            [24]  722 	jc	00104$
      000D7F C0 07            [24]  723 	push	ar7
      000D81 C0 06            [24]  724 	push	ar6
      000D83 74 E8            [12]  725 	mov	a,#0xe8
      000D85 C0 E0            [24]  726 	push	acc
      000D87 74 03            [12]  727 	mov	a,#0x03
      000D89 C0 E0            [24]  728 	push	acc
      000D8B 8E 82            [24]  729 	mov	dpl, r6
      000D8D 8F 83            [24]  730 	mov	dph, r7
      000D8F 12 0F 98         [24]  731 	lcall	__divuint
      000D92 AC 82            [24]  732 	mov	r4, dpl
      000D94 15 81            [12]  733 	dec	sp
      000D96 15 81            [12]  734 	dec	sp
      000D98 75 F0 0A         [24]  735 	mov	b,#0x0a
      000D9B EC               [12]  736 	mov	a,r4
      000D9C 84               [48]  737 	div	ab
      000D9D AC F0            [24]  738 	mov	r4,b
      000D9F 74 30            [12]  739 	mov	a,#0x30
      000DA1 2C               [12]  740 	add	a, r4
      000DA2 F5 82            [12]  741 	mov	dpl,a
      000DA4 12 0D 08         [24]  742 	lcall	_Serial_write
      000DA7 D0 06            [24]  743 	pop	ar6
      000DA9 D0 07            [24]  744 	pop	ar7
      000DAB                        745 00104$:
                                    746 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:48: if (v >= 100)   Serial_write('0' + (v / 100)   % 10);
      000DAB C3               [12]  747 	clr	c
      000DAC EE               [12]  748 	mov	a,r6
      000DAD 94 64            [12]  749 	subb	a,#0x64
      000DAF EF               [12]  750 	mov	a,r7
      000DB0 94 00            [12]  751 	subb	a,#0x00
      000DB2 40 32            [24]  752 	jc	00106$
      000DB4 C0 07            [24]  753 	push	ar7
      000DB6 C0 06            [24]  754 	push	ar6
      000DB8 74 64            [12]  755 	mov	a,#0x64
      000DBA C0 E0            [24]  756 	push	acc
      000DBC E4               [12]  757 	clr	a
      000DBD C0 E0            [24]  758 	push	acc
      000DBF 8E 82            [24]  759 	mov	dpl, r6
      000DC1 8F 83            [24]  760 	mov	dph, r7
      000DC3 12 0F 98         [24]  761 	lcall	__divuint
      000DC6 15 81            [12]  762 	dec	sp
      000DC8 15 81            [12]  763 	dec	sp
      000DCA 74 0A            [12]  764 	mov	a,#0x0a
      000DCC C0 E0            [24]  765 	push	acc
      000DCE E4               [12]  766 	clr	a
      000DCF C0 E0            [24]  767 	push	acc
      000DD1 12 11 3C         [24]  768 	lcall	__moduint
      000DD4 AC 82            [24]  769 	mov	r4, dpl
      000DD6 15 81            [12]  770 	dec	sp
      000DD8 15 81            [12]  771 	dec	sp
      000DDA 74 30            [12]  772 	mov	a,#0x30
      000DDC 2C               [12]  773 	add	a, r4
      000DDD F5 82            [12]  774 	mov	dpl,a
      000DDF 12 0D 08         [24]  775 	lcall	_Serial_write
      000DE2 D0 06            [24]  776 	pop	ar6
      000DE4 D0 07            [24]  777 	pop	ar7
      000DE6                        778 00106$:
                                    779 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:49: if (v >= 10)    Serial_write('0' + (v / 10)    % 10);
      000DE6 C3               [12]  780 	clr	c
      000DE7 EE               [12]  781 	mov	a,r6
      000DE8 94 0A            [12]  782 	subb	a,#0x0a
      000DEA EF               [12]  783 	mov	a,r7
      000DEB 94 00            [12]  784 	subb	a,#0x00
      000DED 40 32            [24]  785 	jc	00108$
      000DEF C0 07            [24]  786 	push	ar7
      000DF1 C0 06            [24]  787 	push	ar6
      000DF3 74 0A            [12]  788 	mov	a,#0x0a
      000DF5 C0 E0            [24]  789 	push	acc
      000DF7 E4               [12]  790 	clr	a
      000DF8 C0 E0            [24]  791 	push	acc
      000DFA 8E 82            [24]  792 	mov	dpl, r6
      000DFC 8F 83            [24]  793 	mov	dph, r7
      000DFE 12 0F 98         [24]  794 	lcall	__divuint
      000E01 15 81            [12]  795 	dec	sp
      000E03 15 81            [12]  796 	dec	sp
      000E05 74 0A            [12]  797 	mov	a,#0x0a
      000E07 C0 E0            [24]  798 	push	acc
      000E09 E4               [12]  799 	clr	a
      000E0A C0 E0            [24]  800 	push	acc
      000E0C 12 11 3C         [24]  801 	lcall	__moduint
      000E0F AC 82            [24]  802 	mov	r4, dpl
      000E11 15 81            [12]  803 	dec	sp
      000E13 15 81            [12]  804 	dec	sp
      000E15 74 30            [12]  805 	mov	a,#0x30
      000E17 2C               [12]  806 	add	a, r4
      000E18 F5 82            [12]  807 	mov	dpl,a
      000E1A 12 0D 08         [24]  808 	lcall	_Serial_write
      000E1D D0 06            [24]  809 	pop	ar6
      000E1F D0 07            [24]  810 	pop	ar7
      000E21                        811 00108$:
                                    812 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:50: Serial_write('0' + (v % 10));
      000E21 74 0A            [12]  813 	mov	a,#0x0a
      000E23 C0 E0            [24]  814 	push	acc
      000E25 E4               [12]  815 	clr	a
      000E26 C0 E0            [24]  816 	push	acc
      000E28 8E 82            [24]  817 	mov	dpl, r6
      000E2A 8F 83            [24]  818 	mov	dph, r7
      000E2C 12 11 3C         [24]  819 	lcall	__moduint
      000E2F AE 82            [24]  820 	mov	r6, dpl
      000E31 15 81            [12]  821 	dec	sp
      000E33 15 81            [12]  822 	dec	sp
      000E35 74 30            [12]  823 	mov	a,#0x30
      000E37 2E               [12]  824 	add	a, r6
      000E38 F5 82            [12]  825 	mov	dpl,a
                                    826 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:51: }
      000E3A 02 0D 08         [24]  827 	ljmp	_Serial_write
                                    828 ;------------------------------------------------------------
                                    829 ;Allocation info for local variables in function 'Serial_println'
                                    830 ;------------------------------------------------------------
                                    831 ;s             Allocated to registers r5 r6 r7 
                                    832 ;------------------------------------------------------------
                                    833 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:54: void Serial_println(const char *s) {
                                    834 ;	-----------------------------------------
                                    835 ;	 function Serial_println
                                    836 ;	-----------------------------------------
      000E3D                        837 _Serial_println:
                                    838 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:55: Serial_print(s);
      000E3D 12 0D 12         [24]  839 	lcall	_Serial_print
                                    840 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:56: Serial_write('\r');
      000E40 75 82 0D         [24]  841 	mov	dpl, #0x0d
      000E43 12 0D 08         [24]  842 	lcall	_Serial_write
                                    843 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:57: Serial_write('\n');
      000E46 75 82 0A         [24]  844 	mov	dpl, #0x0a
                                    845 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:58: }
      000E49 02 0D 08         [24]  846 	ljmp	_Serial_write
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'Serial_println_int'
                                    849 ;------------------------------------------------------------
                                    850 ;v             Allocated to registers r6 r7 
                                    851 ;buf           Allocated to stack - _bp +1 +8 
                                    852 ;i             Allocated to stack - _bp +9 +2 
                                    853 ;------------------------------------------------------------
                                    854 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:60: void Serial_println_int(int16_t v)
                                    855 ;	-----------------------------------------
                                    856 ;	 function Serial_println_int
                                    857 ;	-----------------------------------------
      000E4C                        858 _Serial_println_int:
      000E4C C0 13            [24]  859 	push	_bp
      000E4E E5 81            [12]  860 	mov	a,sp
      000E50 F5 13            [12]  861 	mov	_bp,a
      000E52 24 0A            [12]  862 	add	a,#0x0a
      000E54 F5 81            [12]  863 	mov	sp,a
      000E56 AE 82            [24]  864 	mov	r6, dpl
      000E58 AF 83            [24]  865 	mov	r7, dph
                                    866 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:65: if(v < 0) {
      000E5A 8E 04            [24]  867 	mov	ar4,r6
      000E5C 8F 05            [24]  868 	mov	ar5,r7
      000E5E ED               [12]  869 	mov	a,r5
      000E5F 30 E7 15         [24]  870 	jnb	acc.7,00112$
                                    871 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:66: Serial_write('-');
      000E62 75 82 2D         [24]  872 	mov	dpl, #0x2d
      000E65 C0 07            [24]  873 	push	ar7
      000E67 C0 06            [24]  874 	push	ar6
      000E69 12 0D 08         [24]  875 	lcall	_Serial_write
      000E6C D0 06            [24]  876 	pop	ar6
      000E6E D0 07            [24]  877 	pop	ar7
                                    878 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:67: v = -v;
      000E70 C3               [12]  879 	clr	c
      000E71 E4               [12]  880 	clr	a
      000E72 9E               [12]  881 	subb	a,r6
      000E73 FE               [12]  882 	mov	r6,a
      000E74 E4               [12]  883 	clr	a
      000E75 9F               [12]  884 	subb	a,r7
      000E76 FF               [12]  885 	mov	r7,a
                                    886 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:71: do {
      000E77                        887 00112$:
      000E77 AD 13            [24]  888 	mov	r5,_bp
      000E79 0D               [12]  889 	inc	r5
      000E7A E5 13            [12]  890 	mov	a,_bp
      000E7C 24 09            [12]  891 	add	a,#0x09
      000E7E F8               [12]  892 	mov	r0,a
      000E7F E4               [12]  893 	clr	a
      000E80 F6               [12]  894 	mov	@r0,a
      000E81 08               [12]  895 	inc	r0
      000E82 F6               [12]  896 	mov	@r0,a
      000E83                        897 00103$:
                                    898 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:72: buf[i++] = '0' + (v % 10);
      000E83 E5 13            [12]  899 	mov	a,_bp
      000E85 24 09            [12]  900 	add	a,#0x09
      000E87 F8               [12]  901 	mov	r0,a
      000E88 E6               [12]  902 	mov	a,@r0
      000E89 2D               [12]  903 	add	a, r5
      000E8A F9               [12]  904 	mov	r1,a
      000E8B E5 13            [12]  905 	mov	a,_bp
      000E8D 24 09            [12]  906 	add	a,#0x09
      000E8F F8               [12]  907 	mov	r0,a
      000E90 06               [12]  908 	inc	@r0
      000E91 B6 00 02         [24]  909 	cjne	@r0,#0x00,00143$
      000E94 08               [12]  910 	inc	r0
      000E95 06               [12]  911 	inc	@r0
      000E96                        912 00143$:
      000E96 C0 05            [24]  913 	push	ar5
      000E98 8E 02            [24]  914 	mov	ar2,r6
      000E9A 8F 05            [24]  915 	mov	ar5,r7
      000E9C C0 05            [24]  916 	push	ar5
      000E9E C0 02            [24]  917 	push	ar2
      000EA0 C0 01            [24]  918 	push	ar1
      000EA2 74 0A            [12]  919 	mov	a,#0x0a
      000EA4 C0 E0            [24]  920 	push	acc
      000EA6 E4               [12]  921 	clr	a
      000EA7 C0 E0            [24]  922 	push	acc
      000EA9 8A 82            [24]  923 	mov	dpl, r2
      000EAB 8D 83            [24]  924 	mov	dph, r5
      000EAD 12 10 FF         [24]  925 	lcall	__modsint
      000EB0 AB 82            [24]  926 	mov	r3, dpl
      000EB2 15 81            [12]  927 	dec	sp
      000EB4 15 81            [12]  928 	dec	sp
      000EB6 D0 01            [24]  929 	pop	ar1
      000EB8 D0 02            [24]  930 	pop	ar2
      000EBA D0 05            [24]  931 	pop	ar5
      000EBC 74 30            [12]  932 	mov	a,#0x30
      000EBE 2B               [12]  933 	add	a, r3
      000EBF F7               [12]  934 	mov	@r1,a
                                    935 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:73: v /= 10;
      000EC0 74 0A            [12]  936 	mov	a,#0x0a
      000EC2 C0 E0            [24]  937 	push	acc
      000EC4 E4               [12]  938 	clr	a
      000EC5 C0 E0            [24]  939 	push	acc
      000EC7 8A 82            [24]  940 	mov	dpl, r2
      000EC9 8D 83            [24]  941 	mov	dph, r5
      000ECB 12 11 81         [24]  942 	lcall	__divsint
      000ECE AC 82            [24]  943 	mov	r4, dpl
      000ED0 AD 83            [24]  944 	mov	r5, dph
      000ED2 15 81            [12]  945 	dec	sp
      000ED4 15 81            [12]  946 	dec	sp
      000ED6 8C 06            [24]  947 	mov	ar6,r4
      000ED8 8D 07            [24]  948 	mov	ar7,r5
                                    949 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:74: } while(v > 0);
      000EDA 8E 04            [24]  950 	mov	ar4,r6
      000EDC 8F 05            [24]  951 	mov	ar5,r7
      000EDE C3               [12]  952 	clr	c
      000EDF E4               [12]  953 	clr	a
      000EE0 9C               [12]  954 	subb	a,r4
      000EE1 74 80            [12]  955 	mov	a,#(0x00 ^ 0x80)
      000EE3 8D F0            [24]  956 	mov	b,r5
      000EE5 63 F0 80         [24]  957 	xrl	b,#0x80
      000EE8 95 F0            [12]  958 	subb	a,b
      000EEA D0 05            [24]  959 	pop	ar5
      000EEC 40 95            [24]  960 	jc	00103$
                                    961 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:77: while(i--)
      000EEE E5 13            [12]  962 	mov	a,_bp
      000EF0 24 09            [12]  963 	add	a,#0x09
      000EF2 F8               [12]  964 	mov	r0,a
      000EF3 86 06            [24]  965 	mov	ar6,@r0
      000EF5 08               [12]  966 	inc	r0
      000EF6 86 07            [24]  967 	mov	ar7,@r0
      000EF8                        968 00106$:
      000EF8 8E 03            [24]  969 	mov	ar3,r6
      000EFA 8F 04            [24]  970 	mov	ar4,r7
      000EFC 1E               [12]  971 	dec	r6
      000EFD BE FF 01         [24]  972 	cjne	r6,#0xff,00145$
      000F00 1F               [12]  973 	dec	r7
      000F01                        974 00145$:
      000F01 EB               [12]  975 	mov	a,r3
      000F02 4C               [12]  976 	orl	a,r4
      000F03 60 16            [24]  977 	jz	00108$
                                    978 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:78: Serial_write(buf[i]);
      000F05 EE               [12]  979 	mov	a,r6
      000F06 2D               [12]  980 	add	a, r5
      000F07 F9               [12]  981 	mov	r1,a
      000F08 87 82            [24]  982 	mov	dpl,@r1
      000F0A C0 07            [24]  983 	push	ar7
      000F0C C0 06            [24]  984 	push	ar6
      000F0E C0 05            [24]  985 	push	ar5
      000F10 12 0D 08         [24]  986 	lcall	_Serial_write
      000F13 D0 05            [24]  987 	pop	ar5
      000F15 D0 06            [24]  988 	pop	ar6
      000F17 D0 07            [24]  989 	pop	ar7
      000F19 80 DD            [24]  990 	sjmp	00106$
      000F1B                        991 00108$:
                                    992 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:79: Serial_write('\r');
      000F1B 75 82 0D         [24]  993 	mov	dpl, #0x0d
      000F1E 12 0D 08         [24]  994 	lcall	_Serial_write
                                    995 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:80: Serial_write('\n');
      000F21 75 82 0A         [24]  996 	mov	dpl, #0x0a
      000F24 12 0D 08         [24]  997 	lcall	_Serial_write
                                    998 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:81: }
      000F27 85 13 81         [24]  999 	mov	sp,_bp
      000F2A D0 13            [24] 1000 	pop	_bp
      000F2C 22               [24] 1001 	ret
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'Serial_println_uint'
                                   1004 ;------------------------------------------------------------
                                   1005 ;v             Allocated to registers r6 r7 
                                   1006 ;------------------------------------------------------------
                                   1007 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:84: void Serial_println_uint(unsigned int v) {
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function Serial_println_uint
                                   1010 ;	-----------------------------------------
      000F2D                       1011 _Serial_println_uint:
                                   1012 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:85: Serial_print_uint(v);
      000F2D 12 0D 3D         [24] 1013 	lcall	_Serial_print_uint
                                   1014 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:86: Serial_write('\r');
      000F30 75 82 0D         [24] 1015 	mov	dpl, #0x0d
      000F33 12 0D 08         [24] 1016 	lcall	_Serial_write
                                   1017 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:87: Serial_write('\n');
      000F36 75 82 0A         [24] 1018 	mov	dpl, #0x0a
                                   1019 ;	C:\Users\Clovisf\Documents\ch552\serial_print\serial.c:88: }
      000F39 02 0D 08         [24] 1020 	ljmp	_Serial_write
                                   1021 	.area CSEG    (CODE)
                                   1022 	.area CONST   (CODE)
                                   1023 	.area XINIT   (CODE)
                                   1024 	.area CABS    (ABS,CODE)
