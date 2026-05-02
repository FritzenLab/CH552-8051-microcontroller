                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c_bit_bang_oled_0_49_analog_reading
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _font5x7
                                     12 	.globl _main
                                     13 	.globl _rawToMillivolts
                                     14 	.globl _analogReading
                                     15 	.globl _clock_init
                                     16 	.globl _timer0_init
                                     17 	.globl _timer0_ISR
                                     18 	.globl _oled_print_uint
                                     19 	.globl _oled_draw_char
                                     20 	.globl _oled_init
                                     21 	.globl _oled_clear
                                     22 	.globl _oled_write_data_stream
                                     23 	.globl _oled_set_cursor
                                     24 	.globl _oled_data
                                     25 	.globl _oled_cmd
                                     26 	.globl _i2c_write_byte
                                     27 	.globl _i2c_stop
                                     28 	.globl _i2c_start
                                     29 	.globl _i2c_delay
                                     30 	.globl _Serial_println_uint
                                     31 	.globl _Serial_begin
                                     32 	.globl _ADC_ChannelSelect
                                     33 	.globl _ADCInit
                                     34 	.globl _UIF_BUS_RST
                                     35 	.globl _UIF_DETECT
                                     36 	.globl _UIF_TRANSFER
                                     37 	.globl _UIF_SUSPEND
                                     38 	.globl _UIF_HST_SOF
                                     39 	.globl _UIF_FIFO_OV
                                     40 	.globl _U_SIE_FREE
                                     41 	.globl _U_TOG_OK
                                     42 	.globl _U_IS_NAK
                                     43 	.globl _ADC_CHAN0
                                     44 	.globl _ADC_CHAN1
                                     45 	.globl _CMP_CHAN
                                     46 	.globl _ADC_START
                                     47 	.globl _ADC_IF
                                     48 	.globl _CMP_IF
                                     49 	.globl _CMPO
                                     50 	.globl _U1RI
                                     51 	.globl _U1TI
                                     52 	.globl _U1RB8
                                     53 	.globl _U1TB8
                                     54 	.globl _U1REN
                                     55 	.globl _U1SMOD
                                     56 	.globl _U1SM0
                                     57 	.globl _S0_R_FIFO
                                     58 	.globl _S0_T_FIFO
                                     59 	.globl _S0_FREE
                                     60 	.globl _S0_IF_BYTE
                                     61 	.globl _S0_IF_FIRST
                                     62 	.globl _S0_IF_OV
                                     63 	.globl _S0_FST_ACT
                                     64 	.globl _CP_RL2
                                     65 	.globl _C_T2
                                     66 	.globl _TR2
                                     67 	.globl _EXEN2
                                     68 	.globl _TCLK
                                     69 	.globl _RCLK
                                     70 	.globl _EXF2
                                     71 	.globl _CAP1F
                                     72 	.globl _TF2
                                     73 	.globl _RI
                                     74 	.globl _TI
                                     75 	.globl _RB8
                                     76 	.globl _TB8
                                     77 	.globl _REN
                                     78 	.globl _SM2
                                     79 	.globl _SM1
                                     80 	.globl _SM0
                                     81 	.globl _IT0
                                     82 	.globl _IE0
                                     83 	.globl _IT1
                                     84 	.globl _IE1
                                     85 	.globl _TR0
                                     86 	.globl _TF0
                                     87 	.globl _TR1
                                     88 	.globl _TF1
                                     89 	.globl _RXD
                                     90 	.globl _PWM1_
                                     91 	.globl _TXD
                                     92 	.globl _PWM2_
                                     93 	.globl _AIN3
                                     94 	.globl _VBUS1
                                     95 	.globl _INT0
                                     96 	.globl _TXD1_
                                     97 	.globl _INT1
                                     98 	.globl _T0
                                     99 	.globl _RXD1_
                                    100 	.globl _PWM2
                                    101 	.globl _T1
                                    102 	.globl _UDP
                                    103 	.globl _UDM
                                    104 	.globl _TIN0
                                    105 	.globl _CAP1
                                    106 	.globl _T2
                                    107 	.globl _AIN0
                                    108 	.globl _VBUS2
                                    109 	.globl _TIN1
                                    110 	.globl _CAP2
                                    111 	.globl _T2EX
                                    112 	.globl _RXD_
                                    113 	.globl _TXD_
                                    114 	.globl _AIN1
                                    115 	.globl _UCC1
                                    116 	.globl _TIN2
                                    117 	.globl _SCS
                                    118 	.globl _CAP1_
                                    119 	.globl _T2_
                                    120 	.globl _AIN2
                                    121 	.globl _UCC2
                                    122 	.globl _TIN3
                                    123 	.globl _PWM1
                                    124 	.globl _MOSI
                                    125 	.globl _TIN4
                                    126 	.globl _RXD1
                                    127 	.globl _MISO
                                    128 	.globl _TIN5
                                    129 	.globl _TXD1
                                    130 	.globl _SCK
                                    131 	.globl _IE_SPI0
                                    132 	.globl _IE_TKEY
                                    133 	.globl _IE_USB
                                    134 	.globl _IE_ADC
                                    135 	.globl _IE_UART1
                                    136 	.globl _IE_PWMX
                                    137 	.globl _IE_GPIO
                                    138 	.globl _IE_WDOG
                                    139 	.globl _PX0
                                    140 	.globl _PT0
                                    141 	.globl _PX1
                                    142 	.globl _PT1
                                    143 	.globl _PS
                                    144 	.globl _PT2
                                    145 	.globl _PL_FLAG
                                    146 	.globl _PH_FLAG
                                    147 	.globl _EX0
                                    148 	.globl _ET0
                                    149 	.globl _EX1
                                    150 	.globl _ET1
                                    151 	.globl _ES
                                    152 	.globl _ET2
                                    153 	.globl _E_DIS
                                    154 	.globl _EA
                                    155 	.globl _P
                                    156 	.globl _F1
                                    157 	.globl _OV
                                    158 	.globl _RS0
                                    159 	.globl _RS1
                                    160 	.globl _F0
                                    161 	.globl _AC
                                    162 	.globl _CY
                                    163 	.globl _UEP1_DMA_H
                                    164 	.globl _UEP1_DMA_L
                                    165 	.globl _UEP1_DMA
                                    166 	.globl _UEP0_DMA_H
                                    167 	.globl _UEP0_DMA_L
                                    168 	.globl _UEP0_DMA
                                    169 	.globl _UEP2_3_MOD
                                    170 	.globl _UEP4_1_MOD
                                    171 	.globl _UEP3_DMA_H
                                    172 	.globl _UEP3_DMA_L
                                    173 	.globl _UEP3_DMA
                                    174 	.globl _UEP2_DMA_H
                                    175 	.globl _UEP2_DMA_L
                                    176 	.globl _UEP2_DMA
                                    177 	.globl _USB_DEV_AD
                                    178 	.globl _USB_CTRL
                                    179 	.globl _USB_INT_EN
                                    180 	.globl _UEP4_T_LEN
                                    181 	.globl _UEP4_CTRL
                                    182 	.globl _UEP0_T_LEN
                                    183 	.globl _UEP0_CTRL
                                    184 	.globl _USB_RX_LEN
                                    185 	.globl _USB_MIS_ST
                                    186 	.globl _USB_INT_ST
                                    187 	.globl _USB_INT_FG
                                    188 	.globl _UEP3_T_LEN
                                    189 	.globl _UEP3_CTRL
                                    190 	.globl _UEP2_T_LEN
                                    191 	.globl _UEP2_CTRL
                                    192 	.globl _UEP1_T_LEN
                                    193 	.globl _UEP1_CTRL
                                    194 	.globl _UDEV_CTRL
                                    195 	.globl _USB_C_CTRL
                                    196 	.globl _TKEY_DATH
                                    197 	.globl _TKEY_DATL
                                    198 	.globl _TKEY_DAT
                                    199 	.globl _TKEY_CTRL
                                    200 	.globl _ADC_DATA
                                    201 	.globl _ADC_CFG
                                    202 	.globl _ADC_CTRL
                                    203 	.globl _SBAUD1
                                    204 	.globl _SBUF1
                                    205 	.globl _SCON1
                                    206 	.globl _SPI0_SETUP
                                    207 	.globl _SPI0_CK_SE
                                    208 	.globl _SPI0_CTRL
                                    209 	.globl _SPI0_DATA
                                    210 	.globl _SPI0_STAT
                                    211 	.globl _PWM_CK_SE
                                    212 	.globl _PWM_CTRL
                                    213 	.globl _PWM_DATA1
                                    214 	.globl _PWM_DATA2
                                    215 	.globl _T2CAP1H
                                    216 	.globl _T2CAP1L
                                    217 	.globl _T2CAP1
                                    218 	.globl _TH2
                                    219 	.globl _TL2
                                    220 	.globl _T2COUNT
                                    221 	.globl _RCAP2H
                                    222 	.globl _RCAP2L
                                    223 	.globl _RCAP2
                                    224 	.globl _T2MOD
                                    225 	.globl _T2CON
                                    226 	.globl _SBUF
                                    227 	.globl _SCON
                                    228 	.globl _TH1
                                    229 	.globl _TH0
                                    230 	.globl _TL1
                                    231 	.globl _TL0
                                    232 	.globl _TMOD
                                    233 	.globl _TCON
                                    234 	.globl _XBUS_AUX
                                    235 	.globl _PIN_FUNC
                                    236 	.globl _P3_DIR_PU
                                    237 	.globl _P3_MOD_OC
                                    238 	.globl _P3
                                    239 	.globl _P2
                                    240 	.globl _P1_DIR_PU
                                    241 	.globl _P1_MOD_OC
                                    242 	.globl _P1
                                    243 	.globl _ROM_CTRL
                                    244 	.globl _ROM_DATA_H
                                    245 	.globl _ROM_DATA_L
                                    246 	.globl _ROM_DATA
                                    247 	.globl _ROM_ADDR_H
                                    248 	.globl _ROM_ADDR_L
                                    249 	.globl _ROM_ADDR
                                    250 	.globl _GPIO_IE
                                    251 	.globl _IP_EX
                                    252 	.globl _IE_EX
                                    253 	.globl _IP
                                    254 	.globl _IE
                                    255 	.globl _WDOG_COUNT
                                    256 	.globl _RESET_KEEP
                                    257 	.globl _WAKE_CTRL
                                    258 	.globl _CLOCK_CFG
                                    259 	.globl _PCON
                                    260 	.globl _GLOBAL_CFG
                                    261 	.globl _SAFE_MOD
                                    262 	.globl _DPH
                                    263 	.globl _DPL
                                    264 	.globl _SP
                                    265 	.globl _B
                                    266 	.globl _ACC
                                    267 	.globl _PSW
                                    268 	.globl _finalAnalog
                                    269 	.globl _rawAnalog
                                    270 	.globl _serialTime
                                    271 	.globl _tick_10ms
                                    272 ;--------------------------------------------------------
                                    273 ; special function registers
                                    274 ;--------------------------------------------------------
                                    275 	.area RSEG    (ABS,DATA)
      000000                        276 	.org 0x0000
                           0000D0   277 _PSW	=	0x00d0
                           0000E0   278 _ACC	=	0x00e0
                           0000F0   279 _B	=	0x00f0
                           000081   280 _SP	=	0x0081
                           000082   281 _DPL	=	0x0082
                           000083   282 _DPH	=	0x0083
                           0000A1   283 _SAFE_MOD	=	0x00a1
                           0000B1   284 _GLOBAL_CFG	=	0x00b1
                           000087   285 _PCON	=	0x0087
                           0000B9   286 _CLOCK_CFG	=	0x00b9
                           0000A9   287 _WAKE_CTRL	=	0x00a9
                           0000FE   288 _RESET_KEEP	=	0x00fe
                           0000FF   289 _WDOG_COUNT	=	0x00ff
                           0000A8   290 _IE	=	0x00a8
                           0000B8   291 _IP	=	0x00b8
                           0000E8   292 _IE_EX	=	0x00e8
                           0000E9   293 _IP_EX	=	0x00e9
                           0000C7   294 _GPIO_IE	=	0x00c7
                           008584   295 _ROM_ADDR	=	0x8584
                           000084   296 _ROM_ADDR_L	=	0x0084
                           000085   297 _ROM_ADDR_H	=	0x0085
                           008F8E   298 _ROM_DATA	=	0x8f8e
                           00008E   299 _ROM_DATA_L	=	0x008e
                           00008F   300 _ROM_DATA_H	=	0x008f
                           000086   301 _ROM_CTRL	=	0x0086
                           000090   302 _P1	=	0x0090
                           000092   303 _P1_MOD_OC	=	0x0092
                           000093   304 _P1_DIR_PU	=	0x0093
                           0000A0   305 _P2	=	0x00a0
                           0000B0   306 _P3	=	0x00b0
                           000096   307 _P3_MOD_OC	=	0x0096
                           000097   308 _P3_DIR_PU	=	0x0097
                           0000C6   309 _PIN_FUNC	=	0x00c6
                           0000A2   310 _XBUS_AUX	=	0x00a2
                           000088   311 _TCON	=	0x0088
                           000089   312 _TMOD	=	0x0089
                           00008A   313 _TL0	=	0x008a
                           00008B   314 _TL1	=	0x008b
                           00008C   315 _TH0	=	0x008c
                           00008D   316 _TH1	=	0x008d
                           000098   317 _SCON	=	0x0098
                           000099   318 _SBUF	=	0x0099
                           0000C8   319 _T2CON	=	0x00c8
                           0000C9   320 _T2MOD	=	0x00c9
                           00CBCA   321 _RCAP2	=	0xcbca
                           0000CA   322 _RCAP2L	=	0x00ca
                           0000CB   323 _RCAP2H	=	0x00cb
                           00CDCC   324 _T2COUNT	=	0xcdcc
                           0000CC   325 _TL2	=	0x00cc
                           0000CD   326 _TH2	=	0x00cd
                           00CFCE   327 _T2CAP1	=	0xcfce
                           0000CE   328 _T2CAP1L	=	0x00ce
                           0000CF   329 _T2CAP1H	=	0x00cf
                           00009B   330 _PWM_DATA2	=	0x009b
                           00009C   331 _PWM_DATA1	=	0x009c
                           00009D   332 _PWM_CTRL	=	0x009d
                           00009E   333 _PWM_CK_SE	=	0x009e
                           0000F8   334 _SPI0_STAT	=	0x00f8
                           0000F9   335 _SPI0_DATA	=	0x00f9
                           0000FA   336 _SPI0_CTRL	=	0x00fa
                           0000FB   337 _SPI0_CK_SE	=	0x00fb
                           0000FC   338 _SPI0_SETUP	=	0x00fc
                           0000C0   339 _SCON1	=	0x00c0
                           0000C1   340 _SBUF1	=	0x00c1
                           0000C2   341 _SBAUD1	=	0x00c2
                           000080   342 _ADC_CTRL	=	0x0080
                           00009A   343 _ADC_CFG	=	0x009a
                           00009F   344 _ADC_DATA	=	0x009f
                           0000C3   345 _TKEY_CTRL	=	0x00c3
                           00C5C4   346 _TKEY_DAT	=	0xc5c4
                           0000C4   347 _TKEY_DATL	=	0x00c4
                           0000C5   348 _TKEY_DATH	=	0x00c5
                           000091   349 _USB_C_CTRL	=	0x0091
                           0000D1   350 _UDEV_CTRL	=	0x00d1
                           0000D2   351 _UEP1_CTRL	=	0x00d2
                           0000D3   352 _UEP1_T_LEN	=	0x00d3
                           0000D4   353 _UEP2_CTRL	=	0x00d4
                           0000D5   354 _UEP2_T_LEN	=	0x00d5
                           0000D6   355 _UEP3_CTRL	=	0x00d6
                           0000D7   356 _UEP3_T_LEN	=	0x00d7
                           0000D8   357 _USB_INT_FG	=	0x00d8
                           0000D9   358 _USB_INT_ST	=	0x00d9
                           0000DA   359 _USB_MIS_ST	=	0x00da
                           0000DB   360 _USB_RX_LEN	=	0x00db
                           0000DC   361 _UEP0_CTRL	=	0x00dc
                           0000DD   362 _UEP0_T_LEN	=	0x00dd
                           0000DE   363 _UEP4_CTRL	=	0x00de
                           0000DF   364 _UEP4_T_LEN	=	0x00df
                           0000E1   365 _USB_INT_EN	=	0x00e1
                           0000E2   366 _USB_CTRL	=	0x00e2
                           0000E3   367 _USB_DEV_AD	=	0x00e3
                           00E5E4   368 _UEP2_DMA	=	0xe5e4
                           0000E4   369 _UEP2_DMA_L	=	0x00e4
                           0000E5   370 _UEP2_DMA_H	=	0x00e5
                           00E7E6   371 _UEP3_DMA	=	0xe7e6
                           0000E6   372 _UEP3_DMA_L	=	0x00e6
                           0000E7   373 _UEP3_DMA_H	=	0x00e7
                           0000EA   374 _UEP4_1_MOD	=	0x00ea
                           0000EB   375 _UEP2_3_MOD	=	0x00eb
                           00EDEC   376 _UEP0_DMA	=	0xedec
                           0000EC   377 _UEP0_DMA_L	=	0x00ec
                           0000ED   378 _UEP0_DMA_H	=	0x00ed
                           00EFEE   379 _UEP1_DMA	=	0xefee
                           0000EE   380 _UEP1_DMA_L	=	0x00ee
                           0000EF   381 _UEP1_DMA_H	=	0x00ef
                                    382 ;--------------------------------------------------------
                                    383 ; special function bits
                                    384 ;--------------------------------------------------------
                                    385 	.area RSEG    (ABS,DATA)
      000000                        386 	.org 0x0000
                           0000D7   387 _CY	=	0x00d7
                           0000D6   388 _AC	=	0x00d6
                           0000D5   389 _F0	=	0x00d5
                           0000D4   390 _RS1	=	0x00d4
                           0000D3   391 _RS0	=	0x00d3
                           0000D2   392 _OV	=	0x00d2
                           0000D1   393 _F1	=	0x00d1
                           0000D0   394 _P	=	0x00d0
                           0000AF   395 _EA	=	0x00af
                           0000AE   396 _E_DIS	=	0x00ae
                           0000AD   397 _ET2	=	0x00ad
                           0000AC   398 _ES	=	0x00ac
                           0000AB   399 _ET1	=	0x00ab
                           0000AA   400 _EX1	=	0x00aa
                           0000A9   401 _ET0	=	0x00a9
                           0000A8   402 _EX0	=	0x00a8
                           0000BF   403 _PH_FLAG	=	0x00bf
                           0000BE   404 _PL_FLAG	=	0x00be
                           0000BD   405 _PT2	=	0x00bd
                           0000BC   406 _PS	=	0x00bc
                           0000BB   407 _PT1	=	0x00bb
                           0000BA   408 _PX1	=	0x00ba
                           0000B9   409 _PT0	=	0x00b9
                           0000B8   410 _PX0	=	0x00b8
                           0000EF   411 _IE_WDOG	=	0x00ef
                           0000EE   412 _IE_GPIO	=	0x00ee
                           0000ED   413 _IE_PWMX	=	0x00ed
                           0000EC   414 _IE_UART1	=	0x00ec
                           0000EB   415 _IE_ADC	=	0x00eb
                           0000EA   416 _IE_USB	=	0x00ea
                           0000E9   417 _IE_TKEY	=	0x00e9
                           0000E8   418 _IE_SPI0	=	0x00e8
                           000097   419 _SCK	=	0x0097
                           000097   420 _TXD1	=	0x0097
                           000097   421 _TIN5	=	0x0097
                           000096   422 _MISO	=	0x0096
                           000096   423 _RXD1	=	0x0096
                           000096   424 _TIN4	=	0x0096
                           000095   425 _MOSI	=	0x0095
                           000095   426 _PWM1	=	0x0095
                           000095   427 _TIN3	=	0x0095
                           000095   428 _UCC2	=	0x0095
                           000095   429 _AIN2	=	0x0095
                           000094   430 _T2_	=	0x0094
                           000094   431 _CAP1_	=	0x0094
                           000094   432 _SCS	=	0x0094
                           000094   433 _TIN2	=	0x0094
                           000094   434 _UCC1	=	0x0094
                           000094   435 _AIN1	=	0x0094
                           000093   436 _TXD_	=	0x0093
                           000092   437 _RXD_	=	0x0092
                           000091   438 _T2EX	=	0x0091
                           000091   439 _CAP2	=	0x0091
                           000091   440 _TIN1	=	0x0091
                           000091   441 _VBUS2	=	0x0091
                           000091   442 _AIN0	=	0x0091
                           000090   443 _T2	=	0x0090
                           000090   444 _CAP1	=	0x0090
                           000090   445 _TIN0	=	0x0090
                           0000B7   446 _UDM	=	0x00b7
                           0000B6   447 _UDP	=	0x00b6
                           0000B5   448 _T1	=	0x00b5
                           0000B4   449 _PWM2	=	0x00b4
                           0000B4   450 _RXD1_	=	0x00b4
                           0000B4   451 _T0	=	0x00b4
                           0000B3   452 _INT1	=	0x00b3
                           0000B2   453 _TXD1_	=	0x00b2
                           0000B2   454 _INT0	=	0x00b2
                           0000B2   455 _VBUS1	=	0x00b2
                           0000B2   456 _AIN3	=	0x00b2
                           0000B1   457 _PWM2_	=	0x00b1
                           0000B1   458 _TXD	=	0x00b1
                           0000B0   459 _PWM1_	=	0x00b0
                           0000B0   460 _RXD	=	0x00b0
                           00008F   461 _TF1	=	0x008f
                           00008E   462 _TR1	=	0x008e
                           00008D   463 _TF0	=	0x008d
                           00008C   464 _TR0	=	0x008c
                           00008B   465 _IE1	=	0x008b
                           00008A   466 _IT1	=	0x008a
                           000089   467 _IE0	=	0x0089
                           000088   468 _IT0	=	0x0088
                           00009F   469 _SM0	=	0x009f
                           00009E   470 _SM1	=	0x009e
                           00009D   471 _SM2	=	0x009d
                           00009C   472 _REN	=	0x009c
                           00009B   473 _TB8	=	0x009b
                           00009A   474 _RB8	=	0x009a
                           000099   475 _TI	=	0x0099
                           000098   476 _RI	=	0x0098
                           0000CF   477 _TF2	=	0x00cf
                           0000CF   478 _CAP1F	=	0x00cf
                           0000CE   479 _EXF2	=	0x00ce
                           0000CD   480 _RCLK	=	0x00cd
                           0000CC   481 _TCLK	=	0x00cc
                           0000CB   482 _EXEN2	=	0x00cb
                           0000CA   483 _TR2	=	0x00ca
                           0000C9   484 _C_T2	=	0x00c9
                           0000C8   485 _CP_RL2	=	0x00c8
                           0000FF   486 _S0_FST_ACT	=	0x00ff
                           0000FE   487 _S0_IF_OV	=	0x00fe
                           0000FD   488 _S0_IF_FIRST	=	0x00fd
                           0000FC   489 _S0_IF_BYTE	=	0x00fc
                           0000FB   490 _S0_FREE	=	0x00fb
                           0000FA   491 _S0_T_FIFO	=	0x00fa
                           0000F8   492 _S0_R_FIFO	=	0x00f8
                           0000C7   493 _U1SM0	=	0x00c7
                           0000C5   494 _U1SMOD	=	0x00c5
                           0000C4   495 _U1REN	=	0x00c4
                           0000C3   496 _U1TB8	=	0x00c3
                           0000C2   497 _U1RB8	=	0x00c2
                           0000C1   498 _U1TI	=	0x00c1
                           0000C0   499 _U1RI	=	0x00c0
                           000087   500 _CMPO	=	0x0087
                           000086   501 _CMP_IF	=	0x0086
                           000085   502 _ADC_IF	=	0x0085
                           000084   503 _ADC_START	=	0x0084
                           000083   504 _CMP_CHAN	=	0x0083
                           000081   505 _ADC_CHAN1	=	0x0081
                           000080   506 _ADC_CHAN0	=	0x0080
                           0000DF   507 _U_IS_NAK	=	0x00df
                           0000DE   508 _U_TOG_OK	=	0x00de
                           0000DD   509 _U_SIE_FREE	=	0x00dd
                           0000DC   510 _UIF_FIFO_OV	=	0x00dc
                           0000DB   511 _UIF_HST_SOF	=	0x00db
                           0000DA   512 _UIF_SUSPEND	=	0x00da
                           0000D9   513 _UIF_TRANSFER	=	0x00d9
                           0000D8   514 _UIF_DETECT	=	0x00d8
                           0000D8   515 _UIF_BUS_RST	=	0x00d8
                                    516 ;--------------------------------------------------------
                                    517 ; overlayable register banks
                                    518 ;--------------------------------------------------------
                                    519 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        520 	.ds 8
                                    521 ;--------------------------------------------------------
                                    522 ; internal ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area DSEG    (DATA)
      000008                        525 _tick_10ms::
      000008                        526 	.ds 2
      00000A                        527 _serialTime::
      00000A                        528 	.ds 2
      00000C                        529 _rawAnalog::
      00000C                        530 	.ds 1
      00000D                        531 _finalAnalog::
      00000D                        532 	.ds 2
                                    533 ;--------------------------------------------------------
                                    534 ; overlayable items in internal ram
                                    535 ;--------------------------------------------------------
                                    536 ;--------------------------------------------------------
                                    537 ; Stack segment in internal ram
                                    538 ;--------------------------------------------------------
                                    539 	.area SSEG
      000011                        540 __start__stack:
      000011                        541 	.ds	1
                                    542 
                                    543 ;--------------------------------------------------------
                                    544 ; indirectly addressable internal ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area ISEG    (DATA)
                                    547 ;--------------------------------------------------------
                                    548 ; absolute internal ram data
                                    549 ;--------------------------------------------------------
                                    550 	.area IABS    (ABS,DATA)
                                    551 	.area IABS    (ABS,DATA)
                                    552 ;--------------------------------------------------------
                                    553 ; bit data
                                    554 ;--------------------------------------------------------
                                    555 	.area BSEG    (BIT)
                                    556 ;--------------------------------------------------------
                                    557 ; paged external ram data
                                    558 ;--------------------------------------------------------
                                    559 	.area PSEG    (PAG,XDATA)
                                    560 ;--------------------------------------------------------
                                    561 ; uninitialized external ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area XSEG    (XDATA)
                                    564 ;--------------------------------------------------------
                                    565 ; absolute external ram data
                                    566 ;--------------------------------------------------------
                                    567 	.area XABS    (ABS,XDATA)
                                    568 ;--------------------------------------------------------
                                    569 ; initialized external ram data
                                    570 ;--------------------------------------------------------
                                    571 	.area XISEG   (XDATA)
                                    572 	.area HOME    (CODE)
                                    573 	.area GSINIT0 (CODE)
                                    574 	.area GSINIT1 (CODE)
                                    575 	.area GSINIT2 (CODE)
                                    576 	.area GSINIT3 (CODE)
                                    577 	.area GSINIT4 (CODE)
                                    578 	.area GSINIT5 (CODE)
                                    579 	.area GSINIT  (CODE)
                                    580 	.area GSFINAL (CODE)
                                    581 	.area CSEG    (CODE)
                                    582 ;--------------------------------------------------------
                                    583 ; interrupt vector
                                    584 ;--------------------------------------------------------
                                    585 	.area HOME    (CODE)
      000000                        586 __interrupt_vect:
      000000 02 00 54         [24]  587 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  588 	reti
      000004                        589 	.ds	7
      00000B 02 04 2C         [24]  590 	ljmp	_timer0_ISR
                                    591 ; restartable atomic support routines
      00000E                        592 	.ds	2
      000010                        593 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  594 	nop
      000011 00               [12]  595 	nop
      000012                        596 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  597 	movx	a, @r0
      000013 FB               [12]  598 	mov	r3, a
      000014 EA               [12]  599 	mov	a, r2
      000015 F2               [24]  600 	movx	@r0, a
      000016 80 2C            [24]  601 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  602 	nop
      000019 00               [12]  603 	nop
      00001A                        604 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  605 	movx	a, @dptr
      00001B FB               [12]  606 	mov	r3, a
      00001C EA               [12]  607 	mov	a, r2
      00001D F0               [24]  608 	movx	@dptr, a
      00001E 80 24            [24]  609 	sjmp	sdcc_atomic_exchange_exit
      000020                        610 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  611 	mov	a, @r0
      000021 B5 02 02         [24]  612 	cjne	a, ar2, .+#5
      000024 EB               [12]  613 	mov	a, r3
      000025 F6               [12]  614 	mov	@r0, a
      000026 22               [24]  615 	ret
      000027 00               [12]  616 	nop
      000028                        617 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  618 	movx	a, @r0
      000029 B5 02 02         [24]  619 	cjne	a, ar2, .+#5
      00002C EB               [12]  620 	mov	a, r3
      00002D F2               [24]  621 	movx	@r0, a
      00002E 22               [24]  622 	ret
      00002F 00               [12]  623 	nop
      000030                        624 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  625 	movx	a, @dptr
      000031 B5 02 02         [24]  626 	cjne	a, ar2, .+#5
      000034 EB               [12]  627 	mov	a, r3
      000035 F0               [24]  628 	movx	@dptr, a
      000036 22               [24]  629 	ret
      000037                        630 sdcc_atomic_exchange_rollback_end::
                                    631 
      000037                        632 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  633 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  634 	mov	r0, dpl
      00003C 20 F5 D3         [24]  635 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        636 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  637 	mov	a, r2
      000040 C6               [12]  638 	xch	a, @r0
      000041 F5 82            [12]  639 	mov	dpl, a
      000043 22               [24]  640 	ret
      000044                        641 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  642 	mov	dpl, r3
      000046 22               [24]  643 	ret
      000047                        644 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  645 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  646 	mov	r0, dpl
      00004C 20 F5 D9         [24]  647 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  648 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    649 ;--------------------------------------------------------
                                    650 ; global & static initialisations
                                    651 ;--------------------------------------------------------
                                    652 	.area HOME    (CODE)
                                    653 	.area GSINIT  (CODE)
                                    654 	.area GSFINAL (CODE)
                                    655 	.area GSINIT  (CODE)
                                    656 	.globl __sdcc_gsinit_startup
                                    657 	.globl __sdcc_program_startup
                                    658 	.globl __start__stack
                                    659 	.globl __mcs51_genXINIT
                                    660 	.globl __mcs51_genXRAMCLEAR
                                    661 	.globl __mcs51_genRAMCLEAR
                                    662 ;	i2c-bit-bang-oled-0.49-analog-reading.c:7: volatile unsigned int tick_10ms = 0;
      0000AD E4               [12]  663 	clr	a
      0000AE F5 08            [12]  664 	mov	_tick_10ms,a
      0000B0 F5 09            [12]  665 	mov	(_tick_10ms + 1),a
                                    666 ;	i2c-bit-bang-oled-0.49-analog-reading.c:8: unsigned int serialTime = 0;
      0000B2 F5 0A            [12]  667 	mov	_serialTime,a
      0000B4 F5 0B            [12]  668 	mov	(_serialTime + 1),a
                                    669 ;	i2c-bit-bang-oled-0.49-analog-reading.c:10: uint8_t rawAnalog = 0;
      0000B6 F5 0C            [12]  670 	mov	_rawAnalog,a
                                    671 ;	i2c-bit-bang-oled-0.49-analog-reading.c:11: uint16_t finalAnalog = 0;
      0000B8 F5 0D            [12]  672 	mov	_finalAnalog,a
      0000BA F5 0E            [12]  673 	mov	(_finalAnalog + 1),a
                                    674 	.area GSFINAL (CODE)
      0000BF 02 00 51         [24]  675 	ljmp	__sdcc_program_startup
                                    676 ;--------------------------------------------------------
                                    677 ; Home
                                    678 ;--------------------------------------------------------
                                    679 	.area HOME    (CODE)
                                    680 	.area HOME    (CODE)
      000051                        681 __sdcc_program_startup:
      000051 02 04 EA         [24]  682 	ljmp	_main
                                    683 ;	return from main will return to caller
                                    684 ;--------------------------------------------------------
                                    685 ; code
                                    686 ;--------------------------------------------------------
                                    687 	.area CSEG    (CODE)
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'i2c_delay'
                                    690 ;------------------------------------------------------------
                                    691 ;i             Allocated to stack - _bp +1 +1 
                                    692 ;------------------------------------------------------------
                                    693 ;	i2c-bit-bang-oled-0.49-analog-reading.c:23: void i2c_delay(void) {
                                    694 ;	-----------------------------------------
                                    695 ;	 function i2c_delay
                                    696 ;	-----------------------------------------
      0000C2                        697 _i2c_delay:
                           000007   698 	ar7 = 0x07
                           000006   699 	ar6 = 0x06
                           000005   700 	ar5 = 0x05
                           000004   701 	ar4 = 0x04
                           000003   702 	ar3 = 0x03
                           000002   703 	ar2 = 0x02
                           000001   704 	ar1 = 0x01
                           000000   705 	ar0 = 0x00
      0000C2 C0 10            [24]  706 	push	_bp
      0000C4 85 81 10         [24]  707 	mov	_bp,sp
      0000C7 05 81            [12]  708 	inc	sp
                                    709 ;	i2c-bit-bang-oled-0.49-analog-reading.c:24: for (volatile uint8_t i = 0; i < 40; i++);
      0000C9 A8 10            [24]  710 	mov	r0,_bp
      0000CB 08               [12]  711 	inc	r0
      0000CC 76 00            [12]  712 	mov	@r0,#0x00
      0000CE                        713 00103$:
      0000CE A8 10            [24]  714 	mov	r0,_bp
      0000D0 08               [12]  715 	inc	r0
      0000D1 B6 28 00         [24]  716 	cjne	@r0,#0x28,00119$
      0000D4                        717 00119$:
      0000D4 50 0D            [24]  718 	jnc	00105$
      0000D6 A8 10            [24]  719 	mov	r0,_bp
      0000D8 08               [12]  720 	inc	r0
      0000D9 86 07            [24]  721 	mov	ar7,@r0
      0000DB A8 10            [24]  722 	mov	r0,_bp
      0000DD 08               [12]  723 	inc	r0
      0000DE EF               [12]  724 	mov	a,r7
      0000DF 04               [12]  725 	inc	a
      0000E0 F6               [12]  726 	mov	@r0,a
      0000E1 80 EB            [24]  727 	sjmp	00103$
      0000E3                        728 00105$:
                                    729 ;	i2c-bit-bang-oled-0.49-analog-reading.c:25: }
      0000E3 15 81            [12]  730 	dec	sp
      0000E5 D0 10            [24]  731 	pop	_bp
      0000E7 22               [24]  732 	ret
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'i2c_start'
                                    735 ;------------------------------------------------------------
                                    736 ;	i2c-bit-bang-oled-0.49-analog-reading.c:27: void i2c_start(void) {
                                    737 ;	-----------------------------------------
                                    738 ;	 function i2c_start
                                    739 ;	-----------------------------------------
      0000E8                        740 _i2c_start:
                                    741 ;	i2c-bit-bang-oled-0.49-analog-reading.c:28: SDA_RELEASE();
      0000E8 43 90 01         [24]  742 	orl	_P1,#0x01
                                    743 ;	i2c-bit-bang-oled-0.49-analog-reading.c:29: SCL_RELEASE();
      0000EB 43 90 02         [24]  744 	orl	_P1,#0x02
                                    745 ;	i2c-bit-bang-oled-0.49-analog-reading.c:30: i2c_delay();
      0000EE 12 00 C2         [24]  746 	lcall	_i2c_delay
                                    747 ;	i2c-bit-bang-oled-0.49-analog-reading.c:32: SDA_LOW();
      0000F1 53 90 FE         [24]  748 	anl	_P1,#0xfe
                                    749 ;	i2c-bit-bang-oled-0.49-analog-reading.c:33: i2c_delay();
      0000F4 12 00 C2         [24]  750 	lcall	_i2c_delay
                                    751 ;	i2c-bit-bang-oled-0.49-analog-reading.c:34: SCL_LOW();
      0000F7 53 90 FD         [24]  752 	anl	_P1,#0xfd
                                    753 ;	i2c-bit-bang-oled-0.49-analog-reading.c:35: }
      0000FA 22               [24]  754 	ret
                                    755 ;------------------------------------------------------------
                                    756 ;Allocation info for local variables in function 'i2c_stop'
                                    757 ;------------------------------------------------------------
                                    758 ;	i2c-bit-bang-oled-0.49-analog-reading.c:37: void i2c_stop(void) {
                                    759 ;	-----------------------------------------
                                    760 ;	 function i2c_stop
                                    761 ;	-----------------------------------------
      0000FB                        762 _i2c_stop:
                                    763 ;	i2c-bit-bang-oled-0.49-analog-reading.c:38: SDA_LOW();
      0000FB 53 90 FE         [24]  764 	anl	_P1,#0xfe
                                    765 ;	i2c-bit-bang-oled-0.49-analog-reading.c:39: SCL_RELEASE();
      0000FE 43 90 02         [24]  766 	orl	_P1,#0x02
                                    767 ;	i2c-bit-bang-oled-0.49-analog-reading.c:40: i2c_delay();
      000101 12 00 C2         [24]  768 	lcall	_i2c_delay
                                    769 ;	i2c-bit-bang-oled-0.49-analog-reading.c:42: SDA_RELEASE();
      000104 43 90 01         [24]  770 	orl	_P1,#0x01
                                    771 ;	i2c-bit-bang-oled-0.49-analog-reading.c:43: i2c_delay();
                                    772 ;	i2c-bit-bang-oled-0.49-analog-reading.c:44: }
      000107 02 00 C2         [24]  773 	ljmp	_i2c_delay
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'i2c_write_byte'
                                    776 ;------------------------------------------------------------
                                    777 ;data          Allocated to registers r7 
                                    778 ;i             Allocated to registers r6 
                                    779 ;------------------------------------------------------------
                                    780 ;	i2c-bit-bang-oled-0.49-analog-reading.c:46: void i2c_write_byte(uint8_t data) {
                                    781 ;	-----------------------------------------
                                    782 ;	 function i2c_write_byte
                                    783 ;	-----------------------------------------
      00010A                        784 _i2c_write_byte:
      00010A AF 82            [24]  785 	mov	r7, dpl
                                    786 ;	i2c-bit-bang-oled-0.49-analog-reading.c:47: for (uint8_t i = 0; i < 8; i++) {
      00010C 7E 00            [12]  787 	mov	r6,#0x00
      00010E                        788 00106$:
      00010E BE 08 00         [24]  789 	cjne	r6,#0x08,00129$
      000111                        790 00129$:
      000111 50 26            [24]  791 	jnc	00104$
                                    792 ;	i2c-bit-bang-oled-0.49-analog-reading.c:49: if (data & 0x80)
      000113 EF               [12]  793 	mov	a,r7
      000114 30 E7 05         [24]  794 	jnb	acc.7,00102$
                                    795 ;	i2c-bit-bang-oled-0.49-analog-reading.c:50: SDA_RELEASE();   // HIGH = release
      000117 43 90 01         [24]  796 	orl	_P1,#0x01
      00011A 80 03            [24]  797 	sjmp	00103$
      00011C                        798 00102$:
                                    799 ;	i2c-bit-bang-oled-0.49-analog-reading.c:52: SDA_LOW();       // LOW = drive
      00011C 53 90 FE         [24]  800 	anl	_P1,#0xfe
      00011F                        801 00103$:
                                    802 ;	i2c-bit-bang-oled-0.49-analog-reading.c:54: SCL_RELEASE();
      00011F 43 90 02         [24]  803 	orl	_P1,#0x02
                                    804 ;	i2c-bit-bang-oled-0.49-analog-reading.c:55: i2c_delay();
      000122 C0 07            [24]  805 	push	ar7
      000124 C0 06            [24]  806 	push	ar6
      000126 12 00 C2         [24]  807 	lcall	_i2c_delay
                                    808 ;	i2c-bit-bang-oled-0.49-analog-reading.c:56: SCL_LOW();
      000129 53 90 FD         [24]  809 	anl	_P1,#0xfd
                                    810 ;	i2c-bit-bang-oled-0.49-analog-reading.c:57: i2c_delay();
      00012C 12 00 C2         [24]  811 	lcall	_i2c_delay
      00012F D0 06            [24]  812 	pop	ar6
      000131 D0 07            [24]  813 	pop	ar7
                                    814 ;	i2c-bit-bang-oled-0.49-analog-reading.c:59: data <<= 1;
      000133 EF               [12]  815 	mov	a,r7
      000134 2F               [12]  816 	add	a,r7
      000135 FF               [12]  817 	mov	r7,a
                                    818 ;	i2c-bit-bang-oled-0.49-analog-reading.c:47: for (uint8_t i = 0; i < 8; i++) {
      000136 0E               [12]  819 	inc	r6
      000137 80 D5            [24]  820 	sjmp	00106$
      000139                        821 00104$:
                                    822 ;	i2c-bit-bang-oled-0.49-analog-reading.c:63: SDA_RELEASE();      // release SDA so slave can pull it LOW
      000139 43 90 01         [24]  823 	orl	_P1,#0x01
                                    824 ;	i2c-bit-bang-oled-0.49-analog-reading.c:64: SCL_RELEASE();
      00013C 43 90 02         [24]  825 	orl	_P1,#0x02
                                    826 ;	i2c-bit-bang-oled-0.49-analog-reading.c:65: i2c_delay();
      00013F 12 00 C2         [24]  827 	lcall	_i2c_delay
                                    828 ;	i2c-bit-bang-oled-0.49-analog-reading.c:66: SCL_LOW();
      000142 53 90 FD         [24]  829 	anl	_P1,#0xfd
                                    830 ;	i2c-bit-bang-oled-0.49-analog-reading.c:67: }
      000145 22               [24]  831 	ret
                                    832 ;------------------------------------------------------------
                                    833 ;Allocation info for local variables in function 'oled_cmd'
                                    834 ;------------------------------------------------------------
                                    835 ;cmd           Allocated to registers r7 
                                    836 ;------------------------------------------------------------
                                    837 ;	i2c-bit-bang-oled-0.49-analog-reading.c:73: void oled_cmd(uint8_t cmd) {
                                    838 ;	-----------------------------------------
                                    839 ;	 function oled_cmd
                                    840 ;	-----------------------------------------
      000146                        841 _oled_cmd:
      000146 AF 82            [24]  842 	mov	r7, dpl
                                    843 ;	i2c-bit-bang-oled-0.49-analog-reading.c:74: i2c_start();
      000148 C0 07            [24]  844 	push	ar7
      00014A 12 00 E8         [24]  845 	lcall	_i2c_start
                                    846 ;	i2c-bit-bang-oled-0.49-analog-reading.c:75: i2c_write_byte(OLED_ADDR);
      00014D 75 82 78         [24]  847 	mov	dpl, #0x78
      000150 12 01 0A         [24]  848 	lcall	_i2c_write_byte
                                    849 ;	i2c-bit-bang-oled-0.49-analog-reading.c:76: i2c_write_byte(0x00);
      000153 75 82 00         [24]  850 	mov	dpl, #0x00
      000156 12 01 0A         [24]  851 	lcall	_i2c_write_byte
      000159 D0 07            [24]  852 	pop	ar7
                                    853 ;	i2c-bit-bang-oled-0.49-analog-reading.c:77: i2c_write_byte(cmd);
      00015B 8F 82            [24]  854 	mov	dpl, r7
      00015D 12 01 0A         [24]  855 	lcall	_i2c_write_byte
                                    856 ;	i2c-bit-bang-oled-0.49-analog-reading.c:78: i2c_stop();
                                    857 ;	i2c-bit-bang-oled-0.49-analog-reading.c:79: }
      000160 02 00 FB         [24]  858 	ljmp	_i2c_stop
                                    859 ;------------------------------------------------------------
                                    860 ;Allocation info for local variables in function 'oled_data'
                                    861 ;------------------------------------------------------------
                                    862 ;data          Allocated to registers r7 
                                    863 ;------------------------------------------------------------
                                    864 ;	i2c-bit-bang-oled-0.49-analog-reading.c:81: void oled_data(uint8_t data) {
                                    865 ;	-----------------------------------------
                                    866 ;	 function oled_data
                                    867 ;	-----------------------------------------
      000163                        868 _oled_data:
      000163 AF 82            [24]  869 	mov	r7, dpl
                                    870 ;	i2c-bit-bang-oled-0.49-analog-reading.c:82: i2c_start();
      000165 C0 07            [24]  871 	push	ar7
      000167 12 00 E8         [24]  872 	lcall	_i2c_start
                                    873 ;	i2c-bit-bang-oled-0.49-analog-reading.c:83: i2c_write_byte(OLED_ADDR);
      00016A 75 82 78         [24]  874 	mov	dpl, #0x78
      00016D 12 01 0A         [24]  875 	lcall	_i2c_write_byte
                                    876 ;	i2c-bit-bang-oled-0.49-analog-reading.c:84: i2c_write_byte(0x40);
      000170 75 82 40         [24]  877 	mov	dpl, #0x40
      000173 12 01 0A         [24]  878 	lcall	_i2c_write_byte
      000176 D0 07            [24]  879 	pop	ar7
                                    880 ;	i2c-bit-bang-oled-0.49-analog-reading.c:85: i2c_write_byte(data);
      000178 8F 82            [24]  881 	mov	dpl, r7
      00017A 12 01 0A         [24]  882 	lcall	_i2c_write_byte
                                    883 ;	i2c-bit-bang-oled-0.49-analog-reading.c:86: i2c_stop();
                                    884 ;	i2c-bit-bang-oled-0.49-analog-reading.c:87: }
      00017D 02 00 FB         [24]  885 	ljmp	_i2c_stop
                                    886 ;------------------------------------------------------------
                                    887 ;Allocation info for local variables in function 'oled_set_cursor'
                                    888 ;------------------------------------------------------------
                                    889 ;page          Allocated to stack - _bp -3 +1 
                                    890 ;x             Allocated to registers r7 
                                    891 ;------------------------------------------------------------
                                    892 ;	i2c-bit-bang-oled-0.49-analog-reading.c:89: void oled_set_cursor(uint8_t x, uint8_t page) {
                                    893 ;	-----------------------------------------
                                    894 ;	 function oled_set_cursor
                                    895 ;	-----------------------------------------
      000180                        896 _oled_set_cursor:
      000180 C0 10            [24]  897 	push	_bp
      000182 85 81 10         [24]  898 	mov	_bp,sp
      000185 AF 82            [24]  899 	mov	r7, dpl
                                    900 ;	i2c-bit-bang-oled-0.49-analog-reading.c:90: oled_cmd(0xB0 + page);
      000187 E5 10            [12]  901 	mov	a,_bp
      000189 24 FD            [12]  902 	add	a,#0xfd
      00018B F8               [12]  903 	mov	r0,a
      00018C 86 06            [24]  904 	mov	ar6,@r0
      00018E 74 B0            [12]  905 	mov	a,#0xb0
      000190 2E               [12]  906 	add	a, r6
      000191 F5 82            [12]  907 	mov	dpl,a
      000193 C0 07            [24]  908 	push	ar7
      000195 12 01 46         [24]  909 	lcall	_oled_cmd
      000198 D0 07            [24]  910 	pop	ar7
                                    911 ;	i2c-bit-bang-oled-0.49-analog-reading.c:91: oled_cmd(0x00 + (x & 0x0F));
      00019A 8F 06            [24]  912 	mov	ar6,r7
      00019C 74 0F            [12]  913 	mov	a,#0x0f
      00019E 5E               [12]  914 	anl	a,r6
      00019F F5 82            [12]  915 	mov	dpl,a
      0001A1 C0 07            [24]  916 	push	ar7
      0001A3 12 01 46         [24]  917 	lcall	_oled_cmd
      0001A6 D0 07            [24]  918 	pop	ar7
                                    919 ;	i2c-bit-bang-oled-0.49-analog-reading.c:92: oled_cmd(0x10 + (x >> 4));
      0001A8 EF               [12]  920 	mov	a,r7
      0001A9 C4               [12]  921 	swap	a
      0001AA 54 0F            [12]  922 	anl	a,#0x0f
      0001AC 24 10            [12]  923 	add	a,#0x10
      0001AE F5 82            [12]  924 	mov	dpl,a
      0001B0 12 01 46         [24]  925 	lcall	_oled_cmd
                                    926 ;	i2c-bit-bang-oled-0.49-analog-reading.c:93: }
      0001B3 D0 10            [24]  927 	pop	_bp
      0001B5 22               [24]  928 	ret
                                    929 ;------------------------------------------------------------
                                    930 ;Allocation info for local variables in function 'oled_write_data_stream'
                                    931 ;------------------------------------------------------------
                                    932 ;len           Allocated to stack - _bp -3 +1 
                                    933 ;data          Allocated to stack - _bp +1 +3 
                                    934 ;i             Allocated to registers r4 
                                    935 ;------------------------------------------------------------
                                    936 ;	i2c-bit-bang-oled-0.49-analog-reading.c:94: void oled_write_data_stream(uint8_t *data, uint8_t len) {
                                    937 ;	-----------------------------------------
                                    938 ;	 function oled_write_data_stream
                                    939 ;	-----------------------------------------
      0001B6                        940 _oled_write_data_stream:
      0001B6 C0 10            [24]  941 	push	_bp
      0001B8 85 81 10         [24]  942 	mov	_bp,sp
      0001BB C0 82            [24]  943 	push	dpl
      0001BD C0 83            [24]  944 	push	dph
      0001BF C0 F0            [24]  945 	push	b
                                    946 ;	i2c-bit-bang-oled-0.49-analog-reading.c:95: i2c_start();
      0001C1 12 00 E8         [24]  947 	lcall	_i2c_start
                                    948 ;	i2c-bit-bang-oled-0.49-analog-reading.c:96: i2c_write_byte(OLED_ADDR);
      0001C4 75 82 78         [24]  949 	mov	dpl, #0x78
      0001C7 12 01 0A         [24]  950 	lcall	_i2c_write_byte
                                    951 ;	i2c-bit-bang-oled-0.49-analog-reading.c:97: i2c_write_byte(0x40);
      0001CA 75 82 40         [24]  952 	mov	dpl, #0x40
      0001CD 12 01 0A         [24]  953 	lcall	_i2c_write_byte
                                    954 ;	i2c-bit-bang-oled-0.49-analog-reading.c:99: for (uint8_t i = 0; i < len; i++) {
      0001D0 7C 00            [12]  955 	mov	r4,#0x00
      0001D2                        956 00103$:
      0001D2 E5 10            [12]  957 	mov	a,_bp
      0001D4 24 FD            [12]  958 	add	a,#0xfd
      0001D6 F8               [12]  959 	mov	r0,a
      0001D7 C3               [12]  960 	clr	c
      0001D8 EC               [12]  961 	mov	a,r4
      0001D9 96               [12]  962 	subb	a,@r0
      0001DA 50 22            [24]  963 	jnc	00101$
                                    964 ;	i2c-bit-bang-oled-0.49-analog-reading.c:100: i2c_write_byte(data[i]);
      0001DC A8 10            [24]  965 	mov	r0,_bp
      0001DE 08               [12]  966 	inc	r0
      0001DF EC               [12]  967 	mov	a,r4
      0001E0 26               [12]  968 	add	a, @r0
      0001E1 FA               [12]  969 	mov	r2,a
      0001E2 E4               [12]  970 	clr	a
      0001E3 08               [12]  971 	inc	r0
      0001E4 36               [12]  972 	addc	a, @r0
      0001E5 FB               [12]  973 	mov	r3,a
      0001E6 08               [12]  974 	inc	r0
      0001E7 86 07            [24]  975 	mov	ar7,@r0
      0001E9 8A 82            [24]  976 	mov	dpl,r2
      0001EB 8B 83            [24]  977 	mov	dph,r3
      0001ED 8F F0            [24]  978 	mov	b,r7
      0001EF 12 0B 91         [24]  979 	lcall	__gptrget
      0001F2 F5 82            [12]  980 	mov	dpl,a
      0001F4 C0 04            [24]  981 	push	ar4
      0001F6 12 01 0A         [24]  982 	lcall	_i2c_write_byte
      0001F9 D0 04            [24]  983 	pop	ar4
                                    984 ;	i2c-bit-bang-oled-0.49-analog-reading.c:99: for (uint8_t i = 0; i < len; i++) {
      0001FB 0C               [12]  985 	inc	r4
      0001FC 80 D4            [24]  986 	sjmp	00103$
      0001FE                        987 00101$:
                                    988 ;	i2c-bit-bang-oled-0.49-analog-reading.c:103: i2c_stop();
      0001FE 12 00 FB         [24]  989 	lcall	_i2c_stop
                                    990 ;	i2c-bit-bang-oled-0.49-analog-reading.c:104: }
      000201 85 10 81         [24]  991 	mov	sp,_bp
      000204 D0 10            [24]  992 	pop	_bp
      000206 22               [24]  993 	ret
                                    994 ;------------------------------------------------------------
                                    995 ;Allocation info for local variables in function 'oled_clear'
                                    996 ;------------------------------------------------------------
                                    997 ;page          Allocated to registers r7 
                                    998 ;i             Allocated to registers r6 
                                    999 ;------------------------------------------------------------
                                   1000 ;	i2c-bit-bang-oled-0.49-analog-reading.c:105: void oled_clear(void) {
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function oled_clear
                                   1003 ;	-----------------------------------------
      000207                       1004 _oled_clear:
                                   1005 ;	i2c-bit-bang-oled-0.49-analog-reading.c:106: for (uint8_t page = 0; page < 8; page++) {
      000207 7F 00            [12] 1006 	mov	r7,#0x00
      000209                       1007 00107$:
      000209 BF 08 00         [24] 1008 	cjne	r7,#0x08,00137$
      00020C                       1009 00137$:
      00020C 50 4B            [24] 1010 	jnc	00109$
                                   1011 ;	i2c-bit-bang-oled-0.49-analog-reading.c:108: oled_cmd(0xB0 + page);
      00020E 8F 06            [24] 1012 	mov	ar6,r7
      000210 74 B0            [12] 1013 	mov	a,#0xb0
      000212 2E               [12] 1014 	add	a, r6
      000213 F5 82            [12] 1015 	mov	dpl,a
      000215 C0 07            [24] 1016 	push	ar7
      000217 12 01 46         [24] 1017 	lcall	_oled_cmd
                                   1018 ;	i2c-bit-bang-oled-0.49-analog-reading.c:109: oled_cmd(0x00);
      00021A 75 82 00         [24] 1019 	mov	dpl, #0x00
      00021D 12 01 46         [24] 1020 	lcall	_oled_cmd
                                   1021 ;	i2c-bit-bang-oled-0.49-analog-reading.c:110: oled_cmd(0x10);
      000220 75 82 10         [24] 1022 	mov	dpl, #0x10
      000223 12 01 46         [24] 1023 	lcall	_oled_cmd
                                   1024 ;	i2c-bit-bang-oled-0.49-analog-reading.c:112: i2c_start();
      000226 12 00 E8         [24] 1025 	lcall	_i2c_start
                                   1026 ;	i2c-bit-bang-oled-0.49-analog-reading.c:113: i2c_write_byte(OLED_ADDR);
      000229 75 82 78         [24] 1027 	mov	dpl, #0x78
      00022C 12 01 0A         [24] 1028 	lcall	_i2c_write_byte
                                   1029 ;	i2c-bit-bang-oled-0.49-analog-reading.c:114: i2c_write_byte(0x40);   // data stream
      00022F 75 82 40         [24] 1030 	mov	dpl, #0x40
      000232 12 01 0A         [24] 1031 	lcall	_i2c_write_byte
      000235 D0 07            [24] 1032 	pop	ar7
                                   1033 ;	i2c-bit-bang-oled-0.49-analog-reading.c:116: for (uint8_t i = 0; i < 128; i++) {
      000237 7E 00            [12] 1034 	mov	r6,#0x00
      000239                       1035 00104$:
      000239 BE 80 00         [24] 1036 	cjne	r6,#0x80,00139$
      00023C                       1037 00139$:
      00023C 50 11            [24] 1038 	jnc	00101$
                                   1039 ;	i2c-bit-bang-oled-0.49-analog-reading.c:117: i2c_write_byte(0x00);
      00023E 75 82 00         [24] 1040 	mov	dpl, #0x00
      000241 C0 07            [24] 1041 	push	ar7
      000243 C0 06            [24] 1042 	push	ar6
      000245 12 01 0A         [24] 1043 	lcall	_i2c_write_byte
      000248 D0 06            [24] 1044 	pop	ar6
      00024A D0 07            [24] 1045 	pop	ar7
                                   1046 ;	i2c-bit-bang-oled-0.49-analog-reading.c:116: for (uint8_t i = 0; i < 128; i++) {
      00024C 0E               [12] 1047 	inc	r6
      00024D 80 EA            [24] 1048 	sjmp	00104$
      00024F                       1049 00101$:
                                   1050 ;	i2c-bit-bang-oled-0.49-analog-reading.c:120: i2c_stop();
      00024F C0 07            [24] 1051 	push	ar7
      000251 12 00 FB         [24] 1052 	lcall	_i2c_stop
      000254 D0 07            [24] 1053 	pop	ar7
                                   1054 ;	i2c-bit-bang-oled-0.49-analog-reading.c:106: for (uint8_t page = 0; page < 8; page++) {
      000256 0F               [12] 1055 	inc	r7
      000257 80 B0            [24] 1056 	sjmp	00107$
      000259                       1057 00109$:
                                   1058 ;	i2c-bit-bang-oled-0.49-analog-reading.c:122: }
      000259 22               [24] 1059 	ret
                                   1060 ;------------------------------------------------------------
                                   1061 ;Allocation info for local variables in function 'oled_init'
                                   1062 ;------------------------------------------------------------
                                   1063 ;	i2c-bit-bang-oled-0.49-analog-reading.c:124: void oled_init(void) {
                                   1064 ;	-----------------------------------------
                                   1065 ;	 function oled_init
                                   1066 ;	-----------------------------------------
      00025A                       1067 _oled_init:
                                   1068 ;	i2c-bit-bang-oled-0.49-analog-reading.c:125: oled_cmd(0xAE);
      00025A 75 82 AE         [24] 1069 	mov	dpl, #0xae
      00025D 12 01 46         [24] 1070 	lcall	_oled_cmd
                                   1071 ;	i2c-bit-bang-oled-0.49-analog-reading.c:126: oled_cmd(0x20); oled_cmd(0x00);
      000260 75 82 20         [24] 1072 	mov	dpl, #0x20
      000263 12 01 46         [24] 1073 	lcall	_oled_cmd
      000266 75 82 00         [24] 1074 	mov	dpl, #0x00
      000269 12 01 46         [24] 1075 	lcall	_oled_cmd
                                   1076 ;	i2c-bit-bang-oled-0.49-analog-reading.c:127: oled_cmd(0xB0);
      00026C 75 82 B0         [24] 1077 	mov	dpl, #0xb0
      00026F 12 01 46         [24] 1078 	lcall	_oled_cmd
                                   1079 ;	i2c-bit-bang-oled-0.49-analog-reading.c:128: oled_cmd(0xC8);
      000272 75 82 C8         [24] 1080 	mov	dpl, #0xc8
      000275 12 01 46         [24] 1081 	lcall	_oled_cmd
                                   1082 ;	i2c-bit-bang-oled-0.49-analog-reading.c:129: oled_cmd(0x00);
      000278 75 82 00         [24] 1083 	mov	dpl, #0x00
      00027B 12 01 46         [24] 1084 	lcall	_oled_cmd
                                   1085 ;	i2c-bit-bang-oled-0.49-analog-reading.c:130: oled_cmd(0x10);
      00027E 75 82 10         [24] 1086 	mov	dpl, #0x10
      000281 12 01 46         [24] 1087 	lcall	_oled_cmd
                                   1088 ;	i2c-bit-bang-oled-0.49-analog-reading.c:131: oled_cmd(0x40);
      000284 75 82 40         [24] 1089 	mov	dpl, #0x40
      000287 12 01 46         [24] 1090 	lcall	_oled_cmd
                                   1091 ;	i2c-bit-bang-oled-0.49-analog-reading.c:132: oled_cmd(0x81); oled_cmd(0x7F);
      00028A 75 82 81         [24] 1092 	mov	dpl, #0x81
      00028D 12 01 46         [24] 1093 	lcall	_oled_cmd
      000290 75 82 7F         [24] 1094 	mov	dpl, #0x7f
      000293 12 01 46         [24] 1095 	lcall	_oled_cmd
                                   1096 ;	i2c-bit-bang-oled-0.49-analog-reading.c:133: oled_cmd(0xA1);
      000296 75 82 A1         [24] 1097 	mov	dpl, #0xa1
      000299 12 01 46         [24] 1098 	lcall	_oled_cmd
                                   1099 ;	i2c-bit-bang-oled-0.49-analog-reading.c:134: oled_cmd(0xA6);
      00029C 75 82 A6         [24] 1100 	mov	dpl, #0xa6
      00029F 12 01 46         [24] 1101 	lcall	_oled_cmd
                                   1102 ;	i2c-bit-bang-oled-0.49-analog-reading.c:135: oled_cmd(0xA8); oled_cmd(0x3F);
      0002A2 75 82 A8         [24] 1103 	mov	dpl, #0xa8
      0002A5 12 01 46         [24] 1104 	lcall	_oled_cmd
      0002A8 75 82 3F         [24] 1105 	mov	dpl, #0x3f
      0002AB 12 01 46         [24] 1106 	lcall	_oled_cmd
                                   1107 ;	i2c-bit-bang-oled-0.49-analog-reading.c:136: oled_cmd(0xA4);
      0002AE 75 82 A4         [24] 1108 	mov	dpl, #0xa4
      0002B1 12 01 46         [24] 1109 	lcall	_oled_cmd
                                   1110 ;	i2c-bit-bang-oled-0.49-analog-reading.c:137: oled_cmd(0xD3); oled_cmd(0x00);
      0002B4 75 82 D3         [24] 1111 	mov	dpl, #0xd3
      0002B7 12 01 46         [24] 1112 	lcall	_oled_cmd
      0002BA 75 82 00         [24] 1113 	mov	dpl, #0x00
      0002BD 12 01 46         [24] 1114 	lcall	_oled_cmd
                                   1115 ;	i2c-bit-bang-oled-0.49-analog-reading.c:138: oled_cmd(0xD5); oled_cmd(0xF0);
      0002C0 75 82 D5         [24] 1116 	mov	dpl, #0xd5
      0002C3 12 01 46         [24] 1117 	lcall	_oled_cmd
      0002C6 75 82 F0         [24] 1118 	mov	dpl, #0xf0
      0002C9 12 01 46         [24] 1119 	lcall	_oled_cmd
                                   1120 ;	i2c-bit-bang-oled-0.49-analog-reading.c:139: oled_cmd(0xD9); oled_cmd(0x22);
      0002CC 75 82 D9         [24] 1121 	mov	dpl, #0xd9
      0002CF 12 01 46         [24] 1122 	lcall	_oled_cmd
      0002D2 75 82 22         [24] 1123 	mov	dpl, #0x22
      0002D5 12 01 46         [24] 1124 	lcall	_oled_cmd
                                   1125 ;	i2c-bit-bang-oled-0.49-analog-reading.c:140: oled_cmd(0xDA); oled_cmd(0x12);
      0002D8 75 82 DA         [24] 1126 	mov	dpl, #0xda
      0002DB 12 01 46         [24] 1127 	lcall	_oled_cmd
      0002DE 75 82 12         [24] 1128 	mov	dpl, #0x12
      0002E1 12 01 46         [24] 1129 	lcall	_oled_cmd
                                   1130 ;	i2c-bit-bang-oled-0.49-analog-reading.c:141: oled_cmd(0xDB); oled_cmd(0x20);
      0002E4 75 82 DB         [24] 1131 	mov	dpl, #0xdb
      0002E7 12 01 46         [24] 1132 	lcall	_oled_cmd
      0002EA 75 82 20         [24] 1133 	mov	dpl, #0x20
      0002ED 12 01 46         [24] 1134 	lcall	_oled_cmd
                                   1135 ;	i2c-bit-bang-oled-0.49-analog-reading.c:142: oled_cmd(0x8D); oled_cmd(0x14);
      0002F0 75 82 8D         [24] 1136 	mov	dpl, #0x8d
      0002F3 12 01 46         [24] 1137 	lcall	_oled_cmd
      0002F6 75 82 14         [24] 1138 	mov	dpl, #0x14
      0002F9 12 01 46         [24] 1139 	lcall	_oled_cmd
                                   1140 ;	i2c-bit-bang-oled-0.49-analog-reading.c:143: oled_cmd(0xAF);
      0002FC 75 82 AF         [24] 1141 	mov	dpl, #0xaf
      0002FF 12 01 46         [24] 1142 	lcall	_oled_cmd
                                   1143 ;	i2c-bit-bang-oled-0.49-analog-reading.c:145: oled_clear();
                                   1144 ;	i2c-bit-bang-oled-0.49-analog-reading.c:146: }
      000302 02 02 07         [24] 1145 	ljmp	_oled_clear
                                   1146 ;------------------------------------------------------------
                                   1147 ;Allocation info for local variables in function 'oled_draw_char'
                                   1148 ;------------------------------------------------------------
                                   1149 ;c             Allocated to registers r7 
                                   1150 ;index         Allocated to registers r7 
                                   1151 ;i             Allocated to registers r5 
                                   1152 ;------------------------------------------------------------
                                   1153 ;	i2c-bit-bang-oled-0.49-analog-reading.c:162: void oled_draw_char(char c) {
                                   1154 ;	-----------------------------------------
                                   1155 ;	 function oled_draw_char
                                   1156 ;	-----------------------------------------
      000305                       1157 _oled_draw_char:
      000305 AF 82            [24] 1158 	mov	r7, dpl
                                   1159 ;	i2c-bit-bang-oled-0.49-analog-reading.c:163: if (c < '0' || c > '9') return;
      000307 BF 30 00         [24] 1160 	cjne	r7,#0x30,00129$
      00030A                       1161 00129$:
      00030A 40 05            [24] 1162 	jc	00101$
      00030C EF               [12] 1163 	mov	a,r7
      00030D 24 C6            [12] 1164 	add	a,#0xff - 0x39
      00030F 50 01            [24] 1165 	jnc	00102$
      000311                       1166 00101$:
      000311 22               [24] 1167 	ret
      000312                       1168 00102$:
                                   1169 ;	i2c-bit-bang-oled-0.49-analog-reading.c:165: uint8_t index = c - '0';
      000312 EF               [12] 1170 	mov	a,r7
      000313 24 D0            [12] 1171 	add	a,#0xd0
      000315 FF               [12] 1172 	mov	r7,a
                                   1173 ;	i2c-bit-bang-oled-0.49-analog-reading.c:167: i2c_start();
      000316 C0 07            [24] 1174 	push	ar7
      000318 12 00 E8         [24] 1175 	lcall	_i2c_start
                                   1176 ;	i2c-bit-bang-oled-0.49-analog-reading.c:168: i2c_write_byte(OLED_ADDR);
      00031B 75 82 78         [24] 1177 	mov	dpl, #0x78
      00031E 12 01 0A         [24] 1178 	lcall	_i2c_write_byte
                                   1179 ;	i2c-bit-bang-oled-0.49-analog-reading.c:169: i2c_write_byte(0x40);
      000321 75 82 40         [24] 1180 	mov	dpl, #0x40
      000324 12 01 0A         [24] 1181 	lcall	_i2c_write_byte
      000327 D0 07            [24] 1182 	pop	ar7
                                   1183 ;	i2c-bit-bang-oled-0.49-analog-reading.c:171: for (uint8_t i = 0; i < 5; i++) {
      000329 EF               [12] 1184 	mov	a,r7
      00032A 75 F0 05         [24] 1185 	mov	b,#0x05
      00032D A4               [48] 1186 	mul	ab
      00032E 24 E0            [12] 1187 	add	a, #_font5x7
      000330 FE               [12] 1188 	mov	r6,a
      000331 74 0C            [12] 1189 	mov	a,#(_font5x7 >> 8)
      000333 35 F0            [12] 1190 	addc	a, b
      000335 FF               [12] 1191 	mov	r7,a
      000336 7D 00            [12] 1192 	mov	r5,#0x00
      000338                       1193 00106$:
      000338 BD 05 00         [24] 1194 	cjne	r5,#0x05,00132$
      00033B                       1195 00132$:
      00033B 50 1E            [24] 1196 	jnc	00104$
                                   1197 ;	i2c-bit-bang-oled-0.49-analog-reading.c:172: i2c_write_byte(font5x7[index][i]);
      00033D ED               [12] 1198 	mov	a,r5
      00033E 2E               [12] 1199 	add	a, r6
      00033F F5 82            [12] 1200 	mov	dpl,a
      000341 E4               [12] 1201 	clr	a
      000342 3F               [12] 1202 	addc	a, r7
      000343 F5 83            [12] 1203 	mov	dph,a
      000345 E4               [12] 1204 	clr	a
      000346 93               [24] 1205 	movc	a,@a+dptr
      000347 F5 82            [12] 1206 	mov	dpl,a
      000349 C0 07            [24] 1207 	push	ar7
      00034B C0 06            [24] 1208 	push	ar6
      00034D C0 05            [24] 1209 	push	ar5
      00034F 12 01 0A         [24] 1210 	lcall	_i2c_write_byte
      000352 D0 05            [24] 1211 	pop	ar5
      000354 D0 06            [24] 1212 	pop	ar6
      000356 D0 07            [24] 1213 	pop	ar7
                                   1214 ;	i2c-bit-bang-oled-0.49-analog-reading.c:171: for (uint8_t i = 0; i < 5; i++) {
      000358 0D               [12] 1215 	inc	r5
      000359 80 DD            [24] 1216 	sjmp	00106$
      00035B                       1217 00104$:
                                   1218 ;	i2c-bit-bang-oled-0.49-analog-reading.c:175: i2c_write_byte(0x00); // spacing
      00035B 75 82 00         [24] 1219 	mov	dpl, #0x00
      00035E 12 01 0A         [24] 1220 	lcall	_i2c_write_byte
                                   1221 ;	i2c-bit-bang-oled-0.49-analog-reading.c:177: i2c_stop();
                                   1222 ;	i2c-bit-bang-oled-0.49-analog-reading.c:178: }
      000361 02 00 FB         [24] 1223 	ljmp	_i2c_stop
                                   1224 ;------------------------------------------------------------
                                   1225 ;Allocation info for local variables in function 'oled_print_uint'
                                   1226 ;------------------------------------------------------------
                                   1227 ;value         Allocated to registers r6 r7 
                                   1228 ;buf           Allocated to stack - _bp +3 +6 
                                   1229 ;i             Allocated to registers r5 
                                   1230 ;temp          Allocated to registers r6 r7 
                                   1231 ;rev           Allocated to stack - _bp +9 +6 
                                   1232 ;j             Allocated to registers r5 
                                   1233 ;k             Allocated to registers r6 
                                   1234 ;sloc0         Allocated to stack - _bp +20 +1 
                                   1235 ;sloc1         Allocated to stack - _bp +1 +2 
                                   1236 ;------------------------------------------------------------
                                   1237 ;	i2c-bit-bang-oled-0.49-analog-reading.c:180: void oled_print_uint(uint16_t value) {
                                   1238 ;	-----------------------------------------
                                   1239 ;	 function oled_print_uint
                                   1240 ;	-----------------------------------------
      000364                       1241 _oled_print_uint:
      000364 C0 10            [24] 1242 	push	_bp
      000366 E5 81            [12] 1243 	mov	a,sp
      000368 F5 10            [12] 1244 	mov	_bp,a
      00036A 24 0E            [12] 1245 	add	a,#0x0e
      00036C F5 81            [12] 1246 	mov	sp,a
      00036E AE 82            [24] 1247 	mov	r6, dpl
      000370 AF 83            [24] 1248 	mov	r7, dph
                                   1249 ;	i2c-bit-bang-oled-0.49-analog-reading.c:184: if (value == 0) {
      000372 EE               [12] 1250 	mov	a,r6
      000373 4F               [12] 1251 	orl	a,r7
      000374 70 0C            [24] 1252 	jnz	00108$
                                   1253 ;	i2c-bit-bang-oled-0.49-analog-reading.c:185: buf[i++] = '0';
      000376 E5 10            [12] 1254 	mov	a,_bp
      000378 24 03            [12] 1255 	add	a,#0x03
      00037A F9               [12] 1256 	mov	r1,a
      00037B 7D 01            [12] 1257 	mov	r5,#0x01
      00037D 77 30            [12] 1258 	mov	@r1,#0x30
      00037F 02 03 FF         [24] 1259 	ljmp	00109$
      000382                       1260 00108$:
                                   1261 ;	i2c-bit-bang-oled-0.49-analog-reading.c:187: uint16_t temp = value;
                                   1262 ;	i2c-bit-bang-oled-0.49-analog-reading.c:191: while (temp > 0) {
      000382 E5 10            [12] 1263 	mov	a,_bp
      000384 24 09            [12] 1264 	add	a,#0x09
      000386 FC               [12] 1265 	mov	r4,a
      000387 7D 00            [12] 1266 	mov	r5,#0x00
      000389                       1267 00101$:
      000389 EE               [12] 1268 	mov	a,r6
      00038A 4F               [12] 1269 	orl	a,r7
      00038B 60 54            [24] 1270 	jz	00120$
                                   1271 ;	i2c-bit-bang-oled-0.49-analog-reading.c:192: rev[j++] = (temp % 10) + '0';
      00038D ED               [12] 1272 	mov	a,r5
      00038E 2C               [12] 1273 	add	a, r4
      00038F F9               [12] 1274 	mov	r1,a
      000390 0D               [12] 1275 	inc	r5
      000391 C0 04            [24] 1276 	push	ar4
      000393 A8 10            [24] 1277 	mov	r0,_bp
      000395 08               [12] 1278 	inc	r0
      000396 A6 06            [24] 1279 	mov	@r0,ar6
      000398 08               [12] 1280 	inc	r0
      000399 A6 07            [24] 1281 	mov	@r0,ar7
      00039B C0 05            [24] 1282 	push	ar5
      00039D C0 01            [24] 1283 	push	ar1
      00039F 74 0A            [12] 1284 	mov	a,#0x0a
      0003A1 C0 E0            [24] 1285 	push	acc
      0003A3 E4               [12] 1286 	clr	a
      0003A4 C0 E0            [24] 1287 	push	acc
      0003A6 A8 10            [24] 1288 	mov	r0,_bp
      0003A8 08               [12] 1289 	inc	r0
      0003A9 86 82            [24] 1290 	mov	dpl, @r0
      0003AB 08               [12] 1291 	inc	r0
      0003AC 86 83            [24] 1292 	mov	dph, @r0
      0003AE 12 0C 5A         [24] 1293 	lcall	__moduint
      0003B1 AB 82            [24] 1294 	mov	r3, dpl
      0003B3 15 81            [12] 1295 	dec	sp
      0003B5 15 81            [12] 1296 	dec	sp
      0003B7 D0 01            [24] 1297 	pop	ar1
      0003B9 74 30            [12] 1298 	mov	a,#0x30
      0003BB 2B               [12] 1299 	add	a, r3
      0003BC F7               [12] 1300 	mov	@r1,a
                                   1301 ;	i2c-bit-bang-oled-0.49-analog-reading.c:193: temp /= 10;
      0003BD 74 0A            [12] 1302 	mov	a,#0x0a
      0003BF C0 E0            [24] 1303 	push	acc
      0003C1 E4               [12] 1304 	clr	a
      0003C2 C0 E0            [24] 1305 	push	acc
      0003C4 A8 10            [24] 1306 	mov	r0,_bp
      0003C6 08               [12] 1307 	inc	r0
      0003C7 86 82            [24] 1308 	mov	dpl, @r0
      0003C9 08               [12] 1309 	inc	r0
      0003CA 86 83            [24] 1310 	mov	dph, @r0
      0003CC 12 0A D8         [24] 1311 	lcall	__divuint
      0003CF AB 82            [24] 1312 	mov	r3, dpl
      0003D1 AC 83            [24] 1313 	mov	r4, dph
      0003D3 15 81            [12] 1314 	dec	sp
      0003D5 15 81            [12] 1315 	dec	sp
      0003D7 D0 05            [24] 1316 	pop	ar5
      0003D9 8B 06            [24] 1317 	mov	ar6,r3
      0003DB 8C 07            [24] 1318 	mov	ar7,r4
      0003DD D0 04            [24] 1319 	pop	ar4
                                   1320 ;	i2c-bit-bang-oled-0.49-analog-reading.c:195: while (j > 0) buf[i++] = rev[--j];
      0003DF 80 A8            [24] 1321 	sjmp	00101$
      0003E1                       1322 00120$:
      0003E1 E5 10            [12] 1323 	mov	a,_bp
      0003E3 24 03            [12] 1324 	add	a,#0x03
      0003E5 FF               [12] 1325 	mov	r7,a
      0003E6 8C 06            [24] 1326 	mov	ar6,r4
      0003E8 7C 00            [12] 1327 	mov	r4,#0x00
      0003EA 8D 03            [24] 1328 	mov	ar3,r5
      0003EC                       1329 00104$:
      0003EC EB               [12] 1330 	mov	a,r3
      0003ED 60 0E            [24] 1331 	jz	00124$
      0003EF EC               [12] 1332 	mov	a,r4
      0003F0 2F               [12] 1333 	add	a, r7
      0003F1 F9               [12] 1334 	mov	r1,a
      0003F2 0C               [12] 1335 	inc	r4
      0003F3 1B               [12] 1336 	dec	r3
      0003F4 EB               [12] 1337 	mov	a,r3
      0003F5 2E               [12] 1338 	add	a, r6
      0003F6 F8               [12] 1339 	mov	r0,a
      0003F7 86 02            [24] 1340 	mov	ar2,@r0
      0003F9 A7 02            [24] 1341 	mov	@r1,ar2
      0003FB 80 EF            [24] 1342 	sjmp	00104$
      0003FD                       1343 00124$:
      0003FD 8C 05            [24] 1344 	mov	ar5,r4
      0003FF                       1345 00109$:
                                   1346 ;	i2c-bit-bang-oled-0.49-analog-reading.c:197: buf[i] = '\0';
      0003FF E5 10            [12] 1347 	mov	a,_bp
      000401 24 03            [12] 1348 	add	a,#0x03
      000403 FF               [12] 1349 	mov	r7,a
      000404 2D               [12] 1350 	add	a,r5
      000405 F8               [12] 1351 	mov	r0,a
      000406 76 00            [12] 1352 	mov	@r0,#0x00
                                   1353 ;	i2c-bit-bang-oled-0.49-analog-reading.c:199: for (uint8_t k = 0; k < i; k++) {
      000408 7E 00            [12] 1354 	mov	r6,#0x00
      00040A                       1355 00112$:
      00040A C3               [12] 1356 	clr	c
      00040B EE               [12] 1357 	mov	a,r6
      00040C 9D               [12] 1358 	subb	a,r5
      00040D 50 17            [24] 1359 	jnc	00114$
                                   1360 ;	i2c-bit-bang-oled-0.49-analog-reading.c:200: oled_draw_char(buf[k]);
      00040F EE               [12] 1361 	mov	a,r6
      000410 2F               [12] 1362 	add	a, r7
      000411 F9               [12] 1363 	mov	r1,a
      000412 87 82            [24] 1364 	mov	dpl,@r1
      000414 C0 07            [24] 1365 	push	ar7
      000416 C0 06            [24] 1366 	push	ar6
      000418 C0 05            [24] 1367 	push	ar5
      00041A 12 03 05         [24] 1368 	lcall	_oled_draw_char
      00041D D0 05            [24] 1369 	pop	ar5
      00041F D0 06            [24] 1370 	pop	ar6
      000421 D0 07            [24] 1371 	pop	ar7
                                   1372 ;	i2c-bit-bang-oled-0.49-analog-reading.c:199: for (uint8_t k = 0; k < i; k++) {
      000423 0E               [12] 1373 	inc	r6
      000424 80 E4            [24] 1374 	sjmp	00112$
      000426                       1375 00114$:
                                   1376 ;	i2c-bit-bang-oled-0.49-analog-reading.c:202: }
      000426 85 10 81         [24] 1377 	mov	sp,_bp
      000429 D0 10            [24] 1378 	pop	_bp
      00042B 22               [24] 1379 	ret
                                   1380 ;------------------------------------------------------------
                                   1381 ;Allocation info for local variables in function 'timer0_ISR'
                                   1382 ;------------------------------------------------------------
                                   1383 ;	i2c-bit-bang-oled-0.49-analog-reading.c:205: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function timer0_ISR
                                   1386 ;	-----------------------------------------
      00042C                       1387 _timer0_ISR:
      00042C C0 E0            [24] 1388 	push	acc
      00042E C0 07            [24] 1389 	push	ar7
      000430 C0 06            [24] 1390 	push	ar6
      000432 C0 D0            [24] 1391 	push	psw
      000434 75 D0 00         [24] 1392 	mov	psw,#0x00
                                   1393 ;	i2c-bit-bang-oled-0.49-analog-reading.c:206: TF0 = 0;
                                   1394 ;	assignBit
      000437 C2 8D            [12] 1395 	clr	_TF0
                                   1396 ;	i2c-bit-bang-oled-0.49-analog-reading.c:207: TH0 = 0xB1;
      000439 75 8C B1         [24] 1397 	mov	_TH0,#0xb1
                                   1398 ;	i2c-bit-bang-oled-0.49-analog-reading.c:208: TL0 = 0xE0;
      00043C 75 8A E0         [24] 1399 	mov	_TL0,#0xe0
                                   1400 ;	i2c-bit-bang-oled-0.49-analog-reading.c:209: tick_10ms++;
      00043F AE 08            [24] 1401 	mov	r6,_tick_10ms
      000441 AF 09            [24] 1402 	mov	r7,(_tick_10ms + 1)
      000443 74 01            [12] 1403 	mov	a,#0x01
      000445 2E               [12] 1404 	add	a, r6
      000446 F5 08            [12] 1405 	mov	_tick_10ms,a
      000448 E4               [12] 1406 	clr	a
      000449 3F               [12] 1407 	addc	a, r7
      00044A F5 09            [12] 1408 	mov	(_tick_10ms + 1),a
                                   1409 ;	i2c-bit-bang-oled-0.49-analog-reading.c:210: serialTime++;
      00044C 05 0A            [12] 1410 	inc	_serialTime
      00044E E4               [12] 1411 	clr	a
      00044F B5 0A 02         [24] 1412 	cjne	a,_serialTime,00103$
      000452 05 0B            [12] 1413 	inc	(_serialTime + 1)
      000454                       1414 00103$:
                                   1415 ;	i2c-bit-bang-oled-0.49-analog-reading.c:211: }
      000454 D0 D0            [24] 1416 	pop	psw
      000456 D0 06            [24] 1417 	pop	ar6
      000458 D0 07            [24] 1418 	pop	ar7
      00045A D0 E0            [24] 1419 	pop	acc
      00045C 32               [24] 1420 	reti
                                   1421 ;	eliminated unneeded push/pop dpl
                                   1422 ;	eliminated unneeded push/pop dph
                                   1423 ;	eliminated unneeded push/pop b
                                   1424 ;------------------------------------------------------------
                                   1425 ;Allocation info for local variables in function 'timer0_init'
                                   1426 ;------------------------------------------------------------
                                   1427 ;	i2c-bit-bang-oled-0.49-analog-reading.c:213: void timer0_init(void) {
                                   1428 ;	-----------------------------------------
                                   1429 ;	 function timer0_init
                                   1430 ;	-----------------------------------------
      00045D                       1431 _timer0_init:
                                   1432 ;	i2c-bit-bang-oled-0.49-analog-reading.c:214: TMOD &= ~0x03;
      00045D 53 89 FC         [24] 1433 	anl	_TMOD,#0xfc
                                   1434 ;	i2c-bit-bang-oled-0.49-analog-reading.c:215: TMOD |=  0x01;
      000460 43 89 01         [24] 1435 	orl	_TMOD,#0x01
                                   1436 ;	i2c-bit-bang-oled-0.49-analog-reading.c:217: TH0 = 0xB1;
      000463 75 8C B1         [24] 1437 	mov	_TH0,#0xb1
                                   1438 ;	i2c-bit-bang-oled-0.49-analog-reading.c:218: TL0 = 0xE0;
      000466 75 8A E0         [24] 1439 	mov	_TL0,#0xe0
                                   1440 ;	i2c-bit-bang-oled-0.49-analog-reading.c:220: ET0 = 1;
                                   1441 ;	assignBit
      000469 D2 A9            [12] 1442 	setb	_ET0
                                   1443 ;	i2c-bit-bang-oled-0.49-analog-reading.c:221: TR0 = 1;
                                   1444 ;	assignBit
      00046B D2 8C            [12] 1445 	setb	_TR0
                                   1446 ;	i2c-bit-bang-oled-0.49-analog-reading.c:222: EA = 1;
                                   1447 ;	assignBit
      00046D D2 AF            [12] 1448 	setb	_EA
                                   1449 ;	i2c-bit-bang-oled-0.49-analog-reading.c:223: }
      00046F 22               [24] 1450 	ret
                                   1451 ;------------------------------------------------------------
                                   1452 ;Allocation info for local variables in function 'clock_init'
                                   1453 ;------------------------------------------------------------
                                   1454 ;	i2c-bit-bang-oled-0.49-analog-reading.c:226: void clock_init(void) {
                                   1455 ;	-----------------------------------------
                                   1456 ;	 function clock_init
                                   1457 ;	-----------------------------------------
      000470                       1458 _clock_init:
                                   1459 ;	i2c-bit-bang-oled-0.49-analog-reading.c:227: SAFE_MOD = 0x55;
      000470 75 A1 55         [24] 1460 	mov	_SAFE_MOD,#0x55
                                   1461 ;	i2c-bit-bang-oled-0.49-analog-reading.c:228: SAFE_MOD = 0xAA;
      000473 75 A1 AA         [24] 1462 	mov	_SAFE_MOD,#0xaa
                                   1463 ;	i2c-bit-bang-oled-0.49-analog-reading.c:229: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      000476 74 F8            [12] 1464 	mov	a,#0xf8
      000478 55 B9            [12] 1465 	anl	a,_CLOCK_CFG
      00047A 44 06            [12] 1466 	orl	a,#0x06
      00047C F5 B9            [12] 1467 	mov	_CLOCK_CFG,a
                                   1468 ;	i2c-bit-bang-oled-0.49-analog-reading.c:230: SAFE_MOD = 0x00;
      00047E 75 A1 00         [24] 1469 	mov	_SAFE_MOD,#0x00
                                   1470 ;	i2c-bit-bang-oled-0.49-analog-reading.c:231: }
      000481 22               [24] 1471 	ret
                                   1472 ;------------------------------------------------------------
                                   1473 ;Allocation info for local variables in function 'analogReading'
                                   1474 ;------------------------------------------------------------
                                   1475 ;	i2c-bit-bang-oled-0.49-analog-reading.c:234: uint8_t analogReading(void) {
                                   1476 ;	-----------------------------------------
                                   1477 ;	 function analogReading
                                   1478 ;	-----------------------------------------
      000482                       1479 _analogReading:
                                   1480 ;	i2c-bit-bang-oled-0.49-analog-reading.c:235: ADC_START = 1;
                                   1481 ;	assignBit
      000482 D2 84            [12] 1482 	setb	_ADC_START
                                   1483 ;	i2c-bit-bang-oled-0.49-analog-reading.c:236: while (ADC_START);
      000484                       1484 00101$:
      000484 20 84 FD         [24] 1485 	jb	_ADC_START,00101$
                                   1486 ;	i2c-bit-bang-oled-0.49-analog-reading.c:237: ADC_IF = 0;
                                   1487 ;	assignBit
      000487 C2 85            [12] 1488 	clr	_ADC_IF
                                   1489 ;	i2c-bit-bang-oled-0.49-analog-reading.c:238: return ADC_DATA;
      000489 85 9F 82         [24] 1490 	mov	dpl, _ADC_DATA
                                   1491 ;	i2c-bit-bang-oled-0.49-analog-reading.c:239: }
      00048C 22               [24] 1492 	ret
                                   1493 ;------------------------------------------------------------
                                   1494 ;Allocation info for local variables in function 'rawToMillivolts'
                                   1495 ;------------------------------------------------------------
                                   1496 ;raw           Allocated to registers r7 
                                   1497 ;------------------------------------------------------------
                                   1498 ;	i2c-bit-bang-oled-0.49-analog-reading.c:241: uint16_t rawToMillivolts(uint8_t raw) {
                                   1499 ;	-----------------------------------------
                                   1500 ;	 function rawToMillivolts
                                   1501 ;	-----------------------------------------
      00048D                       1502 _rawToMillivolts:
      00048D AF 82            [24] 1503 	mov	r7, dpl
                                   1504 ;	i2c-bit-bang-oled-0.49-analog-reading.c:242: if (raw < 46) return 0;
      00048F BF 2E 00         [24] 1505 	cjne	r7,#0x2e,00111$
      000492                       1506 00111$:
      000492 50 04            [24] 1507 	jnc	00102$
      000494 90 00 00         [24] 1508 	mov	dptr,#0x0000
      000497 22               [24] 1509 	ret
      000498                       1510 00102$:
                                   1511 ;	i2c-bit-bang-oled-0.49-analog-reading.c:243: return 300 + ((uint32_t)(raw - 46) * 3000) / 117;
      000498 EF               [12] 1512 	mov	a,r7
      000499 24 D2            [12] 1513 	add	a,#0xd2
      00049B FF               [12] 1514 	mov	r7,a
      00049C 7E 00            [12] 1515 	mov	r6,#0x00
      00049E 7D 00            [12] 1516 	mov	r5,#0x00
      0004A0 7C 00            [12] 1517 	mov	r4,#0x00
      0004A2 C0 07            [24] 1518 	push	ar7
      0004A4 C0 06            [24] 1519 	push	ar6
      0004A6 C0 05            [24] 1520 	push	ar5
      0004A8 C0 04            [24] 1521 	push	ar4
      0004AA 90 0B B8         [24] 1522 	mov	dptr,#0x0bb8
      0004AD E4               [12] 1523 	clr	a
      0004AE F5 F0            [12] 1524 	mov	b,a
      0004B0 12 0B EA         [24] 1525 	lcall	__mullong
      0004B3 AC 82            [24] 1526 	mov	r4, dpl
      0004B5 AD 83            [24] 1527 	mov	r5, dph
      0004B7 AE F0            [24] 1528 	mov	r6, b
      0004B9 FF               [12] 1529 	mov	r7, a
      0004BA E5 81            [12] 1530 	mov	a,sp
      0004BC 24 FC            [12] 1531 	add	a,#0xfc
      0004BE F5 81            [12] 1532 	mov	sp,a
      0004C0 74 75            [12] 1533 	mov	a,#0x75
      0004C2 C0 E0            [24] 1534 	push	acc
      0004C4 E4               [12] 1535 	clr	a
      0004C5 C0 E0            [24] 1536 	push	acc
      0004C7 C0 E0            [24] 1537 	push	acc
      0004C9 C0 E0            [24] 1538 	push	acc
      0004CB 8C 82            [24] 1539 	mov	dpl, r4
      0004CD 8D 83            [24] 1540 	mov	dph, r5
      0004CF 8E F0            [24] 1541 	mov	b, r6
      0004D1 EF               [12] 1542 	mov	a, r7
      0004D2 12 0B 24         [24] 1543 	lcall	__divulong
      0004D5 AC 82            [24] 1544 	mov	r4, dpl
      0004D7 AD 83            [24] 1545 	mov	r5, dph
      0004D9 E5 81            [12] 1546 	mov	a,sp
      0004DB 24 FC            [12] 1547 	add	a,#0xfc
      0004DD F5 81            [12] 1548 	mov	sp,a
      0004DF 74 2C            [12] 1549 	mov	a,#0x2c
      0004E1 2C               [12] 1550 	add	a, r4
      0004E2 F5 82            [12] 1551 	mov	dpl,a
      0004E4 74 01            [12] 1552 	mov	a,#0x01
      0004E6 3D               [12] 1553 	addc	a, r5
      0004E7 F5 83            [12] 1554 	mov	dph,a
                                   1555 ;	i2c-bit-bang-oled-0.49-analog-reading.c:244: }
      0004E9 22               [24] 1556 	ret
                                   1557 ;------------------------------------------------------------
                                   1558 ;Allocation info for local variables in function 'main'
                                   1559 ;------------------------------------------------------------
                                   1560 ;i             Allocated to registers r7 
                                   1561 ;------------------------------------------------------------
                                   1562 ;	i2c-bit-bang-oled-0.49-analog-reading.c:247: void main(void) {
                                   1563 ;	-----------------------------------------
                                   1564 ;	 function main
                                   1565 ;	-----------------------------------------
      0004EA                       1566 _main:
                                   1567 ;	i2c-bit-bang-oled-0.49-analog-reading.c:248: clock_init();
      0004EA 12 04 70         [24] 1568 	lcall	_clock_init
                                   1569 ;	i2c-bit-bang-oled-0.49-analog-reading.c:249: timer0_init();
      0004ED 12 04 5D         [24] 1570 	lcall	_timer0_init
                                   1571 ;	i2c-bit-bang-oled-0.49-analog-reading.c:252: SAFE_MOD = 0x55;
      0004F0 75 A1 55         [24] 1572 	mov	_SAFE_MOD,#0x55
                                   1573 ;	i2c-bit-bang-oled-0.49-analog-reading.c:253: SAFE_MOD = 0xAA;
      0004F3 75 A1 AA         [24] 1574 	mov	_SAFE_MOD,#0xaa
                                   1575 ;	i2c-bit-bang-oled-0.49-analog-reading.c:254: GLOBAL_CFG &= ~bWDOG_EN;
      0004F6 53 B1 FE         [24] 1576 	anl	_GLOBAL_CFG,#0xfe
                                   1577 ;	i2c-bit-bang-oled-0.49-analog-reading.c:255: SAFE_MOD = 0x00;
      0004F9 75 A1 00         [24] 1578 	mov	_SAFE_MOD,#0x00
                                   1579 ;	i2c-bit-bang-oled-0.49-analog-reading.c:258: P1_MOD_OC |= (1 << SDA_PIN) | (1 << SCL_PIN);
      0004FC 43 92 03         [24] 1580 	orl	_P1_MOD_OC,#0x03
                                   1581 ;	i2c-bit-bang-oled-0.49-analog-reading.c:259: P1_DIR_PU |= (1 << SDA_PIN) | (1 << SCL_PIN);
      0004FF 43 93 03         [24] 1582 	orl	_P1_DIR_PU,#0x03
                                   1583 ;	i2c-bit-bang-oled-0.49-analog-reading.c:261: SDA_RELEASE();
      000502 43 90 01         [24] 1584 	orl	_P1,#0x01
                                   1585 ;	i2c-bit-bang-oled-0.49-analog-reading.c:262: SCL_RELEASE();
      000505 43 90 02         [24] 1586 	orl	_P1,#0x02
                                   1587 ;	i2c-bit-bang-oled-0.49-analog-reading.c:265: ADCInit(0);
      000508 75 82 00         [24] 1588 	mov	dpl, #0x00
      00050B 12 05 70         [24] 1589 	lcall	_ADCInit
                                   1590 ;	i2c-bit-bang-oled-0.49-analog-reading.c:266: ADC_ChannelSelect(2);
      00050E 75 82 02         [24] 1591 	mov	dpl, #0x02
      000511 12 05 7D         [24] 1592 	lcall	_ADC_ChannelSelect
                                   1593 ;	i2c-bit-bang-oled-0.49-analog-reading.c:268: Serial_begin();
      000514 12 08 1E         [24] 1594 	lcall	_Serial_begin
                                   1595 ;	i2c-bit-bang-oled-0.49-analog-reading.c:270: oled_init();
      000517 12 02 5A         [24] 1596 	lcall	_oled_init
                                   1597 ;	i2c-bit-bang-oled-0.49-analog-reading.c:271: oled_set_cursor(0, 0);
      00051A E4               [12] 1598 	clr	a
      00051B C0 E0            [24] 1599 	push	acc
      00051D 75 82 00         [24] 1600 	mov	dpl, #0x00
      000520 12 01 80         [24] 1601 	lcall	_oled_set_cursor
      000523 15 81            [12] 1602 	dec	sp
                                   1603 ;	i2c-bit-bang-oled-0.49-analog-reading.c:273: for (uint8_t i = 0; i < 128; i++) {
      000525 7F 00            [12] 1604 	mov	r7,#0x00
      000527                       1605 00108$:
      000527 BF 80 00         [24] 1606 	cjne	r7,#0x80,00137$
      00052A                       1607 00137$:
      00052A 50 0D            [24] 1608 	jnc	00105$
                                   1609 ;	i2c-bit-bang-oled-0.49-analog-reading.c:274: oled_data(0xFF);
      00052C 75 82 FF         [24] 1610 	mov	dpl, #0xff
      00052F C0 07            [24] 1611 	push	ar7
      000531 12 01 63         [24] 1612 	lcall	_oled_data
      000534 D0 07            [24] 1613 	pop	ar7
                                   1614 ;	i2c-bit-bang-oled-0.49-analog-reading.c:273: for (uint8_t i = 0; i < 128; i++) {
      000536 0F               [12] 1615 	inc	r7
                                   1616 ;	i2c-bit-bang-oled-0.49-analog-reading.c:276: while (1) {
      000537 80 EE            [24] 1617 	sjmp	00108$
      000539                       1618 00105$:
                                   1619 ;	i2c-bit-bang-oled-0.49-analog-reading.c:278: if(serialTime > 100) {   // every ~1 second
      000539 C3               [12] 1620 	clr	c
      00053A 74 64            [12] 1621 	mov	a,#0x64
      00053C 95 0A            [12] 1622 	subb	a,_serialTime
      00053E E4               [12] 1623 	clr	a
      00053F 95 0B            [12] 1624 	subb	a,(_serialTime + 1)
      000541 50 F6            [24] 1625 	jnc	00105$
                                   1626 ;	i2c-bit-bang-oled-0.49-analog-reading.c:279: serialTime = 0;
      000543 E4               [12] 1627 	clr	a
      000544 F5 0A            [12] 1628 	mov	_serialTime,a
      000546 F5 0B            [12] 1629 	mov	(_serialTime + 1),a
                                   1630 ;	i2c-bit-bang-oled-0.49-analog-reading.c:281: rawAnalog = analogReading();
      000548 12 04 82         [24] 1631 	lcall	_analogReading
                                   1632 ;	i2c-bit-bang-oled-0.49-analog-reading.c:282: finalAnalog = rawToMillivolts(rawAnalog);
      00054B 85 82 0C         [24] 1633 	mov  _rawAnalog,dpl
      00054E 12 04 8D         [24] 1634 	lcall	_rawToMillivolts
                                   1635 ;	i2c-bit-bang-oled-0.49-analog-reading.c:284: Serial_println_uint(finalAnalog);
      000551 85 82 0D         [24] 1636 	mov	_finalAnalog,dpl
      000554 85 83 0E         [24] 1637 	mov  (_finalAnalog + 1),dph
      000557 12 0A 6D         [24] 1638 	lcall	_Serial_println_uint
                                   1639 ;	i2c-bit-bang-oled-0.49-analog-reading.c:286: oled_set_cursor(0, 0);
      00055A E4               [12] 1640 	clr	a
      00055B C0 E0            [24] 1641 	push	acc
      00055D 75 82 00         [24] 1642 	mov	dpl, #0x00
      000560 12 01 80         [24] 1643 	lcall	_oled_set_cursor
      000563 15 81            [12] 1644 	dec	sp
                                   1645 ;	i2c-bit-bang-oled-0.49-analog-reading.c:287: oled_print_uint(finalAnalog);
      000565 85 0D 82         [24] 1646 	mov	dpl, _finalAnalog
      000568 85 0E 83         [24] 1647 	mov	dph, (_finalAnalog + 1)
      00056B 12 03 64         [24] 1648 	lcall	_oled_print_uint
                                   1649 ;	i2c-bit-bang-oled-0.49-analog-reading.c:290: }
      00056E 80 C9            [24] 1650 	sjmp	00105$
                                   1651 	.area CSEG    (CODE)
                                   1652 	.area CONST   (CODE)
                                   1653 	.area CONST   (CODE)
      000CE0                       1654 _font5x7:
      000CE0 3E                    1655 	.db #0x3e	; 62
      000CE1 51                    1656 	.db #0x51	; 81	'Q'
      000CE2 49                    1657 	.db #0x49	; 73	'I'
      000CE3 45                    1658 	.db #0x45	; 69	'E'
      000CE4 3E                    1659 	.db #0x3e	; 62
      000CE5 00                    1660 	.db #0x00	; 0
      000CE6 42                    1661 	.db #0x42	; 66	'B'
      000CE7 7F                    1662 	.db #0x7f	; 127
      000CE8 40                    1663 	.db #0x40	; 64
      000CE9 00                    1664 	.db #0x00	; 0
      000CEA 62                    1665 	.db #0x62	; 98	'b'
      000CEB 51                    1666 	.db #0x51	; 81	'Q'
      000CEC 49                    1667 	.db #0x49	; 73	'I'
      000CED 49                    1668 	.db #0x49	; 73	'I'
      000CEE 46                    1669 	.db #0x46	; 70	'F'
      000CEF 22                    1670 	.db #0x22	; 34
      000CF0 49                    1671 	.db #0x49	; 73	'I'
      000CF1 49                    1672 	.db #0x49	; 73	'I'
      000CF2 49                    1673 	.db #0x49	; 73	'I'
      000CF3 36                    1674 	.db #0x36	; 54	'6'
      000CF4 18                    1675 	.db #0x18	; 24
      000CF5 14                    1676 	.db #0x14	; 20
      000CF6 12                    1677 	.db #0x12	; 18
      000CF7 7F                    1678 	.db #0x7f	; 127
      000CF8 10                    1679 	.db #0x10	; 16
      000CF9 2F                    1680 	.db #0x2f	; 47
      000CFA 49                    1681 	.db #0x49	; 73	'I'
      000CFB 49                    1682 	.db #0x49	; 73	'I'
      000CFC 49                    1683 	.db #0x49	; 73	'I'
      000CFD 31                    1684 	.db #0x31	; 49	'1'
      000CFE 3E                    1685 	.db #0x3e	; 62
      000CFF 49                    1686 	.db #0x49	; 73	'I'
      000D00 49                    1687 	.db #0x49	; 73	'I'
      000D01 49                    1688 	.db #0x49	; 73	'I'
      000D02 32                    1689 	.db #0x32	; 50	'2'
      000D03 01                    1690 	.db #0x01	; 1
      000D04 71                    1691 	.db #0x71	; 113	'q'
      000D05 09                    1692 	.db #0x09	; 9
      000D06 05                    1693 	.db #0x05	; 5
      000D07 03                    1694 	.db #0x03	; 3
      000D08 36                    1695 	.db #0x36	; 54	'6'
      000D09 49                    1696 	.db #0x49	; 73	'I'
      000D0A 49                    1697 	.db #0x49	; 73	'I'
      000D0B 49                    1698 	.db #0x49	; 73	'I'
      000D0C 36                    1699 	.db #0x36	; 54	'6'
      000D0D 26                    1700 	.db #0x26	; 38
      000D0E 49                    1701 	.db #0x49	; 73	'I'
      000D0F 49                    1702 	.db #0x49	; 73	'I'
      000D10 49                    1703 	.db #0x49	; 73	'I'
      000D11 3E                    1704 	.db #0x3e	; 62
                                   1705 	.area CSEG    (CODE)
                                   1706 	.area XINIT   (CODE)
                                   1707 	.area CABS    (ABS,CODE)
