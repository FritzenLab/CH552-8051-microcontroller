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
                                     12 	.globl _rawToMillivolts
                                     13 	.globl _timer0_init
                                     14 	.globl _analogReading
                                     15 	.globl _Serial_println_uint
                                     16 	.globl _Serial_begin
                                     17 	.globl _ADC_ChannelSelect
                                     18 	.globl _ADCInit
                                     19 	.globl _UIF_BUS_RST
                                     20 	.globl _UIF_DETECT
                                     21 	.globl _UIF_TRANSFER
                                     22 	.globl _UIF_SUSPEND
                                     23 	.globl _UIF_HST_SOF
                                     24 	.globl _UIF_FIFO_OV
                                     25 	.globl _U_SIE_FREE
                                     26 	.globl _U_TOG_OK
                                     27 	.globl _U_IS_NAK
                                     28 	.globl _ADC_CHAN0
                                     29 	.globl _ADC_CHAN1
                                     30 	.globl _CMP_CHAN
                                     31 	.globl _ADC_START
                                     32 	.globl _ADC_IF
                                     33 	.globl _CMP_IF
                                     34 	.globl _CMPO
                                     35 	.globl _U1RI
                                     36 	.globl _U1TI
                                     37 	.globl _U1RB8
                                     38 	.globl _U1TB8
                                     39 	.globl _U1REN
                                     40 	.globl _U1SMOD
                                     41 	.globl _U1SM0
                                     42 	.globl _S0_R_FIFO
                                     43 	.globl _S0_T_FIFO
                                     44 	.globl _S0_FREE
                                     45 	.globl _S0_IF_BYTE
                                     46 	.globl _S0_IF_FIRST
                                     47 	.globl _S0_IF_OV
                                     48 	.globl _S0_FST_ACT
                                     49 	.globl _CP_RL2
                                     50 	.globl _C_T2
                                     51 	.globl _TR2
                                     52 	.globl _EXEN2
                                     53 	.globl _TCLK
                                     54 	.globl _RCLK
                                     55 	.globl _EXF2
                                     56 	.globl _CAP1F
                                     57 	.globl _TF2
                                     58 	.globl _RI
                                     59 	.globl _TI
                                     60 	.globl _RB8
                                     61 	.globl _TB8
                                     62 	.globl _REN
                                     63 	.globl _SM2
                                     64 	.globl _SM1
                                     65 	.globl _SM0
                                     66 	.globl _IT0
                                     67 	.globl _IE0
                                     68 	.globl _IT1
                                     69 	.globl _IE1
                                     70 	.globl _TR0
                                     71 	.globl _TF0
                                     72 	.globl _TR1
                                     73 	.globl _TF1
                                     74 	.globl _RXD
                                     75 	.globl _PWM1_
                                     76 	.globl _TXD
                                     77 	.globl _PWM2_
                                     78 	.globl _AIN3
                                     79 	.globl _VBUS1
                                     80 	.globl _INT0
                                     81 	.globl _TXD1_
                                     82 	.globl _INT1
                                     83 	.globl _T0
                                     84 	.globl _RXD1_
                                     85 	.globl _PWM2
                                     86 	.globl _T1
                                     87 	.globl _UDP
                                     88 	.globl _UDM
                                     89 	.globl _TIN0
                                     90 	.globl _CAP1
                                     91 	.globl _T2
                                     92 	.globl _AIN0
                                     93 	.globl _VBUS2
                                     94 	.globl _TIN1
                                     95 	.globl _CAP2
                                     96 	.globl _T2EX
                                     97 	.globl _RXD_
                                     98 	.globl _TXD_
                                     99 	.globl _AIN1
                                    100 	.globl _UCC1
                                    101 	.globl _TIN2
                                    102 	.globl _SCS
                                    103 	.globl _CAP1_
                                    104 	.globl _T2_
                                    105 	.globl _AIN2
                                    106 	.globl _UCC2
                                    107 	.globl _TIN3
                                    108 	.globl _PWM1
                                    109 	.globl _MOSI
                                    110 	.globl _TIN4
                                    111 	.globl _RXD1
                                    112 	.globl _MISO
                                    113 	.globl _TIN5
                                    114 	.globl _TXD1
                                    115 	.globl _SCK
                                    116 	.globl _IE_SPI0
                                    117 	.globl _IE_TKEY
                                    118 	.globl _IE_USB
                                    119 	.globl _IE_ADC
                                    120 	.globl _IE_UART1
                                    121 	.globl _IE_PWMX
                                    122 	.globl _IE_GPIO
                                    123 	.globl _IE_WDOG
                                    124 	.globl _PX0
                                    125 	.globl _PT0
                                    126 	.globl _PX1
                                    127 	.globl _PT1
                                    128 	.globl _PS
                                    129 	.globl _PT2
                                    130 	.globl _PL_FLAG
                                    131 	.globl _PH_FLAG
                                    132 	.globl _EX0
                                    133 	.globl _ET0
                                    134 	.globl _EX1
                                    135 	.globl _ET1
                                    136 	.globl _ES
                                    137 	.globl _ET2
                                    138 	.globl _E_DIS
                                    139 	.globl _EA
                                    140 	.globl _P
                                    141 	.globl _F1
                                    142 	.globl _OV
                                    143 	.globl _RS0
                                    144 	.globl _RS1
                                    145 	.globl _F0
                                    146 	.globl _AC
                                    147 	.globl _CY
                                    148 	.globl _UEP1_DMA_H
                                    149 	.globl _UEP1_DMA_L
                                    150 	.globl _UEP1_DMA
                                    151 	.globl _UEP0_DMA_H
                                    152 	.globl _UEP0_DMA_L
                                    153 	.globl _UEP0_DMA
                                    154 	.globl _UEP2_3_MOD
                                    155 	.globl _UEP4_1_MOD
                                    156 	.globl _UEP3_DMA_H
                                    157 	.globl _UEP3_DMA_L
                                    158 	.globl _UEP3_DMA
                                    159 	.globl _UEP2_DMA_H
                                    160 	.globl _UEP2_DMA_L
                                    161 	.globl _UEP2_DMA
                                    162 	.globl _USB_DEV_AD
                                    163 	.globl _USB_CTRL
                                    164 	.globl _USB_INT_EN
                                    165 	.globl _UEP4_T_LEN
                                    166 	.globl _UEP4_CTRL
                                    167 	.globl _UEP0_T_LEN
                                    168 	.globl _UEP0_CTRL
                                    169 	.globl _USB_RX_LEN
                                    170 	.globl _USB_MIS_ST
                                    171 	.globl _USB_INT_ST
                                    172 	.globl _USB_INT_FG
                                    173 	.globl _UEP3_T_LEN
                                    174 	.globl _UEP3_CTRL
                                    175 	.globl _UEP2_T_LEN
                                    176 	.globl _UEP2_CTRL
                                    177 	.globl _UEP1_T_LEN
                                    178 	.globl _UEP1_CTRL
                                    179 	.globl _UDEV_CTRL
                                    180 	.globl _USB_C_CTRL
                                    181 	.globl _TKEY_DATH
                                    182 	.globl _TKEY_DATL
                                    183 	.globl _TKEY_DAT
                                    184 	.globl _TKEY_CTRL
                                    185 	.globl _ADC_DATA
                                    186 	.globl _ADC_CFG
                                    187 	.globl _ADC_CTRL
                                    188 	.globl _SBAUD1
                                    189 	.globl _SBUF1
                                    190 	.globl _SCON1
                                    191 	.globl _SPI0_SETUP
                                    192 	.globl _SPI0_CK_SE
                                    193 	.globl _SPI0_CTRL
                                    194 	.globl _SPI0_DATA
                                    195 	.globl _SPI0_STAT
                                    196 	.globl _PWM_CK_SE
                                    197 	.globl _PWM_CTRL
                                    198 	.globl _PWM_DATA1
                                    199 	.globl _PWM_DATA2
                                    200 	.globl _T2CAP1H
                                    201 	.globl _T2CAP1L
                                    202 	.globl _T2CAP1
                                    203 	.globl _TH2
                                    204 	.globl _TL2
                                    205 	.globl _T2COUNT
                                    206 	.globl _RCAP2H
                                    207 	.globl _RCAP2L
                                    208 	.globl _RCAP2
                                    209 	.globl _T2MOD
                                    210 	.globl _T2CON
                                    211 	.globl _SBUF
                                    212 	.globl _SCON
                                    213 	.globl _TH1
                                    214 	.globl _TH0
                                    215 	.globl _TL1
                                    216 	.globl _TL0
                                    217 	.globl _TMOD
                                    218 	.globl _TCON
                                    219 	.globl _XBUS_AUX
                                    220 	.globl _PIN_FUNC
                                    221 	.globl _P3_DIR_PU
                                    222 	.globl _P3_MOD_OC
                                    223 	.globl _P3
                                    224 	.globl _P2
                                    225 	.globl _P1_DIR_PU
                                    226 	.globl _P1_MOD_OC
                                    227 	.globl _P1
                                    228 	.globl _ROM_CTRL
                                    229 	.globl _ROM_DATA_H
                                    230 	.globl _ROM_DATA_L
                                    231 	.globl _ROM_DATA
                                    232 	.globl _ROM_ADDR_H
                                    233 	.globl _ROM_ADDR_L
                                    234 	.globl _ROM_ADDR
                                    235 	.globl _GPIO_IE
                                    236 	.globl _IP_EX
                                    237 	.globl _IE_EX
                                    238 	.globl _IP
                                    239 	.globl _IE
                                    240 	.globl _WDOG_COUNT
                                    241 	.globl _RESET_KEEP
                                    242 	.globl _WAKE_CTRL
                                    243 	.globl _CLOCK_CFG
                                    244 	.globl _PCON
                                    245 	.globl _GLOBAL_CFG
                                    246 	.globl _SAFE_MOD
                                    247 	.globl _DPH
                                    248 	.globl _DPL
                                    249 	.globl _SP
                                    250 	.globl _B
                                    251 	.globl _ACC
                                    252 	.globl _PSW
                                    253 	.globl _finalAnalog
                                    254 	.globl _rawAnalog
                                    255 	.globl _counter
                                    256 	.globl _serialTime
                                    257 	.globl _led_state
                                    258 	.globl _button
                                    259 	.globl _tick_10ms
                                    260 	.globl _clock_init
                                    261 	.globl _timer0_ISR
                                    262 	.globl _blink_led
                                    263 ;--------------------------------------------------------
                                    264 ; special function registers
                                    265 ;--------------------------------------------------------
                                    266 	.area RSEG    (ABS,DATA)
      000000                        267 	.org 0x0000
                           0000D0   268 _PSW	=	0x00d0
                           0000E0   269 _ACC	=	0x00e0
                           0000F0   270 _B	=	0x00f0
                           000081   271 _SP	=	0x0081
                           000082   272 _DPL	=	0x0082
                           000083   273 _DPH	=	0x0083
                           0000A1   274 _SAFE_MOD	=	0x00a1
                           0000B1   275 _GLOBAL_CFG	=	0x00b1
                           000087   276 _PCON	=	0x0087
                           0000B9   277 _CLOCK_CFG	=	0x00b9
                           0000A9   278 _WAKE_CTRL	=	0x00a9
                           0000FE   279 _RESET_KEEP	=	0x00fe
                           0000FF   280 _WDOG_COUNT	=	0x00ff
                           0000A8   281 _IE	=	0x00a8
                           0000B8   282 _IP	=	0x00b8
                           0000E8   283 _IE_EX	=	0x00e8
                           0000E9   284 _IP_EX	=	0x00e9
                           0000C7   285 _GPIO_IE	=	0x00c7
                           008584   286 _ROM_ADDR	=	0x8584
                           000084   287 _ROM_ADDR_L	=	0x0084
                           000085   288 _ROM_ADDR_H	=	0x0085
                           008F8E   289 _ROM_DATA	=	0x8f8e
                           00008E   290 _ROM_DATA_L	=	0x008e
                           00008F   291 _ROM_DATA_H	=	0x008f
                           000086   292 _ROM_CTRL	=	0x0086
                           000090   293 _P1	=	0x0090
                           000092   294 _P1_MOD_OC	=	0x0092
                           000093   295 _P1_DIR_PU	=	0x0093
                           0000A0   296 _P2	=	0x00a0
                           0000B0   297 _P3	=	0x00b0
                           000096   298 _P3_MOD_OC	=	0x0096
                           000097   299 _P3_DIR_PU	=	0x0097
                           0000C6   300 _PIN_FUNC	=	0x00c6
                           0000A2   301 _XBUS_AUX	=	0x00a2
                           000088   302 _TCON	=	0x0088
                           000089   303 _TMOD	=	0x0089
                           00008A   304 _TL0	=	0x008a
                           00008B   305 _TL1	=	0x008b
                           00008C   306 _TH0	=	0x008c
                           00008D   307 _TH1	=	0x008d
                           000098   308 _SCON	=	0x0098
                           000099   309 _SBUF	=	0x0099
                           0000C8   310 _T2CON	=	0x00c8
                           0000C9   311 _T2MOD	=	0x00c9
                           00CBCA   312 _RCAP2	=	0xcbca
                           0000CA   313 _RCAP2L	=	0x00ca
                           0000CB   314 _RCAP2H	=	0x00cb
                           00CDCC   315 _T2COUNT	=	0xcdcc
                           0000CC   316 _TL2	=	0x00cc
                           0000CD   317 _TH2	=	0x00cd
                           00CFCE   318 _T2CAP1	=	0xcfce
                           0000CE   319 _T2CAP1L	=	0x00ce
                           0000CF   320 _T2CAP1H	=	0x00cf
                           00009B   321 _PWM_DATA2	=	0x009b
                           00009C   322 _PWM_DATA1	=	0x009c
                           00009D   323 _PWM_CTRL	=	0x009d
                           00009E   324 _PWM_CK_SE	=	0x009e
                           0000F8   325 _SPI0_STAT	=	0x00f8
                           0000F9   326 _SPI0_DATA	=	0x00f9
                           0000FA   327 _SPI0_CTRL	=	0x00fa
                           0000FB   328 _SPI0_CK_SE	=	0x00fb
                           0000FC   329 _SPI0_SETUP	=	0x00fc
                           0000C0   330 _SCON1	=	0x00c0
                           0000C1   331 _SBUF1	=	0x00c1
                           0000C2   332 _SBAUD1	=	0x00c2
                           000080   333 _ADC_CTRL	=	0x0080
                           00009A   334 _ADC_CFG	=	0x009a
                           00009F   335 _ADC_DATA	=	0x009f
                           0000C3   336 _TKEY_CTRL	=	0x00c3
                           00C5C4   337 _TKEY_DAT	=	0xc5c4
                           0000C4   338 _TKEY_DATL	=	0x00c4
                           0000C5   339 _TKEY_DATH	=	0x00c5
                           000091   340 _USB_C_CTRL	=	0x0091
                           0000D1   341 _UDEV_CTRL	=	0x00d1
                           0000D2   342 _UEP1_CTRL	=	0x00d2
                           0000D3   343 _UEP1_T_LEN	=	0x00d3
                           0000D4   344 _UEP2_CTRL	=	0x00d4
                           0000D5   345 _UEP2_T_LEN	=	0x00d5
                           0000D6   346 _UEP3_CTRL	=	0x00d6
                           0000D7   347 _UEP3_T_LEN	=	0x00d7
                           0000D8   348 _USB_INT_FG	=	0x00d8
                           0000D9   349 _USB_INT_ST	=	0x00d9
                           0000DA   350 _USB_MIS_ST	=	0x00da
                           0000DB   351 _USB_RX_LEN	=	0x00db
                           0000DC   352 _UEP0_CTRL	=	0x00dc
                           0000DD   353 _UEP0_T_LEN	=	0x00dd
                           0000DE   354 _UEP4_CTRL	=	0x00de
                           0000DF   355 _UEP4_T_LEN	=	0x00df
                           0000E1   356 _USB_INT_EN	=	0x00e1
                           0000E2   357 _USB_CTRL	=	0x00e2
                           0000E3   358 _USB_DEV_AD	=	0x00e3
                           00E5E4   359 _UEP2_DMA	=	0xe5e4
                           0000E4   360 _UEP2_DMA_L	=	0x00e4
                           0000E5   361 _UEP2_DMA_H	=	0x00e5
                           00E7E6   362 _UEP3_DMA	=	0xe7e6
                           0000E6   363 _UEP3_DMA_L	=	0x00e6
                           0000E7   364 _UEP3_DMA_H	=	0x00e7
                           0000EA   365 _UEP4_1_MOD	=	0x00ea
                           0000EB   366 _UEP2_3_MOD	=	0x00eb
                           00EDEC   367 _UEP0_DMA	=	0xedec
                           0000EC   368 _UEP0_DMA_L	=	0x00ec
                           0000ED   369 _UEP0_DMA_H	=	0x00ed
                           00EFEE   370 _UEP1_DMA	=	0xefee
                           0000EE   371 _UEP1_DMA_L	=	0x00ee
                           0000EF   372 _UEP1_DMA_H	=	0x00ef
                                    373 ;--------------------------------------------------------
                                    374 ; special function bits
                                    375 ;--------------------------------------------------------
                                    376 	.area RSEG    (ABS,DATA)
      000000                        377 	.org 0x0000
                           0000D7   378 _CY	=	0x00d7
                           0000D6   379 _AC	=	0x00d6
                           0000D5   380 _F0	=	0x00d5
                           0000D4   381 _RS1	=	0x00d4
                           0000D3   382 _RS0	=	0x00d3
                           0000D2   383 _OV	=	0x00d2
                           0000D1   384 _F1	=	0x00d1
                           0000D0   385 _P	=	0x00d0
                           0000AF   386 _EA	=	0x00af
                           0000AE   387 _E_DIS	=	0x00ae
                           0000AD   388 _ET2	=	0x00ad
                           0000AC   389 _ES	=	0x00ac
                           0000AB   390 _ET1	=	0x00ab
                           0000AA   391 _EX1	=	0x00aa
                           0000A9   392 _ET0	=	0x00a9
                           0000A8   393 _EX0	=	0x00a8
                           0000BF   394 _PH_FLAG	=	0x00bf
                           0000BE   395 _PL_FLAG	=	0x00be
                           0000BD   396 _PT2	=	0x00bd
                           0000BC   397 _PS	=	0x00bc
                           0000BB   398 _PT1	=	0x00bb
                           0000BA   399 _PX1	=	0x00ba
                           0000B9   400 _PT0	=	0x00b9
                           0000B8   401 _PX0	=	0x00b8
                           0000EF   402 _IE_WDOG	=	0x00ef
                           0000EE   403 _IE_GPIO	=	0x00ee
                           0000ED   404 _IE_PWMX	=	0x00ed
                           0000EC   405 _IE_UART1	=	0x00ec
                           0000EB   406 _IE_ADC	=	0x00eb
                           0000EA   407 _IE_USB	=	0x00ea
                           0000E9   408 _IE_TKEY	=	0x00e9
                           0000E8   409 _IE_SPI0	=	0x00e8
                           000097   410 _SCK	=	0x0097
                           000097   411 _TXD1	=	0x0097
                           000097   412 _TIN5	=	0x0097
                           000096   413 _MISO	=	0x0096
                           000096   414 _RXD1	=	0x0096
                           000096   415 _TIN4	=	0x0096
                           000095   416 _MOSI	=	0x0095
                           000095   417 _PWM1	=	0x0095
                           000095   418 _TIN3	=	0x0095
                           000095   419 _UCC2	=	0x0095
                           000095   420 _AIN2	=	0x0095
                           000094   421 _T2_	=	0x0094
                           000094   422 _CAP1_	=	0x0094
                           000094   423 _SCS	=	0x0094
                           000094   424 _TIN2	=	0x0094
                           000094   425 _UCC1	=	0x0094
                           000094   426 _AIN1	=	0x0094
                           000093   427 _TXD_	=	0x0093
                           000092   428 _RXD_	=	0x0092
                           000091   429 _T2EX	=	0x0091
                           000091   430 _CAP2	=	0x0091
                           000091   431 _TIN1	=	0x0091
                           000091   432 _VBUS2	=	0x0091
                           000091   433 _AIN0	=	0x0091
                           000090   434 _T2	=	0x0090
                           000090   435 _CAP1	=	0x0090
                           000090   436 _TIN0	=	0x0090
                           0000B7   437 _UDM	=	0x00b7
                           0000B6   438 _UDP	=	0x00b6
                           0000B5   439 _T1	=	0x00b5
                           0000B4   440 _PWM2	=	0x00b4
                           0000B4   441 _RXD1_	=	0x00b4
                           0000B4   442 _T0	=	0x00b4
                           0000B3   443 _INT1	=	0x00b3
                           0000B2   444 _TXD1_	=	0x00b2
                           0000B2   445 _INT0	=	0x00b2
                           0000B2   446 _VBUS1	=	0x00b2
                           0000B2   447 _AIN3	=	0x00b2
                           0000B1   448 _PWM2_	=	0x00b1
                           0000B1   449 _TXD	=	0x00b1
                           0000B0   450 _PWM1_	=	0x00b0
                           0000B0   451 _RXD	=	0x00b0
                           00008F   452 _TF1	=	0x008f
                           00008E   453 _TR1	=	0x008e
                           00008D   454 _TF0	=	0x008d
                           00008C   455 _TR0	=	0x008c
                           00008B   456 _IE1	=	0x008b
                           00008A   457 _IT1	=	0x008a
                           000089   458 _IE0	=	0x0089
                           000088   459 _IT0	=	0x0088
                           00009F   460 _SM0	=	0x009f
                           00009E   461 _SM1	=	0x009e
                           00009D   462 _SM2	=	0x009d
                           00009C   463 _REN	=	0x009c
                           00009B   464 _TB8	=	0x009b
                           00009A   465 _RB8	=	0x009a
                           000099   466 _TI	=	0x0099
                           000098   467 _RI	=	0x0098
                           0000CF   468 _TF2	=	0x00cf
                           0000CF   469 _CAP1F	=	0x00cf
                           0000CE   470 _EXF2	=	0x00ce
                           0000CD   471 _RCLK	=	0x00cd
                           0000CC   472 _TCLK	=	0x00cc
                           0000CB   473 _EXEN2	=	0x00cb
                           0000CA   474 _TR2	=	0x00ca
                           0000C9   475 _C_T2	=	0x00c9
                           0000C8   476 _CP_RL2	=	0x00c8
                           0000FF   477 _S0_FST_ACT	=	0x00ff
                           0000FE   478 _S0_IF_OV	=	0x00fe
                           0000FD   479 _S0_IF_FIRST	=	0x00fd
                           0000FC   480 _S0_IF_BYTE	=	0x00fc
                           0000FB   481 _S0_FREE	=	0x00fb
                           0000FA   482 _S0_T_FIFO	=	0x00fa
                           0000F8   483 _S0_R_FIFO	=	0x00f8
                           0000C7   484 _U1SM0	=	0x00c7
                           0000C5   485 _U1SMOD	=	0x00c5
                           0000C4   486 _U1REN	=	0x00c4
                           0000C3   487 _U1TB8	=	0x00c3
                           0000C2   488 _U1RB8	=	0x00c2
                           0000C1   489 _U1TI	=	0x00c1
                           0000C0   490 _U1RI	=	0x00c0
                           000087   491 _CMPO	=	0x0087
                           000086   492 _CMP_IF	=	0x0086
                           000085   493 _ADC_IF	=	0x0085
                           000084   494 _ADC_START	=	0x0084
                           000083   495 _CMP_CHAN	=	0x0083
                           000081   496 _ADC_CHAN1	=	0x0081
                           000080   497 _ADC_CHAN0	=	0x0080
                           0000DF   498 _U_IS_NAK	=	0x00df
                           0000DE   499 _U_TOG_OK	=	0x00de
                           0000DD   500 _U_SIE_FREE	=	0x00dd
                           0000DC   501 _UIF_FIFO_OV	=	0x00dc
                           0000DB   502 _UIF_HST_SOF	=	0x00db
                           0000DA   503 _UIF_SUSPEND	=	0x00da
                           0000D9   504 _UIF_TRANSFER	=	0x00d9
                           0000D8   505 _UIF_DETECT	=	0x00d8
                           0000D8   506 _UIF_BUS_RST	=	0x00d8
                                    507 ;--------------------------------------------------------
                                    508 ; overlayable register banks
                                    509 ;--------------------------------------------------------
                                    510 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        511 	.ds 8
                                    512 ;--------------------------------------------------------
                                    513 ; internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area DSEG    (DATA)
      000008                        516 _tick_10ms::
      000008                        517 	.ds 2
      00000A                        518 _button::
      00000A                        519 	.ds 2
      00000C                        520 _led_state::
      00000C                        521 	.ds 1
      00000D                        522 _serialTime::
      00000D                        523 	.ds 2
      00000F                        524 _counter::
      00000F                        525 	.ds 2
      000011                        526 _rawAnalog::
      000011                        527 	.ds 1
      000012                        528 _finalAnalog::
      000012                        529 	.ds 2
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
      000000                        553 _main_sloc0_1_0:
      000000                        554 	.ds 1
                                    555 ;--------------------------------------------------------
                                    556 ; paged external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area PSEG    (PAG,XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; uninitialized external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XSEG    (XDATA)
                                    563 ;--------------------------------------------------------
                                    564 ; absolute external ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area XABS    (ABS,XDATA)
                                    567 ;--------------------------------------------------------
                                    568 ; initialized external ram data
                                    569 ;--------------------------------------------------------
                                    570 	.area XISEG   (XDATA)
                                    571 	.area HOME    (CODE)
                                    572 	.area GSINIT0 (CODE)
                                    573 	.area GSINIT1 (CODE)
                                    574 	.area GSINIT2 (CODE)
                                    575 	.area GSINIT3 (CODE)
                                    576 	.area GSINIT4 (CODE)
                                    577 	.area GSINIT5 (CODE)
                                    578 	.area GSINIT  (CODE)
                                    579 	.area GSFINAL (CODE)
                                    580 	.area CSEG    (CODE)
                                    581 ;--------------------------------------------------------
                                    582 ; interrupt vector
                                    583 ;--------------------------------------------------------
                                    584 	.area HOME    (CODE)
      000000                        585 __interrupt_vect:
      000000 02 00 54         [24]  586 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  587 	reti
      000004                        588 	.ds	7
      00000B 02 00 E2         [24]  589 	ljmp	_timer0_ISR
                                    590 ; restartable atomic support routines
      00000E                        591 	.ds	2
      000010                        592 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  593 	nop
      000011 00               [12]  594 	nop
      000012                        595 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  596 	movx	a, @r0
      000013 FB               [12]  597 	mov	r3, a
      000014 EA               [12]  598 	mov	a, r2
      000015 F2               [24]  599 	movx	@r0, a
      000016 80 2C            [24]  600 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  601 	nop
      000019 00               [12]  602 	nop
      00001A                        603 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  604 	movx	a, @dptr
      00001B FB               [12]  605 	mov	r3, a
      00001C EA               [12]  606 	mov	a, r2
      00001D F0               [24]  607 	movx	@dptr, a
      00001E 80 24            [24]  608 	sjmp	sdcc_atomic_exchange_exit
      000020                        609 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  610 	mov	a, @r0
      000021 B5 02 02         [24]  611 	cjne	a, ar2, .+#5
      000024 EB               [12]  612 	mov	a, r3
      000025 F6               [12]  613 	mov	@r0, a
      000026 22               [24]  614 	ret
      000027 00               [12]  615 	nop
      000028                        616 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  617 	movx	a, @r0
      000029 B5 02 02         [24]  618 	cjne	a, ar2, .+#5
      00002C EB               [12]  619 	mov	a, r3
      00002D F2               [24]  620 	movx	@r0, a
      00002E 22               [24]  621 	ret
      00002F 00               [12]  622 	nop
      000030                        623 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  624 	movx	a, @dptr
      000031 B5 02 02         [24]  625 	cjne	a, ar2, .+#5
      000034 EB               [12]  626 	mov	a, r3
      000035 F0               [24]  627 	movx	@dptr, a
      000036 22               [24]  628 	ret
      000037                        629 sdcc_atomic_exchange_rollback_end::
                                    630 
      000037                        631 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  632 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  633 	mov	r0, dpl
      00003C 20 F5 D3         [24]  634 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        635 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  636 	mov	a, r2
      000040 C6               [12]  637 	xch	a, @r0
      000041 F5 82            [12]  638 	mov	dpl, a
      000043 22               [24]  639 	ret
      000044                        640 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  641 	mov	dpl, r3
      000046 22               [24]  642 	ret
      000047                        643 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  644 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  645 	mov	r0, dpl
      00004C 20 F5 D9         [24]  646 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  647 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    648 ;--------------------------------------------------------
                                    649 ; global & static initialisations
                                    650 ;--------------------------------------------------------
                                    651 	.area HOME    (CODE)
                                    652 	.area GSINIT  (CODE)
                                    653 	.area GSFINAL (CODE)
                                    654 	.area GSINIT  (CODE)
                                    655 	.globl __sdcc_gsinit_startup
                                    656 	.globl __sdcc_program_startup
                                    657 	.globl __start__stack
                                    658 	.globl __mcs51_genXINIT
                                    659 	.globl __mcs51_genXRAMCLEAR
                                    660 	.globl __mcs51_genRAMCLEAR
                                    661 ;	adc-example.c:7: volatile unsigned int tick_10ms = 0;
      0000AD E4               [12]  662 	clr	a
      0000AE F5 08            [12]  663 	mov	_tick_10ms,a
      0000B0 F5 09            [12]  664 	mov	(_tick_10ms + 1),a
                                    665 ;	adc-example.c:9: unsigned char led_state = 0;
      0000B2 F5 0C            [12]  666 	mov	_led_state,a
                                    667 ;	adc-example.c:10: unsigned int serialTime= 0;
      0000B4 F5 0D            [12]  668 	mov	_serialTime,a
      0000B6 F5 0E            [12]  669 	mov	(_serialTime + 1),a
                                    670 ;	adc-example.c:11: unsigned int counter= 0;
      0000B8 F5 0F            [12]  671 	mov	_counter,a
      0000BA F5 10            [12]  672 	mov	(_counter + 1),a
                                    673 ;	adc-example.c:12: uint8_t rawAnalog = 0;  
      0000BC F5 11            [12]  674 	mov	_rawAnalog,a
                                    675 ;	adc-example.c:13: uint16_t finalAnalog = 0;
      0000BE F5 12            [12]  676 	mov	_finalAnalog,a
      0000C0 F5 13            [12]  677 	mov	(_finalAnalog + 1),a
                                    678 	.area GSFINAL (CODE)
      0000C2 02 00 51         [24]  679 	ljmp	__sdcc_program_startup
                                    680 ;--------------------------------------------------------
                                    681 ; Home
                                    682 ;--------------------------------------------------------
                                    683 	.area HOME    (CODE)
                                    684 	.area HOME    (CODE)
      000051                        685 __sdcc_program_startup:
      000051 02 01 96         [24]  686 	ljmp	_main
                                    687 ;	return from main will return to caller
                                    688 ;--------------------------------------------------------
                                    689 ; code
                                    690 ;--------------------------------------------------------
                                    691 	.area CSEG    (CODE)
                                    692 ;------------------------------------------------------------
                                    693 ;Allocation info for local variables in function 'analogReading'
                                    694 ;------------------------------------------------------------
                                    695 ;	adc-example.c:20: uint8_t analogReading(void) {
                                    696 ;	-----------------------------------------
                                    697 ;	 function analogReading
                                    698 ;	-----------------------------------------
      0000C5                        699 _analogReading:
                           000007   700 	ar7 = 0x07
                           000006   701 	ar6 = 0x06
                           000005   702 	ar5 = 0x05
                           000004   703 	ar4 = 0x04
                           000003   704 	ar3 = 0x03
                           000002   705 	ar2 = 0x02
                           000001   706 	ar1 = 0x01
                           000000   707 	ar0 = 0x00
                                    708 ;	adc-example.c:21: ADC_START = 1;          // start conversion, hardware clears it when done
                                    709 ;	assignBit
      0000C5 D2 84            [12]  710 	setb	_ADC_START
                                    711 ;	adc-example.c:22: while (ADC_START);      // wait until auto-cleared
      0000C7                        712 00101$:
      0000C7 20 84 FD         [24]  713 	jb	_ADC_START,00101$
                                    714 ;	adc-example.c:23: ADC_IF = 0;             // clear interrupt flag
                                    715 ;	assignBit
      0000CA C2 85            [12]  716 	clr	_ADC_IF
                                    717 ;	adc-example.c:24: return ADC_DATA;        // return 8-bit result
      0000CC 85 9F 82         [24]  718 	mov	dpl, _ADC_DATA
                                    719 ;	adc-example.c:25: }
      0000CF 22               [24]  720 	ret
                                    721 ;------------------------------------------------------------
                                    722 ;Allocation info for local variables in function 'clock_init'
                                    723 ;------------------------------------------------------------
                                    724 ;	adc-example.c:27: void clock_init(void) {
                                    725 ;	-----------------------------------------
                                    726 ;	 function clock_init
                                    727 ;	-----------------------------------------
      0000D0                        728 _clock_init:
                                    729 ;	adc-example.c:28: SAFE_MOD = 0x55;
      0000D0 75 A1 55         [24]  730 	mov	_SAFE_MOD,#0x55
                                    731 ;	adc-example.c:29: SAFE_MOD = 0xAA;
      0000D3 75 A1 AA         [24]  732 	mov	_SAFE_MOD,#0xaa
                                    733 ;	adc-example.c:31: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0000D6 74 F8            [12]  734 	mov	a,#0xf8
      0000D8 55 B9            [12]  735 	anl	a,_CLOCK_CFG
      0000DA 44 06            [12]  736 	orl	a,#0x06
      0000DC F5 B9            [12]  737 	mov	_CLOCK_CFG,a
                                    738 ;	adc-example.c:33: SAFE_MOD = 0x00;
      0000DE 75 A1 00         [24]  739 	mov	_SAFE_MOD,#0x00
                                    740 ;	adc-example.c:34: }
      0000E1 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'timer0_ISR'
                                    744 ;------------------------------------------------------------
                                    745 ;	adc-example.c:36: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
                                    746 ;	-----------------------------------------
                                    747 ;	 function timer0_ISR
                                    748 ;	-----------------------------------------
      0000E2                        749 _timer0_ISR:
      0000E2 C0 E0            [24]  750 	push	acc
      0000E4 C0 07            [24]  751 	push	ar7
      0000E6 C0 06            [24]  752 	push	ar6
      0000E8 C0 D0            [24]  753 	push	psw
      0000EA 75 D0 00         [24]  754 	mov	psw,#0x00
                                    755 ;	adc-example.c:37: TF0 = 0;  // clear overflow flag (important for robustness)
                                    756 ;	assignBit
      0000ED C2 8D            [12]  757 	clr	_TF0
                                    758 ;	adc-example.c:38: TH0 = 0xB1;
      0000EF 75 8C B1         [24]  759 	mov	_TH0,#0xb1
                                    760 ;	adc-example.c:39: TL0 = 0xE0;
      0000F2 75 8A E0         [24]  761 	mov	_TL0,#0xe0
                                    762 ;	adc-example.c:40: tick_10ms++;
      0000F5 AE 08            [24]  763 	mov	r6,_tick_10ms
      0000F7 AF 09            [24]  764 	mov	r7,(_tick_10ms + 1)
      0000F9 74 01            [12]  765 	mov	a,#0x01
      0000FB 2E               [12]  766 	add	a, r6
      0000FC F5 08            [12]  767 	mov	_tick_10ms,a
      0000FE E4               [12]  768 	clr	a
      0000FF 3F               [12]  769 	addc	a, r7
      000100 F5 09            [12]  770 	mov	(_tick_10ms + 1),a
                                    771 ;	adc-example.c:41: serialTime++;
      000102 05 0D            [12]  772 	inc	_serialTime
      000104 E4               [12]  773 	clr	a
      000105 B5 0D 02         [24]  774 	cjne	a,_serialTime,00103$
      000108 05 0E            [12]  775 	inc	(_serialTime + 1)
      00010A                        776 00103$:
                                    777 ;	adc-example.c:42: }
      00010A D0 D0            [24]  778 	pop	psw
      00010C D0 06            [24]  779 	pop	ar6
      00010E D0 07            [24]  780 	pop	ar7
      000110 D0 E0            [24]  781 	pop	acc
      000112 32               [24]  782 	reti
                                    783 ;	eliminated unneeded push/pop dpl
                                    784 ;	eliminated unneeded push/pop dph
                                    785 ;	eliminated unneeded push/pop b
                                    786 ;------------------------------------------------------------
                                    787 ;Allocation info for local variables in function 'timer0_init'
                                    788 ;------------------------------------------------------------
                                    789 ;	adc-example.c:44: void timer0_init(void) {
                                    790 ;	-----------------------------------------
                                    791 ;	 function timer0_init
                                    792 ;	-----------------------------------------
      000113                        793 _timer0_init:
                                    794 ;	adc-example.c:45: TMOD &= ~0x03;  // clear Timer0 mode bits
      000113 53 89 FC         [24]  795 	anl	_TMOD,#0xfc
                                    796 ;	adc-example.c:46: TMOD |=  0x01;  // Timer0 mode 1: 16-bit
      000116 43 89 01         [24]  797 	orl	_TMOD,#0x01
                                    798 ;	adc-example.c:50: TH0 = 0xB1;
      000119 75 8C B1         [24]  799 	mov	_TH0,#0xb1
                                    800 ;	adc-example.c:51: TL0 = 0xE0;
      00011C 75 8A E0         [24]  801 	mov	_TL0,#0xe0
                                    802 ;	adc-example.c:53: ET0 = 1;   // enable Timer0 interrupt
                                    803 ;	assignBit
      00011F D2 A9            [12]  804 	setb	_ET0
                                    805 ;	adc-example.c:54: TR0 = 1;   // start Timer0
                                    806 ;	assignBit
      000121 D2 8C            [12]  807 	setb	_TR0
                                    808 ;	adc-example.c:55: EA = 1;
                                    809 ;	assignBit
      000123 D2 AF            [12]  810 	setb	_EA
                                    811 ;	adc-example.c:56: }
      000125 22               [24]  812 	ret
                                    813 ;------------------------------------------------------------
                                    814 ;Allocation info for local variables in function 'blink_led'
                                    815 ;------------------------------------------------------------
                                    816 ;	adc-example.c:58: void blink_led(void) {
                                    817 ;	-----------------------------------------
                                    818 ;	 function blink_led
                                    819 ;	-----------------------------------------
      000126                        820 _blink_led:
                                    821 ;	adc-example.c:59: if(tick_10ms % 60 < 30){
      000126 75 14 3C         [24]  822 	mov	__moduint_PARM_2,#0x3c
      000129 75 15 00         [24]  823 	mov	(__moduint_PARM_2 + 1),#0x00
      00012C 85 08 82         [24]  824 	mov	dpl, _tick_10ms
      00012F 85 09 83         [24]  825 	mov	dph, (_tick_10ms + 1)
      000132 12 05 0C         [24]  826 	lcall	__moduint
      000135 AE 82            [24]  827 	mov	r6, dpl
      000137 AF 83            [24]  828 	mov	r7, dph
      000139 C3               [12]  829 	clr	c
      00013A EE               [12]  830 	mov	a,r6
      00013B 94 1E            [12]  831 	subb	a,#0x1e
      00013D EF               [12]  832 	mov	a,r7
      00013E 94 00            [12]  833 	subb	a,#0x00
      000140 50 04            [24]  834 	jnc	00102$
                                    835 ;	adc-example.c:60: P3 |= (1 << 0);  // LED ON
      000142 43 B0 01         [24]  836 	orl	_P3,#0x01
      000145 22               [24]  837 	ret
      000146                        838 00102$:
                                    839 ;	adc-example.c:62: P3 &= ~(1 << 0); // LED OFF
      000146 53 B0 FE         [24]  840 	anl	_P3,#0xfe
                                    841 ;	adc-example.c:64: }
      000149 22               [24]  842 	ret
                                    843 ;------------------------------------------------------------
                                    844 ;Allocation info for local variables in function 'rawToMillivolts'
                                    845 ;------------------------------------------------------------
                                    846 ;raw           Allocated to registers r7 
                                    847 ;------------------------------------------------------------
                                    848 ;	adc-example.c:65: uint16_t rawToMillivolts(uint8_t raw) {
                                    849 ;	-----------------------------------------
                                    850 ;	 function rawToMillivolts
                                    851 ;	-----------------------------------------
      00014A                        852 _rawToMillivolts:
      00014A AF 82            [24]  853 	mov	r7, dpl
                                    854 ;	adc-example.c:66: if (raw < 46) return 0;
      00014C BF 2E 00         [24]  855 	cjne	r7,#0x2e,00111$
      00014F                        856 00111$:
      00014F 50 04            [24]  857 	jnc	00102$
      000151 90 00 00         [24]  858 	mov	dptr,#0x0000
      000154 22               [24]  859 	ret
      000155                        860 00102$:
                                    861 ;	adc-example.c:67: return 300 + ((uint32_t)(raw - 46) * 3000) / 117;
      000155 EF               [12]  862 	mov	a,r7
      000156 24 D2            [12]  863 	add	a,#0xd2
      000158 F5 14            [12]  864 	mov	__mullong_PARM_2, a
      00015A 75 15 00         [24]  865 	mov	(__mullong_PARM_2 + 1),#0x00
      00015D 75 16 00         [24]  866 	mov	(__mullong_PARM_2 + 2),#0x00
      000160 75 17 00         [24]  867 	mov	(__mullong_PARM_2 + 3),#0x00
      000163 90 0B B8         [24]  868 	mov	dptr,#0x0bb8
      000166 E4               [12]  869 	clr	a
      000167 F5 F0            [12]  870 	mov	b,a
      000169 12 04 9E         [24]  871 	lcall	__mullong
      00016C AC 82            [24]  872 	mov	r4, dpl
      00016E AD 83            [24]  873 	mov	r5, dph
      000170 AE F0            [24]  874 	mov	r6, b
      000172 FF               [12]  875 	mov	r7, a
      000173 75 14 75         [24]  876 	mov	__divulong_PARM_2,#0x75
      000176 E4               [12]  877 	clr	a
      000177 F5 15            [12]  878 	mov	(__divulong_PARM_2 + 1),a
      000179 F5 16            [12]  879 	mov	(__divulong_PARM_2 + 2),a
      00017B F5 17            [12]  880 	mov	(__divulong_PARM_2 + 3),a
      00017D 8C 82            [24]  881 	mov	dpl, r4
      00017F 8D 83            [24]  882 	mov	dph, r5
      000181 8E F0            [24]  883 	mov	b, r6
      000183 EF               [12]  884 	mov	a, r7
      000184 12 04 39         [24]  885 	lcall	__divulong
      000187 AC 82            [24]  886 	mov	r4, dpl
      000189 AD 83            [24]  887 	mov	r5, dph
      00018B 74 2C            [12]  888 	mov	a,#0x2c
      00018D 2C               [12]  889 	add	a, r4
      00018E F5 82            [12]  890 	mov	dpl,a
      000190 74 01            [12]  891 	mov	a,#0x01
      000192 3D               [12]  892 	addc	a, r5
      000193 F5 83            [12]  893 	mov	dph,a
                                    894 ;	adc-example.c:68: }
      000195 22               [24]  895 	ret
                                    896 ;------------------------------------------------------------
                                    897 ;Allocation info for local variables in function 'main'
                                    898 ;------------------------------------------------------------
                                    899 ;	adc-example.c:69: void main(void) {
                                    900 ;	-----------------------------------------
                                    901 ;	 function main
                                    902 ;	-----------------------------------------
      000196                        903 _main:
                                    904 ;	adc-example.c:70: clock_init();
      000196 12 00 D0         [24]  905 	lcall	_clock_init
                                    906 ;	adc-example.c:71: timer0_init();
      000199 12 01 13         [24]  907 	lcall	_timer0_init
                                    908 ;	adc-example.c:74: SAFE_MOD = 0x55;
      00019C 75 A1 55         [24]  909 	mov	_SAFE_MOD,#0x55
                                    910 ;	adc-example.c:75: SAFE_MOD = 0xAA;
      00019F 75 A1 AA         [24]  911 	mov	_SAFE_MOD,#0xaa
                                    912 ;	adc-example.c:76: GLOBAL_CFG &= ~bWDOG_EN;   // turn off watchdog
      0001A2 53 B1 FE         [24]  913 	anl	_GLOBAL_CFG,#0xfe
                                    914 ;	adc-example.c:77: SAFE_MOD = 0x00;
      0001A5 75 A1 00         [24]  915 	mov	_SAFE_MOD,#0x00
                                    916 ;	adc-example.c:81: P3_MOD_OC &= ~0x01;   // not open-drain
      0001A8 53 96 FE         [24]  917 	anl	_P3_MOD_OC,#0xfe
                                    918 ;	adc-example.c:82: P3_DIR_PU |= 0x01;    // output, with pull-up
      0001AB 43 97 01         [24]  919 	orl	_P3_DIR_PU,#0x01
                                    920 ;	adc-example.c:85: P1_MOD_OC |=  (1 << 4);   // open-drain mode → required for pull-up
      0001AE 43 92 10         [24]  921 	orl	_P1_MOD_OC,#0x10
                                    922 ;	adc-example.c:86: P1_DIR_PU  |=  (1 << 4);  // pull-up enabled
      0001B1 43 93 10         [24]  923 	orl	_P1_DIR_PU,#0x10
                                    924 ;	adc-example.c:90: ADCInit(0);                    // 0 = slow (384 Fosc), no interrupt
      0001B4 75 82 00         [24]  925 	mov	dpl, #0x00
      0001B7 12 02 10         [24]  926 	lcall	_ADCInit
                                    927 ;	adc-example.c:91: ADC_ChannelSelect(2);          // AIN0 = P1.1
      0001BA 75 82 02         [24]  928 	mov	dpl, #0x02
      0001BD 12 02 1D         [24]  929 	lcall	_ADC_ChannelSelect
                                    930 ;	adc-example.c:93: Serial_begin();
      0001C0 12 02 B8         [24]  931 	lcall	_Serial_begin
                                    932 ;	adc-example.c:95: while (1) {
      0001C3                        933 00107$:
                                    934 ;	adc-example.c:96: button = !(P1 & (1 << 4)); // pressed = 1
      0001C3 E5 90            [12]  935 	mov	a,_P1
      0001C5 C4               [12]  936 	swap	a
      0001C6 54 01            [12]  937 	anl	a,#0x01
      0001C8 B4 01 00         [24]  938 	cjne	a,#0x01,00129$
      0001CB                        939 00129$:
      0001CB 92 00            [24]  940 	mov  _main_sloc0_1_0,c
      0001CD E4               [12]  941 	clr	a
      0001CE 33               [12]  942 	rlc	a
                                    943 ;	adc-example.c:98: if(button){
      0001CF F5 0A            [12]  944 	mov	_button,a
      0001D1 75 0B 00         [24]  945 	mov	(_button + 1),#0x00
      0001D4 45 0B            [12]  946 	orl	a,(_button + 1)
      0001D6 60 05            [24]  947 	jz	00102$
                                    948 ;	adc-example.c:99: blink_led();
      0001D8 12 01 26         [24]  949 	lcall	_blink_led
      0001DB 80 03            [24]  950 	sjmp	00103$
      0001DD                        951 00102$:
                                    952 ;	adc-example.c:102: P3 &= ~0x01;   // LED OFF            
      0001DD 53 B0 FE         [24]  953 	anl	_P3,#0xfe
      0001E0                        954 00103$:
                                    955 ;	adc-example.c:104: if(serialTime > 100){
      0001E0 C3               [12]  956 	clr	c
      0001E1 74 64            [12]  957 	mov	a,#0x64
      0001E3 95 0D            [12]  958 	subb	a,_serialTime
      0001E5 E4               [12]  959 	clr	a
      0001E6 95 0E            [12]  960 	subb	a,(_serialTime + 1)
      0001E8 50 D9            [24]  961 	jnc	00107$
                                    962 ;	adc-example.c:105: rawAnalog= analogReading();
      0001EA 12 00 C5         [24]  963 	lcall	_analogReading
                                    964 ;	adc-example.c:106: finalAnalog= rawToMillivolts(rawAnalog);
      0001ED 85 82 11         [24]  965 	mov  _rawAnalog,dpl
      0001F0 12 01 4A         [24]  966 	lcall	_rawToMillivolts
      0001F3 85 82 12         [24]  967 	mov	_finalAnalog,dpl
      0001F6 85 83 13         [24]  968 	mov	(_finalAnalog + 1),dph
                                    969 ;	adc-example.c:107: serialTime= 0;
      0001F9 E4               [12]  970 	clr	a
      0001FA F5 0D            [12]  971 	mov	_serialTime,a
      0001FC F5 0E            [12]  972 	mov	(_serialTime + 1),a
                                    973 ;	adc-example.c:108: counter++;
      0001FE 05 0F            [12]  974 	inc	_counter
      000200 B5 0F 02         [24]  975 	cjne	a,_counter,00132$
      000203 05 10            [12]  976 	inc	(_counter + 1)
      000205                        977 00132$:
                                    978 ;	adc-example.c:110: Serial_println_uint(finalAnalog);
      000205 85 12 82         [24]  979 	mov	dpl,_finalAnalog
      000208 85 13 83         [24]  980 	mov	dph,(_finalAnalog + 1)
      00020B 12 04 01         [24]  981 	lcall	_Serial_println_uint
                                    982 ;	adc-example.c:114: }
      00020E 80 B3            [24]  983 	sjmp	00107$
                                    984 	.area CSEG    (CODE)
                                    985 	.area CONST   (CODE)
                                    986 	.area XINIT   (CODE)
                                    987 	.area CABS    (ABS,CODE)
