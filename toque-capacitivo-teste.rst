                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module toque_capacitivo_teste
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_init
                                     13 	.globl _touchkey_init
                                     14 	.globl _Serial_println_uint
                                     15 	.globl _Serial_print
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
                                    254 	.globl _touch_baseline
                                    255 	.globl _debounceTimer
                                    256 	.globl _tick_10ms
                                    257 	.globl _clock_init
                                    258 	.globl _timer0_ISR
                                    259 	.globl _blink_led
                                    260 ;--------------------------------------------------------
                                    261 ; special function registers
                                    262 ;--------------------------------------------------------
                                    263 	.area RSEG    (ABS,DATA)
      000000                        264 	.org 0x0000
                           0000D0   265 _PSW	=	0x00d0
                           0000E0   266 _ACC	=	0x00e0
                           0000F0   267 _B	=	0x00f0
                           000081   268 _SP	=	0x0081
                           000082   269 _DPL	=	0x0082
                           000083   270 _DPH	=	0x0083
                           0000A1   271 _SAFE_MOD	=	0x00a1
                           0000B1   272 _GLOBAL_CFG	=	0x00b1
                           000087   273 _PCON	=	0x0087
                           0000B9   274 _CLOCK_CFG	=	0x00b9
                           0000A9   275 _WAKE_CTRL	=	0x00a9
                           0000FE   276 _RESET_KEEP	=	0x00fe
                           0000FF   277 _WDOG_COUNT	=	0x00ff
                           0000A8   278 _IE	=	0x00a8
                           0000B8   279 _IP	=	0x00b8
                           0000E8   280 _IE_EX	=	0x00e8
                           0000E9   281 _IP_EX	=	0x00e9
                           0000C7   282 _GPIO_IE	=	0x00c7
                           008584   283 _ROM_ADDR	=	0x8584
                           000084   284 _ROM_ADDR_L	=	0x0084
                           000085   285 _ROM_ADDR_H	=	0x0085
                           008F8E   286 _ROM_DATA	=	0x8f8e
                           00008E   287 _ROM_DATA_L	=	0x008e
                           00008F   288 _ROM_DATA_H	=	0x008f
                           000086   289 _ROM_CTRL	=	0x0086
                           000090   290 _P1	=	0x0090
                           000092   291 _P1_MOD_OC	=	0x0092
                           000093   292 _P1_DIR_PU	=	0x0093
                           0000A0   293 _P2	=	0x00a0
                           0000B0   294 _P3	=	0x00b0
                           000096   295 _P3_MOD_OC	=	0x0096
                           000097   296 _P3_DIR_PU	=	0x0097
                           0000C6   297 _PIN_FUNC	=	0x00c6
                           0000A2   298 _XBUS_AUX	=	0x00a2
                           000088   299 _TCON	=	0x0088
                           000089   300 _TMOD	=	0x0089
                           00008A   301 _TL0	=	0x008a
                           00008B   302 _TL1	=	0x008b
                           00008C   303 _TH0	=	0x008c
                           00008D   304 _TH1	=	0x008d
                           000098   305 _SCON	=	0x0098
                           000099   306 _SBUF	=	0x0099
                           0000C8   307 _T2CON	=	0x00c8
                           0000C9   308 _T2MOD	=	0x00c9
                           00CBCA   309 _RCAP2	=	0xcbca
                           0000CA   310 _RCAP2L	=	0x00ca
                           0000CB   311 _RCAP2H	=	0x00cb
                           00CDCC   312 _T2COUNT	=	0xcdcc
                           0000CC   313 _TL2	=	0x00cc
                           0000CD   314 _TH2	=	0x00cd
                           00CFCE   315 _T2CAP1	=	0xcfce
                           0000CE   316 _T2CAP1L	=	0x00ce
                           0000CF   317 _T2CAP1H	=	0x00cf
                           00009B   318 _PWM_DATA2	=	0x009b
                           00009C   319 _PWM_DATA1	=	0x009c
                           00009D   320 _PWM_CTRL	=	0x009d
                           00009E   321 _PWM_CK_SE	=	0x009e
                           0000F8   322 _SPI0_STAT	=	0x00f8
                           0000F9   323 _SPI0_DATA	=	0x00f9
                           0000FA   324 _SPI0_CTRL	=	0x00fa
                           0000FB   325 _SPI0_CK_SE	=	0x00fb
                           0000FC   326 _SPI0_SETUP	=	0x00fc
                           0000C0   327 _SCON1	=	0x00c0
                           0000C1   328 _SBUF1	=	0x00c1
                           0000C2   329 _SBAUD1	=	0x00c2
                           000080   330 _ADC_CTRL	=	0x0080
                           00009A   331 _ADC_CFG	=	0x009a
                           00009F   332 _ADC_DATA	=	0x009f
                           0000C3   333 _TKEY_CTRL	=	0x00c3
                           00C5C4   334 _TKEY_DAT	=	0xc5c4
                           0000C4   335 _TKEY_DATL	=	0x00c4
                           0000C5   336 _TKEY_DATH	=	0x00c5
                           000091   337 _USB_C_CTRL	=	0x0091
                           0000D1   338 _UDEV_CTRL	=	0x00d1
                           0000D2   339 _UEP1_CTRL	=	0x00d2
                           0000D3   340 _UEP1_T_LEN	=	0x00d3
                           0000D4   341 _UEP2_CTRL	=	0x00d4
                           0000D5   342 _UEP2_T_LEN	=	0x00d5
                           0000D6   343 _UEP3_CTRL	=	0x00d6
                           0000D7   344 _UEP3_T_LEN	=	0x00d7
                           0000D8   345 _USB_INT_FG	=	0x00d8
                           0000D9   346 _USB_INT_ST	=	0x00d9
                           0000DA   347 _USB_MIS_ST	=	0x00da
                           0000DB   348 _USB_RX_LEN	=	0x00db
                           0000DC   349 _UEP0_CTRL	=	0x00dc
                           0000DD   350 _UEP0_T_LEN	=	0x00dd
                           0000DE   351 _UEP4_CTRL	=	0x00de
                           0000DF   352 _UEP4_T_LEN	=	0x00df
                           0000E1   353 _USB_INT_EN	=	0x00e1
                           0000E2   354 _USB_CTRL	=	0x00e2
                           0000E3   355 _USB_DEV_AD	=	0x00e3
                           00E5E4   356 _UEP2_DMA	=	0xe5e4
                           0000E4   357 _UEP2_DMA_L	=	0x00e4
                           0000E5   358 _UEP2_DMA_H	=	0x00e5
                           00E7E6   359 _UEP3_DMA	=	0xe7e6
                           0000E6   360 _UEP3_DMA_L	=	0x00e6
                           0000E7   361 _UEP3_DMA_H	=	0x00e7
                           0000EA   362 _UEP4_1_MOD	=	0x00ea
                           0000EB   363 _UEP2_3_MOD	=	0x00eb
                           00EDEC   364 _UEP0_DMA	=	0xedec
                           0000EC   365 _UEP0_DMA_L	=	0x00ec
                           0000ED   366 _UEP0_DMA_H	=	0x00ed
                           00EFEE   367 _UEP1_DMA	=	0xefee
                           0000EE   368 _UEP1_DMA_L	=	0x00ee
                           0000EF   369 _UEP1_DMA_H	=	0x00ef
                                    370 ;--------------------------------------------------------
                                    371 ; special function bits
                                    372 ;--------------------------------------------------------
                                    373 	.area RSEG    (ABS,DATA)
      000000                        374 	.org 0x0000
                           0000D7   375 _CY	=	0x00d7
                           0000D6   376 _AC	=	0x00d6
                           0000D5   377 _F0	=	0x00d5
                           0000D4   378 _RS1	=	0x00d4
                           0000D3   379 _RS0	=	0x00d3
                           0000D2   380 _OV	=	0x00d2
                           0000D1   381 _F1	=	0x00d1
                           0000D0   382 _P	=	0x00d0
                           0000AF   383 _EA	=	0x00af
                           0000AE   384 _E_DIS	=	0x00ae
                           0000AD   385 _ET2	=	0x00ad
                           0000AC   386 _ES	=	0x00ac
                           0000AB   387 _ET1	=	0x00ab
                           0000AA   388 _EX1	=	0x00aa
                           0000A9   389 _ET0	=	0x00a9
                           0000A8   390 _EX0	=	0x00a8
                           0000BF   391 _PH_FLAG	=	0x00bf
                           0000BE   392 _PL_FLAG	=	0x00be
                           0000BD   393 _PT2	=	0x00bd
                           0000BC   394 _PS	=	0x00bc
                           0000BB   395 _PT1	=	0x00bb
                           0000BA   396 _PX1	=	0x00ba
                           0000B9   397 _PT0	=	0x00b9
                           0000B8   398 _PX0	=	0x00b8
                           0000EF   399 _IE_WDOG	=	0x00ef
                           0000EE   400 _IE_GPIO	=	0x00ee
                           0000ED   401 _IE_PWMX	=	0x00ed
                           0000EC   402 _IE_UART1	=	0x00ec
                           0000EB   403 _IE_ADC	=	0x00eb
                           0000EA   404 _IE_USB	=	0x00ea
                           0000E9   405 _IE_TKEY	=	0x00e9
                           0000E8   406 _IE_SPI0	=	0x00e8
                           000097   407 _SCK	=	0x0097
                           000097   408 _TXD1	=	0x0097
                           000097   409 _TIN5	=	0x0097
                           000096   410 _MISO	=	0x0096
                           000096   411 _RXD1	=	0x0096
                           000096   412 _TIN4	=	0x0096
                           000095   413 _MOSI	=	0x0095
                           000095   414 _PWM1	=	0x0095
                           000095   415 _TIN3	=	0x0095
                           000095   416 _UCC2	=	0x0095
                           000095   417 _AIN2	=	0x0095
                           000094   418 _T2_	=	0x0094
                           000094   419 _CAP1_	=	0x0094
                           000094   420 _SCS	=	0x0094
                           000094   421 _TIN2	=	0x0094
                           000094   422 _UCC1	=	0x0094
                           000094   423 _AIN1	=	0x0094
                           000093   424 _TXD_	=	0x0093
                           000092   425 _RXD_	=	0x0092
                           000091   426 _T2EX	=	0x0091
                           000091   427 _CAP2	=	0x0091
                           000091   428 _TIN1	=	0x0091
                           000091   429 _VBUS2	=	0x0091
                           000091   430 _AIN0	=	0x0091
                           000090   431 _T2	=	0x0090
                           000090   432 _CAP1	=	0x0090
                           000090   433 _TIN0	=	0x0090
                           0000B7   434 _UDM	=	0x00b7
                           0000B6   435 _UDP	=	0x00b6
                           0000B5   436 _T1	=	0x00b5
                           0000B4   437 _PWM2	=	0x00b4
                           0000B4   438 _RXD1_	=	0x00b4
                           0000B4   439 _T0	=	0x00b4
                           0000B3   440 _INT1	=	0x00b3
                           0000B2   441 _TXD1_	=	0x00b2
                           0000B2   442 _INT0	=	0x00b2
                           0000B2   443 _VBUS1	=	0x00b2
                           0000B2   444 _AIN3	=	0x00b2
                           0000B1   445 _PWM2_	=	0x00b1
                           0000B1   446 _TXD	=	0x00b1
                           0000B0   447 _PWM1_	=	0x00b0
                           0000B0   448 _RXD	=	0x00b0
                           00008F   449 _TF1	=	0x008f
                           00008E   450 _TR1	=	0x008e
                           00008D   451 _TF0	=	0x008d
                           00008C   452 _TR0	=	0x008c
                           00008B   453 _IE1	=	0x008b
                           00008A   454 _IT1	=	0x008a
                           000089   455 _IE0	=	0x0089
                           000088   456 _IT0	=	0x0088
                           00009F   457 _SM0	=	0x009f
                           00009E   458 _SM1	=	0x009e
                           00009D   459 _SM2	=	0x009d
                           00009C   460 _REN	=	0x009c
                           00009B   461 _TB8	=	0x009b
                           00009A   462 _RB8	=	0x009a
                           000099   463 _TI	=	0x0099
                           000098   464 _RI	=	0x0098
                           0000CF   465 _TF2	=	0x00cf
                           0000CF   466 _CAP1F	=	0x00cf
                           0000CE   467 _EXF2	=	0x00ce
                           0000CD   468 _RCLK	=	0x00cd
                           0000CC   469 _TCLK	=	0x00cc
                           0000CB   470 _EXEN2	=	0x00cb
                           0000CA   471 _TR2	=	0x00ca
                           0000C9   472 _C_T2	=	0x00c9
                           0000C8   473 _CP_RL2	=	0x00c8
                           0000FF   474 _S0_FST_ACT	=	0x00ff
                           0000FE   475 _S0_IF_OV	=	0x00fe
                           0000FD   476 _S0_IF_FIRST	=	0x00fd
                           0000FC   477 _S0_IF_BYTE	=	0x00fc
                           0000FB   478 _S0_FREE	=	0x00fb
                           0000FA   479 _S0_T_FIFO	=	0x00fa
                           0000F8   480 _S0_R_FIFO	=	0x00f8
                           0000C7   481 _U1SM0	=	0x00c7
                           0000C5   482 _U1SMOD	=	0x00c5
                           0000C4   483 _U1REN	=	0x00c4
                           0000C3   484 _U1TB8	=	0x00c3
                           0000C2   485 _U1RB8	=	0x00c2
                           0000C1   486 _U1TI	=	0x00c1
                           0000C0   487 _U1RI	=	0x00c0
                           000087   488 _CMPO	=	0x0087
                           000086   489 _CMP_IF	=	0x0086
                           000085   490 _ADC_IF	=	0x0085
                           000084   491 _ADC_START	=	0x0084
                           000083   492 _CMP_CHAN	=	0x0083
                           000081   493 _ADC_CHAN1	=	0x0081
                           000080   494 _ADC_CHAN0	=	0x0080
                           0000DF   495 _U_IS_NAK	=	0x00df
                           0000DE   496 _U_TOG_OK	=	0x00de
                           0000DD   497 _U_SIE_FREE	=	0x00dd
                           0000DC   498 _UIF_FIFO_OV	=	0x00dc
                           0000DB   499 _UIF_HST_SOF	=	0x00db
                           0000DA   500 _UIF_SUSPEND	=	0x00da
                           0000D9   501 _UIF_TRANSFER	=	0x00d9
                           0000D8   502 _UIF_DETECT	=	0x00d8
                           0000D8   503 _UIF_BUS_RST	=	0x00d8
                                    504 ;--------------------------------------------------------
                                    505 ; overlayable register banks
                                    506 ;--------------------------------------------------------
                                    507 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        508 	.ds 8
                                    509 ;--------------------------------------------------------
                                    510 ; internal ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area DSEG    (DATA)
      000008                        513 _tick_10ms::
      000008                        514 	.ds 2
      00000A                        515 _debounceTimer::
      00000A                        516 	.ds 2
      00000C                        517 _touch_baseline::
      00000C                        518 	.ds 1
                                    519 ;--------------------------------------------------------
                                    520 ; overlayable items in internal ram
                                    521 ;--------------------------------------------------------
                                    522 ;--------------------------------------------------------
                                    523 ; Stack segment in internal ram
                                    524 ;--------------------------------------------------------
                                    525 	.area SSEG
      000021                        526 __start__stack:
      000021                        527 	.ds	1
                                    528 
                                    529 ;--------------------------------------------------------
                                    530 ; indirectly addressable internal ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area ISEG    (DATA)
                                    533 ;--------------------------------------------------------
                                    534 ; absolute internal ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area IABS    (ABS,DATA)
                                    537 	.area IABS    (ABS,DATA)
                                    538 ;--------------------------------------------------------
                                    539 ; bit data
                                    540 ;--------------------------------------------------------
                                    541 	.area BSEG    (BIT)
      000000                        542 _button_irq::
      000000                        543 	.ds 1
      000001                        544 _debounce::
      000001                        545 	.ds 1
      000002                        546 _ledON::
      000002                        547 	.ds 1
                                    548 ;--------------------------------------------------------
                                    549 ; paged external ram data
                                    550 ;--------------------------------------------------------
                                    551 	.area PSEG    (PAG,XDATA)
                                    552 ;--------------------------------------------------------
                                    553 ; uninitialized external ram data
                                    554 ;--------------------------------------------------------
                                    555 	.area XSEG    (XDATA)
                                    556 ;--------------------------------------------------------
                                    557 ; absolute external ram data
                                    558 ;--------------------------------------------------------
                                    559 	.area XABS    (ABS,XDATA)
                                    560 ;--------------------------------------------------------
                                    561 ; initialized external ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area XISEG   (XDATA)
                                    564 	.area HOME    (CODE)
                                    565 	.area GSINIT0 (CODE)
                                    566 	.area GSINIT1 (CODE)
                                    567 	.area GSINIT2 (CODE)
                                    568 	.area GSINIT3 (CODE)
                                    569 	.area GSINIT4 (CODE)
                                    570 	.area GSINIT5 (CODE)
                                    571 	.area GSINIT  (CODE)
                                    572 	.area GSFINAL (CODE)
                                    573 	.area CSEG    (CODE)
                                    574 ;--------------------------------------------------------
                                    575 ; interrupt vector
                                    576 ;--------------------------------------------------------
                                    577 	.area HOME    (CODE)
      000000                        578 __interrupt_vect:
      000000 02 00 54         [24]  579 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  580 	reti
      000004                        581 	.ds	7
      00000B 02 01 44         [24]  582 	ljmp	_timer0_ISR
                                    583 ; restartable atomic support routines
      00000E                        584 	.ds	2
      000010                        585 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  586 	nop
      000011 00               [12]  587 	nop
      000012                        588 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  589 	movx	a, @r0
      000013 FB               [12]  590 	mov	r3, a
      000014 EA               [12]  591 	mov	a, r2
      000015 F2               [24]  592 	movx	@r0, a
      000016 80 2C            [24]  593 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  594 	nop
      000019 00               [12]  595 	nop
      00001A                        596 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  597 	movx	a, @dptr
      00001B FB               [12]  598 	mov	r3, a
      00001C EA               [12]  599 	mov	a, r2
      00001D F0               [24]  600 	movx	@dptr, a
      00001E 80 24            [24]  601 	sjmp	sdcc_atomic_exchange_exit
      000020                        602 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  603 	mov	a, @r0
      000021 B5 02 02         [24]  604 	cjne	a, ar2, .+#5
      000024 EB               [12]  605 	mov	a, r3
      000025 F6               [12]  606 	mov	@r0, a
      000026 22               [24]  607 	ret
      000027 00               [12]  608 	nop
      000028                        609 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  610 	movx	a, @r0
      000029 B5 02 02         [24]  611 	cjne	a, ar2, .+#5
      00002C EB               [12]  612 	mov	a, r3
      00002D F2               [24]  613 	movx	@r0, a
      00002E 22               [24]  614 	ret
      00002F 00               [12]  615 	nop
      000030                        616 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  617 	movx	a, @dptr
      000031 B5 02 02         [24]  618 	cjne	a, ar2, .+#5
      000034 EB               [12]  619 	mov	a, r3
      000035 F0               [24]  620 	movx	@dptr, a
      000036 22               [24]  621 	ret
      000037                        622 sdcc_atomic_exchange_rollback_end::
                                    623 
      000037                        624 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  625 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  626 	mov	r0, dpl
      00003C 20 F5 D3         [24]  627 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        628 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  629 	mov	a, r2
      000040 C6               [12]  630 	xch	a, @r0
      000041 F5 82            [12]  631 	mov	dpl, a
      000043 22               [24]  632 	ret
      000044                        633 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  634 	mov	dpl, r3
      000046 22               [24]  635 	ret
      000047                        636 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  637 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  638 	mov	r0, dpl
      00004C 20 F5 D9         [24]  639 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  640 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    641 ;--------------------------------------------------------
                                    642 ; global & static initialisations
                                    643 ;--------------------------------------------------------
                                    644 	.area HOME    (CODE)
                                    645 	.area GSINIT  (CODE)
                                    646 	.area GSFINAL (CODE)
                                    647 	.area GSINIT  (CODE)
                                    648 	.globl __sdcc_gsinit_startup
                                    649 	.globl __sdcc_program_startup
                                    650 	.globl __start__stack
                                    651 	.globl __mcs51_genXINIT
                                    652 	.globl __mcs51_genXRAMCLEAR
                                    653 	.globl __mcs51_genRAMCLEAR
                                    654 ;	toque-capacitivo-teste.c:5: volatile unsigned int tick_10ms = 0;
      0000AD E4               [12]  655 	clr	a
      0000AE F5 08            [12]  656 	mov	_tick_10ms,a
      0000B0 F5 09            [12]  657 	mov	(_tick_10ms + 1),a
                                    658 ;	toque-capacitivo-teste.c:6: volatile unsigned int debounceTimer = 0;
      0000B2 F5 0A            [12]  659 	mov	_debounceTimer,a
      0000B4 F5 0B            [12]  660 	mov	(_debounceTimer + 1),a
                                    661 ;	toque-capacitivo-teste.c:17: volatile uint8_t touch_baseline = 0;
      0000B6 F5 0C            [12]  662 	mov	_touch_baseline,a
                                    663 ;	toque-capacitivo-teste.c:7: volatile __bit button_irq = 0;
                                    664 ;	assignBit
      0000B8 C2 00            [12]  665 	clr	_button_irq
                                    666 ;	toque-capacitivo-teste.c:8: volatile __bit debounce = 0;
                                    667 ;	assignBit
      0000BA C2 01            [12]  668 	clr	_debounce
                                    669 ;	toque-capacitivo-teste.c:9: volatile __bit ledON = 0;
                                    670 ;	assignBit
      0000BC C2 02            [12]  671 	clr	_ledON
                                    672 	.area GSFINAL (CODE)
      0000C1 02 00 51         [24]  673 	ljmp	__sdcc_program_startup
                                    674 ;--------------------------------------------------------
                                    675 ; Home
                                    676 ;--------------------------------------------------------
                                    677 	.area HOME    (CODE)
                                    678 	.area HOME    (CODE)
      000051                        679 __sdcc_program_startup:
      000051 02 01 D0         [24]  680 	ljmp	_main
                                    681 ;	return from main will return to caller
                                    682 ;--------------------------------------------------------
                                    683 ; code
                                    684 ;--------------------------------------------------------
                                    685 	.area CSEG    (CODE)
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'clock_init'
                                    688 ;------------------------------------------------------------
                                    689 ;	toque-capacitivo-teste.c:19: void clock_init(void) {
                                    690 ;	-----------------------------------------
                                    691 ;	 function clock_init
                                    692 ;	-----------------------------------------
      0000C4                        693 _clock_init:
                           000007   694 	ar7 = 0x07
                           000006   695 	ar6 = 0x06
                           000005   696 	ar5 = 0x05
                           000004   697 	ar4 = 0x04
                           000003   698 	ar3 = 0x03
                           000002   699 	ar2 = 0x02
                           000001   700 	ar1 = 0x01
                           000000   701 	ar0 = 0x00
                                    702 ;	toque-capacitivo-teste.c:20: SAFE_MOD = 0x55;
      0000C4 75 A1 55         [24]  703 	mov	_SAFE_MOD,#0x55
                                    704 ;	toque-capacitivo-teste.c:21: SAFE_MOD = 0xAA;
      0000C7 75 A1 AA         [24]  705 	mov	_SAFE_MOD,#0xaa
                                    706 ;	toque-capacitivo-teste.c:23: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0000CA 74 F8            [12]  707 	mov	a,#0xf8
      0000CC 55 B9            [12]  708 	anl	a,_CLOCK_CFG
      0000CE 44 06            [12]  709 	orl	a,#0x06
      0000D0 F5 B9            [12]  710 	mov	_CLOCK_CFG,a
                                    711 ;	toque-capacitivo-teste.c:25: SAFE_MOD = 0x00;
      0000D2 75 A1 00         [24]  712 	mov	_SAFE_MOD,#0x00
                                    713 ;	toque-capacitivo-teste.c:26: }
      0000D5 22               [24]  714 	ret
                                    715 ;------------------------------------------------------------
                                    716 ;Allocation info for local variables in function 'touchkey_init'
                                    717 ;------------------------------------------------------------
                                    718 ;sum           Allocated to registers r6 r7 
                                    719 ;i             Allocated to stack - _bp +1 +1 
                                    720 ;------------------------------------------------------------
                                    721 ;	toque-capacitivo-teste.c:28: void touchkey_init(void) {
                                    722 ;	-----------------------------------------
                                    723 ;	 function touchkey_init
                                    724 ;	-----------------------------------------
      0000D6                        725 _touchkey_init:
      0000D6 C0 0E            [24]  726 	push	_bp
      0000D8 85 81 0E         [24]  727 	mov	_bp,sp
      0000DB 05 81            [12]  728 	inc	sp
                                    729 ;	toque-capacitivo-teste.c:29: P1_MOD_OC &= ~(1 << 7);
      0000DD 53 92 7F         [24]  730 	anl	_P1_MOD_OC,#0x7f
                                    731 ;	toque-capacitivo-teste.c:30: P1_DIR_PU  &= ~(1 << 7);
      0000E0 53 93 7F         [24]  732 	anl	_P1_DIR_PU,#0x7f
                                    733 ;	toque-capacitivo-teste.c:32: TKEY_CTRL = 0x06; // TIN5 (P1.7), channel 110
      0000E3 75 C3 06         [24]  734 	mov	_TKEY_CTRL,#0x06
                                    735 ;	toque-capacitivo-teste.c:36: while (!(TKEY_CTRL & bTKC_IF));
      0000E6                        736 00101$:
      0000E6 E5 C3            [12]  737 	mov	a,_TKEY_CTRL
      0000E8 30 E7 FB         [24]  738 	jnb	acc.7,00101$
                                    739 ;	toque-capacitivo-teste.c:37: uint16_t sum = 0;
      0000EB 7E 00            [12]  740 	mov	r6,#0x00
      0000ED 7F 00            [12]  741 	mov	r7,#0x00
                                    742 ;	toque-capacitivo-teste.c:38: for (uint8_t i = 0; i < 16; i++) {
      0000EF A8 0E            [24]  743 	mov	r0,_bp
      0000F1 08               [12]  744 	inc	r0
      0000F2 76 00            [12]  745 	mov	@r0,#0x00
      0000F4                        746 00109$:
      0000F4 A8 0E            [24]  747 	mov	r0,_bp
      0000F6 08               [12]  748 	inc	r0
      0000F7 B6 10 00         [24]  749 	cjne	@r0,#0x10,00145$
      0000FA                        750 00145$:
      0000FA 50 20            [24]  751 	jnc	00107$
                                    752 ;	toque-capacitivo-teste.c:39: while (!(TKEY_CTRL & bTKC_IF));
      0000FC                        753 00104$:
      0000FC E5 C3            [12]  754 	mov	a,_TKEY_CTRL
      0000FE 30 E7 FB         [24]  755 	jnb	acc.7,00104$
                                    756 ;	toque-capacitivo-teste.c:40: sum += TKEY_DATL;
      000101 AC C4            [24]  757 	mov	r4,_TKEY_DATL
      000103 8E 02            [24]  758 	mov	ar2,r6
      000105 8F 03            [24]  759 	mov	ar3,r7
      000107 7D 00            [12]  760 	mov	r5,#0x00
      000109 EC               [12]  761 	mov	a,r4
      00010A 2A               [12]  762 	add	a, r2
      00010B FA               [12]  763 	mov	r2,a
      00010C ED               [12]  764 	mov	a,r5
      00010D 3B               [12]  765 	addc	a, r3
      00010E FB               [12]  766 	mov	r3,a
      00010F 8A 06            [24]  767 	mov	ar6,r2
      000111 8B 07            [24]  768 	mov	ar7,r3
                                    769 ;	toque-capacitivo-teste.c:41: TKEY_CTRL = 0x06;
      000113 75 C3 06         [24]  770 	mov	_TKEY_CTRL,#0x06
                                    771 ;	toque-capacitivo-teste.c:38: for (uint8_t i = 0; i < 16; i++) {
      000116 A8 0E            [24]  772 	mov	r0,_bp
      000118 08               [12]  773 	inc	r0
      000119 06               [12]  774 	inc	@r0
      00011A 80 D8            [24]  775 	sjmp	00109$
      00011C                        776 00107$:
                                    777 ;	toque-capacitivo-teste.c:43: touch_baseline = sum / 16;
      00011C EF               [12]  778 	mov	a,r7
      00011D C4               [12]  779 	swap	a
      00011E CE               [12]  780 	xch	a,r6
      00011F C4               [12]  781 	swap	a
      000120 54 0F            [12]  782 	anl	a,#0x0f
      000122 6E               [12]  783 	xrl	a,r6
      000123 CE               [12]  784 	xch	a,r6
      000124 54 0F            [12]  785 	anl	a,#0x0f
      000126 CE               [12]  786 	xch	a,r6
      000127 6E               [12]  787 	xrl	a,r6
      000128 CE               [12]  788 	xch	a,r6
      000129 8E 0C            [24]  789 	mov	_touch_baseline,r6
                                    790 ;	toque-capacitivo-teste.c:45: Serial_print("Baseline: ");
      00012B 90 08 D3         [24]  791 	mov	dptr,#___str_0
      00012E 75 F0 80         [24]  792 	mov	b, #0x80
      000131 12 05 22         [24]  793 	lcall	_Serial_print
                                    794 ;	toque-capacitivo-teste.c:46: Serial_println_uint(touch_baseline); // lets you see what value you're working with
      000134 AE 0C            [24]  795 	mov	r6,_touch_baseline
      000136 7F 00            [12]  796 	mov	r7,#0x00
      000138 8E 82            [24]  797 	mov	dpl, r6
      00013A 8F 83            [24]  798 	mov	dph, r7
      00013C 12 07 3D         [24]  799 	lcall	_Serial_println_uint
                                    800 ;	toque-capacitivo-teste.c:47: }
      00013F 15 81            [12]  801 	dec	sp
      000141 D0 0E            [24]  802 	pop	_bp
      000143 22               [24]  803 	ret
                                    804 ;------------------------------------------------------------
                                    805 ;Allocation info for local variables in function 'timer0_ISR'
                                    806 ;------------------------------------------------------------
                                    807 ;	toque-capacitivo-teste.c:48: void timer0_ISR(void) __interrupt(INT_NO_TMR0) { // You can do __interrupt (1) if you prefer
                                    808 ;	-----------------------------------------
                                    809 ;	 function timer0_ISR
                                    810 ;	-----------------------------------------
      000144                        811 _timer0_ISR:
      000144 C0 E0            [24]  812 	push	acc
      000146 C0 07            [24]  813 	push	ar7
      000148 C0 06            [24]  814 	push	ar6
      00014A C0 D0            [24]  815 	push	psw
      00014C 75 D0 00         [24]  816 	mov	psw,#0x00
                                    817 ;	toque-capacitivo-teste.c:49: TF0 = 0;  // clear overflow flag (important for robustness)
                                    818 ;	assignBit
      00014F C2 8D            [12]  819 	clr	_TF0
                                    820 ;	toque-capacitivo-teste.c:50: TH0 = 0xB1;
      000151 75 8C B1         [24]  821 	mov	_TH0,#0xb1
                                    822 ;	toque-capacitivo-teste.c:51: TL0 = 0xE0;
      000154 75 8A E0         [24]  823 	mov	_TL0,#0xe0
                                    824 ;	toque-capacitivo-teste.c:52: if(tick_10ms < 51){
      000157 C3               [12]  825 	clr	c
      000158 E5 08            [12]  826 	mov	a,_tick_10ms
      00015A 94 33            [12]  827 	subb	a,#0x33
      00015C E5 09            [12]  828 	mov	a,(_tick_10ms + 1)
      00015E 94 00            [12]  829 	subb	a,#0x00
      000160 50 0F            [24]  830 	jnc	00102$
                                    831 ;	toque-capacitivo-teste.c:53: tick_10ms++; // this is the 10ms tick for LED blinking
      000162 AE 08            [24]  832 	mov	r6,_tick_10ms
      000164 AF 09            [24]  833 	mov	r7,(_tick_10ms + 1)
      000166 74 01            [12]  834 	mov	a,#0x01
      000168 2E               [12]  835 	add	a, r6
      000169 F5 08            [12]  836 	mov	_tick_10ms,a
      00016B E4               [12]  837 	clr	a
      00016C 3F               [12]  838 	addc	a, r7
      00016D F5 09            [12]  839 	mov	(_tick_10ms + 1),a
      00016F 80 05            [24]  840 	sjmp	00103$
      000171                        841 00102$:
                                    842 ;	toque-capacitivo-teste.c:55: tick_10ms= 0;
      000171 E4               [12]  843 	clr	a
      000172 F5 08            [12]  844 	mov	_tick_10ms,a
      000174 F5 09            [12]  845 	mov	(_tick_10ms + 1),a
      000176                        846 00103$:
                                    847 ;	toque-capacitivo-teste.c:58: if(debounce){ // if external interrupt happened, activate debounce timer
      000176 30 01 1F         [24]  848 	jnb	_debounce,00108$
                                    849 ;	toque-capacitivo-teste.c:59: debounceTimer++;
      000179 AE 0A            [24]  850 	mov	r6,_debounceTimer
      00017B AF 0B            [24]  851 	mov	r7,(_debounceTimer + 1)
      00017D 74 01            [12]  852 	mov	a,#0x01
      00017F 2E               [12]  853 	add	a, r6
      000180 F5 0A            [12]  854 	mov	_debounceTimer,a
      000182 E4               [12]  855 	clr	a
      000183 3F               [12]  856 	addc	a, r7
      000184 F5 0B            [12]  857 	mov	(_debounceTimer + 1),a
                                    858 ;	toque-capacitivo-teste.c:60: if(debounceTimer >= 60){ // after 400ms of not detecting the touch key
      000186 C3               [12]  859 	clr	c
      000187 E5 0A            [12]  860 	mov	a,_debounceTimer
      000189 94 3C            [12]  861 	subb	a,#0x3c
      00018B E5 0B            [12]  862 	mov	a,(_debounceTimer + 1)
      00018D 94 00            [12]  863 	subb	a,#0x00
      00018F 40 07            [24]  864 	jc	00108$
                                    865 ;	toque-capacitivo-teste.c:61: debounce= 0; // turn debounce delay OFF
                                    866 ;	assignBit
      000191 C2 01            [12]  867 	clr	_debounce
                                    868 ;	toque-capacitivo-teste.c:62: debounceTimer= 0; // and clear timer/counter for next time
      000193 E4               [12]  869 	clr	a
      000194 F5 0A            [12]  870 	mov	_debounceTimer,a
      000196 F5 0B            [12]  871 	mov	(_debounceTimer + 1),a
      000198                        872 00108$:
                                    873 ;	toque-capacitivo-teste.c:65: }
      000198 D0 D0            [24]  874 	pop	psw
      00019A D0 06            [24]  875 	pop	ar6
      00019C D0 07            [24]  876 	pop	ar7
      00019E D0 E0            [24]  877 	pop	acc
      0001A0 32               [24]  878 	reti
                                    879 ;	eliminated unneeded push/pop dpl
                                    880 ;	eliminated unneeded push/pop dph
                                    881 ;	eliminated unneeded push/pop b
                                    882 ;------------------------------------------------------------
                                    883 ;Allocation info for local variables in function 'timer0_init'
                                    884 ;------------------------------------------------------------
                                    885 ;	toque-capacitivo-teste.c:67: void timer0_init(void) {
                                    886 ;	-----------------------------------------
                                    887 ;	 function timer0_init
                                    888 ;	-----------------------------------------
      0001A1                        889 _timer0_init:
                                    890 ;	toque-capacitivo-teste.c:68: TMOD &= ~0x03;  // clear Timer0 mode bits
      0001A1 53 89 FC         [24]  891 	anl	_TMOD,#0xfc
                                    892 ;	toque-capacitivo-teste.c:69: TMOD |=  0x01;  // Timer0 mode 1: 16-bit
      0001A4 43 89 01         [24]  893 	orl	_TMOD,#0x01
                                    894 ;	toque-capacitivo-teste.c:73: TH0 = 0xB1;
      0001A7 75 8C B1         [24]  895 	mov	_TH0,#0xb1
                                    896 ;	toque-capacitivo-teste.c:74: TL0 = 0xE0;
      0001AA 75 8A E0         [24]  897 	mov	_TL0,#0xe0
                                    898 ;	toque-capacitivo-teste.c:76: ET0 = 1;   // enable Timer0 interrupt
                                    899 ;	assignBit
      0001AD D2 A9            [12]  900 	setb	_ET0
                                    901 ;	toque-capacitivo-teste.c:77: TR0 = 1;   // start Timer0
                                    902 ;	assignBit
      0001AF D2 8C            [12]  903 	setb	_TR0
                                    904 ;	toque-capacitivo-teste.c:78: EA = 1;
                                    905 ;	assignBit
      0001B1 D2 AF            [12]  906 	setb	_EA
                                    907 ;	toque-capacitivo-teste.c:79: }
      0001B3 22               [24]  908 	ret
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'blink_led'
                                    911 ;------------------------------------------------------------
                                    912 ;	toque-capacitivo-teste.c:81: void blink_led(void) {
                                    913 ;	-----------------------------------------
                                    914 ;	 function blink_led
                                    915 ;	-----------------------------------------
      0001B4                        916 _blink_led:
                                    917 ;	toque-capacitivo-teste.c:82: if(tick_10ms <= 25){
      0001B4 C3               [12]  918 	clr	c
      0001B5 74 19            [12]  919 	mov	a,#0x19
      0001B7 95 08            [12]  920 	subb	a,_tick_10ms
      0001B9 E4               [12]  921 	clr	a
      0001BA 95 09            [12]  922 	subb	a,(_tick_10ms + 1)
      0001BC 40 04            [24]  923 	jc	00104$
                                    924 ;	toque-capacitivo-teste.c:83: P3 |= (1 << 5);  // LED ON
      0001BE 43 B0 20         [24]  925 	orl	_P3,#0x20
      0001C1 22               [24]  926 	ret
      0001C2                        927 00104$:
                                    928 ;	toque-capacitivo-teste.c:84: } else if(tick_10ms <= 50){
      0001C2 C3               [12]  929 	clr	c
      0001C3 74 32            [12]  930 	mov	a,#0x32
      0001C5 95 08            [12]  931 	subb	a,_tick_10ms
      0001C7 E4               [12]  932 	clr	a
      0001C8 95 09            [12]  933 	subb	a,(_tick_10ms + 1)
      0001CA 40 03            [24]  934 	jc	00106$
                                    935 ;	toque-capacitivo-teste.c:85: P3 &= ~(1 << 5); // LED OFF
      0001CC 53 B0 DF         [24]  936 	anl	_P3,#0xdf
      0001CF                        937 00106$:
                                    938 ;	toque-capacitivo-teste.c:87: }
      0001CF 22               [24]  939 	ret
                                    940 ;------------------------------------------------------------
                                    941 ;Allocation info for local variables in function 'main'
                                    942 ;------------------------------------------------------------
                                    943 ;touchValue    Allocated to registers r7 
                                    944 ;------------------------------------------------------------
                                    945 ;	toque-capacitivo-teste.c:89: void main(void) {
                                    946 ;	-----------------------------------------
                                    947 ;	 function main
                                    948 ;	-----------------------------------------
      0001D0                        949 _main:
                                    950 ;	toque-capacitivo-teste.c:90: clock_init();
      0001D0 12 00 C4         [24]  951 	lcall	_clock_init
                                    952 ;	toque-capacitivo-teste.c:91: Serial_begin();
      0001D3 12 04 EE         [24]  953 	lcall	_Serial_begin
                                    954 ;	toque-capacitivo-teste.c:92: timer0_init();
      0001D6 12 01 A1         [24]  955 	lcall	_timer0_init
                                    956 ;	toque-capacitivo-teste.c:95: SAFE_MOD = 0x55;
      0001D9 75 A1 55         [24]  957 	mov	_SAFE_MOD,#0x55
                                    958 ;	toque-capacitivo-teste.c:96: SAFE_MOD = 0xAA;
      0001DC 75 A1 AA         [24]  959 	mov	_SAFE_MOD,#0xaa
                                    960 ;	toque-capacitivo-teste.c:97: GLOBAL_CFG &= ~bWDOG_EN;   // turn off watchdog
      0001DF 53 B1 FE         [24]  961 	anl	_GLOBAL_CFG,#0xfe
                                    962 ;	toque-capacitivo-teste.c:98: SAFE_MOD = 0x00;
      0001E2 75 A1 00         [24]  963 	mov	_SAFE_MOD,#0x00
                                    964 ;	toque-capacitivo-teste.c:101: P3_MOD_OC &= ~(1 << 5);   // not open-drain
      0001E5 53 96 DF         [24]  965 	anl	_P3_MOD_OC,#0xdf
                                    966 ;	toque-capacitivo-teste.c:102: P3_DIR_PU |=  (1 << 5);   // output, with pull-up
      0001E8 43 97 20         [24]  967 	orl	_P3_DIR_PU,#0x20
                                    968 ;	toque-capacitivo-teste.c:104: touchkey_init();   
      0001EB 12 00 D6         [24]  969 	lcall	_touchkey_init
                                    970 ;	toque-capacitivo-teste.c:106: while (1) {
      0001EE                        971 00110$:
                                    972 ;	toque-capacitivo-teste.c:110: if (TKEY_CTRL & bTKC_IF) { // this is a bitwise operation, verifying whether 
      0001EE E5 C3            [12]  973 	mov	a,_TKEY_CTRL
      0001F0 30 E7 40         [24]  974 	jnb	acc.7,00105$
                                    975 ;	toque-capacitivo-teste.c:112: uint8_t touchValue = TKEY_DATL; // reading the timing of the capacitive touch sensor
      0001F3 AF C4            [24]  976 	mov	r7,_TKEY_DATL
                                    977 ;	toque-capacitivo-teste.c:116: if (!debounce && ((touchValue - touch_baseline) > 10)) { 
      0001F5 20 01 38         [24]  978 	jb	_debounce,00102$
      0001F8 8F 05            [24]  979 	mov	ar5,r7
      0001FA 7E 00            [12]  980 	mov	r6,#0x00
      0001FC AB 0C            [24]  981 	mov	r3,_touch_baseline
      0001FE 7C 00            [12]  982 	mov	r4,#0x00
      000200 ED               [12]  983 	mov	a,r5
      000201 C3               [12]  984 	clr	c
      000202 9B               [12]  985 	subb	a,r3
      000203 FD               [12]  986 	mov	r5,a
      000204 EE               [12]  987 	mov	a,r6
      000205 9C               [12]  988 	subb	a,r4
      000206 FE               [12]  989 	mov	r6,a
      000207 C3               [12]  990 	clr	c
      000208 74 0A            [12]  991 	mov	a,#0x0a
      00020A 9D               [12]  992 	subb	a,r5
      00020B 74 80            [12]  993 	mov	a,#(0x00 ^ 0x80)
      00020D 8E F0            [24]  994 	mov	b,r6
      00020F 63 F0 80         [24]  995 	xrl	b,#0x80
      000212 95 F0            [12]  996 	subb	a,b
      000214 50 1A            [24]  997 	jnc	00102$
                                    998 ;	toque-capacitivo-teste.c:117: debounce = 1;
                                    999 ;	assignBit
      000216 D2 01            [12] 1000 	setb	_debounce
                                   1001 ;	toque-capacitivo-teste.c:118: ledON = !ledON;
      000218 B2 02            [12] 1002 	cpl	_ledON
                                   1003 ;	toque-capacitivo-teste.c:119: Serial_print("Touch! touchValue=");
      00021A 90 08 DE         [24] 1004 	mov	dptr,#___str_1
      00021D 75 F0 80         [24] 1005 	mov	b, #0x80
      000220 C0 07            [24] 1006 	push	ar7
      000222 12 05 22         [24] 1007 	lcall	_Serial_print
      000225 D0 07            [24] 1008 	pop	ar7
                                   1009 ;	toque-capacitivo-teste.c:120: Serial_println_uint(touchValue);
      000227 7E 00            [12] 1010 	mov	r6,#0x00
      000229 8F 82            [24] 1011 	mov	dpl, r7
      00022B 8E 83            [24] 1012 	mov	dph, r6
      00022D 12 07 3D         [24] 1013 	lcall	_Serial_println_uint
      000230                       1014 00102$:
                                   1015 ;	toque-capacitivo-teste.c:124: TKEY_CTRL = 0x06;
      000230 75 C3 06         [24] 1016 	mov	_TKEY_CTRL,#0x06
      000233                       1017 00105$:
                                   1018 ;	toque-capacitivo-teste.c:126: if(ledON){
      000233 30 02 05         [24] 1019 	jnb	_ledON,00107$
                                   1020 ;	toque-capacitivo-teste.c:127: blink_led();
      000236 12 01 B4         [24] 1021 	lcall	_blink_led
      000239 80 B3            [24] 1022 	sjmp	00110$
      00023B                       1023 00107$:
                                   1024 ;	toque-capacitivo-teste.c:129: P3 &= ~(1 << 5);   // LED OFF           
      00023B 53 B0 DF         [24] 1025 	anl	_P3,#0xdf
                                   1026 ;	toque-capacitivo-teste.c:133: }
      00023E 80 AE            [24] 1027 	sjmp	00110$
                                   1028 	.area CSEG    (CODE)
                                   1029 	.area CONST   (CODE)
                                   1030 	.area CONST   (CODE)
      0008D3                       1031 ___str_0:
      0008D3 42 61 73 65 6C 69 6E  1032 	.ascii "Baseline: "
             65 3A 20
      0008DD 00                    1033 	.db 0x00
                                   1034 	.area CSEG    (CODE)
                                   1035 	.area CONST   (CODE)
      0008DE                       1036 ___str_1:
      0008DE 54 6F 75 63 68 21 20  1037 	.ascii "Touch! touchValue="
             74 6F 75 63 68 56 61
             6C 75 65 3D
      0008F0 00                    1038 	.db 0x00
                                   1039 	.area CSEG    (CODE)
                                   1040 	.area XINIT   (CODE)
                                   1041 	.area CABS    (ABS,CODE)
