                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module mpu9250_test
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_init
                                     13 	.globl _sprintf
                                     14 	.globl _MPU9250_readAccelGyro
                                     15 	.globl _MPU9250_whoami
                                     16 	.globl _MPU9250_init
                                     17 	.globl _SPIMasterModeSet
                                     18 	.globl _Serial_println_uint
                                     19 	.globl _Serial_println
                                     20 	.globl _Serial_print
                                     21 	.globl _Serial_begin
                                     22 	.globl _UIF_BUS_RST
                                     23 	.globl _UIF_DETECT
                                     24 	.globl _UIF_TRANSFER
                                     25 	.globl _UIF_SUSPEND
                                     26 	.globl _UIF_HST_SOF
                                     27 	.globl _UIF_FIFO_OV
                                     28 	.globl _U_SIE_FREE
                                     29 	.globl _U_TOG_OK
                                     30 	.globl _U_IS_NAK
                                     31 	.globl _ADC_CHAN0
                                     32 	.globl _ADC_CHAN1
                                     33 	.globl _CMP_CHAN
                                     34 	.globl _ADC_START
                                     35 	.globl _ADC_IF
                                     36 	.globl _CMP_IF
                                     37 	.globl _CMPO
                                     38 	.globl _U1RI
                                     39 	.globl _U1TI
                                     40 	.globl _U1RB8
                                     41 	.globl _U1TB8
                                     42 	.globl _U1REN
                                     43 	.globl _U1SMOD
                                     44 	.globl _U1SM0
                                     45 	.globl _S0_R_FIFO
                                     46 	.globl _S0_T_FIFO
                                     47 	.globl _S0_FREE
                                     48 	.globl _S0_IF_BYTE
                                     49 	.globl _S0_IF_FIRST
                                     50 	.globl _S0_IF_OV
                                     51 	.globl _S0_FST_ACT
                                     52 	.globl _CP_RL2
                                     53 	.globl _C_T2
                                     54 	.globl _TR2
                                     55 	.globl _EXEN2
                                     56 	.globl _TCLK
                                     57 	.globl _RCLK
                                     58 	.globl _EXF2
                                     59 	.globl _CAP1F
                                     60 	.globl _TF2
                                     61 	.globl _RI
                                     62 	.globl _TI
                                     63 	.globl _RB8
                                     64 	.globl _TB8
                                     65 	.globl _REN
                                     66 	.globl _SM2
                                     67 	.globl _SM1
                                     68 	.globl _SM0
                                     69 	.globl _IT0
                                     70 	.globl _IE0
                                     71 	.globl _IT1
                                     72 	.globl _IE1
                                     73 	.globl _TR0
                                     74 	.globl _TF0
                                     75 	.globl _TR1
                                     76 	.globl _TF1
                                     77 	.globl _RXD
                                     78 	.globl _PWM1_
                                     79 	.globl _TXD
                                     80 	.globl _PWM2_
                                     81 	.globl _AIN3
                                     82 	.globl _VBUS1
                                     83 	.globl _INT0
                                     84 	.globl _TXD1_
                                     85 	.globl _INT1
                                     86 	.globl _T0
                                     87 	.globl _RXD1_
                                     88 	.globl _PWM2
                                     89 	.globl _T1
                                     90 	.globl _UDP
                                     91 	.globl _UDM
                                     92 	.globl _TIN0
                                     93 	.globl _CAP1
                                     94 	.globl _T2
                                     95 	.globl _AIN0
                                     96 	.globl _VBUS2
                                     97 	.globl _TIN1
                                     98 	.globl _CAP2
                                     99 	.globl _T2EX
                                    100 	.globl _RXD_
                                    101 	.globl _TXD_
                                    102 	.globl _AIN1
                                    103 	.globl _UCC1
                                    104 	.globl _TIN2
                                    105 	.globl _SCS
                                    106 	.globl _CAP1_
                                    107 	.globl _T2_
                                    108 	.globl _AIN2
                                    109 	.globl _UCC2
                                    110 	.globl _TIN3
                                    111 	.globl _PWM1
                                    112 	.globl _MOSI
                                    113 	.globl _TIN4
                                    114 	.globl _RXD1
                                    115 	.globl _MISO
                                    116 	.globl _TIN5
                                    117 	.globl _TXD1
                                    118 	.globl _SCK
                                    119 	.globl _IE_SPI0
                                    120 	.globl _IE_TKEY
                                    121 	.globl _IE_USB
                                    122 	.globl _IE_ADC
                                    123 	.globl _IE_UART1
                                    124 	.globl _IE_PWMX
                                    125 	.globl _IE_GPIO
                                    126 	.globl _IE_WDOG
                                    127 	.globl _PX0
                                    128 	.globl _PT0
                                    129 	.globl _PX1
                                    130 	.globl _PT1
                                    131 	.globl _PS
                                    132 	.globl _PT2
                                    133 	.globl _PL_FLAG
                                    134 	.globl _PH_FLAG
                                    135 	.globl _EX0
                                    136 	.globl _ET0
                                    137 	.globl _EX1
                                    138 	.globl _ET1
                                    139 	.globl _ES
                                    140 	.globl _ET2
                                    141 	.globl _E_DIS
                                    142 	.globl _EA
                                    143 	.globl _P
                                    144 	.globl _F1
                                    145 	.globl _OV
                                    146 	.globl _RS0
                                    147 	.globl _RS1
                                    148 	.globl _F0
                                    149 	.globl _AC
                                    150 	.globl _CY
                                    151 	.globl _UEP1_DMA_H
                                    152 	.globl _UEP1_DMA_L
                                    153 	.globl _UEP1_DMA
                                    154 	.globl _UEP0_DMA_H
                                    155 	.globl _UEP0_DMA_L
                                    156 	.globl _UEP0_DMA
                                    157 	.globl _UEP2_3_MOD
                                    158 	.globl _UEP4_1_MOD
                                    159 	.globl _UEP3_DMA_H
                                    160 	.globl _UEP3_DMA_L
                                    161 	.globl _UEP3_DMA
                                    162 	.globl _UEP2_DMA_H
                                    163 	.globl _UEP2_DMA_L
                                    164 	.globl _UEP2_DMA
                                    165 	.globl _USB_DEV_AD
                                    166 	.globl _USB_CTRL
                                    167 	.globl _USB_INT_EN
                                    168 	.globl _UEP4_T_LEN
                                    169 	.globl _UEP4_CTRL
                                    170 	.globl _UEP0_T_LEN
                                    171 	.globl _UEP0_CTRL
                                    172 	.globl _USB_RX_LEN
                                    173 	.globl _USB_MIS_ST
                                    174 	.globl _USB_INT_ST
                                    175 	.globl _USB_INT_FG
                                    176 	.globl _UEP3_T_LEN
                                    177 	.globl _UEP3_CTRL
                                    178 	.globl _UEP2_T_LEN
                                    179 	.globl _UEP2_CTRL
                                    180 	.globl _UEP1_T_LEN
                                    181 	.globl _UEP1_CTRL
                                    182 	.globl _UDEV_CTRL
                                    183 	.globl _USB_C_CTRL
                                    184 	.globl _TKEY_DATH
                                    185 	.globl _TKEY_DATL
                                    186 	.globl _TKEY_DAT
                                    187 	.globl _TKEY_CTRL
                                    188 	.globl _ADC_DATA
                                    189 	.globl _ADC_CFG
                                    190 	.globl _ADC_CTRL
                                    191 	.globl _SBAUD1
                                    192 	.globl _SBUF1
                                    193 	.globl _SCON1
                                    194 	.globl _SPI0_SETUP
                                    195 	.globl _SPI0_CK_SE
                                    196 	.globl _SPI0_CTRL
                                    197 	.globl _SPI0_DATA
                                    198 	.globl _SPI0_STAT
                                    199 	.globl _PWM_CK_SE
                                    200 	.globl _PWM_CTRL
                                    201 	.globl _PWM_DATA1
                                    202 	.globl _PWM_DATA2
                                    203 	.globl _T2CAP1H
                                    204 	.globl _T2CAP1L
                                    205 	.globl _T2CAP1
                                    206 	.globl _TH2
                                    207 	.globl _TL2
                                    208 	.globl _T2COUNT
                                    209 	.globl _RCAP2H
                                    210 	.globl _RCAP2L
                                    211 	.globl _RCAP2
                                    212 	.globl _T2MOD
                                    213 	.globl _T2CON
                                    214 	.globl _SBUF
                                    215 	.globl _SCON
                                    216 	.globl _TH1
                                    217 	.globl _TH0
                                    218 	.globl _TL1
                                    219 	.globl _TL0
                                    220 	.globl _TMOD
                                    221 	.globl _TCON
                                    222 	.globl _XBUS_AUX
                                    223 	.globl _PIN_FUNC
                                    224 	.globl _P3_DIR_PU
                                    225 	.globl _P3_MOD_OC
                                    226 	.globl _P3
                                    227 	.globl _P2
                                    228 	.globl _P1_DIR_PU
                                    229 	.globl _P1_MOD_OC
                                    230 	.globl _P1
                                    231 	.globl _ROM_CTRL
                                    232 	.globl _ROM_DATA_H
                                    233 	.globl _ROM_DATA_L
                                    234 	.globl _ROM_DATA
                                    235 	.globl _ROM_ADDR_H
                                    236 	.globl _ROM_ADDR_L
                                    237 	.globl _ROM_ADDR
                                    238 	.globl _GPIO_IE
                                    239 	.globl _IP_EX
                                    240 	.globl _IE_EX
                                    241 	.globl _IP
                                    242 	.globl _IE
                                    243 	.globl _WDOG_COUNT
                                    244 	.globl _RESET_KEEP
                                    245 	.globl _WAKE_CTRL
                                    246 	.globl _CLOCK_CFG
                                    247 	.globl _PCON
                                    248 	.globl _GLOBAL_CFG
                                    249 	.globl _SAFE_MOD
                                    250 	.globl _DPH
                                    251 	.globl _DPL
                                    252 	.globl _SP
                                    253 	.globl _B
                                    254 	.globl _ACC
                                    255 	.globl _PSW
                                    256 	.globl _counter
                                    257 	.globl _serialTime
                                    258 	.globl _led_state
                                    259 	.globl _button
                                    260 	.globl _tick_10ms
                                    261 	.globl _buf
                                    262 	.globl _clock_init
                                    263 	.globl _timer0_ISR
                                    264 	.globl _blink_led
                                    265 ;--------------------------------------------------------
                                    266 ; special function registers
                                    267 ;--------------------------------------------------------
                                    268 	.area RSEG    (ABS,DATA)
      000000                        269 	.org 0x0000
                           0000D0   270 _PSW	=	0x00d0
                           0000E0   271 _ACC	=	0x00e0
                           0000F0   272 _B	=	0x00f0
                           000081   273 _SP	=	0x0081
                           000082   274 _DPL	=	0x0082
                           000083   275 _DPH	=	0x0083
                           0000A1   276 _SAFE_MOD	=	0x00a1
                           0000B1   277 _GLOBAL_CFG	=	0x00b1
                           000087   278 _PCON	=	0x0087
                           0000B9   279 _CLOCK_CFG	=	0x00b9
                           0000A9   280 _WAKE_CTRL	=	0x00a9
                           0000FE   281 _RESET_KEEP	=	0x00fe
                           0000FF   282 _WDOG_COUNT	=	0x00ff
                           0000A8   283 _IE	=	0x00a8
                           0000B8   284 _IP	=	0x00b8
                           0000E8   285 _IE_EX	=	0x00e8
                           0000E9   286 _IP_EX	=	0x00e9
                           0000C7   287 _GPIO_IE	=	0x00c7
                           008584   288 _ROM_ADDR	=	0x8584
                           000084   289 _ROM_ADDR_L	=	0x0084
                           000085   290 _ROM_ADDR_H	=	0x0085
                           008F8E   291 _ROM_DATA	=	0x8f8e
                           00008E   292 _ROM_DATA_L	=	0x008e
                           00008F   293 _ROM_DATA_H	=	0x008f
                           000086   294 _ROM_CTRL	=	0x0086
                           000090   295 _P1	=	0x0090
                           000092   296 _P1_MOD_OC	=	0x0092
                           000093   297 _P1_DIR_PU	=	0x0093
                           0000A0   298 _P2	=	0x00a0
                           0000B0   299 _P3	=	0x00b0
                           000096   300 _P3_MOD_OC	=	0x0096
                           000097   301 _P3_DIR_PU	=	0x0097
                           0000C6   302 _PIN_FUNC	=	0x00c6
                           0000A2   303 _XBUS_AUX	=	0x00a2
                           000088   304 _TCON	=	0x0088
                           000089   305 _TMOD	=	0x0089
                           00008A   306 _TL0	=	0x008a
                           00008B   307 _TL1	=	0x008b
                           00008C   308 _TH0	=	0x008c
                           00008D   309 _TH1	=	0x008d
                           000098   310 _SCON	=	0x0098
                           000099   311 _SBUF	=	0x0099
                           0000C8   312 _T2CON	=	0x00c8
                           0000C9   313 _T2MOD	=	0x00c9
                           00CBCA   314 _RCAP2	=	0xcbca
                           0000CA   315 _RCAP2L	=	0x00ca
                           0000CB   316 _RCAP2H	=	0x00cb
                           00CDCC   317 _T2COUNT	=	0xcdcc
                           0000CC   318 _TL2	=	0x00cc
                           0000CD   319 _TH2	=	0x00cd
                           00CFCE   320 _T2CAP1	=	0xcfce
                           0000CE   321 _T2CAP1L	=	0x00ce
                           0000CF   322 _T2CAP1H	=	0x00cf
                           00009B   323 _PWM_DATA2	=	0x009b
                           00009C   324 _PWM_DATA1	=	0x009c
                           00009D   325 _PWM_CTRL	=	0x009d
                           00009E   326 _PWM_CK_SE	=	0x009e
                           0000F8   327 _SPI0_STAT	=	0x00f8
                           0000F9   328 _SPI0_DATA	=	0x00f9
                           0000FA   329 _SPI0_CTRL	=	0x00fa
                           0000FB   330 _SPI0_CK_SE	=	0x00fb
                           0000FC   331 _SPI0_SETUP	=	0x00fc
                           0000C0   332 _SCON1	=	0x00c0
                           0000C1   333 _SBUF1	=	0x00c1
                           0000C2   334 _SBAUD1	=	0x00c2
                           000080   335 _ADC_CTRL	=	0x0080
                           00009A   336 _ADC_CFG	=	0x009a
                           00009F   337 _ADC_DATA	=	0x009f
                           0000C3   338 _TKEY_CTRL	=	0x00c3
                           00C5C4   339 _TKEY_DAT	=	0xc5c4
                           0000C4   340 _TKEY_DATL	=	0x00c4
                           0000C5   341 _TKEY_DATH	=	0x00c5
                           000091   342 _USB_C_CTRL	=	0x0091
                           0000D1   343 _UDEV_CTRL	=	0x00d1
                           0000D2   344 _UEP1_CTRL	=	0x00d2
                           0000D3   345 _UEP1_T_LEN	=	0x00d3
                           0000D4   346 _UEP2_CTRL	=	0x00d4
                           0000D5   347 _UEP2_T_LEN	=	0x00d5
                           0000D6   348 _UEP3_CTRL	=	0x00d6
                           0000D7   349 _UEP3_T_LEN	=	0x00d7
                           0000D8   350 _USB_INT_FG	=	0x00d8
                           0000D9   351 _USB_INT_ST	=	0x00d9
                           0000DA   352 _USB_MIS_ST	=	0x00da
                           0000DB   353 _USB_RX_LEN	=	0x00db
                           0000DC   354 _UEP0_CTRL	=	0x00dc
                           0000DD   355 _UEP0_T_LEN	=	0x00dd
                           0000DE   356 _UEP4_CTRL	=	0x00de
                           0000DF   357 _UEP4_T_LEN	=	0x00df
                           0000E1   358 _USB_INT_EN	=	0x00e1
                           0000E2   359 _USB_CTRL	=	0x00e2
                           0000E3   360 _USB_DEV_AD	=	0x00e3
                           00E5E4   361 _UEP2_DMA	=	0xe5e4
                           0000E4   362 _UEP2_DMA_L	=	0x00e4
                           0000E5   363 _UEP2_DMA_H	=	0x00e5
                           00E7E6   364 _UEP3_DMA	=	0xe7e6
                           0000E6   365 _UEP3_DMA_L	=	0x00e6
                           0000E7   366 _UEP3_DMA_H	=	0x00e7
                           0000EA   367 _UEP4_1_MOD	=	0x00ea
                           0000EB   368 _UEP2_3_MOD	=	0x00eb
                           00EDEC   369 _UEP0_DMA	=	0xedec
                           0000EC   370 _UEP0_DMA_L	=	0x00ec
                           0000ED   371 _UEP0_DMA_H	=	0x00ed
                           00EFEE   372 _UEP1_DMA	=	0xefee
                           0000EE   373 _UEP1_DMA_L	=	0x00ee
                           0000EF   374 _UEP1_DMA_H	=	0x00ef
                                    375 ;--------------------------------------------------------
                                    376 ; special function bits
                                    377 ;--------------------------------------------------------
                                    378 	.area RSEG    (ABS,DATA)
      000000                        379 	.org 0x0000
                           0000D7   380 _CY	=	0x00d7
                           0000D6   381 _AC	=	0x00d6
                           0000D5   382 _F0	=	0x00d5
                           0000D4   383 _RS1	=	0x00d4
                           0000D3   384 _RS0	=	0x00d3
                           0000D2   385 _OV	=	0x00d2
                           0000D1   386 _F1	=	0x00d1
                           0000D0   387 _P	=	0x00d0
                           0000AF   388 _EA	=	0x00af
                           0000AE   389 _E_DIS	=	0x00ae
                           0000AD   390 _ET2	=	0x00ad
                           0000AC   391 _ES	=	0x00ac
                           0000AB   392 _ET1	=	0x00ab
                           0000AA   393 _EX1	=	0x00aa
                           0000A9   394 _ET0	=	0x00a9
                           0000A8   395 _EX0	=	0x00a8
                           0000BF   396 _PH_FLAG	=	0x00bf
                           0000BE   397 _PL_FLAG	=	0x00be
                           0000BD   398 _PT2	=	0x00bd
                           0000BC   399 _PS	=	0x00bc
                           0000BB   400 _PT1	=	0x00bb
                           0000BA   401 _PX1	=	0x00ba
                           0000B9   402 _PT0	=	0x00b9
                           0000B8   403 _PX0	=	0x00b8
                           0000EF   404 _IE_WDOG	=	0x00ef
                           0000EE   405 _IE_GPIO	=	0x00ee
                           0000ED   406 _IE_PWMX	=	0x00ed
                           0000EC   407 _IE_UART1	=	0x00ec
                           0000EB   408 _IE_ADC	=	0x00eb
                           0000EA   409 _IE_USB	=	0x00ea
                           0000E9   410 _IE_TKEY	=	0x00e9
                           0000E8   411 _IE_SPI0	=	0x00e8
                           000097   412 _SCK	=	0x0097
                           000097   413 _TXD1	=	0x0097
                           000097   414 _TIN5	=	0x0097
                           000096   415 _MISO	=	0x0096
                           000096   416 _RXD1	=	0x0096
                           000096   417 _TIN4	=	0x0096
                           000095   418 _MOSI	=	0x0095
                           000095   419 _PWM1	=	0x0095
                           000095   420 _TIN3	=	0x0095
                           000095   421 _UCC2	=	0x0095
                           000095   422 _AIN2	=	0x0095
                           000094   423 _T2_	=	0x0094
                           000094   424 _CAP1_	=	0x0094
                           000094   425 _SCS	=	0x0094
                           000094   426 _TIN2	=	0x0094
                           000094   427 _UCC1	=	0x0094
                           000094   428 _AIN1	=	0x0094
                           000093   429 _TXD_	=	0x0093
                           000092   430 _RXD_	=	0x0092
                           000091   431 _T2EX	=	0x0091
                           000091   432 _CAP2	=	0x0091
                           000091   433 _TIN1	=	0x0091
                           000091   434 _VBUS2	=	0x0091
                           000091   435 _AIN0	=	0x0091
                           000090   436 _T2	=	0x0090
                           000090   437 _CAP1	=	0x0090
                           000090   438 _TIN0	=	0x0090
                           0000B7   439 _UDM	=	0x00b7
                           0000B6   440 _UDP	=	0x00b6
                           0000B5   441 _T1	=	0x00b5
                           0000B4   442 _PWM2	=	0x00b4
                           0000B4   443 _RXD1_	=	0x00b4
                           0000B4   444 _T0	=	0x00b4
                           0000B3   445 _INT1	=	0x00b3
                           0000B2   446 _TXD1_	=	0x00b2
                           0000B2   447 _INT0	=	0x00b2
                           0000B2   448 _VBUS1	=	0x00b2
                           0000B2   449 _AIN3	=	0x00b2
                           0000B1   450 _PWM2_	=	0x00b1
                           0000B1   451 _TXD	=	0x00b1
                           0000B0   452 _PWM1_	=	0x00b0
                           0000B0   453 _RXD	=	0x00b0
                           00008F   454 _TF1	=	0x008f
                           00008E   455 _TR1	=	0x008e
                           00008D   456 _TF0	=	0x008d
                           00008C   457 _TR0	=	0x008c
                           00008B   458 _IE1	=	0x008b
                           00008A   459 _IT1	=	0x008a
                           000089   460 _IE0	=	0x0089
                           000088   461 _IT0	=	0x0088
                           00009F   462 _SM0	=	0x009f
                           00009E   463 _SM1	=	0x009e
                           00009D   464 _SM2	=	0x009d
                           00009C   465 _REN	=	0x009c
                           00009B   466 _TB8	=	0x009b
                           00009A   467 _RB8	=	0x009a
                           000099   468 _TI	=	0x0099
                           000098   469 _RI	=	0x0098
                           0000CF   470 _TF2	=	0x00cf
                           0000CF   471 _CAP1F	=	0x00cf
                           0000CE   472 _EXF2	=	0x00ce
                           0000CD   473 _RCLK	=	0x00cd
                           0000CC   474 _TCLK	=	0x00cc
                           0000CB   475 _EXEN2	=	0x00cb
                           0000CA   476 _TR2	=	0x00ca
                           0000C9   477 _C_T2	=	0x00c9
                           0000C8   478 _CP_RL2	=	0x00c8
                           0000FF   479 _S0_FST_ACT	=	0x00ff
                           0000FE   480 _S0_IF_OV	=	0x00fe
                           0000FD   481 _S0_IF_FIRST	=	0x00fd
                           0000FC   482 _S0_IF_BYTE	=	0x00fc
                           0000FB   483 _S0_FREE	=	0x00fb
                           0000FA   484 _S0_T_FIFO	=	0x00fa
                           0000F8   485 _S0_R_FIFO	=	0x00f8
                           0000C7   486 _U1SM0	=	0x00c7
                           0000C5   487 _U1SMOD	=	0x00c5
                           0000C4   488 _U1REN	=	0x00c4
                           0000C3   489 _U1TB8	=	0x00c3
                           0000C2   490 _U1RB8	=	0x00c2
                           0000C1   491 _U1TI	=	0x00c1
                           0000C0   492 _U1RI	=	0x00c0
                           000087   493 _CMPO	=	0x0087
                           000086   494 _CMP_IF	=	0x0086
                           000085   495 _ADC_IF	=	0x0085
                           000084   496 _ADC_START	=	0x0084
                           000083   497 _CMP_CHAN	=	0x0083
                           000081   498 _ADC_CHAN1	=	0x0081
                           000080   499 _ADC_CHAN0	=	0x0080
                           0000DF   500 _U_IS_NAK	=	0x00df
                           0000DE   501 _U_TOG_OK	=	0x00de
                           0000DD   502 _U_SIE_FREE	=	0x00dd
                           0000DC   503 _UIF_FIFO_OV	=	0x00dc
                           0000DB   504 _UIF_HST_SOF	=	0x00db
                           0000DA   505 _UIF_SUSPEND	=	0x00da
                           0000D9   506 _UIF_TRANSFER	=	0x00d9
                           0000D8   507 _UIF_DETECT	=	0x00d8
                           0000D8   508 _UIF_BUS_RST	=	0x00d8
                                    509 ;--------------------------------------------------------
                                    510 ; overlayable register banks
                                    511 ;--------------------------------------------------------
                                    512 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        513 	.ds 8
                                    514 ;--------------------------------------------------------
                                    515 ; internal ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area DSEG    (DATA)
      000021                        518 _buf::
      000021                        519 	.ds 64
      000061                        520 _tick_10ms::
      000061                        521 	.ds 2
      000063                        522 _button::
      000063                        523 	.ds 2
      000065                        524 _led_state::
      000065                        525 	.ds 1
      000066                        526 _serialTime::
      000066                        527 	.ds 2
      000068                        528 _counter::
      000068                        529 	.ds 2
                                    530 ;--------------------------------------------------------
                                    531 ; overlayable items in internal ram
                                    532 ;--------------------------------------------------------
                                    533 ;--------------------------------------------------------
                                    534 ; Stack segment in internal ram
                                    535 ;--------------------------------------------------------
                                    536 	.area SSEG
      00006A                        537 __start__stack:
      00006A                        538 	.ds	1
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
                                    553 ;--------------------------------------------------------
                                    554 ; paged external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area PSEG    (PAG,XDATA)
                                    557 ;--------------------------------------------------------
                                    558 ; uninitialized external ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area XSEG    (XDATA)
                                    561 ;--------------------------------------------------------
                                    562 ; absolute external ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area XABS    (ABS,XDATA)
                                    565 ;--------------------------------------------------------
                                    566 ; initialized external ram data
                                    567 ;--------------------------------------------------------
                                    568 	.area XISEG   (XDATA)
                                    569 	.area HOME    (CODE)
                                    570 	.area GSINIT0 (CODE)
                                    571 	.area GSINIT1 (CODE)
                                    572 	.area GSINIT2 (CODE)
                                    573 	.area GSINIT3 (CODE)
                                    574 	.area GSINIT4 (CODE)
                                    575 	.area GSINIT5 (CODE)
                                    576 	.area GSINIT  (CODE)
                                    577 	.area GSFINAL (CODE)
                                    578 	.area CSEG    (CODE)
                                    579 ;--------------------------------------------------------
                                    580 ; interrupt vector
                                    581 ;--------------------------------------------------------
                                    582 	.area HOME    (CODE)
      000000                        583 __interrupt_vect:
      000000 02 00 54         [24]  584 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  585 	reti
      000004                        586 	.ds	7
      00000B 02 00 D4         [24]  587 	ljmp	_timer0_ISR
                                    588 ; restartable atomic support routines
      00000E                        589 	.ds	2
      000010                        590 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  591 	nop
      000011 00               [12]  592 	nop
      000012                        593 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  594 	movx	a, @r0
      000013 FB               [12]  595 	mov	r3, a
      000014 EA               [12]  596 	mov	a, r2
      000015 F2               [24]  597 	movx	@r0, a
      000016 80 2C            [24]  598 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  599 	nop
      000019 00               [12]  600 	nop
      00001A                        601 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  602 	movx	a, @dptr
      00001B FB               [12]  603 	mov	r3, a
      00001C EA               [12]  604 	mov	a, r2
      00001D F0               [24]  605 	movx	@dptr, a
      00001E 80 24            [24]  606 	sjmp	sdcc_atomic_exchange_exit
      000020                        607 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  608 	mov	a, @r0
      000021 B5 02 02         [24]  609 	cjne	a, ar2, .+#5
      000024 EB               [12]  610 	mov	a, r3
      000025 F6               [12]  611 	mov	@r0, a
      000026 22               [24]  612 	ret
      000027 00               [12]  613 	nop
      000028                        614 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  615 	movx	a, @r0
      000029 B5 02 02         [24]  616 	cjne	a, ar2, .+#5
      00002C EB               [12]  617 	mov	a, r3
      00002D F2               [24]  618 	movx	@r0, a
      00002E 22               [24]  619 	ret
      00002F 00               [12]  620 	nop
      000030                        621 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  622 	movx	a, @dptr
      000031 B5 02 02         [24]  623 	cjne	a, ar2, .+#5
      000034 EB               [12]  624 	mov	a, r3
      000035 F0               [24]  625 	movx	@dptr, a
      000036 22               [24]  626 	ret
      000037                        627 sdcc_atomic_exchange_rollback_end::
                                    628 
      000037                        629 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  630 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  631 	mov	r0, dpl
      00003C 20 F5 D3         [24]  632 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        633 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  634 	mov	a, r2
      000040 C6               [12]  635 	xch	a, @r0
      000041 F5 82            [12]  636 	mov	dpl, a
      000043 22               [24]  637 	ret
      000044                        638 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  639 	mov	dpl, r3
      000046 22               [24]  640 	ret
      000047                        641 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  642 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  643 	mov	r0, dpl
      00004C 20 F5 D9         [24]  644 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  645 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    646 ;--------------------------------------------------------
                                    647 ; global & static initialisations
                                    648 ;--------------------------------------------------------
                                    649 	.area HOME    (CODE)
                                    650 	.area GSINIT  (CODE)
                                    651 	.area GSFINAL (CODE)
                                    652 	.area GSINIT  (CODE)
                                    653 	.globl __sdcc_gsinit_startup
                                    654 	.globl __sdcc_program_startup
                                    655 	.globl __start__stack
                                    656 	.globl __mcs51_genXINIT
                                    657 	.globl __mcs51_genXRAMCLEAR
                                    658 	.globl __mcs51_genRAMCLEAR
                                    659 ;	mpu9250-test.c:9: volatile unsigned int tick_10ms = 0;
      0000AD E4               [12]  660 	clr	a
      0000AE F5 61            [12]  661 	mov	_tick_10ms,a
      0000B0 F5 62            [12]  662 	mov	(_tick_10ms + 1),a
                                    663 ;	mpu9250-test.c:11: unsigned char led_state = 0;
      0000B2 F5 65            [12]  664 	mov	_led_state,a
                                    665 ;	mpu9250-test.c:12: unsigned int serialTime= 0;
      0000B4 F5 66            [12]  666 	mov	_serialTime,a
      0000B6 F5 67            [12]  667 	mov	(_serialTime + 1),a
                                    668 ;	mpu9250-test.c:13: unsigned int counter= 0;
      0000B8 F5 68            [12]  669 	mov	_counter,a
      0000BA F5 69            [12]  670 	mov	(_counter + 1),a
                                    671 	.area GSFINAL (CODE)
      0000BF 02 00 51         [24]  672 	ljmp	__sdcc_program_startup
                                    673 ;--------------------------------------------------------
                                    674 ; Home
                                    675 ;--------------------------------------------------------
                                    676 	.area HOME    (CODE)
                                    677 	.area HOME    (CODE)
      000051                        678 __sdcc_program_startup:
      000051 02 01 51         [24]  679 	ljmp	_main
                                    680 ;	return from main will return to caller
                                    681 ;--------------------------------------------------------
                                    682 ; code
                                    683 ;--------------------------------------------------------
                                    684 	.area CSEG    (CODE)
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'clock_init'
                                    687 ;------------------------------------------------------------
                                    688 ;	mpu9250-test.c:19: void clock_init(void) {
                                    689 ;	-----------------------------------------
                                    690 ;	 function clock_init
                                    691 ;	-----------------------------------------
      0000C2                        692 _clock_init:
                           000007   693 	ar7 = 0x07
                           000006   694 	ar6 = 0x06
                           000005   695 	ar5 = 0x05
                           000004   696 	ar4 = 0x04
                           000003   697 	ar3 = 0x03
                           000002   698 	ar2 = 0x02
                           000001   699 	ar1 = 0x01
                           000000   700 	ar0 = 0x00
                                    701 ;	mpu9250-test.c:20: SAFE_MOD = 0x55;
      0000C2 75 A1 55         [24]  702 	mov	_SAFE_MOD,#0x55
                                    703 ;	mpu9250-test.c:21: SAFE_MOD = 0xAA;
      0000C5 75 A1 AA         [24]  704 	mov	_SAFE_MOD,#0xaa
                                    705 ;	mpu9250-test.c:23: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0000C8 74 F8            [12]  706 	mov	a,#0xf8
      0000CA 55 B9            [12]  707 	anl	a,_CLOCK_CFG
      0000CC 44 06            [12]  708 	orl	a,#0x06
      0000CE F5 B9            [12]  709 	mov	_CLOCK_CFG,a
                                    710 ;	mpu9250-test.c:25: SAFE_MOD = 0x00;
      0000D0 75 A1 00         [24]  711 	mov	_SAFE_MOD,#0x00
                                    712 ;	mpu9250-test.c:26: }
      0000D3 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'timer0_ISR'
                                    716 ;------------------------------------------------------------
                                    717 ;	mpu9250-test.c:28: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
                                    718 ;	-----------------------------------------
                                    719 ;	 function timer0_ISR
                                    720 ;	-----------------------------------------
      0000D4                        721 _timer0_ISR:
      0000D4 C0 E0            [24]  722 	push	acc
      0000D6 C0 07            [24]  723 	push	ar7
      0000D8 C0 06            [24]  724 	push	ar6
      0000DA C0 D0            [24]  725 	push	psw
      0000DC 75 D0 00         [24]  726 	mov	psw,#0x00
                                    727 ;	mpu9250-test.c:29: TF0 = 0;  // clear overflow flag (important for robustness)
                                    728 ;	assignBit
      0000DF C2 8D            [12]  729 	clr	_TF0
                                    730 ;	mpu9250-test.c:30: TH0 = 0xB1;
      0000E1 75 8C B1         [24]  731 	mov	_TH0,#0xb1
                                    732 ;	mpu9250-test.c:31: TL0 = 0xE0;
      0000E4 75 8A E0         [24]  733 	mov	_TL0,#0xe0
                                    734 ;	mpu9250-test.c:32: tick_10ms++;
      0000E7 AE 61            [24]  735 	mov	r6,_tick_10ms
      0000E9 AF 62            [24]  736 	mov	r7,(_tick_10ms + 1)
      0000EB 74 01            [12]  737 	mov	a,#0x01
      0000ED 2E               [12]  738 	add	a, r6
      0000EE F5 61            [12]  739 	mov	_tick_10ms,a
      0000F0 E4               [12]  740 	clr	a
      0000F1 3F               [12]  741 	addc	a, r7
      0000F2 F5 62            [12]  742 	mov	(_tick_10ms + 1),a
                                    743 ;	mpu9250-test.c:33: serialTime++;
      0000F4 05 66            [12]  744 	inc	_serialTime
      0000F6 E4               [12]  745 	clr	a
      0000F7 B5 66 02         [24]  746 	cjne	a,_serialTime,00103$
      0000FA 05 67            [12]  747 	inc	(_serialTime + 1)
      0000FC                        748 00103$:
                                    749 ;	mpu9250-test.c:34: }
      0000FC D0 D0            [24]  750 	pop	psw
      0000FE D0 06            [24]  751 	pop	ar6
      000100 D0 07            [24]  752 	pop	ar7
      000102 D0 E0            [24]  753 	pop	acc
      000104 32               [24]  754 	reti
                                    755 ;	eliminated unneeded push/pop dpl
                                    756 ;	eliminated unneeded push/pop dph
                                    757 ;	eliminated unneeded push/pop b
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'timer0_init'
                                    760 ;------------------------------------------------------------
                                    761 ;	mpu9250-test.c:36: void timer0_init(void) {
                                    762 ;	-----------------------------------------
                                    763 ;	 function timer0_init
                                    764 ;	-----------------------------------------
      000105                        765 _timer0_init:
                                    766 ;	mpu9250-test.c:37: TMOD &= ~0x03;  // clear Timer0 mode bits
      000105 53 89 FC         [24]  767 	anl	_TMOD,#0xfc
                                    768 ;	mpu9250-test.c:38: TMOD |=  0x01;  // Timer0 mode 1: 16-bit
      000108 43 89 01         [24]  769 	orl	_TMOD,#0x01
                                    770 ;	mpu9250-test.c:42: TH0 = 0xB1;
      00010B 75 8C B1         [24]  771 	mov	_TH0,#0xb1
                                    772 ;	mpu9250-test.c:43: TL0 = 0xE0;
      00010E 75 8A E0         [24]  773 	mov	_TL0,#0xe0
                                    774 ;	mpu9250-test.c:45: ET0 = 1;   // enable Timer0 interrupt
                                    775 ;	assignBit
      000111 D2 A9            [12]  776 	setb	_ET0
                                    777 ;	mpu9250-test.c:46: TR0 = 1;   // start Timer0
                                    778 ;	assignBit
      000113 D2 8C            [12]  779 	setb	_TR0
                                    780 ;	mpu9250-test.c:47: EA = 1;
                                    781 ;	assignBit
      000115 D2 AF            [12]  782 	setb	_EA
                                    783 ;	mpu9250-test.c:48: }
      000117 22               [24]  784 	ret
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'blink_led'
                                    787 ;------------------------------------------------------------
                                    788 ;	mpu9250-test.c:50: void blink_led(void) {
                                    789 ;	-----------------------------------------
                                    790 ;	 function blink_led
                                    791 ;	-----------------------------------------
      000118                        792 _blink_led:
                                    793 ;	mpu9250-test.c:52: if (tick_10ms >= 60) {
      000118 C3               [12]  794 	clr	c
      000119 E5 61            [12]  795 	mov	a,_tick_10ms
      00011B 94 3C            [12]  796 	subb	a,#0x3c
      00011D E5 62            [12]  797 	mov	a,(_tick_10ms + 1)
      00011F 94 00            [12]  798 	subb	a,#0x00
      000121 40 05            [24]  799 	jc	00102$
                                    800 ;	mpu9250-test.c:53: tick_10ms = 0;
      000123 E4               [12]  801 	clr	a
      000124 F5 61            [12]  802 	mov	_tick_10ms,a
      000126 F5 62            [12]  803 	mov	(_tick_10ms + 1),a
      000128                        804 00102$:
                                    805 ;	mpu9250-test.c:56: if(tick_10ms % 60 < 30){
      000128 74 3C            [12]  806 	mov	a,#0x3c
      00012A C0 E0            [24]  807 	push	acc
      00012C E4               [12]  808 	clr	a
      00012D C0 E0            [24]  809 	push	acc
      00012F 85 61 82         [24]  810 	mov	dpl, _tick_10ms
      000132 85 62 83         [24]  811 	mov	dph, (_tick_10ms + 1)
      000135 12 0A 49         [24]  812 	lcall	__moduint
      000138 AE 82            [24]  813 	mov	r6, dpl
      00013A AF 83            [24]  814 	mov	r7, dph
      00013C 15 81            [12]  815 	dec	sp
      00013E 15 81            [12]  816 	dec	sp
      000140 C3               [12]  817 	clr	c
      000141 EE               [12]  818 	mov	a,r6
      000142 94 1E            [12]  819 	subb	a,#0x1e
      000144 EF               [12]  820 	mov	a,r7
      000145 94 00            [12]  821 	subb	a,#0x00
      000147 50 04            [24]  822 	jnc	00104$
                                    823 ;	mpu9250-test.c:57: P3 |= (1 << 0);  // LED ON
      000149 43 B0 01         [24]  824 	orl	_P3,#0x01
      00014C 22               [24]  825 	ret
      00014D                        826 00104$:
                                    827 ;	mpu9250-test.c:59: P3 &= ~(1 << 0); // LED OFF
      00014D 53 B0 FE         [24]  828 	anl	_P3,#0xfe
                                    829 ;	mpu9250-test.c:61: }
      000150 22               [24]  830 	ret
                                    831 ;------------------------------------------------------------
                                    832 ;Allocation info for local variables in function 'main'
                                    833 ;------------------------------------------------------------
                                    834 ;ax            Allocated to stack - _bp +13 +2 
                                    835 ;ay            Allocated to stack - _bp +15 +2 
                                    836 ;az            Allocated to stack - _bp +17 +2 
                                    837 ;gx            Allocated to stack - _bp +19 +2 
                                    838 ;gy            Allocated to stack - _bp +21 +2 
                                    839 ;gz            Allocated to stack - _bp +23 +2 
                                    840 ;i             Allocated to stack - _bp +25 +2 
                                    841 ;sloc0         Allocated to stack - _bp +1 +3 
                                    842 ;sloc1         Allocated to stack - _bp +4 +3 
                                    843 ;sloc2         Allocated to stack - _bp +7 +3 
                                    844 ;sloc3         Allocated to stack - _bp +10 +3 
                                    845 ;------------------------------------------------------------
                                    846 ;	mpu9250-test.c:63: void main(void) {
                                    847 ;	-----------------------------------------
                                    848 ;	 function main
                                    849 ;	-----------------------------------------
      000151                        850 _main:
      000151 C0 09            [24]  851 	push	_bp
      000153 E5 81            [12]  852 	mov	a,sp
      000155 F5 09            [12]  853 	mov	_bp,a
      000157 24 1A            [12]  854 	add	a,#0x1a
      000159 F5 81            [12]  855 	mov	sp,a
                                    856 ;	mpu9250-test.c:66: clock_init();
      00015B 12 00 C2         [24]  857 	lcall	_clock_init
                                    858 ;	mpu9250-test.c:67: for (volatile uint16_t i = 0; i < 50000; i++);
      00015E E5 09            [12]  859 	mov	a,_bp
      000160 24 19            [12]  860 	add	a,#0x19
      000162 F8               [12]  861 	mov	r0,a
      000163 E4               [12]  862 	clr	a
      000164 F6               [12]  863 	mov	@r0,a
      000165 08               [12]  864 	inc	r0
      000166 F6               [12]  865 	mov	@r0,a
      000167                        866 00110$:
      000167 E5 09            [12]  867 	mov	a,_bp
      000169 24 19            [12]  868 	add	a,#0x19
      00016B F8               [12]  869 	mov	r0,a
      00016C C3               [12]  870 	clr	c
      00016D E6               [12]  871 	mov	a,@r0
      00016E 94 50            [12]  872 	subb	a,#0x50
      000170 08               [12]  873 	inc	r0
      000171 E6               [12]  874 	mov	a,@r0
      000172 94 C3            [12]  875 	subb	a,#0xc3
      000174 50 19            [24]  876 	jnc	00101$
      000176 E5 09            [12]  877 	mov	a,_bp
      000178 24 19            [12]  878 	add	a,#0x19
      00017A F8               [12]  879 	mov	r0,a
      00017B 86 06            [24]  880 	mov	ar6,@r0
      00017D 08               [12]  881 	inc	r0
      00017E 86 07            [24]  882 	mov	ar7,@r0
      000180 E5 09            [12]  883 	mov	a,_bp
      000182 24 19            [12]  884 	add	a,#0x19
      000184 F8               [12]  885 	mov	r0,a
      000185 74 01            [12]  886 	mov	a,#0x01
      000187 2E               [12]  887 	add	a, r6
      000188 F6               [12]  888 	mov	@r0,a
      000189 E4               [12]  889 	clr	a
      00018A 3F               [12]  890 	addc	a, r7
      00018B 08               [12]  891 	inc	r0
      00018C F6               [12]  892 	mov	@r0,a
      00018D 80 D8            [24]  893 	sjmp	00110$
      00018F                        894 00101$:
                                    895 ;	mpu9250-test.c:70: SAFE_MOD = 0x55;
      00018F 75 A1 55         [24]  896 	mov	_SAFE_MOD,#0x55
                                    897 ;	mpu9250-test.c:71: SAFE_MOD = 0xAA;
      000192 75 A1 AA         [24]  898 	mov	_SAFE_MOD,#0xaa
                                    899 ;	mpu9250-test.c:72: GLOBAL_CFG &= ~bWDOG_EN;
      000195 53 B1 FE         [24]  900 	anl	_GLOBAL_CFG,#0xfe
                                    901 ;	mpu9250-test.c:73: SAFE_MOD = 0x00;
      000198 75 A1 00         [24]  902 	mov	_SAFE_MOD,#0x00
                                    903 ;	mpu9250-test.c:76: P3_MOD_OC &= ~0x01;
      00019B 53 96 FE         [24]  904 	anl	_P3_MOD_OC,#0xfe
                                    905 ;	mpu9250-test.c:77: P3_DIR_PU |= 0x01;
      00019E 43 97 01         [24]  906 	orl	_P3_DIR_PU,#0x01
                                    907 ;	mpu9250-test.c:80: P1_DIR_PU |= (1 << 4);
      0001A1 43 93 10         [24]  908 	orl	_P1_DIR_PU,#0x10
                                    909 ;	mpu9250-test.c:81: P1_MOD_OC &= ~(1 << 4);
      0001A4 53 92 EF         [24]  910 	anl	_P1_MOD_OC,#0xef
                                    911 ;	mpu9250-test.c:82: SPIMasterDeassertCS();   // idle high
                                    912 ;	assignBit
      0001A7 D2 94            [12]  913 	setb	_SCS
                                    914 ;	mpu9250-test.c:84: timer0_init();
      0001A9 12 01 05         [24]  915 	lcall	_timer0_init
                                    916 ;	mpu9250-test.c:86: Serial_begin();
      0001AC 12 05 C3         [24]  917 	lcall	_Serial_begin
                                    918 ;	mpu9250-test.c:87: Serial_println("BOOT");
      0001AF 90 1B 00         [24]  919 	mov	dptr,#___str_0
      0001B2 75 F0 80         [24]  920 	mov	b, #0x80
      0001B5 12 07 22         [24]  921 	lcall	_Serial_println
                                    922 ;	mpu9250-test.c:90: SPIMasterModeSet(0);
      0001B8 75 82 00         [24]  923 	mov	dpl, #0x00
      0001BB 12 08 21         [24]  924 	lcall	_SPIMasterModeSet
                                    925 ;	mpu9250-test.c:93: MPU9250_init();
      0001BE 12 03 FF         [24]  926 	lcall	_MPU9250_init
                                    927 ;	mpu9250-test.c:95: Serial_print("WHOAMI = ");
      0001C1 90 1B 05         [24]  928 	mov	dptr,#___str_1
      0001C4 75 F0 80         [24]  929 	mov	b, #0x80
      0001C7 12 05 F7         [24]  930 	lcall	_Serial_print
                                    931 ;	mpu9250-test.c:96: Serial_println_uint(MPU9250_whoami());
      0001CA 12 04 1A         [24]  932 	lcall	_MPU9250_whoami
      0001CD 7E 00            [12]  933 	mov	r6,#0x00
      0001CF 8E 83            [24]  934 	mov	dph, r6
      0001D1 12 08 12         [24]  935 	lcall	_Serial_println_uint
                                    936 ;	mpu9250-test.c:98: while (1) {
      0001D4                        937 00107$:
                                    938 ;	mpu9250-test.c:99: blink_led();
      0001D4 12 01 18         [24]  939 	lcall	_blink_led
                                    940 ;	mpu9250-test.c:101: if(serialTime >= 50){
      0001D7 C3               [12]  941 	clr	c
      0001D8 E5 66            [12]  942 	mov	a,_serialTime
      0001DA 94 32            [12]  943 	subb	a,#0x32
      0001DC E5 67            [12]  944 	mov	a,(_serialTime + 1)
      0001DE 94 00            [12]  945 	subb	a,#0x00
      0001E0 40 F2            [24]  946 	jc	00107$
                                    947 ;	mpu9250-test.c:102: serialTime= 0;
      0001E2 E4               [12]  948 	clr	a
      0001E3 F5 66            [12]  949 	mov	_serialTime,a
      0001E5 F5 67            [12]  950 	mov	(_serialTime + 1),a
                                    951 ;	mpu9250-test.c:103: if(MPU9250_readAccelGyro(&ax,&ay,&az,&gx,&gy,&gz)) {
      0001E7 E5 09            [12]  952 	mov	a,_bp
      0001E9 24 17            [12]  953 	add	a,#0x17
      0001EB FF               [12]  954 	mov	r7,a
      0001EC 7E 00            [12]  955 	mov	r6,#0x00
      0001EE 7D 40            [12]  956 	mov	r5,#0x40
      0001F0 E5 09            [12]  957 	mov	a,_bp
      0001F2 24 15            [12]  958 	add	a,#0x15
      0001F4 FC               [12]  959 	mov	r4,a
      0001F5 A8 09            [24]  960 	mov	r0,_bp
      0001F7 08               [12]  961 	inc	r0
      0001F8 A6 04            [24]  962 	mov	@r0,ar4
      0001FA 08               [12]  963 	inc	r0
      0001FB 76 00            [12]  964 	mov	@r0,#0x00
      0001FD 08               [12]  965 	inc	r0
      0001FE 76 40            [12]  966 	mov	@r0,#0x40
      000200 E5 09            [12]  967 	mov	a,_bp
      000202 24 13            [12]  968 	add	a,#0x13
      000204 FC               [12]  969 	mov	r4,a
      000205 E5 09            [12]  970 	mov	a,_bp
      000207 24 04            [12]  971 	add	a,#0x04
      000209 F8               [12]  972 	mov	r0,a
      00020A A6 04            [24]  973 	mov	@r0,ar4
      00020C 08               [12]  974 	inc	r0
      00020D 76 00            [12]  975 	mov	@r0,#0x00
      00020F 08               [12]  976 	inc	r0
      000210 76 40            [12]  977 	mov	@r0,#0x40
      000212 E5 09            [12]  978 	mov	a,_bp
      000214 24 11            [12]  979 	add	a,#0x11
      000216 FC               [12]  980 	mov	r4,a
      000217 E5 09            [12]  981 	mov	a,_bp
      000219 24 07            [12]  982 	add	a,#0x07
      00021B F8               [12]  983 	mov	r0,a
      00021C A6 04            [24]  984 	mov	@r0,ar4
      00021E 08               [12]  985 	inc	r0
      00021F 76 00            [12]  986 	mov	@r0,#0x00
      000221 08               [12]  987 	inc	r0
      000222 76 40            [12]  988 	mov	@r0,#0x40
      000224 E5 09            [12]  989 	mov	a,_bp
      000226 24 0F            [12]  990 	add	a,#0x0f
      000228 FC               [12]  991 	mov	r4,a
      000229 E5 09            [12]  992 	mov	a,_bp
      00022B 24 0A            [12]  993 	add	a,#0x0a
      00022D F8               [12]  994 	mov	r0,a
      00022E A6 04            [24]  995 	mov	@r0,ar4
      000230 08               [12]  996 	inc	r0
      000231 76 00            [12]  997 	mov	@r0,#0x00
      000233 08               [12]  998 	inc	r0
      000234 76 40            [12]  999 	mov	@r0,#0x40
      000236 E5 09            [12] 1000 	mov	a,_bp
      000238 24 0D            [12] 1001 	add	a,#0x0d
      00023A FC               [12] 1002 	mov	r4,a
      00023B 7B 00            [12] 1003 	mov	r3,#0x00
      00023D 7A 40            [12] 1004 	mov	r2,#0x40
      00023F C0 07            [24] 1005 	push	ar7
      000241 C0 06            [24] 1006 	push	ar6
      000243 C0 05            [24] 1007 	push	ar5
      000245 A8 09            [24] 1008 	mov	r0,_bp
      000247 08               [12] 1009 	inc	r0
      000248 E6               [12] 1010 	mov	a,@r0
      000249 C0 E0            [24] 1011 	push	acc
      00024B 08               [12] 1012 	inc	r0
      00024C E6               [12] 1013 	mov	a,@r0
      00024D C0 E0            [24] 1014 	push	acc
      00024F 08               [12] 1015 	inc	r0
      000250 E6               [12] 1016 	mov	a,@r0
      000251 C0 E0            [24] 1017 	push	acc
      000253 E5 09            [12] 1018 	mov	a,_bp
      000255 24 04            [12] 1019 	add	a,#0x04
      000257 F8               [12] 1020 	mov	r0,a
      000258 E6               [12] 1021 	mov	a,@r0
      000259 C0 E0            [24] 1022 	push	acc
      00025B 08               [12] 1023 	inc	r0
      00025C E6               [12] 1024 	mov	a,@r0
      00025D C0 E0            [24] 1025 	push	acc
      00025F 08               [12] 1026 	inc	r0
      000260 E6               [12] 1027 	mov	a,@r0
      000261 C0 E0            [24] 1028 	push	acc
      000263 E5 09            [12] 1029 	mov	a,_bp
      000265 24 07            [12] 1030 	add	a,#0x07
      000267 F8               [12] 1031 	mov	r0,a
      000268 E6               [12] 1032 	mov	a,@r0
      000269 C0 E0            [24] 1033 	push	acc
      00026B 08               [12] 1034 	inc	r0
      00026C E6               [12] 1035 	mov	a,@r0
      00026D C0 E0            [24] 1036 	push	acc
      00026F 08               [12] 1037 	inc	r0
      000270 E6               [12] 1038 	mov	a,@r0
      000271 C0 E0            [24] 1039 	push	acc
      000273 E5 09            [12] 1040 	mov	a,_bp
      000275 24 0A            [12] 1041 	add	a,#0x0a
      000277 F8               [12] 1042 	mov	r0,a
      000278 E6               [12] 1043 	mov	a,@r0
      000279 C0 E0            [24] 1044 	push	acc
      00027B 08               [12] 1045 	inc	r0
      00027C E6               [12] 1046 	mov	a,@r0
      00027D C0 E0            [24] 1047 	push	acc
      00027F 08               [12] 1048 	inc	r0
      000280 E6               [12] 1049 	mov	a,@r0
      000281 C0 E0            [24] 1050 	push	acc
      000283 8C 82            [24] 1051 	mov	dpl, r4
      000285 8B 83            [24] 1052 	mov	dph, r3
      000287 8A F0            [24] 1053 	mov	b, r2
      000289 12 04 1E         [24] 1054 	lcall	_MPU9250_readAccelGyro
      00028C AF 82            [24] 1055 	mov	r7, dpl
      00028E E5 81            [12] 1056 	mov	a,sp
      000290 24 F1            [12] 1057 	add	a,#0xf1
      000292 F5 81            [12] 1058 	mov	sp,a
      000294 EF               [12] 1059 	mov	a,r7
      000295 70 03            [24] 1060 	jnz	00146$
      000297 02 01 D4         [24] 1061 	ljmp	00107$
      00029A                       1062 00146$:
                                   1063 ;	mpu9250-test.c:104: sprintf(buf, "AX=%d AY=%d AZ=%d GX=%d GY=%d GZ=%d\r\n",
      00029A E5 09            [12] 1064 	mov	a,_bp
      00029C 24 17            [12] 1065 	add	a,#0x17
      00029E F8               [12] 1066 	mov	r0,a
      00029F E6               [12] 1067 	mov	a,@r0
      0002A0 C0 E0            [24] 1068 	push	acc
      0002A2 08               [12] 1069 	inc	r0
      0002A3 E6               [12] 1070 	mov	a,@r0
      0002A4 C0 E0            [24] 1071 	push	acc
      0002A6 E5 09            [12] 1072 	mov	a,_bp
      0002A8 24 15            [12] 1073 	add	a,#0x15
      0002AA F8               [12] 1074 	mov	r0,a
      0002AB E6               [12] 1075 	mov	a,@r0
      0002AC C0 E0            [24] 1076 	push	acc
      0002AE 08               [12] 1077 	inc	r0
      0002AF E6               [12] 1078 	mov	a,@r0
      0002B0 C0 E0            [24] 1079 	push	acc
      0002B2 E5 09            [12] 1080 	mov	a,_bp
      0002B4 24 13            [12] 1081 	add	a,#0x13
      0002B6 F8               [12] 1082 	mov	r0,a
      0002B7 E6               [12] 1083 	mov	a,@r0
      0002B8 C0 E0            [24] 1084 	push	acc
      0002BA 08               [12] 1085 	inc	r0
      0002BB E6               [12] 1086 	mov	a,@r0
      0002BC C0 E0            [24] 1087 	push	acc
      0002BE E5 09            [12] 1088 	mov	a,_bp
      0002C0 24 11            [12] 1089 	add	a,#0x11
      0002C2 F8               [12] 1090 	mov	r0,a
      0002C3 E6               [12] 1091 	mov	a,@r0
      0002C4 C0 E0            [24] 1092 	push	acc
      0002C6 08               [12] 1093 	inc	r0
      0002C7 E6               [12] 1094 	mov	a,@r0
      0002C8 C0 E0            [24] 1095 	push	acc
      0002CA E5 09            [12] 1096 	mov	a,_bp
      0002CC 24 0F            [12] 1097 	add	a,#0x0f
      0002CE F8               [12] 1098 	mov	r0,a
      0002CF E6               [12] 1099 	mov	a,@r0
      0002D0 C0 E0            [24] 1100 	push	acc
      0002D2 08               [12] 1101 	inc	r0
      0002D3 E6               [12] 1102 	mov	a,@r0
      0002D4 C0 E0            [24] 1103 	push	acc
      0002D6 E5 09            [12] 1104 	mov	a,_bp
      0002D8 24 0D            [12] 1105 	add	a,#0x0d
      0002DA F8               [12] 1106 	mov	r0,a
      0002DB E6               [12] 1107 	mov	a,@r0
      0002DC C0 E0            [24] 1108 	push	acc
      0002DE 08               [12] 1109 	inc	r0
      0002DF E6               [12] 1110 	mov	a,@r0
      0002E0 C0 E0            [24] 1111 	push	acc
      0002E2 74 0F            [12] 1112 	mov	a,#___str_2
      0002E4 C0 E0            [24] 1113 	push	acc
      0002E6 74 1B            [12] 1114 	mov	a,#(___str_2 >> 8)
      0002E8 C0 E0            [24] 1115 	push	acc
      0002EA 74 80            [12] 1116 	mov	a,#0x80
      0002EC C0 E0            [24] 1117 	push	acc
      0002EE 74 21            [12] 1118 	mov	a,#_buf
      0002F0 C0 E0            [24] 1119 	push	acc
      0002F2 74 00            [12] 1120 	mov	a,#(_buf >> 8)
      0002F4 C0 E0            [24] 1121 	push	acc
      0002F6 74 40            [12] 1122 	mov	a,#0x40
      0002F8 C0 E0            [24] 1123 	push	acc
      0002FA 12 09 98         [24] 1124 	lcall	_sprintf
      0002FD E5 81            [12] 1125 	mov	a,sp
      0002FF 24 EE            [12] 1126 	add	a,#0xee
      000301 F5 81            [12] 1127 	mov	sp,a
                                   1128 ;	mpu9250-test.c:106: Serial_print(buf);
      000303 90 00 21         [24] 1129 	mov	dptr,#_buf
      000306 75 F0 40         [24] 1130 	mov	b, #0x40
      000309 12 05 F7         [24] 1131 	lcall	_Serial_print
      00030C 02 01 D4         [24] 1132 	ljmp	00107$
                                   1133 ;	mpu9250-test.c:110: }
      00030F 85 09 81         [24] 1134 	mov	sp,_bp
      000312 D0 09            [24] 1135 	pop	_bp
      000314 22               [24] 1136 	ret
                                   1137 	.area CSEG    (CODE)
                                   1138 	.area CONST   (CODE)
                                   1139 	.area CONST   (CODE)
      001B00                       1140 ___str_0:
      001B00 42 4F 4F 54           1141 	.ascii "BOOT"
      001B04 00                    1142 	.db 0x00
                                   1143 	.area CSEG    (CODE)
                                   1144 	.area CONST   (CODE)
      001B05                       1145 ___str_1:
      001B05 57 48 4F 41 4D 49 20  1146 	.ascii "WHOAMI = "
             3D 20
      001B0E 00                    1147 	.db 0x00
                                   1148 	.area CSEG    (CODE)
                                   1149 	.area CONST   (CODE)
      001B0F                       1150 ___str_2:
      001B0F 41 58 3D 25 64 20 41  1151 	.ascii "AX=%d AY=%d AZ=%d GX=%d GY=%d GZ=%d"
             59 3D 25 64 20 41 5A
             3D 25 64 20 47 58 3D
             25 64 20 47 59 3D 25
             64 20 47 5A 3D 25 64
      001B32 0D                    1152 	.db 0x0d
      001B33 0A                    1153 	.db 0x0a
      001B34 00                    1154 	.db 0x00
                                   1155 	.area CSEG    (CODE)
                                   1156 	.area XINIT   (CODE)
                                   1157 	.area CABS    (ABS,CODE)
