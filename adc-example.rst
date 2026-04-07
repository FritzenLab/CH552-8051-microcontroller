                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc_example
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_init
                                     13 	.globl _analogReading
                                     14 	.globl _Serial_println_uint
                                     15 	.globl _Serial_begin
                                     16 	.globl _ADC_ChannelSelect
                                     17 	.globl _ADCInit
                                     18 	.globl _UIF_BUS_RST
                                     19 	.globl _UIF_DETECT
                                     20 	.globl _UIF_TRANSFER
                                     21 	.globl _UIF_SUSPEND
                                     22 	.globl _UIF_HST_SOF
                                     23 	.globl _UIF_FIFO_OV
                                     24 	.globl _U_SIE_FREE
                                     25 	.globl _U_TOG_OK
                                     26 	.globl _U_IS_NAK
                                     27 	.globl _ADC_CHAN0
                                     28 	.globl _ADC_CHAN1
                                     29 	.globl _CMP_CHAN
                                     30 	.globl _ADC_START
                                     31 	.globl _ADC_IF
                                     32 	.globl _CMP_IF
                                     33 	.globl _CMPO
                                     34 	.globl _U1RI
                                     35 	.globl _U1TI
                                     36 	.globl _U1RB8
                                     37 	.globl _U1TB8
                                     38 	.globl _U1REN
                                     39 	.globl _U1SMOD
                                     40 	.globl _U1SM0
                                     41 	.globl _S0_R_FIFO
                                     42 	.globl _S0_T_FIFO
                                     43 	.globl _S0_FREE
                                     44 	.globl _S0_IF_BYTE
                                     45 	.globl _S0_IF_FIRST
                                     46 	.globl _S0_IF_OV
                                     47 	.globl _S0_FST_ACT
                                     48 	.globl _CP_RL2
                                     49 	.globl _C_T2
                                     50 	.globl _TR2
                                     51 	.globl _EXEN2
                                     52 	.globl _TCLK
                                     53 	.globl _RCLK
                                     54 	.globl _EXF2
                                     55 	.globl _CAP1F
                                     56 	.globl _TF2
                                     57 	.globl _RI
                                     58 	.globl _TI
                                     59 	.globl _RB8
                                     60 	.globl _TB8
                                     61 	.globl _REN
                                     62 	.globl _SM2
                                     63 	.globl _SM1
                                     64 	.globl _SM0
                                     65 	.globl _IT0
                                     66 	.globl _IE0
                                     67 	.globl _IT1
                                     68 	.globl _IE1
                                     69 	.globl _TR0
                                     70 	.globl _TF0
                                     71 	.globl _TR1
                                     72 	.globl _TF1
                                     73 	.globl _RXD
                                     74 	.globl _PWM1_
                                     75 	.globl _TXD
                                     76 	.globl _PWM2_
                                     77 	.globl _AIN3
                                     78 	.globl _VBUS1
                                     79 	.globl _INT0
                                     80 	.globl _TXD1_
                                     81 	.globl _INT1
                                     82 	.globl _T0
                                     83 	.globl _RXD1_
                                     84 	.globl _PWM2
                                     85 	.globl _T1
                                     86 	.globl _UDP
                                     87 	.globl _UDM
                                     88 	.globl _TIN0
                                     89 	.globl _CAP1
                                     90 	.globl _T2
                                     91 	.globl _AIN0
                                     92 	.globl _VBUS2
                                     93 	.globl _TIN1
                                     94 	.globl _CAP2
                                     95 	.globl _T2EX
                                     96 	.globl _RXD_
                                     97 	.globl _TXD_
                                     98 	.globl _AIN1
                                     99 	.globl _UCC1
                                    100 	.globl _TIN2
                                    101 	.globl _SCS
                                    102 	.globl _CAP1_
                                    103 	.globl _T2_
                                    104 	.globl _AIN2
                                    105 	.globl _UCC2
                                    106 	.globl _TIN3
                                    107 	.globl _PWM1
                                    108 	.globl _MOSI
                                    109 	.globl _TIN4
                                    110 	.globl _RXD1
                                    111 	.globl _MISO
                                    112 	.globl _TIN5
                                    113 	.globl _TXD1
                                    114 	.globl _SCK
                                    115 	.globl _IE_SPI0
                                    116 	.globl _IE_TKEY
                                    117 	.globl _IE_USB
                                    118 	.globl _IE_ADC
                                    119 	.globl _IE_UART1
                                    120 	.globl _IE_PWMX
                                    121 	.globl _IE_GPIO
                                    122 	.globl _IE_WDOG
                                    123 	.globl _PX0
                                    124 	.globl _PT0
                                    125 	.globl _PX1
                                    126 	.globl _PT1
                                    127 	.globl _PS
                                    128 	.globl _PT2
                                    129 	.globl _PL_FLAG
                                    130 	.globl _PH_FLAG
                                    131 	.globl _EX0
                                    132 	.globl _ET0
                                    133 	.globl _EX1
                                    134 	.globl _ET1
                                    135 	.globl _ES
                                    136 	.globl _ET2
                                    137 	.globl _E_DIS
                                    138 	.globl _EA
                                    139 	.globl _P
                                    140 	.globl _F1
                                    141 	.globl _OV
                                    142 	.globl _RS0
                                    143 	.globl _RS1
                                    144 	.globl _F0
                                    145 	.globl _AC
                                    146 	.globl _CY
                                    147 	.globl _UEP1_DMA_H
                                    148 	.globl _UEP1_DMA_L
                                    149 	.globl _UEP1_DMA
                                    150 	.globl _UEP0_DMA_H
                                    151 	.globl _UEP0_DMA_L
                                    152 	.globl _UEP0_DMA
                                    153 	.globl _UEP2_3_MOD
                                    154 	.globl _UEP4_1_MOD
                                    155 	.globl _UEP3_DMA_H
                                    156 	.globl _UEP3_DMA_L
                                    157 	.globl _UEP3_DMA
                                    158 	.globl _UEP2_DMA_H
                                    159 	.globl _UEP2_DMA_L
                                    160 	.globl _UEP2_DMA
                                    161 	.globl _USB_DEV_AD
                                    162 	.globl _USB_CTRL
                                    163 	.globl _USB_INT_EN
                                    164 	.globl _UEP4_T_LEN
                                    165 	.globl _UEP4_CTRL
                                    166 	.globl _UEP0_T_LEN
                                    167 	.globl _UEP0_CTRL
                                    168 	.globl _USB_RX_LEN
                                    169 	.globl _USB_MIS_ST
                                    170 	.globl _USB_INT_ST
                                    171 	.globl _USB_INT_FG
                                    172 	.globl _UEP3_T_LEN
                                    173 	.globl _UEP3_CTRL
                                    174 	.globl _UEP2_T_LEN
                                    175 	.globl _UEP2_CTRL
                                    176 	.globl _UEP1_T_LEN
                                    177 	.globl _UEP1_CTRL
                                    178 	.globl _UDEV_CTRL
                                    179 	.globl _USB_C_CTRL
                                    180 	.globl _TKEY_DATH
                                    181 	.globl _TKEY_DATL
                                    182 	.globl _TKEY_DAT
                                    183 	.globl _TKEY_CTRL
                                    184 	.globl _ADC_DATA
                                    185 	.globl _ADC_CFG
                                    186 	.globl _ADC_CTRL
                                    187 	.globl _SBAUD1
                                    188 	.globl _SBUF1
                                    189 	.globl _SCON1
                                    190 	.globl _SPI0_SETUP
                                    191 	.globl _SPI0_CK_SE
                                    192 	.globl _SPI0_CTRL
                                    193 	.globl _SPI0_DATA
                                    194 	.globl _SPI0_STAT
                                    195 	.globl _PWM_CK_SE
                                    196 	.globl _PWM_CTRL
                                    197 	.globl _PWM_DATA1
                                    198 	.globl _PWM_DATA2
                                    199 	.globl _T2CAP1H
                                    200 	.globl _T2CAP1L
                                    201 	.globl _T2CAP1
                                    202 	.globl _TH2
                                    203 	.globl _TL2
                                    204 	.globl _T2COUNT
                                    205 	.globl _RCAP2H
                                    206 	.globl _RCAP2L
                                    207 	.globl _RCAP2
                                    208 	.globl _T2MOD
                                    209 	.globl _T2CON
                                    210 	.globl _SBUF
                                    211 	.globl _SCON
                                    212 	.globl _TH1
                                    213 	.globl _TH0
                                    214 	.globl _TL1
                                    215 	.globl _TL0
                                    216 	.globl _TMOD
                                    217 	.globl _TCON
                                    218 	.globl _XBUS_AUX
                                    219 	.globl _PIN_FUNC
                                    220 	.globl _P3_DIR_PU
                                    221 	.globl _P3_MOD_OC
                                    222 	.globl _P3
                                    223 	.globl _P2
                                    224 	.globl _P1_DIR_PU
                                    225 	.globl _P1_MOD_OC
                                    226 	.globl _P1
                                    227 	.globl _ROM_CTRL
                                    228 	.globl _ROM_DATA_H
                                    229 	.globl _ROM_DATA_L
                                    230 	.globl _ROM_DATA
                                    231 	.globl _ROM_ADDR_H
                                    232 	.globl _ROM_ADDR_L
                                    233 	.globl _ROM_ADDR
                                    234 	.globl _GPIO_IE
                                    235 	.globl _IP_EX
                                    236 	.globl _IE_EX
                                    237 	.globl _IP
                                    238 	.globl _IE
                                    239 	.globl _WDOG_COUNT
                                    240 	.globl _RESET_KEEP
                                    241 	.globl _WAKE_CTRL
                                    242 	.globl _CLOCK_CFG
                                    243 	.globl _PCON
                                    244 	.globl _GLOBAL_CFG
                                    245 	.globl _SAFE_MOD
                                    246 	.globl _DPH
                                    247 	.globl _DPL
                                    248 	.globl _SP
                                    249 	.globl _B
                                    250 	.globl _ACC
                                    251 	.globl _PSW
                                    252 	.globl _rawAnalog
                                    253 	.globl _counter
                                    254 	.globl _serialTime
                                    255 	.globl _led_state
                                    256 	.globl _button
                                    257 	.globl _tick_10ms
                                    258 	.globl _clock_init
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
                                    510 ;--------------------------------------------------------
                                    511 ; internal ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area DSEG    (DATA)
      000008                        514 _tick_10ms::
      000008                        515 	.ds 2
      00000A                        516 _button::
      00000A                        517 	.ds 2
      00000C                        518 _led_state::
      00000C                        519 	.ds 1
      00000D                        520 _serialTime::
      00000D                        521 	.ds 2
      00000F                        522 _counter::
      00000F                        523 	.ds 2
      000011                        524 _rawAnalog::
      000011                        525 	.ds 1
                                    526 ;--------------------------------------------------------
                                    527 ; overlayable items in internal ram
                                    528 ;--------------------------------------------------------
                                    529 ;--------------------------------------------------------
                                    530 ; Stack segment in internal ram
                                    531 ;--------------------------------------------------------
                                    532 	.area SSEG
      000021                        533 __start__stack:
      000021                        534 	.ds	1
                                    535 
                                    536 ;--------------------------------------------------------
                                    537 ; indirectly addressable internal ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area ISEG    (DATA)
                                    540 ;--------------------------------------------------------
                                    541 ; absolute internal ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area IABS    (ABS,DATA)
                                    544 	.area IABS    (ABS,DATA)
                                    545 ;--------------------------------------------------------
                                    546 ; bit data
                                    547 ;--------------------------------------------------------
                                    548 	.area BSEG    (BIT)
      000000                        549 _main_sloc0_1_0:
      000000                        550 	.ds 1
                                    551 ;--------------------------------------------------------
                                    552 ; paged external ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area PSEG    (PAG,XDATA)
                                    555 ;--------------------------------------------------------
                                    556 ; uninitialized external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area XSEG    (XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; absolute external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XABS    (ABS,XDATA)
                                    563 ;--------------------------------------------------------
                                    564 ; initialized external ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area XISEG   (XDATA)
                                    567 	.area HOME    (CODE)
                                    568 	.area GSINIT0 (CODE)
                                    569 	.area GSINIT1 (CODE)
                                    570 	.area GSINIT2 (CODE)
                                    571 	.area GSINIT3 (CODE)
                                    572 	.area GSINIT4 (CODE)
                                    573 	.area GSINIT5 (CODE)
                                    574 	.area GSINIT  (CODE)
                                    575 	.area GSFINAL (CODE)
                                    576 	.area CSEG    (CODE)
                                    577 ;--------------------------------------------------------
                                    578 ; interrupt vector
                                    579 ;--------------------------------------------------------
                                    580 	.area HOME    (CODE)
      000000                        581 __interrupt_vect:
      000000 02 00 54         [24]  582 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  583 	reti
      000004                        584 	.ds	7
      00000B 02 00 DE         [24]  585 	ljmp	_timer0_ISR
                                    586 ; restartable atomic support routines
      00000E                        587 	.ds	2
      000010                        588 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  589 	nop
      000011 00               [12]  590 	nop
      000012                        591 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  592 	movx	a, @r0
      000013 FB               [12]  593 	mov	r3, a
      000014 EA               [12]  594 	mov	a, r2
      000015 F2               [24]  595 	movx	@r0, a
      000016 80 2C            [24]  596 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  597 	nop
      000019 00               [12]  598 	nop
      00001A                        599 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  600 	movx	a, @dptr
      00001B FB               [12]  601 	mov	r3, a
      00001C EA               [12]  602 	mov	a, r2
      00001D F0               [24]  603 	movx	@dptr, a
      00001E 80 24            [24]  604 	sjmp	sdcc_atomic_exchange_exit
      000020                        605 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  606 	mov	a, @r0
      000021 B5 02 02         [24]  607 	cjne	a, ar2, .+#5
      000024 EB               [12]  608 	mov	a, r3
      000025 F6               [12]  609 	mov	@r0, a
      000026 22               [24]  610 	ret
      000027 00               [12]  611 	nop
      000028                        612 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  613 	movx	a, @r0
      000029 B5 02 02         [24]  614 	cjne	a, ar2, .+#5
      00002C EB               [12]  615 	mov	a, r3
      00002D F2               [24]  616 	movx	@r0, a
      00002E 22               [24]  617 	ret
      00002F 00               [12]  618 	nop
      000030                        619 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  620 	movx	a, @dptr
      000031 B5 02 02         [24]  621 	cjne	a, ar2, .+#5
      000034 EB               [12]  622 	mov	a, r3
      000035 F0               [24]  623 	movx	@dptr, a
      000036 22               [24]  624 	ret
      000037                        625 sdcc_atomic_exchange_rollback_end::
                                    626 
      000037                        627 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  628 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  629 	mov	r0, dpl
      00003C 20 F5 D3         [24]  630 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        631 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  632 	mov	a, r2
      000040 C6               [12]  633 	xch	a, @r0
      000041 F5 82            [12]  634 	mov	dpl, a
      000043 22               [24]  635 	ret
      000044                        636 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  637 	mov	dpl, r3
      000046 22               [24]  638 	ret
      000047                        639 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  640 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  641 	mov	r0, dpl
      00004C 20 F5 D9         [24]  642 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  643 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    644 ;--------------------------------------------------------
                                    645 ; global & static initialisations
                                    646 ;--------------------------------------------------------
                                    647 	.area HOME    (CODE)
                                    648 	.area GSINIT  (CODE)
                                    649 	.area GSFINAL (CODE)
                                    650 	.area GSINIT  (CODE)
                                    651 	.globl __sdcc_gsinit_startup
                                    652 	.globl __sdcc_program_startup
                                    653 	.globl __start__stack
                                    654 	.globl __mcs51_genXINIT
                                    655 	.globl __mcs51_genXRAMCLEAR
                                    656 	.globl __mcs51_genRAMCLEAR
                                    657 ;	adc-example.c:7: volatile unsigned int tick_10ms = 0;
      0000AD E4               [12]  658 	clr	a
      0000AE F5 08            [12]  659 	mov	_tick_10ms,a
      0000B0 F5 09            [12]  660 	mov	(_tick_10ms + 1),a
                                    661 ;	adc-example.c:9: unsigned char led_state = 0;
      0000B2 F5 0C            [12]  662 	mov	_led_state,a
                                    663 ;	adc-example.c:10: unsigned int serialTime= 0;
      0000B4 F5 0D            [12]  664 	mov	_serialTime,a
      0000B6 F5 0E            [12]  665 	mov	(_serialTime + 1),a
                                    666 ;	adc-example.c:11: unsigned int counter= 0;
      0000B8 F5 0F            [12]  667 	mov	_counter,a
      0000BA F5 10            [12]  668 	mov	(_counter + 1),a
                                    669 ;	adc-example.c:12: uint8_t rawAnalog = 0;  
      0000BC F5 11            [12]  670 	mov	_rawAnalog,a
                                    671 	.area GSFINAL (CODE)
      0000BE 02 00 51         [24]  672 	ljmp	__sdcc_program_startup
                                    673 ;--------------------------------------------------------
                                    674 ; Home
                                    675 ;--------------------------------------------------------
                                    676 	.area HOME    (CODE)
                                    677 	.area HOME    (CODE)
      000051                        678 __sdcc_program_startup:
      000051 02 01 46         [24]  679 	ljmp	_main
                                    680 ;	return from main will return to caller
                                    681 ;--------------------------------------------------------
                                    682 ; code
                                    683 ;--------------------------------------------------------
                                    684 	.area CSEG    (CODE)
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'analogReading'
                                    687 ;------------------------------------------------------------
                                    688 ;	adc-example.c:19: uint8_t analogReading(void) {
                                    689 ;	-----------------------------------------
                                    690 ;	 function analogReading
                                    691 ;	-----------------------------------------
      0000C1                        692 _analogReading:
                           000007   693 	ar7 = 0x07
                           000006   694 	ar6 = 0x06
                           000005   695 	ar5 = 0x05
                           000004   696 	ar4 = 0x04
                           000003   697 	ar3 = 0x03
                           000002   698 	ar2 = 0x02
                           000001   699 	ar1 = 0x01
                           000000   700 	ar0 = 0x00
                                    701 ;	adc-example.c:20: ADC_START = 1;          // start conversion, hardware clears it when done
                                    702 ;	assignBit
      0000C1 D2 84            [12]  703 	setb	_ADC_START
                                    704 ;	adc-example.c:21: while (ADC_START);      // wait until auto-cleared
      0000C3                        705 00101$:
      0000C3 20 84 FD         [24]  706 	jb	_ADC_START,00101$
                                    707 ;	adc-example.c:22: ADC_IF = 0;             // clear interrupt flag
                                    708 ;	assignBit
      0000C6 C2 85            [12]  709 	clr	_ADC_IF
                                    710 ;	adc-example.c:23: return ADC_DATA;        // return 8-bit result
      0000C8 85 9F 82         [24]  711 	mov	dpl, _ADC_DATA
                                    712 ;	adc-example.c:24: }
      0000CB 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'clock_init'
                                    716 ;------------------------------------------------------------
                                    717 ;	adc-example.c:26: void clock_init(void) {
                                    718 ;	-----------------------------------------
                                    719 ;	 function clock_init
                                    720 ;	-----------------------------------------
      0000CC                        721 _clock_init:
                                    722 ;	adc-example.c:27: SAFE_MOD = 0x55;
      0000CC 75 A1 55         [24]  723 	mov	_SAFE_MOD,#0x55
                                    724 ;	adc-example.c:28: SAFE_MOD = 0xAA;
      0000CF 75 A1 AA         [24]  725 	mov	_SAFE_MOD,#0xaa
                                    726 ;	adc-example.c:30: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0000D2 74 F8            [12]  727 	mov	a,#0xf8
      0000D4 55 B9            [12]  728 	anl	a,_CLOCK_CFG
      0000D6 44 06            [12]  729 	orl	a,#0x06
      0000D8 F5 B9            [12]  730 	mov	_CLOCK_CFG,a
                                    731 ;	adc-example.c:32: SAFE_MOD = 0x00;
      0000DA 75 A1 00         [24]  732 	mov	_SAFE_MOD,#0x00
                                    733 ;	adc-example.c:33: }
      0000DD 22               [24]  734 	ret
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'timer0_ISR'
                                    737 ;------------------------------------------------------------
                                    738 ;	adc-example.c:35: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
                                    739 ;	-----------------------------------------
                                    740 ;	 function timer0_ISR
                                    741 ;	-----------------------------------------
      0000DE                        742 _timer0_ISR:
      0000DE C0 E0            [24]  743 	push	acc
      0000E0 C0 07            [24]  744 	push	ar7
      0000E2 C0 06            [24]  745 	push	ar6
      0000E4 C0 D0            [24]  746 	push	psw
      0000E6 75 D0 00         [24]  747 	mov	psw,#0x00
                                    748 ;	adc-example.c:36: TF0 = 0;  // clear overflow flag (important for robustness)
                                    749 ;	assignBit
      0000E9 C2 8D            [12]  750 	clr	_TF0
                                    751 ;	adc-example.c:37: TH0 = 0xB1;
      0000EB 75 8C B1         [24]  752 	mov	_TH0,#0xb1
                                    753 ;	adc-example.c:38: TL0 = 0xE0;
      0000EE 75 8A E0         [24]  754 	mov	_TL0,#0xe0
                                    755 ;	adc-example.c:39: tick_10ms++;
      0000F1 AE 08            [24]  756 	mov	r6,_tick_10ms
      0000F3 AF 09            [24]  757 	mov	r7,(_tick_10ms + 1)
      0000F5 74 01            [12]  758 	mov	a,#0x01
      0000F7 2E               [12]  759 	add	a, r6
      0000F8 F5 08            [12]  760 	mov	_tick_10ms,a
      0000FA E4               [12]  761 	clr	a
      0000FB 3F               [12]  762 	addc	a, r7
      0000FC F5 09            [12]  763 	mov	(_tick_10ms + 1),a
                                    764 ;	adc-example.c:40: serialTime++;
      0000FE 05 0D            [12]  765 	inc	_serialTime
      000100 E4               [12]  766 	clr	a
      000101 B5 0D 02         [24]  767 	cjne	a,_serialTime,00103$
      000104 05 0E            [12]  768 	inc	(_serialTime + 1)
      000106                        769 00103$:
                                    770 ;	adc-example.c:41: }
      000106 D0 D0            [24]  771 	pop	psw
      000108 D0 06            [24]  772 	pop	ar6
      00010A D0 07            [24]  773 	pop	ar7
      00010C D0 E0            [24]  774 	pop	acc
      00010E 32               [24]  775 	reti
                                    776 ;	eliminated unneeded push/pop dpl
                                    777 ;	eliminated unneeded push/pop dph
                                    778 ;	eliminated unneeded push/pop b
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'timer0_init'
                                    781 ;------------------------------------------------------------
                                    782 ;	adc-example.c:43: void timer0_init(void) {
                                    783 ;	-----------------------------------------
                                    784 ;	 function timer0_init
                                    785 ;	-----------------------------------------
      00010F                        786 _timer0_init:
                                    787 ;	adc-example.c:44: TMOD &= ~0x03;  // clear Timer0 mode bits
      00010F 53 89 FC         [24]  788 	anl	_TMOD,#0xfc
                                    789 ;	adc-example.c:45: TMOD |=  0x01;  // Timer0 mode 1: 16-bit
      000112 43 89 01         [24]  790 	orl	_TMOD,#0x01
                                    791 ;	adc-example.c:49: TH0 = 0xB1;
      000115 75 8C B1         [24]  792 	mov	_TH0,#0xb1
                                    793 ;	adc-example.c:50: TL0 = 0xE0;
      000118 75 8A E0         [24]  794 	mov	_TL0,#0xe0
                                    795 ;	adc-example.c:52: ET0 = 1;   // enable Timer0 interrupt
                                    796 ;	assignBit
      00011B D2 A9            [12]  797 	setb	_ET0
                                    798 ;	adc-example.c:53: TR0 = 1;   // start Timer0
                                    799 ;	assignBit
      00011D D2 8C            [12]  800 	setb	_TR0
                                    801 ;	adc-example.c:54: EA = 1;
                                    802 ;	assignBit
      00011F D2 AF            [12]  803 	setb	_EA
                                    804 ;	adc-example.c:55: }
      000121 22               [24]  805 	ret
                                    806 ;------------------------------------------------------------
                                    807 ;Allocation info for local variables in function 'blink_led'
                                    808 ;------------------------------------------------------------
                                    809 ;	adc-example.c:57: void blink_led(void) {
                                    810 ;	-----------------------------------------
                                    811 ;	 function blink_led
                                    812 ;	-----------------------------------------
      000122                        813 _blink_led:
                                    814 ;	adc-example.c:58: if(tick_10ms % 60 < 30){
      000122 75 12 3C         [24]  815 	mov	__moduint_PARM_2,#0x3c
      000125 75 13 00         [24]  816 	mov	(__moduint_PARM_2 + 1),#0x00
      000128 85 08 82         [24]  817 	mov	dpl, _tick_10ms
      00012B 85 09 83         [24]  818 	mov	dph, (_tick_10ms + 1)
      00012E 12 03 E2         [24]  819 	lcall	__moduint
      000131 AE 82            [24]  820 	mov	r6, dpl
      000133 AF 83            [24]  821 	mov	r7, dph
      000135 C3               [12]  822 	clr	c
      000136 EE               [12]  823 	mov	a,r6
      000137 94 1E            [12]  824 	subb	a,#0x1e
      000139 EF               [12]  825 	mov	a,r7
      00013A 94 00            [12]  826 	subb	a,#0x00
      00013C 50 04            [24]  827 	jnc	00102$
                                    828 ;	adc-example.c:59: P3 |= (1 << 0);  // LED ON
      00013E 43 B0 01         [24]  829 	orl	_P3,#0x01
      000141 22               [24]  830 	ret
      000142                        831 00102$:
                                    832 ;	adc-example.c:61: P3 &= ~(1 << 0); // LED OFF
      000142 53 B0 FE         [24]  833 	anl	_P3,#0xfe
                                    834 ;	adc-example.c:63: }
      000145 22               [24]  835 	ret
                                    836 ;------------------------------------------------------------
                                    837 ;Allocation info for local variables in function 'main'
                                    838 ;------------------------------------------------------------
                                    839 ;	adc-example.c:65: void main(void) {
                                    840 ;	-----------------------------------------
                                    841 ;	 function main
                                    842 ;	-----------------------------------------
      000146                        843 _main:
                                    844 ;	adc-example.c:66: clock_init();
      000146 12 00 CC         [24]  845 	lcall	_clock_init
                                    846 ;	adc-example.c:67: timer0_init();
      000149 12 01 0F         [24]  847 	lcall	_timer0_init
                                    848 ;	adc-example.c:70: SAFE_MOD = 0x55;
      00014C 75 A1 55         [24]  849 	mov	_SAFE_MOD,#0x55
                                    850 ;	adc-example.c:71: SAFE_MOD = 0xAA;
      00014F 75 A1 AA         [24]  851 	mov	_SAFE_MOD,#0xaa
                                    852 ;	adc-example.c:72: GLOBAL_CFG &= ~bWDOG_EN;   // turn off watchdog
      000152 53 B1 FE         [24]  853 	anl	_GLOBAL_CFG,#0xfe
                                    854 ;	adc-example.c:73: SAFE_MOD = 0x00;
      000155 75 A1 00         [24]  855 	mov	_SAFE_MOD,#0x00
                                    856 ;	adc-example.c:77: P3_MOD_OC &= ~0x01;   // not open-drain
      000158 53 96 FE         [24]  857 	anl	_P3_MOD_OC,#0xfe
                                    858 ;	adc-example.c:78: P3_DIR_PU |= 0x01;    // output, with pull-up
      00015B 43 97 01         [24]  859 	orl	_P3_DIR_PU,#0x01
                                    860 ;	adc-example.c:81: P1_MOD_OC |=  (1 << 4);   // open-drain mode → required for pull-up
      00015E 43 92 10         [24]  861 	orl	_P1_MOD_OC,#0x10
                                    862 ;	adc-example.c:82: P1_DIR_PU  |=  (1 << 4);  // pull-up enabled
      000161 43 93 10         [24]  863 	orl	_P1_DIR_PU,#0x10
                                    864 ;	adc-example.c:86: ADCInit(0);                    // 0 = slow (384 Fosc), no interrupt
      000164 75 82 00         [24]  865 	mov	dpl, #0x00
      000167 12 01 B9         [24]  866 	lcall	_ADCInit
                                    867 ;	adc-example.c:87: ADC_ChannelSelect(2);          // AIN0 = P1.1
      00016A 75 82 02         [24]  868 	mov	dpl, #0x02
      00016D 12 01 C6         [24]  869 	lcall	_ADC_ChannelSelect
                                    870 ;	adc-example.c:89: Serial_begin();
      000170 12 02 61         [24]  871 	lcall	_Serial_begin
                                    872 ;	adc-example.c:91: while (1) {
      000173                        873 00107$:
                                    874 ;	adc-example.c:92: button = !(P1 & (1 << 4)); // pressed = 1
      000173 E5 90            [12]  875 	mov	a,_P1
      000175 C4               [12]  876 	swap	a
      000176 54 01            [12]  877 	anl	a,#0x01
      000178 B4 01 00         [24]  878 	cjne	a,#0x01,00129$
      00017B                        879 00129$:
      00017B 92 00            [24]  880 	mov  _main_sloc0_1_0,c
      00017D E4               [12]  881 	clr	a
      00017E 33               [12]  882 	rlc	a
                                    883 ;	adc-example.c:94: if(button){
      00017F F5 0A            [12]  884 	mov	_button,a
      000181 75 0B 00         [24]  885 	mov	(_button + 1),#0x00
      000184 45 0B            [12]  886 	orl	a,(_button + 1)
      000186 60 05            [24]  887 	jz	00102$
                                    888 ;	adc-example.c:95: blink_led();
      000188 12 01 22         [24]  889 	lcall	_blink_led
      00018B 80 03            [24]  890 	sjmp	00103$
      00018D                        891 00102$:
                                    892 ;	adc-example.c:98: P3 &= ~0x01;   // LED OFF            
      00018D 53 B0 FE         [24]  893 	anl	_P3,#0xfe
      000190                        894 00103$:
                                    895 ;	adc-example.c:100: if(serialTime > 100){
      000190 C3               [12]  896 	clr	c
      000191 74 64            [12]  897 	mov	a,#0x64
      000193 95 0D            [12]  898 	subb	a,_serialTime
      000195 E4               [12]  899 	clr	a
      000196 95 0E            [12]  900 	subb	a,(_serialTime + 1)
      000198 50 D9            [24]  901 	jnc	00107$
                                    902 ;	adc-example.c:101: rawAnalog= analogReading();
      00019A 12 00 C1         [24]  903 	lcall	_analogReading
      00019D 85 82 11         [24]  904 	mov	_rawAnalog,dpl
                                    905 ;	adc-example.c:102: serialTime= 0;
      0001A0 E4               [12]  906 	clr	a
      0001A1 F5 0D            [12]  907 	mov	_serialTime,a
      0001A3 F5 0E            [12]  908 	mov	(_serialTime + 1),a
                                    909 ;	adc-example.c:103: counter++;
      0001A5 05 0F            [12]  910 	inc	_counter
      0001A7 B5 0F 02         [24]  911 	cjne	a,_counter,00132$
      0001AA 05 10            [12]  912 	inc	(_counter + 1)
      0001AC                        913 00132$:
                                    914 ;	adc-example.c:105: Serial_println_uint(rawAnalog);
      0001AC AE 11            [24]  915 	mov	r6,_rawAnalog
      0001AE 7F 00            [12]  916 	mov	r7,#0x00
      0001B0 8E 82            [24]  917 	mov	dpl, r6
      0001B2 8F 83            [24]  918 	mov	dph, r7
      0001B4 12 03 AA         [24]  919 	lcall	_Serial_println_uint
                                    920 ;	adc-example.c:109: }
      0001B7 80 BA            [24]  921 	sjmp	00107$
                                    922 	.area CSEG    (CODE)
                                    923 	.area CONST   (CODE)
                                    924 	.area XINIT   (CODE)
                                    925 	.area CABS    (ABS,CODE)
