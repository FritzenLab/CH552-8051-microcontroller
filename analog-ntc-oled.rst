                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module analog_ntc_oled
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _font_dot
                                     12 	.globl _font_minus
                                     13 	.globl _font_V
                                     14 	.globl _font_m
                                     15 	.globl _font5x7
                                     16 	.globl _ntc_adc_table
                                     17 	.globl _main
                                     18 	.globl _blink_led
                                     19 	.globl _rawToMillivolts
                                     20 	.globl _analogReading
                                     21 	.globl _clock_init
                                     22 	.globl _timer0_init
                                     23 	.globl _timer0_ISR
                                     24 	.globl _readTemperatureX2
                                     25 	.globl _oled_print_millivolts
                                     26 	.globl _oled_print_uint
                                     27 	.globl _get_text_width
                                     28 	.globl _oled_draw_char
                                     29 	.globl _oled_init
                                     30 	.globl _oled_clear
                                     31 	.globl _oled_write_data_stream
                                     32 	.globl _oled_set_cursor
                                     33 	.globl _oled_data
                                     34 	.globl _oled_cmd
                                     35 	.globl _i2c_write_byte
                                     36 	.globl _i2c_stop
                                     37 	.globl _i2c_start
                                     38 	.globl _i2c_delay
                                     39 	.globl _Serial_println_uint
                                     40 	.globl _Serial_print_uint
                                     41 	.globl _Serial_print
                                     42 	.globl _Serial_begin
                                     43 	.globl _ADC_ChannelSelect
                                     44 	.globl _ADCInit
                                     45 	.globl _UIF_BUS_RST
                                     46 	.globl _UIF_DETECT
                                     47 	.globl _UIF_TRANSFER
                                     48 	.globl _UIF_SUSPEND
                                     49 	.globl _UIF_HST_SOF
                                     50 	.globl _UIF_FIFO_OV
                                     51 	.globl _U_SIE_FREE
                                     52 	.globl _U_TOG_OK
                                     53 	.globl _U_IS_NAK
                                     54 	.globl _ADC_CHAN0
                                     55 	.globl _ADC_CHAN1
                                     56 	.globl _CMP_CHAN
                                     57 	.globl _ADC_START
                                     58 	.globl _ADC_IF
                                     59 	.globl _CMP_IF
                                     60 	.globl _CMPO
                                     61 	.globl _U1RI
                                     62 	.globl _U1TI
                                     63 	.globl _U1RB8
                                     64 	.globl _U1TB8
                                     65 	.globl _U1REN
                                     66 	.globl _U1SMOD
                                     67 	.globl _U1SM0
                                     68 	.globl _S0_R_FIFO
                                     69 	.globl _S0_T_FIFO
                                     70 	.globl _S0_FREE
                                     71 	.globl _S0_IF_BYTE
                                     72 	.globl _S0_IF_FIRST
                                     73 	.globl _S0_IF_OV
                                     74 	.globl _S0_FST_ACT
                                     75 	.globl _CP_RL2
                                     76 	.globl _C_T2
                                     77 	.globl _TR2
                                     78 	.globl _EXEN2
                                     79 	.globl _TCLK
                                     80 	.globl _RCLK
                                     81 	.globl _EXF2
                                     82 	.globl _CAP1F
                                     83 	.globl _TF2
                                     84 	.globl _RI
                                     85 	.globl _TI
                                     86 	.globl _RB8
                                     87 	.globl _TB8
                                     88 	.globl _REN
                                     89 	.globl _SM2
                                     90 	.globl _SM1
                                     91 	.globl _SM0
                                     92 	.globl _IT0
                                     93 	.globl _IE0
                                     94 	.globl _IT1
                                     95 	.globl _IE1
                                     96 	.globl _TR0
                                     97 	.globl _TF0
                                     98 	.globl _TR1
                                     99 	.globl _TF1
                                    100 	.globl _RXD
                                    101 	.globl _PWM1_
                                    102 	.globl _TXD
                                    103 	.globl _PWM2_
                                    104 	.globl _AIN3
                                    105 	.globl _VBUS1
                                    106 	.globl _INT0
                                    107 	.globl _TXD1_
                                    108 	.globl _INT1
                                    109 	.globl _T0
                                    110 	.globl _RXD1_
                                    111 	.globl _PWM2
                                    112 	.globl _T1
                                    113 	.globl _UDP
                                    114 	.globl _UDM
                                    115 	.globl _TIN0
                                    116 	.globl _CAP1
                                    117 	.globl _T2
                                    118 	.globl _AIN0
                                    119 	.globl _VBUS2
                                    120 	.globl _TIN1
                                    121 	.globl _CAP2
                                    122 	.globl _T2EX
                                    123 	.globl _RXD_
                                    124 	.globl _TXD_
                                    125 	.globl _AIN1
                                    126 	.globl _UCC1
                                    127 	.globl _TIN2
                                    128 	.globl _SCS
                                    129 	.globl _CAP1_
                                    130 	.globl _T2_
                                    131 	.globl _AIN2
                                    132 	.globl _UCC2
                                    133 	.globl _TIN3
                                    134 	.globl _PWM1
                                    135 	.globl _MOSI
                                    136 	.globl _TIN4
                                    137 	.globl _RXD1
                                    138 	.globl _MISO
                                    139 	.globl _TIN5
                                    140 	.globl _TXD1
                                    141 	.globl _SCK
                                    142 	.globl _IE_SPI0
                                    143 	.globl _IE_TKEY
                                    144 	.globl _IE_USB
                                    145 	.globl _IE_ADC
                                    146 	.globl _IE_UART1
                                    147 	.globl _IE_PWMX
                                    148 	.globl _IE_GPIO
                                    149 	.globl _IE_WDOG
                                    150 	.globl _PX0
                                    151 	.globl _PT0
                                    152 	.globl _PX1
                                    153 	.globl _PT1
                                    154 	.globl _PS
                                    155 	.globl _PT2
                                    156 	.globl _PL_FLAG
                                    157 	.globl _PH_FLAG
                                    158 	.globl _EX0
                                    159 	.globl _ET0
                                    160 	.globl _EX1
                                    161 	.globl _ET1
                                    162 	.globl _ES
                                    163 	.globl _ET2
                                    164 	.globl _E_DIS
                                    165 	.globl _EA
                                    166 	.globl _P
                                    167 	.globl _F1
                                    168 	.globl _OV
                                    169 	.globl _RS0
                                    170 	.globl _RS1
                                    171 	.globl _F0
                                    172 	.globl _AC
                                    173 	.globl _CY
                                    174 	.globl _UEP1_DMA_H
                                    175 	.globl _UEP1_DMA_L
                                    176 	.globl _UEP1_DMA
                                    177 	.globl _UEP0_DMA_H
                                    178 	.globl _UEP0_DMA_L
                                    179 	.globl _UEP0_DMA
                                    180 	.globl _UEP2_3_MOD
                                    181 	.globl _UEP4_1_MOD
                                    182 	.globl _UEP3_DMA_H
                                    183 	.globl _UEP3_DMA_L
                                    184 	.globl _UEP3_DMA
                                    185 	.globl _UEP2_DMA_H
                                    186 	.globl _UEP2_DMA_L
                                    187 	.globl _UEP2_DMA
                                    188 	.globl _USB_DEV_AD
                                    189 	.globl _USB_CTRL
                                    190 	.globl _USB_INT_EN
                                    191 	.globl _UEP4_T_LEN
                                    192 	.globl _UEP4_CTRL
                                    193 	.globl _UEP0_T_LEN
                                    194 	.globl _UEP0_CTRL
                                    195 	.globl _USB_RX_LEN
                                    196 	.globl _USB_MIS_ST
                                    197 	.globl _USB_INT_ST
                                    198 	.globl _USB_INT_FG
                                    199 	.globl _UEP3_T_LEN
                                    200 	.globl _UEP3_CTRL
                                    201 	.globl _UEP2_T_LEN
                                    202 	.globl _UEP2_CTRL
                                    203 	.globl _UEP1_T_LEN
                                    204 	.globl _UEP1_CTRL
                                    205 	.globl _UDEV_CTRL
                                    206 	.globl _USB_C_CTRL
                                    207 	.globl _TKEY_DATH
                                    208 	.globl _TKEY_DATL
                                    209 	.globl _TKEY_DAT
                                    210 	.globl _TKEY_CTRL
                                    211 	.globl _ADC_DATA
                                    212 	.globl _ADC_CFG
                                    213 	.globl _ADC_CTRL
                                    214 	.globl _SBAUD1
                                    215 	.globl _SBUF1
                                    216 	.globl _SCON1
                                    217 	.globl _SPI0_SETUP
                                    218 	.globl _SPI0_CK_SE
                                    219 	.globl _SPI0_CTRL
                                    220 	.globl _SPI0_DATA
                                    221 	.globl _SPI0_STAT
                                    222 	.globl _PWM_CK_SE
                                    223 	.globl _PWM_CTRL
                                    224 	.globl _PWM_DATA1
                                    225 	.globl _PWM_DATA2
                                    226 	.globl _T2CAP1H
                                    227 	.globl _T2CAP1L
                                    228 	.globl _T2CAP1
                                    229 	.globl _TH2
                                    230 	.globl _TL2
                                    231 	.globl _T2COUNT
                                    232 	.globl _RCAP2H
                                    233 	.globl _RCAP2L
                                    234 	.globl _RCAP2
                                    235 	.globl _T2MOD
                                    236 	.globl _T2CON
                                    237 	.globl _SBUF
                                    238 	.globl _SCON
                                    239 	.globl _TH1
                                    240 	.globl _TH0
                                    241 	.globl _TL1
                                    242 	.globl _TL0
                                    243 	.globl _TMOD
                                    244 	.globl _TCON
                                    245 	.globl _XBUS_AUX
                                    246 	.globl _PIN_FUNC
                                    247 	.globl _P3_DIR_PU
                                    248 	.globl _P3_MOD_OC
                                    249 	.globl _P3
                                    250 	.globl _P2
                                    251 	.globl _P1_DIR_PU
                                    252 	.globl _P1_MOD_OC
                                    253 	.globl _P1
                                    254 	.globl _ROM_CTRL
                                    255 	.globl _ROM_DATA_H
                                    256 	.globl _ROM_DATA_L
                                    257 	.globl _ROM_DATA
                                    258 	.globl _ROM_ADDR_H
                                    259 	.globl _ROM_ADDR_L
                                    260 	.globl _ROM_ADDR
                                    261 	.globl _GPIO_IE
                                    262 	.globl _IP_EX
                                    263 	.globl _IE_EX
                                    264 	.globl _IP
                                    265 	.globl _IE
                                    266 	.globl _WDOG_COUNT
                                    267 	.globl _RESET_KEEP
                                    268 	.globl _WAKE_CTRL
                                    269 	.globl _CLOCK_CFG
                                    270 	.globl _PCON
                                    271 	.globl _GLOBAL_CFG
                                    272 	.globl _SAFE_MOD
                                    273 	.globl _DPH
                                    274 	.globl _DPL
                                    275 	.globl _SP
                                    276 	.globl _B
                                    277 	.globl _ACC
                                    278 	.globl _PSW
                                    279 	.globl _ema_initialized
                                    280 	.globl _ema_raw
                                    281 	.globl _finalAnalog
                                    282 	.globl _rawAnalog
                                    283 	.globl _serialTime
                                    284 	.globl _tick_10ms
                                    285 ;--------------------------------------------------------
                                    286 ; special function registers
                                    287 ;--------------------------------------------------------
                                    288 	.area RSEG    (ABS,DATA)
      000000                        289 	.org 0x0000
                           0000D0   290 _PSW	=	0x00d0
                           0000E0   291 _ACC	=	0x00e0
                           0000F0   292 _B	=	0x00f0
                           000081   293 _SP	=	0x0081
                           000082   294 _DPL	=	0x0082
                           000083   295 _DPH	=	0x0083
                           0000A1   296 _SAFE_MOD	=	0x00a1
                           0000B1   297 _GLOBAL_CFG	=	0x00b1
                           000087   298 _PCON	=	0x0087
                           0000B9   299 _CLOCK_CFG	=	0x00b9
                           0000A9   300 _WAKE_CTRL	=	0x00a9
                           0000FE   301 _RESET_KEEP	=	0x00fe
                           0000FF   302 _WDOG_COUNT	=	0x00ff
                           0000A8   303 _IE	=	0x00a8
                           0000B8   304 _IP	=	0x00b8
                           0000E8   305 _IE_EX	=	0x00e8
                           0000E9   306 _IP_EX	=	0x00e9
                           0000C7   307 _GPIO_IE	=	0x00c7
                           008584   308 _ROM_ADDR	=	0x8584
                           000084   309 _ROM_ADDR_L	=	0x0084
                           000085   310 _ROM_ADDR_H	=	0x0085
                           008F8E   311 _ROM_DATA	=	0x8f8e
                           00008E   312 _ROM_DATA_L	=	0x008e
                           00008F   313 _ROM_DATA_H	=	0x008f
                           000086   314 _ROM_CTRL	=	0x0086
                           000090   315 _P1	=	0x0090
                           000092   316 _P1_MOD_OC	=	0x0092
                           000093   317 _P1_DIR_PU	=	0x0093
                           0000A0   318 _P2	=	0x00a0
                           0000B0   319 _P3	=	0x00b0
                           000096   320 _P3_MOD_OC	=	0x0096
                           000097   321 _P3_DIR_PU	=	0x0097
                           0000C6   322 _PIN_FUNC	=	0x00c6
                           0000A2   323 _XBUS_AUX	=	0x00a2
                           000088   324 _TCON	=	0x0088
                           000089   325 _TMOD	=	0x0089
                           00008A   326 _TL0	=	0x008a
                           00008B   327 _TL1	=	0x008b
                           00008C   328 _TH0	=	0x008c
                           00008D   329 _TH1	=	0x008d
                           000098   330 _SCON	=	0x0098
                           000099   331 _SBUF	=	0x0099
                           0000C8   332 _T2CON	=	0x00c8
                           0000C9   333 _T2MOD	=	0x00c9
                           00CBCA   334 _RCAP2	=	0xcbca
                           0000CA   335 _RCAP2L	=	0x00ca
                           0000CB   336 _RCAP2H	=	0x00cb
                           00CDCC   337 _T2COUNT	=	0xcdcc
                           0000CC   338 _TL2	=	0x00cc
                           0000CD   339 _TH2	=	0x00cd
                           00CFCE   340 _T2CAP1	=	0xcfce
                           0000CE   341 _T2CAP1L	=	0x00ce
                           0000CF   342 _T2CAP1H	=	0x00cf
                           00009B   343 _PWM_DATA2	=	0x009b
                           00009C   344 _PWM_DATA1	=	0x009c
                           00009D   345 _PWM_CTRL	=	0x009d
                           00009E   346 _PWM_CK_SE	=	0x009e
                           0000F8   347 _SPI0_STAT	=	0x00f8
                           0000F9   348 _SPI0_DATA	=	0x00f9
                           0000FA   349 _SPI0_CTRL	=	0x00fa
                           0000FB   350 _SPI0_CK_SE	=	0x00fb
                           0000FC   351 _SPI0_SETUP	=	0x00fc
                           0000C0   352 _SCON1	=	0x00c0
                           0000C1   353 _SBUF1	=	0x00c1
                           0000C2   354 _SBAUD1	=	0x00c2
                           000080   355 _ADC_CTRL	=	0x0080
                           00009A   356 _ADC_CFG	=	0x009a
                           00009F   357 _ADC_DATA	=	0x009f
                           0000C3   358 _TKEY_CTRL	=	0x00c3
                           00C5C4   359 _TKEY_DAT	=	0xc5c4
                           0000C4   360 _TKEY_DATL	=	0x00c4
                           0000C5   361 _TKEY_DATH	=	0x00c5
                           000091   362 _USB_C_CTRL	=	0x0091
                           0000D1   363 _UDEV_CTRL	=	0x00d1
                           0000D2   364 _UEP1_CTRL	=	0x00d2
                           0000D3   365 _UEP1_T_LEN	=	0x00d3
                           0000D4   366 _UEP2_CTRL	=	0x00d4
                           0000D5   367 _UEP2_T_LEN	=	0x00d5
                           0000D6   368 _UEP3_CTRL	=	0x00d6
                           0000D7   369 _UEP3_T_LEN	=	0x00d7
                           0000D8   370 _USB_INT_FG	=	0x00d8
                           0000D9   371 _USB_INT_ST	=	0x00d9
                           0000DA   372 _USB_MIS_ST	=	0x00da
                           0000DB   373 _USB_RX_LEN	=	0x00db
                           0000DC   374 _UEP0_CTRL	=	0x00dc
                           0000DD   375 _UEP0_T_LEN	=	0x00dd
                           0000DE   376 _UEP4_CTRL	=	0x00de
                           0000DF   377 _UEP4_T_LEN	=	0x00df
                           0000E1   378 _USB_INT_EN	=	0x00e1
                           0000E2   379 _USB_CTRL	=	0x00e2
                           0000E3   380 _USB_DEV_AD	=	0x00e3
                           00E5E4   381 _UEP2_DMA	=	0xe5e4
                           0000E4   382 _UEP2_DMA_L	=	0x00e4
                           0000E5   383 _UEP2_DMA_H	=	0x00e5
                           00E7E6   384 _UEP3_DMA	=	0xe7e6
                           0000E6   385 _UEP3_DMA_L	=	0x00e6
                           0000E7   386 _UEP3_DMA_H	=	0x00e7
                           0000EA   387 _UEP4_1_MOD	=	0x00ea
                           0000EB   388 _UEP2_3_MOD	=	0x00eb
                           00EDEC   389 _UEP0_DMA	=	0xedec
                           0000EC   390 _UEP0_DMA_L	=	0x00ec
                           0000ED   391 _UEP0_DMA_H	=	0x00ed
                           00EFEE   392 _UEP1_DMA	=	0xefee
                           0000EE   393 _UEP1_DMA_L	=	0x00ee
                           0000EF   394 _UEP1_DMA_H	=	0x00ef
                                    395 ;--------------------------------------------------------
                                    396 ; special function bits
                                    397 ;--------------------------------------------------------
                                    398 	.area RSEG    (ABS,DATA)
      000000                        399 	.org 0x0000
                           0000D7   400 _CY	=	0x00d7
                           0000D6   401 _AC	=	0x00d6
                           0000D5   402 _F0	=	0x00d5
                           0000D4   403 _RS1	=	0x00d4
                           0000D3   404 _RS0	=	0x00d3
                           0000D2   405 _OV	=	0x00d2
                           0000D1   406 _F1	=	0x00d1
                           0000D0   407 _P	=	0x00d0
                           0000AF   408 _EA	=	0x00af
                           0000AE   409 _E_DIS	=	0x00ae
                           0000AD   410 _ET2	=	0x00ad
                           0000AC   411 _ES	=	0x00ac
                           0000AB   412 _ET1	=	0x00ab
                           0000AA   413 _EX1	=	0x00aa
                           0000A9   414 _ET0	=	0x00a9
                           0000A8   415 _EX0	=	0x00a8
                           0000BF   416 _PH_FLAG	=	0x00bf
                           0000BE   417 _PL_FLAG	=	0x00be
                           0000BD   418 _PT2	=	0x00bd
                           0000BC   419 _PS	=	0x00bc
                           0000BB   420 _PT1	=	0x00bb
                           0000BA   421 _PX1	=	0x00ba
                           0000B9   422 _PT0	=	0x00b9
                           0000B8   423 _PX0	=	0x00b8
                           0000EF   424 _IE_WDOG	=	0x00ef
                           0000EE   425 _IE_GPIO	=	0x00ee
                           0000ED   426 _IE_PWMX	=	0x00ed
                           0000EC   427 _IE_UART1	=	0x00ec
                           0000EB   428 _IE_ADC	=	0x00eb
                           0000EA   429 _IE_USB	=	0x00ea
                           0000E9   430 _IE_TKEY	=	0x00e9
                           0000E8   431 _IE_SPI0	=	0x00e8
                           000097   432 _SCK	=	0x0097
                           000097   433 _TXD1	=	0x0097
                           000097   434 _TIN5	=	0x0097
                           000096   435 _MISO	=	0x0096
                           000096   436 _RXD1	=	0x0096
                           000096   437 _TIN4	=	0x0096
                           000095   438 _MOSI	=	0x0095
                           000095   439 _PWM1	=	0x0095
                           000095   440 _TIN3	=	0x0095
                           000095   441 _UCC2	=	0x0095
                           000095   442 _AIN2	=	0x0095
                           000094   443 _T2_	=	0x0094
                           000094   444 _CAP1_	=	0x0094
                           000094   445 _SCS	=	0x0094
                           000094   446 _TIN2	=	0x0094
                           000094   447 _UCC1	=	0x0094
                           000094   448 _AIN1	=	0x0094
                           000093   449 _TXD_	=	0x0093
                           000092   450 _RXD_	=	0x0092
                           000091   451 _T2EX	=	0x0091
                           000091   452 _CAP2	=	0x0091
                           000091   453 _TIN1	=	0x0091
                           000091   454 _VBUS2	=	0x0091
                           000091   455 _AIN0	=	0x0091
                           000090   456 _T2	=	0x0090
                           000090   457 _CAP1	=	0x0090
                           000090   458 _TIN0	=	0x0090
                           0000B7   459 _UDM	=	0x00b7
                           0000B6   460 _UDP	=	0x00b6
                           0000B5   461 _T1	=	0x00b5
                           0000B4   462 _PWM2	=	0x00b4
                           0000B4   463 _RXD1_	=	0x00b4
                           0000B4   464 _T0	=	0x00b4
                           0000B3   465 _INT1	=	0x00b3
                           0000B2   466 _TXD1_	=	0x00b2
                           0000B2   467 _INT0	=	0x00b2
                           0000B2   468 _VBUS1	=	0x00b2
                           0000B2   469 _AIN3	=	0x00b2
                           0000B1   470 _PWM2_	=	0x00b1
                           0000B1   471 _TXD	=	0x00b1
                           0000B0   472 _PWM1_	=	0x00b0
                           0000B0   473 _RXD	=	0x00b0
                           00008F   474 _TF1	=	0x008f
                           00008E   475 _TR1	=	0x008e
                           00008D   476 _TF0	=	0x008d
                           00008C   477 _TR0	=	0x008c
                           00008B   478 _IE1	=	0x008b
                           00008A   479 _IT1	=	0x008a
                           000089   480 _IE0	=	0x0089
                           000088   481 _IT0	=	0x0088
                           00009F   482 _SM0	=	0x009f
                           00009E   483 _SM1	=	0x009e
                           00009D   484 _SM2	=	0x009d
                           00009C   485 _REN	=	0x009c
                           00009B   486 _TB8	=	0x009b
                           00009A   487 _RB8	=	0x009a
                           000099   488 _TI	=	0x0099
                           000098   489 _RI	=	0x0098
                           0000CF   490 _TF2	=	0x00cf
                           0000CF   491 _CAP1F	=	0x00cf
                           0000CE   492 _EXF2	=	0x00ce
                           0000CD   493 _RCLK	=	0x00cd
                           0000CC   494 _TCLK	=	0x00cc
                           0000CB   495 _EXEN2	=	0x00cb
                           0000CA   496 _TR2	=	0x00ca
                           0000C9   497 _C_T2	=	0x00c9
                           0000C8   498 _CP_RL2	=	0x00c8
                           0000FF   499 _S0_FST_ACT	=	0x00ff
                           0000FE   500 _S0_IF_OV	=	0x00fe
                           0000FD   501 _S0_IF_FIRST	=	0x00fd
                           0000FC   502 _S0_IF_BYTE	=	0x00fc
                           0000FB   503 _S0_FREE	=	0x00fb
                           0000FA   504 _S0_T_FIFO	=	0x00fa
                           0000F8   505 _S0_R_FIFO	=	0x00f8
                           0000C7   506 _U1SM0	=	0x00c7
                           0000C5   507 _U1SMOD	=	0x00c5
                           0000C4   508 _U1REN	=	0x00c4
                           0000C3   509 _U1TB8	=	0x00c3
                           0000C2   510 _U1RB8	=	0x00c2
                           0000C1   511 _U1TI	=	0x00c1
                           0000C0   512 _U1RI	=	0x00c0
                           000087   513 _CMPO	=	0x0087
                           000086   514 _CMP_IF	=	0x0086
                           000085   515 _ADC_IF	=	0x0085
                           000084   516 _ADC_START	=	0x0084
                           000083   517 _CMP_CHAN	=	0x0083
                           000081   518 _ADC_CHAN1	=	0x0081
                           000080   519 _ADC_CHAN0	=	0x0080
                           0000DF   520 _U_IS_NAK	=	0x00df
                           0000DE   521 _U_TOG_OK	=	0x00de
                           0000DD   522 _U_SIE_FREE	=	0x00dd
                           0000DC   523 _UIF_FIFO_OV	=	0x00dc
                           0000DB   524 _UIF_HST_SOF	=	0x00db
                           0000DA   525 _UIF_SUSPEND	=	0x00da
                           0000D9   526 _UIF_TRANSFER	=	0x00d9
                           0000D8   527 _UIF_DETECT	=	0x00d8
                           0000D8   528 _UIF_BUS_RST	=	0x00d8
                                    529 ;--------------------------------------------------------
                                    530 ; overlayable register banks
                                    531 ;--------------------------------------------------------
                                    532 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        533 	.ds 8
                                    534 ;--------------------------------------------------------
                                    535 ; internal ram data
                                    536 ;--------------------------------------------------------
                                    537 	.area DSEG    (DATA)
      000008                        538 _tick_10ms::
      000008                        539 	.ds 2
      00000A                        540 _serialTime::
      00000A                        541 	.ds 2
      00000C                        542 _rawAnalog::
      00000C                        543 	.ds 1
      00000D                        544 _finalAnalog::
      00000D                        545 	.ds 2
      00000F                        546 _ema_raw::
      00000F                        547 	.ds 2
      000011                        548 _ema_initialized::
      000011                        549 	.ds 1
                                    550 ;--------------------------------------------------------
                                    551 ; overlayable items in internal ram
                                    552 ;--------------------------------------------------------
                                    553 ;--------------------------------------------------------
                                    554 ; Stack segment in internal ram
                                    555 ;--------------------------------------------------------
                                    556 	.area SSEG
      000014                        557 __start__stack:
      000014                        558 	.ds	1
                                    559 
                                    560 ;--------------------------------------------------------
                                    561 ; indirectly addressable internal ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area ISEG    (DATA)
                                    564 ;--------------------------------------------------------
                                    565 ; absolute internal ram data
                                    566 ;--------------------------------------------------------
                                    567 	.area IABS    (ABS,DATA)
                                    568 	.area IABS    (ABS,DATA)
                                    569 ;--------------------------------------------------------
                                    570 ; bit data
                                    571 ;--------------------------------------------------------
                                    572 	.area BSEG    (BIT)
                                    573 ;--------------------------------------------------------
                                    574 ; paged external ram data
                                    575 ;--------------------------------------------------------
                                    576 	.area PSEG    (PAG,XDATA)
                                    577 ;--------------------------------------------------------
                                    578 ; uninitialized external ram data
                                    579 ;--------------------------------------------------------
                                    580 	.area XSEG    (XDATA)
                                    581 ;--------------------------------------------------------
                                    582 ; absolute external ram data
                                    583 ;--------------------------------------------------------
                                    584 	.area XABS    (ABS,XDATA)
                                    585 ;--------------------------------------------------------
                                    586 ; initialized external ram data
                                    587 ;--------------------------------------------------------
                                    588 	.area XISEG   (XDATA)
                                    589 	.area HOME    (CODE)
                                    590 	.area GSINIT0 (CODE)
                                    591 	.area GSINIT1 (CODE)
                                    592 	.area GSINIT2 (CODE)
                                    593 	.area GSINIT3 (CODE)
                                    594 	.area GSINIT4 (CODE)
                                    595 	.area GSINIT5 (CODE)
                                    596 	.area GSINIT  (CODE)
                                    597 	.area GSFINAL (CODE)
                                    598 	.area CSEG    (CODE)
                                    599 ;--------------------------------------------------------
                                    600 ; interrupt vector
                                    601 ;--------------------------------------------------------
                                    602 	.area HOME    (CODE)
      000000                        603 __interrupt_vect:
      000000 02 00 54         [24]  604 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  605 	reti
      000004                        606 	.ds	7
      00000B 02 06 81         [24]  607 	ljmp	_timer0_ISR
                                    608 ; restartable atomic support routines
      00000E                        609 	.ds	2
      000010                        610 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  611 	nop
      000011 00               [12]  612 	nop
      000012                        613 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  614 	movx	a, @r0
      000013 FB               [12]  615 	mov	r3, a
      000014 EA               [12]  616 	mov	a, r2
      000015 F2               [24]  617 	movx	@r0, a
      000016 80 2C            [24]  618 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  619 	nop
      000019 00               [12]  620 	nop
      00001A                        621 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  622 	movx	a, @dptr
      00001B FB               [12]  623 	mov	r3, a
      00001C EA               [12]  624 	mov	a, r2
      00001D F0               [24]  625 	movx	@dptr, a
      00001E 80 24            [24]  626 	sjmp	sdcc_atomic_exchange_exit
      000020                        627 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  628 	mov	a, @r0
      000021 B5 02 02         [24]  629 	cjne	a, ar2, .+#5
      000024 EB               [12]  630 	mov	a, r3
      000025 F6               [12]  631 	mov	@r0, a
      000026 22               [24]  632 	ret
      000027 00               [12]  633 	nop
      000028                        634 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  635 	movx	a, @r0
      000029 B5 02 02         [24]  636 	cjne	a, ar2, .+#5
      00002C EB               [12]  637 	mov	a, r3
      00002D F2               [24]  638 	movx	@r0, a
      00002E 22               [24]  639 	ret
      00002F 00               [12]  640 	nop
      000030                        641 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  642 	movx	a, @dptr
      000031 B5 02 02         [24]  643 	cjne	a, ar2, .+#5
      000034 EB               [12]  644 	mov	a, r3
      000035 F0               [24]  645 	movx	@dptr, a
      000036 22               [24]  646 	ret
      000037                        647 sdcc_atomic_exchange_rollback_end::
                                    648 
      000037                        649 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  650 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  651 	mov	r0, dpl
      00003C 20 F5 D3         [24]  652 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        653 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  654 	mov	a, r2
      000040 C6               [12]  655 	xch	a, @r0
      000041 F5 82            [12]  656 	mov	dpl, a
      000043 22               [24]  657 	ret
      000044                        658 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  659 	mov	dpl, r3
      000046 22               [24]  660 	ret
      000047                        661 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  662 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  663 	mov	r0, dpl
      00004C 20 F5 D9         [24]  664 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  665 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    666 ;--------------------------------------------------------
                                    667 ; global & static initialisations
                                    668 ;--------------------------------------------------------
                                    669 	.area HOME    (CODE)
                                    670 	.area GSINIT  (CODE)
                                    671 	.area GSFINAL (CODE)
                                    672 	.area GSINIT  (CODE)
                                    673 	.globl __sdcc_gsinit_startup
                                    674 	.globl __sdcc_program_startup
                                    675 	.globl __start__stack
                                    676 	.globl __mcs51_genXINIT
                                    677 	.globl __mcs51_genXRAMCLEAR
                                    678 	.globl __mcs51_genRAMCLEAR
                                    679 ;	analog-ntc-oled.c:17: volatile unsigned int tick_10ms = 0;
      0000AD E4               [12]  680 	clr	a
      0000AE F5 08            [12]  681 	mov	_tick_10ms,a
      0000B0 F5 09            [12]  682 	mov	(_tick_10ms + 1),a
                                    683 ;	analog-ntc-oled.c:18: volatile unsigned int serialTime = 0;
      0000B2 F5 0A            [12]  684 	mov	_serialTime,a
      0000B4 F5 0B            [12]  685 	mov	(_serialTime + 1),a
                                    686 ;	analog-ntc-oled.c:20: uint8_t rawAnalog = 0;
      0000B6 F5 0C            [12]  687 	mov	_rawAnalog,a
                                    688 ;	analog-ntc-oled.c:21: uint16_t finalAnalog = 0;
      0000B8 F5 0D            [12]  689 	mov	_finalAnalog,a
      0000BA F5 0E            [12]  690 	mov	(_finalAnalog + 1),a
                                    691 ;	analog-ntc-oled.c:23: uint16_t ema_raw = 0;
      0000BC F5 0F            [12]  692 	mov	_ema_raw,a
      0000BE F5 10            [12]  693 	mov	(_ema_raw + 1),a
                                    694 ;	analog-ntc-oled.c:24: uint8_t  ema_initialized = 0; // first reading skips blending
      0000C0 F5 11            [12]  695 	mov	_ema_initialized,a
                                    696 	.area GSFINAL (CODE)
      0000C5 02 00 51         [24]  697 	ljmp	__sdcc_program_startup
                                    698 ;--------------------------------------------------------
                                    699 ; Home
                                    700 ;--------------------------------------------------------
                                    701 	.area HOME    (CODE)
                                    702 	.area HOME    (CODE)
      000051                        703 __sdcc_program_startup:
      000051 02 07 5F         [24]  704 	ljmp	_main
                                    705 ;	return from main will return to caller
                                    706 ;--------------------------------------------------------
                                    707 ; code
                                    708 ;--------------------------------------------------------
                                    709 	.area CSEG    (CODE)
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'i2c_delay'
                                    712 ;------------------------------------------------------------
                                    713 ;	analog-ntc-oled.c:37: void i2c_delay(void) {
                                    714 ;	-----------------------------------------
                                    715 ;	 function i2c_delay
                                    716 ;	-----------------------------------------
      0000C8                        717 _i2c_delay:
                           000007   718 	ar7 = 0x07
                           000006   719 	ar6 = 0x06
                           000005   720 	ar5 = 0x05
                           000004   721 	ar4 = 0x04
                           000003   722 	ar3 = 0x03
                           000002   723 	ar2 = 0x02
                           000001   724 	ar1 = 0x01
                           000000   725 	ar0 = 0x00
                                    726 ;	analog-ntc-oled.c:38: __asm nop __endasm;
      0000C8 00               [12]  727 	nop	
                                    728 ;	analog-ntc-oled.c:39: __asm nop __endasm;
      0000C9 00               [12]  729 	nop	
                                    730 ;	analog-ntc-oled.c:40: }
      0000CA 22               [24]  731 	ret
                                    732 ;------------------------------------------------------------
                                    733 ;Allocation info for local variables in function 'i2c_start'
                                    734 ;------------------------------------------------------------
                                    735 ;	analog-ntc-oled.c:42: void i2c_start(void) {
                                    736 ;	-----------------------------------------
                                    737 ;	 function i2c_start
                                    738 ;	-----------------------------------------
      0000CB                        739 _i2c_start:
                                    740 ;	analog-ntc-oled.c:43: SDA_RELEASE();
      0000CB 43 90 01         [24]  741 	orl	_P1,#0x01
                                    742 ;	analog-ntc-oled.c:44: SCL_RELEASE();
      0000CE 43 90 02         [24]  743 	orl	_P1,#0x02
                                    744 ;	analog-ntc-oled.c:45: i2c_delay();
      0000D1 12 00 C8         [24]  745 	lcall	_i2c_delay
                                    746 ;	analog-ntc-oled.c:47: SDA_LOW();
      0000D4 53 90 FE         [24]  747 	anl	_P1,#0xfe
                                    748 ;	analog-ntc-oled.c:48: i2c_delay();
      0000D7 12 00 C8         [24]  749 	lcall	_i2c_delay
                                    750 ;	analog-ntc-oled.c:49: SCL_LOW();
      0000DA 53 90 FD         [24]  751 	anl	_P1,#0xfd
                                    752 ;	analog-ntc-oled.c:50: }
      0000DD 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'i2c_stop'
                                    756 ;------------------------------------------------------------
                                    757 ;	analog-ntc-oled.c:52: void i2c_stop(void) {
                                    758 ;	-----------------------------------------
                                    759 ;	 function i2c_stop
                                    760 ;	-----------------------------------------
      0000DE                        761 _i2c_stop:
                                    762 ;	analog-ntc-oled.c:53: SDA_LOW();
      0000DE 53 90 FE         [24]  763 	anl	_P1,#0xfe
                                    764 ;	analog-ntc-oled.c:54: SCL_RELEASE();
      0000E1 43 90 02         [24]  765 	orl	_P1,#0x02
                                    766 ;	analog-ntc-oled.c:55: i2c_delay();
      0000E4 12 00 C8         [24]  767 	lcall	_i2c_delay
                                    768 ;	analog-ntc-oled.c:57: SDA_RELEASE();
      0000E7 43 90 01         [24]  769 	orl	_P1,#0x01
                                    770 ;	analog-ntc-oled.c:58: i2c_delay();
                                    771 ;	analog-ntc-oled.c:59: }
      0000EA 02 00 C8         [24]  772 	ljmp	_i2c_delay
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'i2c_write_byte'
                                    775 ;------------------------------------------------------------
                                    776 ;data          Allocated to registers r7 
                                    777 ;i             Allocated to registers r6 
                                    778 ;ack           Allocated to registers 
                                    779 ;------------------------------------------------------------
                                    780 ;	analog-ntc-oled.c:63: uint8_t i2c_write_byte(uint8_t data) {
                                    781 ;	-----------------------------------------
                                    782 ;	 function i2c_write_byte
                                    783 ;	-----------------------------------------
      0000ED                        784 _i2c_write_byte:
      0000ED AF 82            [24]  785 	mov	r7, dpl
                                    786 ;	analog-ntc-oled.c:64: for (uint8_t i = 0; i < 8; i++) {
      0000EF 7E 00            [12]  787 	mov	r6,#0x00
      0000F1                        788 00106$:
      0000F1 BE 08 00         [24]  789 	cjne	r6,#0x08,00137$
      0000F4                        790 00137$:
      0000F4 50 26            [24]  791 	jnc	00104$
                                    792 ;	analog-ntc-oled.c:65: if (data & 0x80)
      0000F6 EF               [12]  793 	mov	a,r7
      0000F7 30 E7 05         [24]  794 	jnb	acc.7,00102$
                                    795 ;	analog-ntc-oled.c:66: SDA_RELEASE();
      0000FA 43 90 01         [24]  796 	orl	_P1,#0x01
      0000FD 80 03            [24]  797 	sjmp	00103$
      0000FF                        798 00102$:
                                    799 ;	analog-ntc-oled.c:68: SDA_LOW();
      0000FF 53 90 FE         [24]  800 	anl	_P1,#0xfe
      000102                        801 00103$:
                                    802 ;	analog-ntc-oled.c:70: SCL_RELEASE();
      000102 43 90 02         [24]  803 	orl	_P1,#0x02
                                    804 ;	analog-ntc-oled.c:71: i2c_delay();
      000105 C0 07            [24]  805 	push	ar7
      000107 C0 06            [24]  806 	push	ar6
      000109 12 00 C8         [24]  807 	lcall	_i2c_delay
                                    808 ;	analog-ntc-oled.c:72: SCL_LOW();
      00010C 53 90 FD         [24]  809 	anl	_P1,#0xfd
                                    810 ;	analog-ntc-oled.c:73: i2c_delay();
      00010F 12 00 C8         [24]  811 	lcall	_i2c_delay
      000112 D0 06            [24]  812 	pop	ar6
      000114 D0 07            [24]  813 	pop	ar7
                                    814 ;	analog-ntc-oled.c:74: data <<= 1;
      000116 EF               [12]  815 	mov	a,r7
      000117 2F               [12]  816 	add	a,r7
      000118 FF               [12]  817 	mov	r7,a
                                    818 ;	analog-ntc-oled.c:64: for (uint8_t i = 0; i < 8; i++) {
      000119 0E               [12]  819 	inc	r6
      00011A 80 D5            [24]  820 	sjmp	00106$
      00011C                        821 00104$:
                                    822 ;	analog-ntc-oled.c:78: SDA_RELEASE();
      00011C 43 90 01         [24]  823 	orl	_P1,#0x01
                                    824 ;	analog-ntc-oled.c:79: SCL_RELEASE();
      00011F 43 90 02         [24]  825 	orl	_P1,#0x02
                                    826 ;	analog-ntc-oled.c:80: i2c_delay();
      000122 12 00 C8         [24]  827 	lcall	_i2c_delay
                                    828 ;	analog-ntc-oled.c:82: uint8_t ack = (P1 & (1 << SDA_PIN)) ? 1 : 0;
      000125 E5 90            [12]  829 	mov	a,_P1
      000127 30 E0 04         [24]  830 	jnb	acc.0,00110$
      00012A 7F 01            [12]  831 	mov	r7,#0x01
      00012C 80 02            [24]  832 	sjmp	00111$
      00012E                        833 00110$:
      00012E 7F 00            [12]  834 	mov	r7,#0x00
      000130                        835 00111$:
      000130 8F 82            [24]  836 	mov	dpl,r7
                                    837 ;	analog-ntc-oled.c:83: SCL_LOW();
      000132 53 90 FD         [24]  838 	anl	_P1,#0xfd
                                    839 ;	analog-ntc-oled.c:84: return ack; // 0 = ACK, 1 = NACK
                                    840 ;	analog-ntc-oled.c:85: }
      000135 22               [24]  841 	ret
                                    842 ;------------------------------------------------------------
                                    843 ;Allocation info for local variables in function 'oled_cmd'
                                    844 ;------------------------------------------------------------
                                    845 ;cmd           Allocated to registers r7 
                                    846 ;------------------------------------------------------------
                                    847 ;	analog-ntc-oled.c:90: void oled_cmd(uint8_t cmd) {
                                    848 ;	-----------------------------------------
                                    849 ;	 function oled_cmd
                                    850 ;	-----------------------------------------
      000136                        851 _oled_cmd:
      000136 AF 82            [24]  852 	mov	r7, dpl
                                    853 ;	analog-ntc-oled.c:91: i2c_start();
      000138 C0 07            [24]  854 	push	ar7
      00013A 12 00 CB         [24]  855 	lcall	_i2c_start
                                    856 ;	analog-ntc-oled.c:92: i2c_write_byte(OLED_ADDR);
      00013D 75 82 78         [24]  857 	mov	dpl, #0x78
      000140 12 00 ED         [24]  858 	lcall	_i2c_write_byte
                                    859 ;	analog-ntc-oled.c:93: i2c_write_byte(0x00);
      000143 75 82 00         [24]  860 	mov	dpl, #0x00
      000146 12 00 ED         [24]  861 	lcall	_i2c_write_byte
      000149 D0 07            [24]  862 	pop	ar7
                                    863 ;	analog-ntc-oled.c:94: i2c_write_byte(cmd);
      00014B 8F 82            [24]  864 	mov	dpl, r7
      00014D 12 00 ED         [24]  865 	lcall	_i2c_write_byte
                                    866 ;	analog-ntc-oled.c:95: i2c_stop();
                                    867 ;	analog-ntc-oled.c:96: }
      000150 02 00 DE         [24]  868 	ljmp	_i2c_stop
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'oled_data'
                                    871 ;------------------------------------------------------------
                                    872 ;data          Allocated to registers r7 
                                    873 ;------------------------------------------------------------
                                    874 ;	analog-ntc-oled.c:98: void oled_data(uint8_t data) {
                                    875 ;	-----------------------------------------
                                    876 ;	 function oled_data
                                    877 ;	-----------------------------------------
      000153                        878 _oled_data:
      000153 AF 82            [24]  879 	mov	r7, dpl
                                    880 ;	analog-ntc-oled.c:99: i2c_start();
      000155 C0 07            [24]  881 	push	ar7
      000157 12 00 CB         [24]  882 	lcall	_i2c_start
                                    883 ;	analog-ntc-oled.c:100: i2c_write_byte(OLED_ADDR);
      00015A 75 82 78         [24]  884 	mov	dpl, #0x78
      00015D 12 00 ED         [24]  885 	lcall	_i2c_write_byte
                                    886 ;	analog-ntc-oled.c:101: i2c_write_byte(0x40);
      000160 75 82 40         [24]  887 	mov	dpl, #0x40
      000163 12 00 ED         [24]  888 	lcall	_i2c_write_byte
      000166 D0 07            [24]  889 	pop	ar7
                                    890 ;	analog-ntc-oled.c:102: i2c_write_byte(data);
      000168 8F 82            [24]  891 	mov	dpl, r7
      00016A 12 00 ED         [24]  892 	lcall	_i2c_write_byte
                                    893 ;	analog-ntc-oled.c:103: i2c_stop();
                                    894 ;	analog-ntc-oled.c:104: }
      00016D 02 00 DE         [24]  895 	ljmp	_i2c_stop
                                    896 ;------------------------------------------------------------
                                    897 ;Allocation info for local variables in function 'oled_set_cursor'
                                    898 ;------------------------------------------------------------
                                    899 ;page          Allocated to stack - _bp -3 +1 
                                    900 ;x             Allocated to registers r7 
                                    901 ;col           Allocated to registers r7 
                                    902 ;------------------------------------------------------------
                                    903 ;	analog-ntc-oled.c:106: void oled_set_cursor(uint8_t x, uint8_t page) {
                                    904 ;	-----------------------------------------
                                    905 ;	 function oled_set_cursor
                                    906 ;	-----------------------------------------
      000170                        907 _oled_set_cursor:
      000170 C0 13            [24]  908 	push	_bp
      000172 85 81 13         [24]  909 	mov	_bp,sp
      000175 AF 82            [24]  910 	mov	r7, dpl
                                    911 ;	analog-ntc-oled.c:108: uint8_t col = x + 32;
      000177 74 20            [12]  912 	mov	a,#0x20
      000179 2F               [12]  913 	add	a, r7
      00017A FF               [12]  914 	mov	r7,a
                                    915 ;	analog-ntc-oled.c:109: oled_cmd(0xB0 + page);
      00017B E5 13            [12]  916 	mov	a,_bp
      00017D 24 FD            [12]  917 	add	a,#0xfd
      00017F F8               [12]  918 	mov	r0,a
      000180 86 06            [24]  919 	mov	ar6,@r0
      000182 74 B0            [12]  920 	mov	a,#0xb0
      000184 2E               [12]  921 	add	a, r6
      000185 F5 82            [12]  922 	mov	dpl,a
      000187 C0 07            [24]  923 	push	ar7
      000189 12 01 36         [24]  924 	lcall	_oled_cmd
      00018C D0 07            [24]  925 	pop	ar7
                                    926 ;	analog-ntc-oled.c:110: oled_cmd(0x00 | (col & 0x0F));   // low nibble
      00018E 74 0F            [12]  927 	mov	a,#0x0f
      000190 5F               [12]  928 	anl	a,r7
      000191 F5 82            [12]  929 	mov	dpl,a
      000193 C0 07            [24]  930 	push	ar7
      000195 12 01 36         [24]  931 	lcall	_oled_cmd
      000198 D0 07            [24]  932 	pop	ar7
                                    933 ;	analog-ntc-oled.c:111: oled_cmd(0x10 | (col >> 4));     // high nibble
      00019A EF               [12]  934 	mov	a,r7
      00019B C4               [12]  935 	swap	a
      00019C 54 0F            [12]  936 	anl	a,#0x0f
      00019E FF               [12]  937 	mov	r7,a
      00019F 74 10            [12]  938 	mov	a,#0x10
      0001A1 4F               [12]  939 	orl	a,r7
      0001A2 F5 82            [12]  940 	mov	dpl,a
      0001A4 12 01 36         [24]  941 	lcall	_oled_cmd
                                    942 ;	analog-ntc-oled.c:112: }
      0001A7 D0 13            [24]  943 	pop	_bp
      0001A9 22               [24]  944 	ret
                                    945 ;------------------------------------------------------------
                                    946 ;Allocation info for local variables in function 'oled_write_data_stream'
                                    947 ;------------------------------------------------------------
                                    948 ;len           Allocated to stack - _bp -3 +1 
                                    949 ;data          Allocated to stack - _bp +1 +3 
                                    950 ;i             Allocated to registers r4 
                                    951 ;------------------------------------------------------------
                                    952 ;	analog-ntc-oled.c:113: void oled_write_data_stream(uint8_t *data, uint8_t len) {
                                    953 ;	-----------------------------------------
                                    954 ;	 function oled_write_data_stream
                                    955 ;	-----------------------------------------
      0001AA                        956 _oled_write_data_stream:
      0001AA C0 13            [24]  957 	push	_bp
      0001AC 85 81 13         [24]  958 	mov	_bp,sp
      0001AF C0 82            [24]  959 	push	dpl
      0001B1 C0 83            [24]  960 	push	dph
      0001B3 C0 F0            [24]  961 	push	b
                                    962 ;	analog-ntc-oled.c:114: i2c_start();
      0001B5 12 00 CB         [24]  963 	lcall	_i2c_start
                                    964 ;	analog-ntc-oled.c:115: i2c_write_byte(OLED_ADDR);
      0001B8 75 82 78         [24]  965 	mov	dpl, #0x78
      0001BB 12 00 ED         [24]  966 	lcall	_i2c_write_byte
                                    967 ;	analog-ntc-oled.c:116: i2c_write_byte(0x40);
      0001BE 75 82 40         [24]  968 	mov	dpl, #0x40
      0001C1 12 00 ED         [24]  969 	lcall	_i2c_write_byte
                                    970 ;	analog-ntc-oled.c:118: for (uint8_t i = 0; i < len; i++) {
      0001C4 7C 00            [12]  971 	mov	r4,#0x00
      0001C6                        972 00103$:
      0001C6 E5 13            [12]  973 	mov	a,_bp
      0001C8 24 FD            [12]  974 	add	a,#0xfd
      0001CA F8               [12]  975 	mov	r0,a
      0001CB C3               [12]  976 	clr	c
      0001CC EC               [12]  977 	mov	a,r4
      0001CD 96               [12]  978 	subb	a,@r0
      0001CE 50 22            [24]  979 	jnc	00101$
                                    980 ;	analog-ntc-oled.c:119: i2c_write_byte(data[i]);
      0001D0 A8 13            [24]  981 	mov	r0,_bp
      0001D2 08               [12]  982 	inc	r0
      0001D3 EC               [12]  983 	mov	a,r4
      0001D4 26               [12]  984 	add	a, @r0
      0001D5 FA               [12]  985 	mov	r2,a
      0001D6 E4               [12]  986 	clr	a
      0001D7 08               [12]  987 	inc	r0
      0001D8 36               [12]  988 	addc	a, @r0
      0001D9 FB               [12]  989 	mov	r3,a
      0001DA 08               [12]  990 	inc	r0
      0001DB 86 07            [24]  991 	mov	ar7,@r0
      0001DD 8A 82            [24]  992 	mov	dpl,r2
      0001DF 8B 83            [24]  993 	mov	dph,r3
      0001E1 8F F0            [24]  994 	mov	b,r7
      0001E3 12 10 73         [24]  995 	lcall	__gptrget
      0001E6 F5 82            [12]  996 	mov	dpl,a
      0001E8 C0 04            [24]  997 	push	ar4
      0001EA 12 00 ED         [24]  998 	lcall	_i2c_write_byte
      0001ED D0 04            [24]  999 	pop	ar4
                                   1000 ;	analog-ntc-oled.c:118: for (uint8_t i = 0; i < len; i++) {
      0001EF 0C               [12] 1001 	inc	r4
      0001F0 80 D4            [24] 1002 	sjmp	00103$
      0001F2                       1003 00101$:
                                   1004 ;	analog-ntc-oled.c:122: i2c_stop();
      0001F2 12 00 DE         [24] 1005 	lcall	_i2c_stop
                                   1006 ;	analog-ntc-oled.c:123: }
      0001F5 85 13 81         [24] 1007 	mov	sp,_bp
      0001F8 D0 13            [24] 1008 	pop	_bp
      0001FA 22               [24] 1009 	ret
                                   1010 ;------------------------------------------------------------
                                   1011 ;Allocation info for local variables in function 'oled_clear'
                                   1012 ;------------------------------------------------------------
                                   1013 ;page          Allocated to registers r7 
                                   1014 ;i             Allocated to registers r6 
                                   1015 ;------------------------------------------------------------
                                   1016 ;	analog-ntc-oled.c:124: void oled_clear(void) {
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function oled_clear
                                   1019 ;	-----------------------------------------
      0001FB                       1020 _oled_clear:
                                   1021 ;	analog-ntc-oled.c:126: for (uint8_t page = 0; page < 4; page++) {
      0001FB 7F 00            [12] 1022 	mov	r7,#0x00
      0001FD                       1023 00107$:
      0001FD BF 04 00         [24] 1024 	cjne	r7,#0x04,00137$
      000200                       1025 00137$:
      000200 50 4B            [24] 1026 	jnc	00109$
                                   1027 ;	analog-ntc-oled.c:127: oled_cmd(0xB0 + page);
      000202 8F 06            [24] 1028 	mov	ar6,r7
      000204 74 B0            [12] 1029 	mov	a,#0xb0
      000206 2E               [12] 1030 	add	a, r6
      000207 F5 82            [12] 1031 	mov	dpl,a
      000209 C0 07            [24] 1032 	push	ar7
      00020B 12 01 36         [24] 1033 	lcall	_oled_cmd
                                   1034 ;	analog-ntc-oled.c:128: oled_cmd(0x00);  // col low  = 0x00 → actual col = 32 after remap
      00020E 75 82 00         [24] 1035 	mov	dpl, #0x00
      000211 12 01 36         [24] 1036 	lcall	_oled_cmd
                                   1037 ;	analog-ntc-oled.c:129: oled_cmd(0x12);  // col high = 0x10 | 0x02 = col 32
      000214 75 82 12         [24] 1038 	mov	dpl, #0x12
      000217 12 01 36         [24] 1039 	lcall	_oled_cmd
                                   1040 ;	analog-ntc-oled.c:130: i2c_start();
      00021A 12 00 CB         [24] 1041 	lcall	_i2c_start
                                   1042 ;	analog-ntc-oled.c:131: i2c_write_byte(OLED_ADDR);
      00021D 75 82 78         [24] 1043 	mov	dpl, #0x78
      000220 12 00 ED         [24] 1044 	lcall	_i2c_write_byte
                                   1045 ;	analog-ntc-oled.c:132: i2c_write_byte(0x40);
      000223 75 82 40         [24] 1046 	mov	dpl, #0x40
      000226 12 00 ED         [24] 1047 	lcall	_i2c_write_byte
      000229 D0 07            [24] 1048 	pop	ar7
                                   1049 ;	analog-ntc-oled.c:133: for (uint8_t i = 0; i < 64; i++) i2c_write_byte(0x00);
      00022B 7E 00            [12] 1050 	mov	r6,#0x00
      00022D                       1051 00104$:
      00022D BE 40 00         [24] 1052 	cjne	r6,#0x40,00139$
      000230                       1053 00139$:
      000230 50 11            [24] 1054 	jnc	00101$
      000232 75 82 00         [24] 1055 	mov	dpl, #0x00
      000235 C0 07            [24] 1056 	push	ar7
      000237 C0 06            [24] 1057 	push	ar6
      000239 12 00 ED         [24] 1058 	lcall	_i2c_write_byte
      00023C D0 06            [24] 1059 	pop	ar6
      00023E D0 07            [24] 1060 	pop	ar7
      000240 0E               [12] 1061 	inc	r6
      000241 80 EA            [24] 1062 	sjmp	00104$
      000243                       1063 00101$:
                                   1064 ;	analog-ntc-oled.c:134: i2c_stop();
      000243 C0 07            [24] 1065 	push	ar7
      000245 12 00 DE         [24] 1066 	lcall	_i2c_stop
      000248 D0 07            [24] 1067 	pop	ar7
                                   1068 ;	analog-ntc-oled.c:126: for (uint8_t page = 0; page < 4; page++) {
      00024A 0F               [12] 1069 	inc	r7
      00024B 80 B0            [24] 1070 	sjmp	00107$
      00024D                       1071 00109$:
                                   1072 ;	analog-ntc-oled.c:136: }
      00024D 22               [24] 1073 	ret
                                   1074 ;------------------------------------------------------------
                                   1075 ;Allocation info for local variables in function 'oled_init'
                                   1076 ;------------------------------------------------------------
                                   1077 ;	analog-ntc-oled.c:138: void oled_init(void) {
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function oled_init
                                   1080 ;	-----------------------------------------
      00024E                       1081 _oled_init:
                                   1082 ;	analog-ntc-oled.c:139: oled_cmd(0xAE);           // display off
      00024E 75 82 AE         [24] 1083 	mov	dpl, #0xae
      000251 12 01 36         [24] 1084 	lcall	_oled_cmd
                                   1085 ;	analog-ntc-oled.c:140: oled_cmd(0xD5); oled_cmd(0x80); // clock divide ratio / osc freq
      000254 75 82 D5         [24] 1086 	mov	dpl, #0xd5
      000257 12 01 36         [24] 1087 	lcall	_oled_cmd
      00025A 75 82 80         [24] 1088 	mov	dpl, #0x80
      00025D 12 01 36         [24] 1089 	lcall	_oled_cmd
                                   1090 ;	analog-ntc-oled.c:141: oled_cmd(0xA8); oled_cmd(0x1F); // multiplex ratio = 31 (32 rows)
      000260 75 82 A8         [24] 1091 	mov	dpl, #0xa8
      000263 12 01 36         [24] 1092 	lcall	_oled_cmd
      000266 75 82 1F         [24] 1093 	mov	dpl, #0x1f
      000269 12 01 36         [24] 1094 	lcall	_oled_cmd
                                   1095 ;	analog-ntc-oled.c:142: oled_cmd(0xD3); oled_cmd(0x00); // display offset = 0
      00026C 75 82 D3         [24] 1096 	mov	dpl, #0xd3
      00026F 12 01 36         [24] 1097 	lcall	_oled_cmd
      000272 75 82 00         [24] 1098 	mov	dpl, #0x00
      000275 12 01 36         [24] 1099 	lcall	_oled_cmd
                                   1100 ;	analog-ntc-oled.c:143: oled_cmd(0x40);                 // display start line = 0
      000278 75 82 40         [24] 1101 	mov	dpl, #0x40
      00027B 12 01 36         [24] 1102 	lcall	_oled_cmd
                                   1103 ;	analog-ntc-oled.c:144: oled_cmd(0x8D); oled_cmd(0x14); // charge pump enable
      00027E 75 82 8D         [24] 1104 	mov	dpl, #0x8d
      000281 12 01 36         [24] 1105 	lcall	_oled_cmd
      000284 75 82 14         [24] 1106 	mov	dpl, #0x14
      000287 12 01 36         [24] 1107 	lcall	_oled_cmd
                                   1108 ;	analog-ntc-oled.c:145: oled_cmd(0x20); oled_cmd(0x02); // page addressing mode. In this case, by page (vertically)
      00028A 75 82 20         [24] 1109 	mov	dpl, #0x20
      00028D 12 01 36         [24] 1110 	lcall	_oled_cmd
      000290 75 82 02         [24] 1111 	mov	dpl, #0x02
      000293 12 01 36         [24] 1112 	lcall	_oled_cmd
                                   1113 ;	analog-ntc-oled.c:146: oled_cmd(0xA1);                 // segment remap (col 127 = SEG0)
      000296 75 82 A1         [24] 1114 	mov	dpl, #0xa1
      000299 12 01 36         [24] 1115 	lcall	_oled_cmd
                                   1116 ;	analog-ntc-oled.c:147: oled_cmd(0xC8);                 // COM scan remapped
      00029C 75 82 C8         [24] 1117 	mov	dpl, #0xc8
      00029F 12 01 36         [24] 1118 	lcall	_oled_cmd
                                   1119 ;	analog-ntc-oled.c:148: oled_cmd(0xDA); oled_cmd(0x12); // COM pins: alt config, no remap
      0002A2 75 82 DA         [24] 1120 	mov	dpl, #0xda
      0002A5 12 01 36         [24] 1121 	lcall	_oled_cmd
      0002A8 75 82 12         [24] 1122 	mov	dpl, #0x12
      0002AB 12 01 36         [24] 1123 	lcall	_oled_cmd
                                   1124 ;	analog-ntc-oled.c:149: oled_cmd(0x81); oled_cmd(0xCF); // contrast
      0002AE 75 82 81         [24] 1125 	mov	dpl, #0x81
      0002B1 12 01 36         [24] 1126 	lcall	_oled_cmd
      0002B4 75 82 CF         [24] 1127 	mov	dpl, #0xcf
      0002B7 12 01 36         [24] 1128 	lcall	_oled_cmd
                                   1129 ;	analog-ntc-oled.c:150: oled_cmd(0xD9); oled_cmd(0x22); // pre-charge period
      0002BA 75 82 D9         [24] 1130 	mov	dpl, #0xd9
      0002BD 12 01 36         [24] 1131 	lcall	_oled_cmd
      0002C0 75 82 22         [24] 1132 	mov	dpl, #0x22
      0002C3 12 01 36         [24] 1133 	lcall	_oled_cmd
                                   1134 ;	analog-ntc-oled.c:151: oled_cmd(0xDB); oled_cmd(0x00); // VCOMH deselect = 0
      0002C6 75 82 DB         [24] 1135 	mov	dpl, #0xdb
      0002C9 12 01 36         [24] 1136 	lcall	_oled_cmd
      0002CC 75 82 00         [24] 1137 	mov	dpl, #0x00
      0002CF 12 01 36         [24] 1138 	lcall	_oled_cmd
                                   1139 ;	analog-ntc-oled.c:152: oled_cmd(0xA4);                 // output follows RAM
      0002D2 75 82 A4         [24] 1140 	mov	dpl, #0xa4
      0002D5 12 01 36         [24] 1141 	lcall	_oled_cmd
                                   1142 ;	analog-ntc-oled.c:153: oled_cmd(0xA6);                 // normal display
      0002D8 75 82 A6         [24] 1143 	mov	dpl, #0xa6
      0002DB 12 01 36         [24] 1144 	lcall	_oled_cmd
                                   1145 ;	analog-ntc-oled.c:154: oled_cmd(0xAF);                 // display on
      0002DE 75 82 AF         [24] 1146 	mov	dpl, #0xaf
      0002E1 12 01 36         [24] 1147 	lcall	_oled_cmd
                                   1148 ;	analog-ntc-oled.c:156: oled_clear();
                                   1149 ;	analog-ntc-oled.c:157: }
      0002E4 02 01 FB         [24] 1150 	ljmp	_oled_clear
                                   1151 ;------------------------------------------------------------
                                   1152 ;Allocation info for local variables in function 'oled_draw_char'
                                   1153 ;------------------------------------------------------------
                                   1154 ;c             Allocated to registers r7 
                                   1155 ;index         Allocated to registers r6 
                                   1156 ;i             Allocated to registers r4 
                                   1157 ;i             Allocated to registers r6 
                                   1158 ;------------------------------------------------------------
                                   1159 ;	analog-ntc-oled.c:180: void oled_draw_char(char c) {
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function oled_draw_char
                                   1162 ;	-----------------------------------------
      0002E7                       1163 _oled_draw_char:
      0002E7 AF 82            [24] 1164 	mov	r7, dpl
                                   1165 ;	analog-ntc-oled.c:181: i2c_start();
      0002E9 C0 07            [24] 1166 	push	ar7
      0002EB 12 00 CB         [24] 1167 	lcall	_i2c_start
                                   1168 ;	analog-ntc-oled.c:182: i2c_write_byte(OLED_ADDR);
      0002EE 75 82 78         [24] 1169 	mov	dpl, #0x78
      0002F1 12 00 ED         [24] 1170 	lcall	_i2c_write_byte
                                   1171 ;	analog-ntc-oled.c:183: i2c_write_byte(0x40);
      0002F4 75 82 40         [24] 1172 	mov	dpl, #0x40
      0002F7 12 00 ED         [24] 1173 	lcall	_i2c_write_byte
      0002FA D0 07            [24] 1174 	pop	ar7
                                   1175 ;	analog-ntc-oled.c:185: if (c >= '0' && c <= '9') {
      0002FC BF 30 00         [24] 1176 	cjne	r7,#0x30,00170$
      0002FF                       1177 00170$:
      0002FF 40 43            [24] 1178 	jc	00109$
      000301 EF               [12] 1179 	mov	a,r7
      000302 24 C6            [12] 1180 	add	a,#0xff - 0x39
      000304 40 3E            [24] 1181 	jc	00109$
                                   1182 ;	analog-ntc-oled.c:186: uint8_t index = c - '0';
      000306 8F 06            [24] 1183 	mov	ar6,r7
      000308 EE               [12] 1184 	mov	a,r6
      000309 24 D0            [12] 1185 	add	a,#0xd0
                                   1186 ;	analog-ntc-oled.c:187: for (uint8_t i = 0; i < 5; i++) i2c_write_byte(font5x7[index][i]);
      00030B 75 F0 05         [24] 1187 	mov	b,#0x05
      00030E A4               [48] 1188 	mul	ab
      00030F 24 27            [12] 1189 	add	a, #_font5x7
      000311 FD               [12] 1190 	mov	r5,a
      000312 74 12            [12] 1191 	mov	a,#(_font5x7 >> 8)
      000314 35 F0            [12] 1192 	addc	a, b
      000316 FE               [12] 1193 	mov	r6,a
      000317 7C 00            [12] 1194 	mov	r4,#0x00
      000319                       1195 00113$:
      000319 BC 05 00         [24] 1196 	cjne	r4,#0x05,00173$
      00031C                       1197 00173$:
      00031C 50 1E            [24] 1198 	jnc	00101$
      00031E EC               [12] 1199 	mov	a,r4
      00031F 2D               [12] 1200 	add	a, r5
      000320 F5 82            [12] 1201 	mov	dpl,a
      000322 E4               [12] 1202 	clr	a
      000323 3E               [12] 1203 	addc	a, r6
      000324 F5 83            [12] 1204 	mov	dph,a
      000326 E4               [12] 1205 	clr	a
      000327 93               [24] 1206 	movc	a,@a+dptr
      000328 F5 82            [12] 1207 	mov	dpl,a
      00032A C0 06            [24] 1208 	push	ar6
      00032C C0 05            [24] 1209 	push	ar5
      00032E C0 04            [24] 1210 	push	ar4
      000330 12 00 ED         [24] 1211 	lcall	_i2c_write_byte
      000333 D0 04            [24] 1212 	pop	ar4
      000335 D0 05            [24] 1213 	pop	ar5
      000337 D0 06            [24] 1214 	pop	ar6
      000339 0C               [12] 1215 	inc	r4
      00033A 80 DD            [24] 1216 	sjmp	00113$
      00033C                       1217 00101$:
                                   1218 ;	analog-ntc-oled.c:188: i2c_write_byte(0x00); // spacing
      00033C 75 82 00         [24] 1219 	mov	dpl, #0x00
      00033F 12 00 ED         [24] 1220 	lcall	_i2c_write_byte
      000342 80 3A            [24] 1221 	sjmp	00110$
      000344                       1222 00109$:
                                   1223 ;	analog-ntc-oled.c:190: } else if (c == '-') {
      000344 BF 2D 20         [24] 1224 	cjne	r7,#0x2d,00106$
                                   1225 ;	analog-ntc-oled.c:191: for (uint8_t i = 0; i < 5; i++) i2c_write_byte(font_minus[i]);
      000347 7E 00            [12] 1226 	mov	r6,#0x00
      000349                       1227 00116$:
      000349 BE 05 00         [24] 1228 	cjne	r6,#0x05,00177$
      00034C                       1229 00177$:
      00034C 50 11            [24] 1230 	jnc	00102$
      00034E EE               [12] 1231 	mov	a,r6
      00034F 90 12 63         [24] 1232 	mov	dptr,#_font_minus
      000352 93               [24] 1233 	movc	a,@a+dptr
      000353 F5 82            [12] 1234 	mov	dpl,a
      000355 C0 06            [24] 1235 	push	ar6
      000357 12 00 ED         [24] 1236 	lcall	_i2c_write_byte
      00035A D0 06            [24] 1237 	pop	ar6
      00035C 0E               [12] 1238 	inc	r6
      00035D 80 EA            [24] 1239 	sjmp	00116$
      00035F                       1240 00102$:
                                   1241 ;	analog-ntc-oled.c:192: i2c_write_byte(0x00); // spacing
      00035F 75 82 00         [24] 1242 	mov	dpl, #0x00
      000362 12 00 ED         [24] 1243 	lcall	_i2c_write_byte
      000365 80 17            [24] 1244 	sjmp	00110$
      000367                       1245 00106$:
                                   1246 ;	analog-ntc-oled.c:194: } else if (c == '.') {
      000367 BF 2E 14         [24] 1247 	cjne	r7,#0x2e,00110$
                                   1248 ;	analog-ntc-oled.c:195: i2c_write_byte(font_dot[0]);
      00036A 90 12 68         [24] 1249 	mov	dptr,#_font_dot
      00036D E4               [12] 1250 	clr	a
      00036E 93               [24] 1251 	movc	a,@a+dptr
      00036F F5 82            [12] 1252 	mov	dpl,a
      000371 12 00 ED         [24] 1253 	lcall	_i2c_write_byte
                                   1254 ;	analog-ntc-oled.c:196: i2c_write_byte(font_dot[1]); // spacing already included
      000374 90 12 69         [24] 1255 	mov	dptr,#(_font_dot + 0x0001)
      000377 E4               [12] 1256 	clr	a
      000378 93               [24] 1257 	movc	a,@a+dptr
      000379 F5 82            [12] 1258 	mov	dpl,a
      00037B 12 00 ED         [24] 1259 	lcall	_i2c_write_byte
      00037E                       1260 00110$:
                                   1261 ;	analog-ntc-oled.c:199: i2c_stop();
                                   1262 ;	analog-ntc-oled.c:200: }
      00037E 02 00 DE         [24] 1263 	ljmp	_i2c_stop
                                   1264 ;------------------------------------------------------------
                                   1265 ;Allocation info for local variables in function 'get_text_width'
                                   1266 ;------------------------------------------------------------
                                   1267 ;value         Allocated to registers r6 r7 
                                   1268 ;digits        Allocated to registers r5 
                                   1269 ;------------------------------------------------------------
                                   1270 ;	analog-ntc-oled.c:202: uint8_t get_text_width(uint16_t value) {
                                   1271 ;	-----------------------------------------
                                   1272 ;	 function get_text_width
                                   1273 ;	-----------------------------------------
      000381                       1274 _get_text_width:
      000381 AE 82            [24] 1275 	mov	r6, dpl
      000383 AF 83            [24] 1276 	mov	r7, dph
                                   1277 ;	analog-ntc-oled.c:204: if (value == 0) return 6; // '0' = 5px + 1 space
      000385 EE               [12] 1278 	mov	a,r6
      000386 4F               [12] 1279 	orl	a,r7
      000387 70 04            [24] 1280 	jnz	00110$
      000389 75 82 06         [24] 1281 	mov	dpl, #0x06
                                   1282 ;	analog-ntc-oled.c:205: while (value > 0) {
      00038C 22               [24] 1283 	ret
      00038D                       1284 00110$:
      00038D 7D 00            [12] 1285 	mov	r5,#0x00
      00038F                       1286 00103$:
      00038F EE               [12] 1287 	mov	a,r6
      000390 4F               [12] 1288 	orl	a,r7
      000391 60 21            [24] 1289 	jz	00105$
                                   1290 ;	analog-ntc-oled.c:206: digits++;
      000393 0D               [12] 1291 	inc	r5
                                   1292 ;	analog-ntc-oled.c:207: value /= 10;
      000394 8E 82            [24] 1293 	mov	dpl,r6
      000396 8F 83            [24] 1294 	mov	dph,r7
      000398 C0 05            [24] 1295 	push	ar5
      00039A 74 0A            [12] 1296 	mov	a,#0x0a
      00039C C0 E0            [24] 1297 	push	acc
      00039E E4               [12] 1298 	clr	a
      00039F C0 E0            [24] 1299 	push	acc
      0003A1 12 0F 98         [24] 1300 	lcall	__divuint
      0003A4 AB 82            [24] 1301 	mov	r3, dpl
      0003A6 AC 83            [24] 1302 	mov	r4, dph
      0003A8 15 81            [12] 1303 	dec	sp
      0003AA 15 81            [12] 1304 	dec	sp
      0003AC D0 05            [24] 1305 	pop	ar5
      0003AE 8B 06            [24] 1306 	mov	ar6,r3
      0003B0 8C 07            [24] 1307 	mov	ar7,r4
      0003B2 80 DB            [24] 1308 	sjmp	00103$
      0003B4                       1309 00105$:
                                   1310 ;	analog-ntc-oled.c:209: return digits * 6; // each digit: 5px + 1 space
      0003B4 ED               [12] 1311 	mov	a,r5
      0003B5 75 F0 06         [24] 1312 	mov	b,#0x06
      0003B8 A4               [48] 1313 	mul	ab
      0003B9 F5 82            [12] 1314 	mov	dpl,a
                                   1315 ;	analog-ntc-oled.c:210: }
      0003BB 22               [24] 1316 	ret
                                   1317 ;------------------------------------------------------------
                                   1318 ;Allocation info for local variables in function 'oled_print_uint'
                                   1319 ;------------------------------------------------------------
                                   1320 ;value         Allocated to registers r6 r7 
                                   1321 ;buffer        Allocated to stack - _bp +4 +36 
                                   1322 ;idx           Allocated to registers r5 
                                   1323 ;buf           Allocated to stack - _bp +40 +6 
                                   1324 ;i             Allocated to registers r4 
                                   1325 ;temp          Allocated to registers r4 r2 
                                   1326 ;rev           Allocated to stack - _bp +46 +6 
                                   1327 ;j             Allocated to stack - _bp +52 +1 
                                   1328 ;k             Allocated to registers r2 
                                   1329 ;index         Allocated to registers 
                                   1330 ;col           Allocated to registers r5 
                                   1331 ;n             Allocated to registers r6 
                                   1332 ;sloc0         Allocated to stack - _bp +1 +2 
                                   1333 ;sloc1         Allocated to stack - _bp +3 +1 
                                   1334 ;------------------------------------------------------------
                                   1335 ;	analog-ntc-oled.c:212: void oled_print_uint(uint16_t value) {
                                   1336 ;	-----------------------------------------
                                   1337 ;	 function oled_print_uint
                                   1338 ;	-----------------------------------------
      0003BC                       1339 _oled_print_uint:
      0003BC C0 13            [24] 1340 	push	_bp
      0003BE E5 81            [12] 1341 	mov	a,sp
      0003C0 F5 13            [12] 1342 	mov	_bp,a
      0003C2 24 34            [12] 1343 	add	a,#0x34
      0003C4 F5 81            [12] 1344 	mov	sp,a
      0003C6 AE 82            [24] 1345 	mov	r6, dpl
      0003C8 AF 83            [24] 1346 	mov	r7, dph
                                   1347 ;	analog-ntc-oled.c:214: uint8_t idx = 0;
      0003CA 7D 00            [12] 1348 	mov	r5,#0x00
                                   1349 ;	analog-ntc-oled.c:219: if (value == 0) {
      0003CC EE               [12] 1350 	mov	a,r6
      0003CD 4F               [12] 1351 	orl	a,r7
      0003CE 70 0C            [24] 1352 	jnz	00108$
                                   1353 ;	analog-ntc-oled.c:220: buf[i++] = '0';
      0003D0 E5 13            [12] 1354 	mov	a,_bp
      0003D2 24 28            [12] 1355 	add	a,#0x28
      0003D4 F9               [12] 1356 	mov	r1,a
      0003D5 7C 01            [12] 1357 	mov	r4,#0x01
      0003D7 77 30            [12] 1358 	mov	@r1,#0x30
      0003D9 02 04 79         [24] 1359 	ljmp	00132$
      0003DC                       1360 00108$:
                                   1361 ;	analog-ntc-oled.c:222: uint16_t temp = value;
      0003DC 8E 04            [24] 1362 	mov	ar4,r6
      0003DE 8F 02            [24] 1363 	mov	ar2,r7
                                   1364 ;	analog-ntc-oled.c:225: while (temp > 0) { rev[j++] = (temp % 10) + '0'; temp /= 10; }
      0003E0 E5 13            [12] 1365 	mov	a,_bp
      0003E2 24 2E            [12] 1366 	add	a,#0x2e
      0003E4 FB               [12] 1367 	mov	r3,a
      0003E5 E5 13            [12] 1368 	mov	a,_bp
      0003E7 24 34            [12] 1369 	add	a,#0x34
      0003E9 F8               [12] 1370 	mov	r0,a
      0003EA 76 00            [12] 1371 	mov	@r0,#0x00
      0003EC                       1372 00101$:
      0003EC EC               [12] 1373 	mov	a,r4
      0003ED 4A               [12] 1374 	orl	a,r2
      0003EE 60 62            [24] 1375 	jz	00128$
      0003F0 C0 05            [24] 1376 	push	ar5
      0003F2 E5 13            [12] 1377 	mov	a,_bp
      0003F4 24 34            [12] 1378 	add	a,#0x34
      0003F6 F8               [12] 1379 	mov	r0,a
      0003F7 E6               [12] 1380 	mov	a,@r0
      0003F8 2B               [12] 1381 	add	a, r3
      0003F9 F9               [12] 1382 	mov	r1,a
      0003FA E5 13            [12] 1383 	mov	a,_bp
      0003FC 24 34            [12] 1384 	add	a,#0x34
      0003FE F8               [12] 1385 	mov	r0,a
      0003FF 06               [12] 1386 	inc	@r0
      000400 8C 05            [24] 1387 	mov	ar5,r4
      000402 8A 07            [24] 1388 	mov	ar7,r2
      000404 C0 07            [24] 1389 	push	ar7
      000406 C0 05            [24] 1390 	push	ar5
      000408 C0 03            [24] 1391 	push	ar3
      00040A C0 01            [24] 1392 	push	ar1
      00040C 74 0A            [12] 1393 	mov	a,#0x0a
      00040E C0 E0            [24] 1394 	push	acc
      000410 E4               [12] 1395 	clr	a
      000411 C0 E0            [24] 1396 	push	acc
      000413 8D 82            [24] 1397 	mov	dpl, r5
      000415 8F 83            [24] 1398 	mov	dph, r7
      000417 12 11 3C         [24] 1399 	lcall	__moduint
      00041A AA 82            [24] 1400 	mov	r2, dpl
      00041C 15 81            [12] 1401 	dec	sp
      00041E 15 81            [12] 1402 	dec	sp
      000420 D0 01            [24] 1403 	pop	ar1
      000422 D0 03            [24] 1404 	pop	ar3
      000424 D0 05            [24] 1405 	pop	ar5
      000426 D0 07            [24] 1406 	pop	ar7
      000428 74 30            [12] 1407 	mov	a,#0x30
      00042A 2A               [12] 1408 	add	a, r2
      00042B F7               [12] 1409 	mov	@r1,a
      00042C C0 05            [24] 1410 	push	ar5
      00042E C0 03            [24] 1411 	push	ar3
      000430 74 0A            [12] 1412 	mov	a,#0x0a
      000432 C0 E0            [24] 1413 	push	acc
      000434 E4               [12] 1414 	clr	a
      000435 C0 E0            [24] 1415 	push	acc
      000437 8D 82            [24] 1416 	mov	dpl, r5
      000439 8F 83            [24] 1417 	mov	dph, r7
      00043B 12 0F 98         [24] 1418 	lcall	__divuint
      00043E AE 82            [24] 1419 	mov	r6, dpl
      000440 AF 83            [24] 1420 	mov	r7, dph
      000442 15 81            [12] 1421 	dec	sp
      000444 15 81            [12] 1422 	dec	sp
      000446 D0 03            [24] 1423 	pop	ar3
      000448 D0 05            [24] 1424 	pop	ar5
      00044A 8E 04            [24] 1425 	mov	ar4,r6
      00044C 8F 02            [24] 1426 	mov	ar2,r7
      00044E D0 05            [24] 1427 	pop	ar5
                                   1428 ;	analog-ntc-oled.c:226: while (j > 0) buf[i++] = rev[--j];
      000450 80 9A            [24] 1429 	sjmp	00101$
      000452                       1430 00128$:
      000452 E5 13            [12] 1431 	mov	a,_bp
      000454 24 28            [12] 1432 	add	a,#0x28
      000456 FF               [12] 1433 	mov	r7,a
      000457 8B 06            [24] 1434 	mov	ar6,r3
      000459 7B 00            [12] 1435 	mov	r3,#0x00
      00045B E5 13            [12] 1436 	mov	a,_bp
      00045D 24 34            [12] 1437 	add	a,#0x34
      00045F F8               [12] 1438 	mov	r0,a
      000460 86 02            [24] 1439 	mov	ar2,@r0
      000462                       1440 00104$:
      000462 EA               [12] 1441 	mov	a,r2
      000463 60 12            [24] 1442 	jz	00136$
      000465 C0 05            [24] 1443 	push	ar5
      000467 EB               [12] 1444 	mov	a,r3
      000468 2F               [12] 1445 	add	a, r7
      000469 F9               [12] 1446 	mov	r1,a
      00046A 0B               [12] 1447 	inc	r3
      00046B 1A               [12] 1448 	dec	r2
      00046C EA               [12] 1449 	mov	a,r2
      00046D 2E               [12] 1450 	add	a, r6
      00046E F8               [12] 1451 	mov	r0,a
      00046F 86 05            [24] 1452 	mov	ar5,@r0
      000471 A7 05            [24] 1453 	mov	@r1,ar5
      000473 D0 05            [24] 1454 	pop	ar5
      000475 80 EB            [24] 1455 	sjmp	00104$
      000477                       1456 00136$:
      000477 8B 04            [24] 1457 	mov	ar4,r3
                                   1458 ;	analog-ntc-oled.c:229: for (uint8_t k = 0; k < i; k++) {
      000479                       1459 00132$:
      000479 E5 13            [12] 1460 	mov	a,_bp
      00047B 24 28            [12] 1461 	add	a,#0x28
      00047D FF               [12] 1462 	mov	r7,a
      00047E E5 13            [12] 1463 	mov	a,_bp
      000480 24 04            [12] 1464 	add	a,#0x04
      000482 FE               [12] 1465 	mov	r6,a
      000483 FB               [12] 1466 	mov	r3,a
      000484 7A 00            [12] 1467 	mov	r2,#0x00
      000486                       1468 00117$:
      000486 C3               [12] 1469 	clr	c
      000487 EA               [12] 1470 	mov	a,r2
      000488 9C               [12] 1471 	subb	a,r4
      000489 50 59            [24] 1472 	jnc	00111$
                                   1473 ;	analog-ntc-oled.c:230: uint8_t index = buf[k] - '0';
      00048B EA               [12] 1474 	mov	a,r2
      00048C 2F               [12] 1475 	add	a, r7
      00048D F9               [12] 1476 	mov	r1,a
      00048E E7               [12] 1477 	mov	a,@r1
      00048F 24 D0            [12] 1478 	add	a,#0xd0
                                   1479 ;	analog-ntc-oled.c:231: for (uint8_t col = 0; col < 5; col++) buffer[idx++] = font5x7[index][col];
      000491 75 F0 05         [24] 1480 	mov	b,#0x05
      000494 A4               [48] 1481 	mul	ab
      000495 A8 13            [24] 1482 	mov	r0,_bp
      000497 08               [12] 1483 	inc	r0
      000498 24 27            [12] 1484 	add	a, #_font5x7
      00049A F6               [12] 1485 	mov	@r0,a
      00049B 74 12            [12] 1486 	mov	a,#(_font5x7 >> 8)
      00049D 35 F0            [12] 1487 	addc	a, b
      00049F 08               [12] 1488 	inc	r0
      0004A0 F6               [12] 1489 	mov	@r0,a
      0004A1 E5 13            [12] 1490 	mov	a,_bp
      0004A3 24 03            [12] 1491 	add	a,#0x03
      0004A5 F8               [12] 1492 	mov	r0,a
      0004A6 A6 05            [24] 1493 	mov	@r0,ar5
      0004A8 7D 00            [12] 1494 	mov	r5,#0x00
                                   1495 ;	analog-ntc-oled.c:238: for (uint8_t n = 0; n < idx; n++) i2c_write_byte(buffer[n]);
                                   1496 ;	analog-ntc-oled.c:231: for (uint8_t col = 0; col < 5; col++) buffer[idx++] = font5x7[index][col];
      0004AA                       1497 00114$:
      0004AA BD 05 00         [24] 1498 	cjne	r5,#0x05,00199$
      0004AD                       1499 00199$:
      0004AD 50 20            [24] 1500 	jnc	00110$
      0004AF E5 13            [12] 1501 	mov	a,_bp
      0004B1 24 03            [12] 1502 	add	a,#0x03
      0004B3 F8               [12] 1503 	mov	r0,a
      0004B4 E6               [12] 1504 	mov	a,@r0
      0004B5 2E               [12] 1505 	add	a, r6
      0004B6 F9               [12] 1506 	mov	r1,a
      0004B7 E5 13            [12] 1507 	mov	a,_bp
      0004B9 24 03            [12] 1508 	add	a,#0x03
      0004BB F8               [12] 1509 	mov	r0,a
      0004BC 06               [12] 1510 	inc	@r0
      0004BD A8 13            [24] 1511 	mov	r0,_bp
      0004BF 08               [12] 1512 	inc	r0
      0004C0 ED               [12] 1513 	mov	a,r5
      0004C1 26               [12] 1514 	add	a, @r0
      0004C2 F5 82            [12] 1515 	mov	dpl,a
      0004C4 E4               [12] 1516 	clr	a
      0004C5 08               [12] 1517 	inc	r0
      0004C6 36               [12] 1518 	addc	a, @r0
      0004C7 F5 83            [12] 1519 	mov	dph,a
      0004C9 E4               [12] 1520 	clr	a
      0004CA 93               [24] 1521 	movc	a,@a+dptr
      0004CB F7               [12] 1522 	mov	@r1,a
      0004CC 0D               [12] 1523 	inc	r5
      0004CD 80 DB            [24] 1524 	sjmp	00114$
      0004CF                       1525 00110$:
                                   1526 ;	analog-ntc-oled.c:232: buffer[idx++] = 0x00;
      0004CF E5 13            [12] 1527 	mov	a,_bp
      0004D1 24 03            [12] 1528 	add	a,#0x03
      0004D3 F8               [12] 1529 	mov	r0,a
      0004D4 E6               [12] 1530 	mov	a,@r0
      0004D5 04               [12] 1531 	inc	a
      0004D6 FD               [12] 1532 	mov	r5,a
      0004D7 E5 13            [12] 1533 	mov	a,_bp
      0004D9 24 03            [12] 1534 	add	a,#0x03
      0004DB F8               [12] 1535 	mov	r0,a
      0004DC E6               [12] 1536 	mov	a,@r0
      0004DD 2B               [12] 1537 	add	a, r3
      0004DE F8               [12] 1538 	mov	r0,a
      0004DF 76 00            [12] 1539 	mov	@r0,#0x00
                                   1540 ;	analog-ntc-oled.c:229: for (uint8_t k = 0; k < i; k++) {
      0004E1 0A               [12] 1541 	inc	r2
      0004E2 80 A2            [24] 1542 	sjmp	00117$
      0004E4                       1543 00111$:
                                   1544 ;	analog-ntc-oled.c:235: i2c_start();
      0004E4 C0 06            [24] 1545 	push	ar6
      0004E6 C0 05            [24] 1546 	push	ar5
      0004E8 12 00 CB         [24] 1547 	lcall	_i2c_start
                                   1548 ;	analog-ntc-oled.c:236: i2c_write_byte(OLED_ADDR);
      0004EB 75 82 78         [24] 1549 	mov	dpl, #0x78
      0004EE 12 00 ED         [24] 1550 	lcall	_i2c_write_byte
                                   1551 ;	analog-ntc-oled.c:237: i2c_write_byte(0x40);
      0004F1 75 82 40         [24] 1552 	mov	dpl, #0x40
      0004F4 12 00 ED         [24] 1553 	lcall	_i2c_write_byte
      0004F7 D0 05            [24] 1554 	pop	ar5
      0004F9 D0 06            [24] 1555 	pop	ar6
                                   1556 ;	analog-ntc-oled.c:238: for (uint8_t n = 0; n < idx; n++) i2c_write_byte(buffer[n]);
      0004FB 8E 07            [24] 1557 	mov	ar7,r6
      0004FD 7E 00            [12] 1558 	mov	r6,#0x00
      0004FF                       1559 00120$:
      0004FF C3               [12] 1560 	clr	c
      000500 EE               [12] 1561 	mov	a,r6
      000501 9D               [12] 1562 	subb	a,r5
      000502 50 17            [24] 1563 	jnc	00112$
      000504 EE               [12] 1564 	mov	a,r6
      000505 2F               [12] 1565 	add	a, r7
      000506 F9               [12] 1566 	mov	r1,a
      000507 87 82            [24] 1567 	mov	dpl,@r1
      000509 C0 07            [24] 1568 	push	ar7
      00050B C0 06            [24] 1569 	push	ar6
      00050D C0 05            [24] 1570 	push	ar5
      00050F 12 00 ED         [24] 1571 	lcall	_i2c_write_byte
      000512 D0 05            [24] 1572 	pop	ar5
      000514 D0 06            [24] 1573 	pop	ar6
      000516 D0 07            [24] 1574 	pop	ar7
      000518 0E               [12] 1575 	inc	r6
      000519 80 E4            [24] 1576 	sjmp	00120$
      00051B                       1577 00112$:
                                   1578 ;	analog-ntc-oled.c:239: i2c_stop();
      00051B 12 00 DE         [24] 1579 	lcall	_i2c_stop
                                   1580 ;	analog-ntc-oled.c:240: }
      00051E 85 13 81         [24] 1581 	mov	sp,_bp
      000521 D0 13            [24] 1582 	pop	_bp
      000523 22               [24] 1583 	ret
                                   1584 ;------------------------------------------------------------
                                   1585 ;Allocation info for local variables in function 'oled_print_millivolts'
                                   1586 ;------------------------------------------------------------
                                   1587 ;value         Allocated to registers r6 r7 
                                   1588 ;spacer        Allocated to stack - _bp +1 +6 
                                   1589 ;i             Allocated to registers r7 
                                   1590 ;i             Allocated to registers r7 
                                   1591 ;i             Allocated to registers r7 
                                   1592 ;------------------------------------------------------------
                                   1593 ;	analog-ntc-oled.c:243: void oled_print_millivolts(uint16_t value) {
                                   1594 ;	-----------------------------------------
                                   1595 ;	 function oled_print_millivolts
                                   1596 ;	-----------------------------------------
      000524                       1597 _oled_print_millivolts:
      000524 C0 13            [24] 1598 	push	_bp
      000526 E5 81            [12] 1599 	mov	a,sp
      000528 F5 13            [12] 1600 	mov	_bp,a
      00052A 24 06            [12] 1601 	add	a,#0x06
      00052C F5 81            [12] 1602 	mov	sp,a
                                   1603 ;	analog-ntc-oled.c:244: oled_print_uint(value);  // digits
      00052E 12 03 BC         [24] 1604 	lcall	_oled_print_uint
                                   1605 ;	analog-ntc-oled.c:247: uint8_t spacer[6] = {0,0,0,0,0,0};
      000531 A9 13            [24] 1606 	mov	r1,_bp
      000533 09               [12] 1607 	inc	r1
      000534 77 00            [12] 1608 	mov	@r1,#0x00
      000536 E9               [12] 1609 	mov	a,r1
      000537 04               [12] 1610 	inc	a
      000538 F8               [12] 1611 	mov	r0,a
      000539 76 00            [12] 1612 	mov	@r0,#0x00
      00053B 74 02            [12] 1613 	mov	a,#0x02
      00053D 29               [12] 1614 	add	a, r1
      00053E F8               [12] 1615 	mov	r0,a
      00053F 76 00            [12] 1616 	mov	@r0,#0x00
      000541 74 03            [12] 1617 	mov	a,#0x03
      000543 29               [12] 1618 	add	a, r1
      000544 F8               [12] 1619 	mov	r0,a
      000545 76 00            [12] 1620 	mov	@r0,#0x00
      000547 74 04            [12] 1621 	mov	a,#0x04
      000549 29               [12] 1622 	add	a, r1
      00054A F8               [12] 1623 	mov	r0,a
      00054B 76 00            [12] 1624 	mov	@r0,#0x00
      00054D 74 05            [12] 1625 	mov	a,#0x05
      00054F 29               [12] 1626 	add	a, r1
      000550 F8               [12] 1627 	mov	r0,a
      000551 76 00            [12] 1628 	mov	@r0,#0x00
                                   1629 ;	analog-ntc-oled.c:248: i2c_start(); i2c_write_byte(OLED_ADDR); i2c_write_byte(0x40);
      000553 C0 01            [24] 1630 	push	ar1
      000555 12 00 CB         [24] 1631 	lcall	_i2c_start
      000558 75 82 78         [24] 1632 	mov	dpl, #0x78
      00055B 12 00 ED         [24] 1633 	lcall	_i2c_write_byte
      00055E 75 82 40         [24] 1634 	mov	dpl, #0x40
      000561 12 00 ED         [24] 1635 	lcall	_i2c_write_byte
      000564 D0 01            [24] 1636 	pop	ar1
                                   1637 ;	analog-ntc-oled.c:249: for (uint8_t i = 0; i < 6; i++) i2c_write_byte(spacer[i]);
      000566 7F 00            [12] 1638 	mov	r7,#0x00
      000568                       1639 00105$:
      000568 BF 06 00         [24] 1640 	cjne	r7,#0x06,00154$
      00056B                       1641 00154$:
      00056B 50 13            [24] 1642 	jnc	00101$
      00056D EF               [12] 1643 	mov	a,r7
      00056E 29               [12] 1644 	add	a, r1
      00056F F8               [12] 1645 	mov	r0,a
      000570 86 82            [24] 1646 	mov	dpl,@r0
      000572 C0 07            [24] 1647 	push	ar7
      000574 C0 01            [24] 1648 	push	ar1
      000576 12 00 ED         [24] 1649 	lcall	_i2c_write_byte
      000579 D0 01            [24] 1650 	pop	ar1
      00057B D0 07            [24] 1651 	pop	ar7
      00057D 0F               [12] 1652 	inc	r7
      00057E 80 E8            [24] 1653 	sjmp	00105$
      000580                       1654 00101$:
                                   1655 ;	analog-ntc-oled.c:250: i2c_stop();
      000580 12 00 DE         [24] 1656 	lcall	_i2c_stop
                                   1657 ;	analog-ntc-oled.c:253: i2c_start(); i2c_write_byte(OLED_ADDR); i2c_write_byte(0x40);
      000583 12 00 CB         [24] 1658 	lcall	_i2c_start
      000586 75 82 78         [24] 1659 	mov	dpl, #0x78
      000589 12 00 ED         [24] 1660 	lcall	_i2c_write_byte
      00058C 75 82 40         [24] 1661 	mov	dpl, #0x40
      00058F 12 00 ED         [24] 1662 	lcall	_i2c_write_byte
                                   1663 ;	analog-ntc-oled.c:254: for (uint8_t i = 0; i < 5; i++) i2c_write_byte(font_m[i]);
      000592 7F 00            [12] 1664 	mov	r7,#0x00
      000594                       1665 00108$:
      000594 BF 05 00         [24] 1666 	cjne	r7,#0x05,00156$
      000597                       1667 00156$:
      000597 50 11            [24] 1668 	jnc	00102$
      000599 EF               [12] 1669 	mov	a,r7
      00059A 90 12 59         [24] 1670 	mov	dptr,#_font_m
      00059D 93               [24] 1671 	movc	a,@a+dptr
      00059E F5 82            [12] 1672 	mov	dpl,a
      0005A0 C0 07            [24] 1673 	push	ar7
      0005A2 12 00 ED         [24] 1674 	lcall	_i2c_write_byte
      0005A5 D0 07            [24] 1675 	pop	ar7
      0005A7 0F               [12] 1676 	inc	r7
      0005A8 80 EA            [24] 1677 	sjmp	00108$
      0005AA                       1678 00102$:
                                   1679 ;	analog-ntc-oled.c:255: i2c_write_byte(0x00);
      0005AA 75 82 00         [24] 1680 	mov	dpl, #0x00
      0005AD 12 00 ED         [24] 1681 	lcall	_i2c_write_byte
                                   1682 ;	analog-ntc-oled.c:256: i2c_stop();
      0005B0 12 00 DE         [24] 1683 	lcall	_i2c_stop
                                   1684 ;	analog-ntc-oled.c:259: i2c_start(); i2c_write_byte(OLED_ADDR); i2c_write_byte(0x40);
      0005B3 12 00 CB         [24] 1685 	lcall	_i2c_start
      0005B6 75 82 78         [24] 1686 	mov	dpl, #0x78
      0005B9 12 00 ED         [24] 1687 	lcall	_i2c_write_byte
      0005BC 75 82 40         [24] 1688 	mov	dpl, #0x40
      0005BF 12 00 ED         [24] 1689 	lcall	_i2c_write_byte
                                   1690 ;	analog-ntc-oled.c:260: for (uint8_t i = 0; i < 5; i++) i2c_write_byte(font_V[i]);
      0005C2 7F 00            [12] 1691 	mov	r7,#0x00
      0005C4                       1692 00111$:
      0005C4 BF 05 00         [24] 1693 	cjne	r7,#0x05,00158$
      0005C7                       1694 00158$:
      0005C7 50 11            [24] 1695 	jnc	00103$
      0005C9 EF               [12] 1696 	mov	a,r7
      0005CA 90 12 5E         [24] 1697 	mov	dptr,#_font_V
      0005CD 93               [24] 1698 	movc	a,@a+dptr
      0005CE F5 82            [12] 1699 	mov	dpl,a
      0005D0 C0 07            [24] 1700 	push	ar7
      0005D2 12 00 ED         [24] 1701 	lcall	_i2c_write_byte
      0005D5 D0 07            [24] 1702 	pop	ar7
      0005D7 0F               [12] 1703 	inc	r7
      0005D8 80 EA            [24] 1704 	sjmp	00111$
      0005DA                       1705 00103$:
                                   1706 ;	analog-ntc-oled.c:261: i2c_write_byte(0x00);
      0005DA 75 82 00         [24] 1707 	mov	dpl, #0x00
      0005DD 12 00 ED         [24] 1708 	lcall	_i2c_write_byte
                                   1709 ;	analog-ntc-oled.c:262: i2c_stop();
      0005E0 12 00 DE         [24] 1710 	lcall	_i2c_stop
                                   1711 ;	analog-ntc-oled.c:263: }
      0005E3 85 13 81         [24] 1712 	mov	sp,_bp
      0005E6 D0 13            [24] 1713 	pop	_bp
      0005E8 22               [24] 1714 	ret
                                   1715 ;------------------------------------------------------------
                                   1716 ;Allocation info for local variables in function 'readTemperatureX2'
                                   1717 ;------------------------------------------------------------
                                   1718 ;raw           Allocated to registers r6 
                                   1719 ;smoothed      Allocated to registers r6 
                                   1720 ;i             Allocated to registers r7 
                                   1721 ;------------------------------------------------------------
                                   1722 ;	analog-ntc-oled.c:265: int8_t readTemperatureX2(void) {
                                   1723 ;	-----------------------------------------
                                   1724 ;	 function readTemperatureX2
                                   1725 ;	-----------------------------------------
      0005E9                       1726 _readTemperatureX2:
                                   1727 ;	analog-ntc-oled.c:266: uint8_t raw = analogReading();
      0005E9 12 06 DC         [24] 1728 	lcall	_analogReading
      0005EC AE 82            [24] 1729 	mov	r6, dpl
                                   1730 ;	analog-ntc-oled.c:268: if (!ema_initialized) {
      0005EE E5 11            [12] 1731 	mov	a,_ema_initialized
                                   1732 ;	analog-ntc-oled.c:269: ema_raw = (uint16_t)raw * EMA_N; // seed pre-scaled by N
      0005F0 70 1E            [24] 1733 	jnz	00102$
      0005F2 8E 05            [24] 1734 	mov	ar5,r6
      0005F4 FF               [12] 1735 	mov	r7,a
      0005F5 C0 05            [24] 1736 	push	ar5
      0005F7 C0 07            [24] 1737 	push	ar7
      0005F9 90 00 1E         [24] 1738 	mov	dptr,#0x001e
      0005FC 12 0F E4         [24] 1739 	lcall	__mulint
      0005FF AD 82            [24] 1740 	mov	r5, dpl
      000601 AF 83            [24] 1741 	mov	r7, dph
      000603 15 81            [12] 1742 	dec	sp
      000605 15 81            [12] 1743 	dec	sp
      000607 8D 0F            [24] 1744 	mov	_ema_raw,r5
      000609 8F 10            [24] 1745 	mov	(_ema_raw + 1),r7
                                   1746 ;	analog-ntc-oled.c:270: ema_initialized = 1;
      00060B 75 11 01         [24] 1747 	mov	_ema_initialized,#0x01
      00060E 80 39            [24] 1748 	sjmp	00103$
      000610                       1749 00102$:
                                   1750 ;	analog-ntc-oled.c:272: ema_raw = ema_raw - (ema_raw / EMA_N) + raw; // arbitrary N, uses division
      000610 AD 0F            [24] 1751 	mov	r5,_ema_raw
      000612 AF 10            [24] 1752 	mov	r7,(_ema_raw + 1)
      000614 C0 07            [24] 1753 	push	ar7
      000616 C0 06            [24] 1754 	push	ar6
      000618 C0 05            [24] 1755 	push	ar5
      00061A 74 1E            [12] 1756 	mov	a,#0x1e
      00061C C0 E0            [24] 1757 	push	acc
      00061E E4               [12] 1758 	clr	a
      00061F C0 E0            [24] 1759 	push	acc
      000621 8D 82            [24] 1760 	mov	dpl, r5
      000623 8F 83            [24] 1761 	mov	dph, r7
      000625 12 0F 98         [24] 1762 	lcall	__divuint
      000628 AB 82            [24] 1763 	mov	r3, dpl
      00062A AC 83            [24] 1764 	mov	r4, dph
      00062C 15 81            [12] 1765 	dec	sp
      00062E 15 81            [12] 1766 	dec	sp
      000630 D0 05            [24] 1767 	pop	ar5
      000632 D0 06            [24] 1768 	pop	ar6
      000634 D0 07            [24] 1769 	pop	ar7
      000636 ED               [12] 1770 	mov	a,r5
      000637 C3               [12] 1771 	clr	c
      000638 9B               [12] 1772 	subb	a,r3
      000639 FD               [12] 1773 	mov	r5,a
      00063A EF               [12] 1774 	mov	a,r7
      00063B 9C               [12] 1775 	subb	a,r4
      00063C FF               [12] 1776 	mov	r7,a
      00063D 7C 00            [12] 1777 	mov	r4,#0x00
      00063F EE               [12] 1778 	mov	a,r6
      000640 2D               [12] 1779 	add	a, r5
      000641 FD               [12] 1780 	mov	r5,a
      000642 EC               [12] 1781 	mov	a,r4
      000643 3F               [12] 1782 	addc	a, r7
      000644 FF               [12] 1783 	mov	r7,a
      000645 8D 0F            [24] 1784 	mov	_ema_raw,r5
      000647 8F 10            [24] 1785 	mov	(_ema_raw + 1),r7
      000649                       1786 00103$:
                                   1787 ;	analog-ntc-oled.c:275: uint8_t smoothed = (uint8_t)(ema_raw / EMA_N); // scale back down
      000649 85 0F 82         [24] 1788 	mov	dpl,_ema_raw
      00064C 85 10 83         [24] 1789 	mov	dph,(_ema_raw + 1)
      00064F 74 1E            [12] 1790 	mov	a,#0x1e
      000651 C0 E0            [24] 1791 	push	acc
      000653 E4               [12] 1792 	clr	a
      000654 C0 E0            [24] 1793 	push	acc
      000656 12 0F 98         [24] 1794 	lcall	__divuint
      000659 AE 82            [24] 1795 	mov	r6, dpl
      00065B 15 81            [12] 1796 	dec	sp
      00065D 15 81            [12] 1797 	dec	sp
                                   1798 ;	analog-ntc-oled.c:277: for (uint8_t i = 0; i < NTC_ENTRIES - 1; i++) {
      00065F 7F 00            [12] 1799 	mov	r7,#0x00
      000661                       1800 00108$:
      000661 BF 64 00         [24] 1801 	cjne	r7,#0x64,00137$
      000664                       1802 00137$:
      000664 50 17            [24] 1803 	jnc	00106$
                                   1804 ;	analog-ntc-oled.c:278: if (smoothed >= ntc_adc_table[i + 1]) {
      000666 8F 05            [24] 1805 	mov	ar5,r7
      000668 ED               [12] 1806 	mov	a,r5
      000669 04               [12] 1807 	inc	a
      00066A 90 11 C2         [24] 1808 	mov	dptr,#_ntc_adc_table
      00066D 93               [24] 1809 	movc	a,@a+dptr
      00066E FC               [12] 1810 	mov	r4,a
      00066F C3               [12] 1811 	clr	c
      000670 EE               [12] 1812 	mov	a,r6
      000671 9C               [12] 1813 	subb	a,r4
      000672 40 06            [24] 1814 	jc	00109$
                                   1815 ;	analog-ntc-oled.c:279: return (int8_t)(NTC_T_START_X2 + (int8_t)i);
      000674 74 F6            [12] 1816 	mov	a,#0xf6
      000676 2D               [12] 1817 	add	a, r5
      000677 F5 82            [12] 1818 	mov	dpl,a
      000679 22               [24] 1819 	ret
      00067A                       1820 00109$:
                                   1821 ;	analog-ntc-oled.c:277: for (uint8_t i = 0; i < NTC_ENTRIES - 1; i++) {
      00067A 0F               [12] 1822 	inc	r7
      00067B 80 E4            [24] 1823 	sjmp	00108$
      00067D                       1824 00106$:
                                   1825 ;	analog-ntc-oled.c:282: return (int8_t)(NTC_T_START_X2 + NTC_ENTRIES - 1);
      00067D 75 82 5A         [24] 1826 	mov	dpl, #0x5a
                                   1827 ;	analog-ntc-oled.c:283: }
      000680 22               [24] 1828 	ret
                                   1829 ;------------------------------------------------------------
                                   1830 ;Allocation info for local variables in function 'timer0_ISR'
                                   1831 ;------------------------------------------------------------
                                   1832 ;	analog-ntc-oled.c:285: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
                                   1833 ;	-----------------------------------------
                                   1834 ;	 function timer0_ISR
                                   1835 ;	-----------------------------------------
      000681                       1836 _timer0_ISR:
      000681 C0 E0            [24] 1837 	push	acc
      000683 C0 07            [24] 1838 	push	ar7
      000685 C0 06            [24] 1839 	push	ar6
      000687 C0 D0            [24] 1840 	push	psw
      000689 75 D0 00         [24] 1841 	mov	psw,#0x00
                                   1842 ;	analog-ntc-oled.c:286: TF0 = 0;
                                   1843 ;	assignBit
      00068C C2 8D            [12] 1844 	clr	_TF0
                                   1845 ;	analog-ntc-oled.c:287: TH0 = 0xB1;
      00068E 75 8C B1         [24] 1846 	mov	_TH0,#0xb1
                                   1847 ;	analog-ntc-oled.c:288: TL0 = 0xE0;
      000691 75 8A E0         [24] 1848 	mov	_TL0,#0xe0
                                   1849 ;	analog-ntc-oled.c:290: serialTime++;
      000694 AE 0A            [24] 1850 	mov	r6,_serialTime
      000696 AF 0B            [24] 1851 	mov	r7,(_serialTime + 1)
      000698 74 01            [12] 1852 	mov	a,#0x01
      00069A 2E               [12] 1853 	add	a, r6
      00069B F5 0A            [12] 1854 	mov	_serialTime,a
      00069D E4               [12] 1855 	clr	a
      00069E 3F               [12] 1856 	addc	a, r7
      00069F F5 0B            [12] 1857 	mov	(_serialTime + 1),a
                                   1858 ;	analog-ntc-oled.c:291: tick_10ms++;
      0006A1 AE 08            [24] 1859 	mov	r6,_tick_10ms
      0006A3 AF 09            [24] 1860 	mov	r7,(_tick_10ms + 1)
      0006A5 74 01            [12] 1861 	mov	a,#0x01
      0006A7 2E               [12] 1862 	add	a, r6
      0006A8 F5 08            [12] 1863 	mov	_tick_10ms,a
      0006AA E4               [12] 1864 	clr	a
      0006AB 3F               [12] 1865 	addc	a, r7
      0006AC F5 09            [12] 1866 	mov	(_tick_10ms + 1),a
                                   1867 ;	analog-ntc-oled.c:293: }
      0006AE D0 D0            [24] 1868 	pop	psw
      0006B0 D0 06            [24] 1869 	pop	ar6
      0006B2 D0 07            [24] 1870 	pop	ar7
      0006B4 D0 E0            [24] 1871 	pop	acc
      0006B6 32               [24] 1872 	reti
                                   1873 ;	eliminated unneeded push/pop dpl
                                   1874 ;	eliminated unneeded push/pop dph
                                   1875 ;	eliminated unneeded push/pop b
                                   1876 ;------------------------------------------------------------
                                   1877 ;Allocation info for local variables in function 'timer0_init'
                                   1878 ;------------------------------------------------------------
                                   1879 ;	analog-ntc-oled.c:295: void timer0_init(void) {
                                   1880 ;	-----------------------------------------
                                   1881 ;	 function timer0_init
                                   1882 ;	-----------------------------------------
      0006B7                       1883 _timer0_init:
                                   1884 ;	analog-ntc-oled.c:296: TMOD &= ~0x03;
      0006B7 53 89 FC         [24] 1885 	anl	_TMOD,#0xfc
                                   1886 ;	analog-ntc-oled.c:297: TMOD |=  0x01;
      0006BA 43 89 01         [24] 1887 	orl	_TMOD,#0x01
                                   1888 ;	analog-ntc-oled.c:299: TH0 = 0xB1;
      0006BD 75 8C B1         [24] 1889 	mov	_TH0,#0xb1
                                   1890 ;	analog-ntc-oled.c:300: TL0 = 0xE0;
      0006C0 75 8A E0         [24] 1891 	mov	_TL0,#0xe0
                                   1892 ;	analog-ntc-oled.c:302: ET0 = 1;
                                   1893 ;	assignBit
      0006C3 D2 A9            [12] 1894 	setb	_ET0
                                   1895 ;	analog-ntc-oled.c:303: TR0 = 1;
                                   1896 ;	assignBit
      0006C5 D2 8C            [12] 1897 	setb	_TR0
                                   1898 ;	analog-ntc-oled.c:304: EA = 1;
                                   1899 ;	assignBit
      0006C7 D2 AF            [12] 1900 	setb	_EA
                                   1901 ;	analog-ntc-oled.c:305: }
      0006C9 22               [24] 1902 	ret
                                   1903 ;------------------------------------------------------------
                                   1904 ;Allocation info for local variables in function 'clock_init'
                                   1905 ;------------------------------------------------------------
                                   1906 ;	analog-ntc-oled.c:308: void clock_init(void) {
                                   1907 ;	-----------------------------------------
                                   1908 ;	 function clock_init
                                   1909 ;	-----------------------------------------
      0006CA                       1910 _clock_init:
                                   1911 ;	analog-ntc-oled.c:309: SAFE_MOD = 0x55;
      0006CA 75 A1 55         [24] 1912 	mov	_SAFE_MOD,#0x55
                                   1913 ;	analog-ntc-oled.c:310: SAFE_MOD = 0xAA;
      0006CD 75 A1 AA         [24] 1914 	mov	_SAFE_MOD,#0xaa
                                   1915 ;	analog-ntc-oled.c:311: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      0006D0 74 F8            [12] 1916 	mov	a,#0xf8
      0006D2 55 B9            [12] 1917 	anl	a,_CLOCK_CFG
      0006D4 44 06            [12] 1918 	orl	a,#0x06
      0006D6 F5 B9            [12] 1919 	mov	_CLOCK_CFG,a
                                   1920 ;	analog-ntc-oled.c:312: SAFE_MOD = 0x00;
      0006D8 75 A1 00         [24] 1921 	mov	_SAFE_MOD,#0x00
                                   1922 ;	analog-ntc-oled.c:313: }
      0006DB 22               [24] 1923 	ret
                                   1924 ;------------------------------------------------------------
                                   1925 ;Allocation info for local variables in function 'analogReading'
                                   1926 ;------------------------------------------------------------
                                   1927 ;	analog-ntc-oled.c:316: uint8_t analogReading(void) {
                                   1928 ;	-----------------------------------------
                                   1929 ;	 function analogReading
                                   1930 ;	-----------------------------------------
      0006DC                       1931 _analogReading:
                                   1932 ;	analog-ntc-oled.c:317: ADC_START = 1;
                                   1933 ;	assignBit
      0006DC D2 84            [12] 1934 	setb	_ADC_START
                                   1935 ;	analog-ntc-oled.c:318: while (ADC_START);   // throw away first sample
      0006DE                       1936 00101$:
      0006DE 20 84 FD         [24] 1937 	jb	_ADC_START,00101$
                                   1938 ;	analog-ntc-oled.c:320: ADC_START = 1;
                                   1939 ;	assignBit
      0006E1 D2 84            [12] 1940 	setb	_ADC_START
                                   1941 ;	analog-ntc-oled.c:321: while (ADC_START);
      0006E3                       1942 00104$:
      0006E3 20 84 FD         [24] 1943 	jb	_ADC_START,00104$
                                   1944 ;	analog-ntc-oled.c:323: ADC_IF = 0;
                                   1945 ;	assignBit
      0006E6 C2 85            [12] 1946 	clr	_ADC_IF
                                   1947 ;	analog-ntc-oled.c:324: return ADC_DATA;
      0006E8 85 9F 82         [24] 1948 	mov	dpl, _ADC_DATA
                                   1949 ;	analog-ntc-oled.c:325: }
      0006EB 22               [24] 1950 	ret
                                   1951 ;------------------------------------------------------------
                                   1952 ;Allocation info for local variables in function 'rawToMillivolts'
                                   1953 ;------------------------------------------------------------
                                   1954 ;raw           Allocated to registers r7 
                                   1955 ;------------------------------------------------------------
                                   1956 ;	analog-ntc-oled.c:327: uint16_t rawToMillivolts(uint8_t raw) {
                                   1957 ;	-----------------------------------------
                                   1958 ;	 function rawToMillivolts
                                   1959 ;	-----------------------------------------
      0006EC                       1960 _rawToMillivolts:
      0006EC AF 82            [24] 1961 	mov	r7, dpl
                                   1962 ;	analog-ntc-oled.c:329: return ((uint32_t)raw * 5000) / 255;
      0006EE 7E 00            [12] 1963 	mov	r6,#0x00
      0006F0 7D 00            [12] 1964 	mov	r5,#0x00
      0006F2 7C 00            [12] 1965 	mov	r4,#0x00
      0006F4 C0 07            [24] 1966 	push	ar7
      0006F6 C0 06            [24] 1967 	push	ar6
      0006F8 C0 05            [24] 1968 	push	ar5
      0006FA C0 04            [24] 1969 	push	ar4
      0006FC 90 13 88         [24] 1970 	mov	dptr,#0x1388
      0006FF E4               [12] 1971 	clr	a
      000700 F5 F0            [12] 1972 	mov	b,a
      000702 12 10 8F         [24] 1973 	lcall	__mullong
      000705 AC 82            [24] 1974 	mov	r4, dpl
      000707 AD 83            [24] 1975 	mov	r5, dph
      000709 AE F0            [24] 1976 	mov	r6, b
      00070B FF               [12] 1977 	mov	r7, a
      00070C E5 81            [12] 1978 	mov	a,sp
      00070E 24 FC            [12] 1979 	add	a,#0xfc
      000710 F5 81            [12] 1980 	mov	sp,a
      000712 74 FF            [12] 1981 	mov	a,#0xff
      000714 C0 E0            [24] 1982 	push	acc
      000716 E4               [12] 1983 	clr	a
      000717 C0 E0            [24] 1984 	push	acc
      000719 C0 E0            [24] 1985 	push	acc
      00071B C0 E0            [24] 1986 	push	acc
      00071D 8C 82            [24] 1987 	mov	dpl, r4
      00071F 8D 83            [24] 1988 	mov	dph, r5
      000721 8E F0            [24] 1989 	mov	b, r6
      000723 EF               [12] 1990 	mov	a, r7
      000724 12 10 06         [24] 1991 	lcall	__divulong
      000727 AC 82            [24] 1992 	mov	r4, dpl
      000729 AD 83            [24] 1993 	mov	r5, dph
      00072B E5 81            [12] 1994 	mov	a,sp
      00072D 24 FC            [12] 1995 	add	a,#0xfc
      00072F F5 81            [12] 1996 	mov	sp,a
      000731 8C 82            [24] 1997 	mov	dpl,r4
      000733 8D 83            [24] 1998 	mov	dph,r5
                                   1999 ;	analog-ntc-oled.c:330: }
      000735 22               [24] 2000 	ret
                                   2001 ;------------------------------------------------------------
                                   2002 ;Allocation info for local variables in function 'blink_led'
                                   2003 ;------------------------------------------------------------
                                   2004 ;	analog-ntc-oled.c:331: void blink_led(void) {
                                   2005 ;	-----------------------------------------
                                   2006 ;	 function blink_led
                                   2007 ;	-----------------------------------------
      000736                       2008 _blink_led:
                                   2009 ;	analog-ntc-oled.c:332: if ((tick_10ms % 50) < 25) {
      000736 74 32            [12] 2010 	mov	a,#0x32
      000738 C0 E0            [24] 2011 	push	acc
      00073A E4               [12] 2012 	clr	a
      00073B C0 E0            [24] 2013 	push	acc
      00073D 85 08 82         [24] 2014 	mov	dpl, _tick_10ms
      000740 85 09 83         [24] 2015 	mov	dph, (_tick_10ms + 1)
      000743 12 11 3C         [24] 2016 	lcall	__moduint
      000746 AE 82            [24] 2017 	mov	r6, dpl
      000748 AF 83            [24] 2018 	mov	r7, dph
      00074A 15 81            [12] 2019 	dec	sp
      00074C 15 81            [12] 2020 	dec	sp
      00074E C3               [12] 2021 	clr	c
      00074F EE               [12] 2022 	mov	a,r6
      000750 94 19            [12] 2023 	subb	a,#0x19
      000752 EF               [12] 2024 	mov	a,r7
      000753 94 00            [12] 2025 	subb	a,#0x00
      000755 50 04            [24] 2026 	jnc	00102$
                                   2027 ;	analog-ntc-oled.c:333: P3 |= (1 << 5);
      000757 43 B0 20         [24] 2028 	orl	_P3,#0x20
      00075A 22               [24] 2029 	ret
      00075B                       2030 00102$:
                                   2031 ;	analog-ntc-oled.c:335: P3 &= ~(1 << 5);
      00075B 53 B0 DF         [24] 2032 	anl	_P3,#0xdf
                                   2033 ;	analog-ntc-oled.c:337: }
      00075E 22               [24] 2034 	ret
                                   2035 ;------------------------------------------------------------
                                   2036 ;Allocation info for local variables in function 'main'
                                   2037 ;------------------------------------------------------------
                                   2038 ;m             Allocated to stack - _bp +1 +2 
                                   2039 ;tempX2        Allocated to registers 
                                   2040 ;whole         Allocated to registers r4 
                                   2041 ;half          Allocated to registers r7 
                                   2042 ;page          Allocated to registers r6 
                                   2043 ;i             Allocated to registers r5 
                                   2044 ;w_whole       Allocated to registers r6 
                                   2045 ;w_sign        Allocated to registers r5 
                                   2046 ;w_dot         Allocated to registers 
                                   2047 ;w_half        Allocated to stack - _bp +1 +1 
                                   2048 ;text_width    Allocated to registers 
                                   2049 ;x             Allocated to registers r6 
                                   2050 ;pg            Allocated to registers 
                                   2051 ;sloc0         Allocated to stack - _bp +15 +1 
                                   2052 ;------------------------------------------------------------
                                   2053 ;	analog-ntc-oled.c:339: void main(void) {
                                   2054 ;	-----------------------------------------
                                   2055 ;	 function main
                                   2056 ;	-----------------------------------------
      00075F                       2057 _main:
      00075F C0 13            [24] 2058 	push	_bp
      000761 85 81 13         [24] 2059 	mov	_bp,sp
      000764 05 81            [12] 2060 	inc	sp
      000766 05 81            [12] 2061 	inc	sp
                                   2062 ;	analog-ntc-oled.c:341: SAFE_MOD = 0x55;
      000768 75 A1 55         [24] 2063 	mov	_SAFE_MOD,#0x55
                                   2064 ;	analog-ntc-oled.c:342: SAFE_MOD = 0xAA;
      00076B 75 A1 AA         [24] 2065 	mov	_SAFE_MOD,#0xaa
                                   2066 ;	analog-ntc-oled.c:343: GLOBAL_CFG &= ~bWDOG_EN;
      00076E 53 B1 FE         [24] 2067 	anl	_GLOBAL_CFG,#0xfe
                                   2068 ;	analog-ntc-oled.c:344: SAFE_MOD = 0x00;
      000771 75 A1 00         [24] 2069 	mov	_SAFE_MOD,#0x00
                                   2070 ;	analog-ntc-oled.c:345: clock_init();       // clock MUST be first — everything depends on Fsys=24MHz
      000774 12 06 CA         [24] 2071 	lcall	_clock_init
                                   2072 ;	analog-ntc-oled.c:346: timer0_init();      // timer second — needed for the tick_10ms delay below
      000777 12 06 B7         [24] 2073 	lcall	_timer0_init
                                   2074 ;	analog-ntc-oled.c:349: Serial_begin();         // after clock, so baud rate is correct
      00077A 12 0C DE         [24] 2075 	lcall	_Serial_begin
                                   2076 ;	analog-ntc-oled.c:350: ADCInit(2);
      00077D 75 82 02         [24] 2077 	mov	dpl, #0x02
      000780 12 0A 30         [24] 2078 	lcall	_ADCInit
                                   2079 ;	analog-ntc-oled.c:351: ADC_ChannelSelect(1); // Option 1, P1.4 as analog input -> else if(ch == 1){ADC_CHAN1 =0;ADC_CHAN0=1;P1_DIR_PU &= ~bAIN1;}            //AIN1
      000783 75 82 01         [24] 2080 	mov	dpl, #0x01
      000786 12 0A 3D         [24] 2081 	lcall	_ADC_ChannelSelect
                                   2082 ;	analog-ntc-oled.c:352: for (volatile uint16_t m = 0; m < 1000; m++); // settle
      000789 A8 13            [24] 2083 	mov	r0,_bp
      00078B 08               [12] 2084 	inc	r0
      00078C E4               [12] 2085 	clr	a
      00078D F6               [12] 2086 	mov	@r0,a
      00078E 08               [12] 2087 	inc	r0
      00078F F6               [12] 2088 	mov	@r0,a
      000790                       2089 00118$:
      000790 A8 13            [24] 2090 	mov	r0,_bp
      000792 08               [12] 2091 	inc	r0
      000793 86 06            [24] 2092 	mov	ar6,@r0
      000795 08               [12] 2093 	inc	r0
      000796 86 07            [24] 2094 	mov	ar7,@r0
      000798 C3               [12] 2095 	clr	c
      000799 EE               [12] 2096 	mov	a,r6
      00079A 94 E8            [12] 2097 	subb	a,#0xe8
      00079C EF               [12] 2098 	mov	a,r7
      00079D 94 03            [12] 2099 	subb	a,#0x03
      00079F 50 15            [24] 2100 	jnc	00101$
      0007A1 A8 13            [24] 2101 	mov	r0,_bp
      0007A3 08               [12] 2102 	inc	r0
      0007A4 86 06            [24] 2103 	mov	ar6,@r0
      0007A6 08               [12] 2104 	inc	r0
      0007A7 86 07            [24] 2105 	mov	ar7,@r0
      0007A9 A8 13            [24] 2106 	mov	r0,_bp
      0007AB 08               [12] 2107 	inc	r0
      0007AC 74 01            [12] 2108 	mov	a,#0x01
      0007AE 2E               [12] 2109 	add	a, r6
      0007AF F6               [12] 2110 	mov	@r0,a
      0007B0 E4               [12] 2111 	clr	a
      0007B1 3F               [12] 2112 	addc	a, r7
      0007B2 08               [12] 2113 	inc	r0
      0007B3 F6               [12] 2114 	mov	@r0,a
      0007B4 80 DA            [24] 2115 	sjmp	00118$
      0007B6                       2116 00101$:
                                   2117 ;	analog-ntc-oled.c:356: P1_MOD_OC &= ~(1 << 4);  // not open-drain
      0007B6 53 92 EF         [24] 2118 	anl	_P1_MOD_OC,#0xef
                                   2119 ;	analog-ntc-oled.c:357: P1_DIR_PU  &= ~(1 << 4); // disable pull-up, set as input
      0007B9 53 93 EF         [24] 2120 	anl	_P1_DIR_PU,#0xef
                                   2121 ;	analog-ntc-oled.c:360: P1_MOD_OC |= (1 << SDA_PIN) | (1 << SCL_PIN);  // open-drain
      0007BC 43 92 03         [24] 2122 	orl	_P1_MOD_OC,#0x03
                                   2123 ;	analog-ntc-oled.c:361: P1_DIR_PU  &= ~((1 << SDA_PIN) | (1 << SCL_PIN)); // disable internal pull-up
      0007BF 53 93 FC         [24] 2124 	anl	_P1_DIR_PU,#0xfc
                                   2125 ;	analog-ntc-oled.c:362: SDA_RELEASE();
      0007C2 43 90 01         [24] 2126 	orl	_P1,#0x01
                                   2127 ;	analog-ntc-oled.c:363: SCL_RELEASE();
      0007C5 43 90 02         [24] 2128 	orl	_P1,#0x02
                                   2129 ;	analog-ntc-oled.c:366: P3_MOD_OC &= ~(1 << 5);  // not open-drain (push-pull)
      0007C8 53 96 DF         [24] 2130 	anl	_P3_MOD_OC,#0xdf
                                   2131 ;	analog-ntc-oled.c:367: P3_DIR_PU  |=  (1 << 5); // output
      0007CB 43 97 20         [24] 2132 	orl	_P3_DIR_PU,#0x20
                                   2133 ;	analog-ntc-oled.c:369: while (tick_10ms < 15); // 150ms power-on delay for i2c display
      0007CE                       2134 00102$:
      0007CE C3               [12] 2135 	clr	c
      0007CF E5 08            [12] 2136 	mov	a,_tick_10ms
      0007D1 94 0F            [12] 2137 	subb	a,#0x0f
      0007D3 E5 09            [12] 2138 	mov	a,(_tick_10ms + 1)
      0007D5 94 00            [12] 2139 	subb	a,#0x00
      0007D7 40 F5            [24] 2140 	jc	00102$
                                   2141 ;	analog-ntc-oled.c:370: oled_init();
      0007D9 12 02 4E         [24] 2142 	lcall	_oled_init
                                   2143 ;	analog-ntc-oled.c:372: while (1) {
      0007DC                       2144 00115$:
                                   2145 ;	analog-ntc-oled.c:375: blink_led();
      0007DC 12 07 36         [24] 2146 	lcall	_blink_led
                                   2147 ;	analog-ntc-oled.c:379: if(serialTime > 100) {
      0007DF C3               [12] 2148 	clr	c
      0007E0 74 64            [12] 2149 	mov	a,#0x64
      0007E2 95 0A            [12] 2150 	subb	a,_serialTime
      0007E4 E4               [12] 2151 	clr	a
      0007E5 95 0B            [12] 2152 	subb	a,(_serialTime + 1)
      0007E7 50 F3            [24] 2153 	jnc	00115$
                                   2154 ;	analog-ntc-oled.c:380: serialTime = 0;
      0007E9 E4               [12] 2155 	clr	a
      0007EA F5 0A            [12] 2156 	mov	_serialTime,a
      0007EC F5 0B            [12] 2157 	mov	(_serialTime + 1),a
                                   2158 ;	analog-ntc-oled.c:382: int8_t tempX2 = readTemperatureX2();
      0007EE 12 05 E9         [24] 2159 	lcall	_readTemperatureX2
                                   2160 ;	analog-ntc-oled.c:383: int8_t whole  = tempX2 / 2;
      0007F1 E5 82            [12] 2161 	mov	a,dpl
      0007F3 FF               [12] 2162 	mov	r7,a
      0007F4 33               [12] 2163 	rlc	a
      0007F5 95 E0            [12] 2164 	subb	a,acc
      0007F7 FE               [12] 2165 	mov	r6,a
      0007F8 C0 07            [24] 2166 	push	ar7
      0007FA C0 06            [24] 2167 	push	ar6
      0007FC 74 02            [12] 2168 	mov	a,#0x02
      0007FE C0 E0            [24] 2169 	push	acc
      000800 E4               [12] 2170 	clr	a
      000801 C0 E0            [24] 2171 	push	acc
      000803 8F 82            [24] 2172 	mov	dpl, r7
      000805 8E 83            [24] 2173 	mov	dph, r6
      000807 12 11 81         [24] 2174 	lcall	__divsint
      00080A AC 82            [24] 2175 	mov	r4, dpl
      00080C 15 81            [12] 2176 	dec	sp
      00080E 15 81            [12] 2177 	dec	sp
      000810 D0 06            [24] 2178 	pop	ar6
      000812 D0 07            [24] 2179 	pop	ar7
                                   2180 ;	analog-ntc-oled.c:384: uint8_t half  = (tempX2 % 2) ? 5 : 0; // 0 or 5 (for .0 or .5)
      000814 C0 04            [24] 2181 	push	ar4
      000816 74 02            [12] 2182 	mov	a,#0x02
      000818 C0 E0            [24] 2183 	push	acc
      00081A E4               [12] 2184 	clr	a
      00081B C0 E0            [24] 2185 	push	acc
      00081D 8F 82            [24] 2186 	mov	dpl, r7
      00081F 8E 83            [24] 2187 	mov	dph, r6
      000821 12 10 FF         [24] 2188 	lcall	__modsint
      000824 AE 82            [24] 2189 	mov	r6, dpl
      000826 AF 83            [24] 2190 	mov	r7, dph
      000828 15 81            [12] 2191 	dec	sp
      00082A 15 81            [12] 2192 	dec	sp
      00082C D0 04            [24] 2193 	pop	ar4
      00082E EE               [12] 2194 	mov	a,r6
      00082F 4F               [12] 2195 	orl	a,r7
      000830 60 02            [24] 2196 	jz	00128$
      000832 74 05            [12] 2197 	mov	a,#0x05
      000834                       2198 00128$:
      000834 FF               [12] 2199 	mov	r7,a
                                   2200 ;	analog-ntc-oled.c:387: if (whole < 0) {
      000835 EC               [12] 2201 	mov	a,r4
      000836 30 E7 26         [24] 2202 	jnb	acc.7,00106$
                                   2203 ;	analog-ntc-oled.c:388: Serial_print("-");
      000839 90 12 6A         [24] 2204 	mov	dptr,#___str_0
      00083C 75 F0 80         [24] 2205 	mov	b, #0x80
      00083F C0 07            [24] 2206 	push	ar7
      000841 C0 04            [24] 2207 	push	ar4
      000843 12 0D 12         [24] 2208 	lcall	_Serial_print
      000846 D0 04            [24] 2209 	pop	ar4
                                   2210 ;	analog-ntc-oled.c:389: Serial_print_uint((uint16_t)(-whole));
      000848 8C 06            [24] 2211 	mov	ar6,r4
      00084A C3               [12] 2212 	clr	c
      00084B E4               [12] 2213 	clr	a
      00084C 9E               [12] 2214 	subb	a,r6
      00084D FE               [12] 2215 	mov	r6,a
      00084E 7D 00            [12] 2216 	mov	r5,#0x00
      000850 8E 82            [24] 2217 	mov	dpl, r6
      000852 8D 83            [24] 2218 	mov	dph, r5
      000854 C0 04            [24] 2219 	push	ar4
      000856 12 0D 3D         [24] 2220 	lcall	_Serial_print_uint
      000859 D0 04            [24] 2221 	pop	ar4
      00085B D0 07            [24] 2222 	pop	ar7
      00085D 80 13            [24] 2223 	sjmp	00107$
      00085F                       2224 00106$:
                                   2225 ;	analog-ntc-oled.c:391: Serial_print_uint((uint16_t)whole);
      00085F 8C 06            [24] 2226 	mov	ar6,r4
      000861 7D 00            [12] 2227 	mov	r5,#0x00
      000863 8E 82            [24] 2228 	mov	dpl, r6
      000865 8D 83            [24] 2229 	mov	dph, r5
      000867 C0 07            [24] 2230 	push	ar7
      000869 C0 04            [24] 2231 	push	ar4
      00086B 12 0D 3D         [24] 2232 	lcall	_Serial_print_uint
      00086E D0 04            [24] 2233 	pop	ar4
      000870 D0 07            [24] 2234 	pop	ar7
      000872                       2235 00107$:
                                   2236 ;	analog-ntc-oled.c:393: Serial_print(".");
      000872 90 12 6C         [24] 2237 	mov	dptr,#___str_1
      000875 75 F0 80         [24] 2238 	mov	b, #0x80
      000878 C0 07            [24] 2239 	push	ar7
      00087A C0 04            [24] 2240 	push	ar4
      00087C 12 0D 12         [24] 2241 	lcall	_Serial_print
      00087F D0 04            [24] 2242 	pop	ar4
      000881 D0 07            [24] 2243 	pop	ar7
                                   2244 ;	analog-ntc-oled.c:394: Serial_println_uint((uint16_t)half);  // println only on the last piece
      000883 8F 05            [24] 2245 	mov	ar5,r7
      000885 7E 00            [12] 2246 	mov	r6,#0x00
      000887 8D 82            [24] 2247 	mov	dpl, r5
      000889 8E 83            [24] 2248 	mov	dph, r6
      00088B C0 07            [24] 2249 	push	ar7
      00088D C0 04            [24] 2250 	push	ar4
      00088F 12 0F 2D         [24] 2251 	lcall	_Serial_println_uint
      000892 D0 04            [24] 2252 	pop	ar4
      000894 D0 07            [24] 2253 	pop	ar7
                                   2254 ;	analog-ntc-oled.c:397: for (uint8_t page = 0; page < 4; page++) {
      000896 7E 00            [12] 2255 	mov	r6,#0x00
      000898                       2256 00124$:
      000898 BE 04 00         [24] 2257 	cjne	r6,#0x04,00246$
      00089B                       2258 00246$:
      00089B 50 63            [24] 2259 	jnc	00109$
                                   2260 ;	analog-ntc-oled.c:398: oled_cmd(0xB0 + page);
      00089D 8E 05            [24] 2261 	mov	ar5,r6
      00089F 74 B0            [12] 2262 	mov	a,#0xb0
      0008A1 2D               [12] 2263 	add	a, r5
      0008A2 F5 82            [12] 2264 	mov	dpl,a
      0008A4 C0 07            [24] 2265 	push	ar7
      0008A6 C0 06            [24] 2266 	push	ar6
      0008A8 C0 04            [24] 2267 	push	ar4
      0008AA 12 01 36         [24] 2268 	lcall	_oled_cmd
                                   2269 ;	analog-ntc-oled.c:399: oled_cmd(0x00 | (32 & 0x0F));
      0008AD 75 82 00         [24] 2270 	mov	dpl, #0x00
      0008B0 12 01 36         [24] 2271 	lcall	_oled_cmd
                                   2272 ;	analog-ntc-oled.c:400: oled_cmd(0x10 | (32 >> 4));
      0008B3 75 82 12         [24] 2273 	mov	dpl, #0x12
      0008B6 12 01 36         [24] 2274 	lcall	_oled_cmd
                                   2275 ;	analog-ntc-oled.c:401: i2c_start();
      0008B9 12 00 CB         [24] 2276 	lcall	_i2c_start
                                   2277 ;	analog-ntc-oled.c:402: i2c_write_byte(OLED_ADDR);
      0008BC 75 82 78         [24] 2278 	mov	dpl, #0x78
      0008BF 12 00 ED         [24] 2279 	lcall	_i2c_write_byte
                                   2280 ;	analog-ntc-oled.c:403: i2c_write_byte(0x40);
      0008C2 75 82 40         [24] 2281 	mov	dpl, #0x40
      0008C5 12 00 ED         [24] 2282 	lcall	_i2c_write_byte
      0008C8 D0 04            [24] 2283 	pop	ar4
      0008CA D0 06            [24] 2284 	pop	ar6
      0008CC D0 07            [24] 2285 	pop	ar7
                                   2286 ;	analog-ntc-oled.c:404: for (uint8_t i = 0; i < 64; i++) i2c_write_byte(0x00);
      0008CE 7D 00            [12] 2287 	mov	r5,#0x00
      0008D0                       2288 00121$:
      0008D0 BD 40 00         [24] 2289 	cjne	r5,#0x40,00248$
      0008D3                       2290 00248$:
      0008D3 50 19            [24] 2291 	jnc	00108$
      0008D5 75 82 00         [24] 2292 	mov	dpl, #0x00
      0008D8 C0 07            [24] 2293 	push	ar7
      0008DA C0 06            [24] 2294 	push	ar6
      0008DC C0 05            [24] 2295 	push	ar5
      0008DE C0 04            [24] 2296 	push	ar4
      0008E0 12 00 ED         [24] 2297 	lcall	_i2c_write_byte
      0008E3 D0 04            [24] 2298 	pop	ar4
      0008E5 D0 05            [24] 2299 	pop	ar5
      0008E7 D0 06            [24] 2300 	pop	ar6
      0008E9 D0 07            [24] 2301 	pop	ar7
      0008EB 0D               [12] 2302 	inc	r5
      0008EC 80 E2            [24] 2303 	sjmp	00121$
      0008EE                       2304 00108$:
                                   2305 ;	analog-ntc-oled.c:405: i2c_stop();
      0008EE C0 07            [24] 2306 	push	ar7
      0008F0 C0 06            [24] 2307 	push	ar6
      0008F2 C0 04            [24] 2308 	push	ar4
      0008F4 12 00 DE         [24] 2309 	lcall	_i2c_stop
      0008F7 D0 04            [24] 2310 	pop	ar4
      0008F9 D0 06            [24] 2311 	pop	ar6
      0008FB D0 07            [24] 2312 	pop	ar7
                                   2313 ;	analog-ntc-oled.c:397: for (uint8_t page = 0; page < 4; page++) {
      0008FD 0E               [12] 2314 	inc	r6
      0008FE 80 98            [24] 2315 	sjmp	00124$
      000900                       2316 00109$:
                                   2317 ;	analog-ntc-oled.c:410: uint8_t w_whole = get_text_width((uint16_t)(whole < 0 ? -whole : whole));
      000900 EC               [12] 2318 	mov	a,r4
      000901 30 E7 08         [24] 2319 	jnb	acc.7,00130$
      000904 8C 06            [24] 2320 	mov	ar6,r4
      000906 C3               [12] 2321 	clr	c
      000907 E4               [12] 2322 	clr	a
      000908 9E               [12] 2323 	subb	a,r6
      000909 FE               [12] 2324 	mov	r6,a
      00090A 80 04            [24] 2325 	sjmp	00131$
      00090C                       2326 00130$:
      00090C 8C 05            [24] 2327 	mov	ar5,r4
      00090E 8D 06            [24] 2328 	mov	ar6,r5
      000910                       2329 00131$:
      000910 7D 00            [12] 2330 	mov	r5,#0x00
      000912 8E 82            [24] 2331 	mov	dpl, r6
      000914 8D 83            [24] 2332 	mov	dph, r5
      000916 C0 07            [24] 2333 	push	ar7
      000918 C0 04            [24] 2334 	push	ar4
      00091A 12 03 81         [24] 2335 	lcall	_get_text_width
      00091D AE 82            [24] 2336 	mov	r6, dpl
      00091F D0 04            [24] 2337 	pop	ar4
      000921 D0 07            [24] 2338 	pop	ar7
                                   2339 ;	analog-ntc-oled.c:411: uint8_t w_sign  = (whole < 0) ? 6 : 0; // '-' glyph: 5px + 1 space
      000923 EC               [12] 2340 	mov	a,r4
      000924 30 E7 04         [24] 2341 	jnb	acc.7,00132$
      000927 7D 06            [12] 2342 	mov	r5,#0x06
      000929 80 02            [24] 2343 	sjmp	00133$
      00092B                       2344 00132$:
      00092B 7D 00            [12] 2345 	mov	r5,#0x00
      00092D                       2346 00133$:
                                   2347 ;	analog-ntc-oled.c:413: uint8_t w_half  = get_text_width((uint16_t)half);
      00092D 8F 03            [24] 2348 	mov	ar3,r7
      00092F 7F 00            [12] 2349 	mov	r7,#0x00
      000931 8B 82            [24] 2350 	mov	dpl, r3
      000933 8F 83            [24] 2351 	mov	dph, r7
      000935 C0 07            [24] 2352 	push	ar7
      000937 C0 06            [24] 2353 	push	ar6
      000939 C0 05            [24] 2354 	push	ar5
      00093B C0 04            [24] 2355 	push	ar4
      00093D C0 03            [24] 2356 	push	ar3
      00093F 12 03 81         [24] 2357 	lcall	_get_text_width
      000942 A8 13            [24] 2358 	mov	r0,_bp
      000944 08               [12] 2359 	inc	r0
      000945 A6 82            [24] 2360 	mov	@r0, dpl
      000947 D0 03            [24] 2361 	pop	ar3
      000949 D0 04            [24] 2362 	pop	ar4
      00094B D0 05            [24] 2363 	pop	ar5
      00094D D0 06            [24] 2364 	pop	ar6
      00094F D0 07            [24] 2365 	pop	ar7
                                   2366 ;	analog-ntc-oled.c:414: uint8_t text_width = w_sign + w_whole + w_dot + w_half;
      000951 EE               [12] 2367 	mov	a,r6
      000952 2D               [12] 2368 	add	a, r5
      000953 FA               [12] 2369 	mov	r2,a
      000954 0A               [12] 2370 	inc	r2
      000955 0A               [12] 2371 	inc	r2
      000956 A8 13            [24] 2372 	mov	r0,_bp
      000958 08               [12] 2373 	inc	r0
      000959 E6               [12] 2374 	mov	a,@r0
      00095A 2A               [12] 2375 	add	a, r2
      00095B FA               [12] 2376 	mov	r2,a
                                   2377 ;	analog-ntc-oled.c:416: uint8_t x    = (64 - text_width) / 2;
      00095C C0 06            [24] 2378 	push	ar6
      00095E 7E 00            [12] 2379 	mov	r6,#0x00
      000960 74 40            [12] 2380 	mov	a,#0x40
      000962 C3               [12] 2381 	clr	c
      000963 9A               [12] 2382 	subb	a,r2
      000964 F5 82            [12] 2383 	mov	dpl,a
      000966 E4               [12] 2384 	clr	a
      000967 9E               [12] 2385 	subb	a,r6
      000968 F5 83            [12] 2386 	mov	dph,a
      00096A C0 07            [24] 2387 	push	ar7
      00096C C0 05            [24] 2388 	push	ar5
      00096E C0 04            [24] 2389 	push	ar4
      000970 C0 03            [24] 2390 	push	ar3
      000972 74 02            [12] 2391 	mov	a,#0x02
      000974 C0 E0            [24] 2392 	push	acc
      000976 E4               [12] 2393 	clr	a
      000977 C0 E0            [24] 2394 	push	acc
      000979 12 11 81         [24] 2395 	lcall	__divsint
      00097C AA 82            [24] 2396 	mov	r2, dpl
      00097E 15 81            [12] 2397 	dec	sp
      000980 15 81            [12] 2398 	dec	sp
      000982 D0 03            [24] 2399 	pop	ar3
      000984 D0 04            [24] 2400 	pop	ar4
      000986 D0 05            [24] 2401 	pop	ar5
      000988 D0 07            [24] 2402 	pop	ar7
                                   2403 ;	analog-ntc-oled.c:420: if (whole < 0) {
      00098A EC               [12] 2404 	mov	a,r4
      00098B D0 06            [24] 2405 	pop	ar6
      00098D 30 E7 30         [24] 2406 	jnb	acc.7,00111$
                                   2407 ;	analog-ntc-oled.c:421: oled_set_cursor(x, pg);
      000990 C0 07            [24] 2408 	push	ar7
      000992 C0 06            [24] 2409 	push	ar6
      000994 C0 05            [24] 2410 	push	ar5
      000996 C0 04            [24] 2411 	push	ar4
      000998 C0 03            [24] 2412 	push	ar3
      00099A C0 02            [24] 2413 	push	ar2
      00099C 74 01            [12] 2414 	mov	a,#0x01
      00099E C0 E0            [24] 2415 	push	acc
      0009A0 8A 82            [24] 2416 	mov	dpl, r2
      0009A2 12 01 70         [24] 2417 	lcall	_oled_set_cursor
      0009A5 15 81            [12] 2418 	dec	sp
                                   2419 ;	analog-ntc-oled.c:422: oled_draw_char('-');  // you'll need to add '-' support (see below)
      0009A7 75 82 2D         [24] 2420 	mov	dpl, #0x2d
      0009AA 12 02 E7         [24] 2421 	lcall	_oled_draw_char
      0009AD D0 02            [24] 2422 	pop	ar2
      0009AF D0 03            [24] 2423 	pop	ar3
      0009B1 D0 04            [24] 2424 	pop	ar4
      0009B3 D0 05            [24] 2425 	pop	ar5
      0009B5 D0 06            [24] 2426 	pop	ar6
      0009B7 D0 07            [24] 2427 	pop	ar7
                                   2428 ;	analog-ntc-oled.c:423: x += w_sign;
      0009B9 ED               [12] 2429 	mov	a,r5
      0009BA 2A               [12] 2430 	add	a, r2
      0009BB FA               [12] 2431 	mov	r2,a
                                   2432 ;	analog-ntc-oled.c:424: whole = -whole;
      0009BC C3               [12] 2433 	clr	c
      0009BD E4               [12] 2434 	clr	a
      0009BE 9C               [12] 2435 	subb	a,r4
      0009BF FC               [12] 2436 	mov	r4,a
      0009C0                       2437 00111$:
                                   2438 ;	analog-ntc-oled.c:427: oled_set_cursor(x, pg);
      0009C0 C0 07            [24] 2439 	push	ar7
      0009C2 C0 06            [24] 2440 	push	ar6
      0009C4 C0 04            [24] 2441 	push	ar4
      0009C6 C0 03            [24] 2442 	push	ar3
      0009C8 C0 02            [24] 2443 	push	ar2
      0009CA 74 01            [12] 2444 	mov	a,#0x01
      0009CC C0 E0            [24] 2445 	push	acc
      0009CE 8A 82            [24] 2446 	mov	dpl, r2
      0009D0 12 01 70         [24] 2447 	lcall	_oled_set_cursor
      0009D3 15 81            [12] 2448 	dec	sp
      0009D5 D0 02            [24] 2449 	pop	ar2
      0009D7 D0 03            [24] 2450 	pop	ar3
      0009D9 D0 04            [24] 2451 	pop	ar4
                                   2452 ;	analog-ntc-oled.c:428: oled_print_uint((uint16_t)whole);
      0009DB EC               [12] 2453 	mov	a,r4
      0009DC 33               [12] 2454 	rlc	a
      0009DD 95 E0            [12] 2455 	subb	a,acc
      0009DF FD               [12] 2456 	mov	r5,a
      0009E0 8C 82            [24] 2457 	mov	dpl, r4
      0009E2 8D 83            [24] 2458 	mov	dph, r5
      0009E4 C0 03            [24] 2459 	push	ar3
      0009E6 C0 02            [24] 2460 	push	ar2
      0009E8 12 03 BC         [24] 2461 	lcall	_oled_print_uint
      0009EB D0 02            [24] 2462 	pop	ar2
      0009ED D0 03            [24] 2463 	pop	ar3
      0009EF D0 06            [24] 2464 	pop	ar6
                                   2465 ;	analog-ntc-oled.c:429: x += w_whole;
      0009F1 EE               [12] 2466 	mov	a,r6
      0009F2 2A               [12] 2467 	add	a, r2
      0009F3 FE               [12] 2468 	mov	r6,a
                                   2469 ;	analog-ntc-oled.c:431: oled_set_cursor(x, pg);
      0009F4 C0 06            [24] 2470 	push	ar6
      0009F6 C0 03            [24] 2471 	push	ar3
      0009F8 74 01            [12] 2472 	mov	a,#0x01
      0009FA C0 E0            [24] 2473 	push	acc
      0009FC 8E 82            [24] 2474 	mov	dpl, r6
      0009FE 12 01 70         [24] 2475 	lcall	_oled_set_cursor
      000A01 15 81            [12] 2476 	dec	sp
                                   2477 ;	analog-ntc-oled.c:432: oled_draw_char('.');    // you'll need to add '.' support (see below)
      000A03 75 82 2E         [24] 2478 	mov	dpl, #0x2e
      000A06 12 02 E7         [24] 2479 	lcall	_oled_draw_char
      000A09 D0 03            [24] 2480 	pop	ar3
      000A0B D0 06            [24] 2481 	pop	ar6
                                   2482 ;	analog-ntc-oled.c:433: x += w_dot;
      000A0D 0E               [12] 2483 	inc	r6
      000A0E 0E               [12] 2484 	inc	r6
                                   2485 ;	analog-ntc-oled.c:435: oled_set_cursor(x, pg);
      000A0F C0 03            [24] 2486 	push	ar3
      000A11 74 01            [12] 2487 	mov	a,#0x01
      000A13 C0 E0            [24] 2488 	push	acc
      000A15 8E 82            [24] 2489 	mov	dpl, r6
      000A17 12 01 70         [24] 2490 	lcall	_oled_set_cursor
      000A1A 15 81            [12] 2491 	dec	sp
      000A1C D0 03            [24] 2492 	pop	ar3
      000A1E D0 07            [24] 2493 	pop	ar7
                                   2494 ;	analog-ntc-oled.c:436: oled_print_uint((uint16_t)half);
      000A20 8B 82            [24] 2495 	mov	dpl, r3
      000A22 8F 83            [24] 2496 	mov	dph, r7
      000A24 12 03 BC         [24] 2497 	lcall	_oled_print_uint
      000A27 02 07 DC         [24] 2498 	ljmp	00115$
                                   2499 ;	analog-ntc-oled.c:441: }
      000A2A 85 13 81         [24] 2500 	mov	sp,_bp
      000A2D D0 13            [24] 2501 	pop	_bp
      000A2F 22               [24] 2502 	ret
                                   2503 	.area CSEG    (CODE)
                                   2504 	.area CONST   (CODE)
                                   2505 	.area CONST   (CODE)
      0011C2                       2506 _ntc_adc_table:
      0011C2 D0                    2507 	.db #0xd0	; 208
      0011C3 CF                    2508 	.db #0xcf	; 207
      0011C4 CE                    2509 	.db #0xce	; 206
      0011C5 CD                    2510 	.db #0xcd	; 205
      0011C6 CC                    2511 	.db #0xcc	; 204
      0011C7 CB                    2512 	.db #0xcb	; 203
      0011C8 CA                    2513 	.db #0xca	; 202
      0011C9 C9                    2514 	.db #0xc9	; 201
      0011CA C8                    2515 	.db #0xc8	; 200
      0011CB C7                    2516 	.db #0xc7	; 199
      0011CC C5                    2517 	.db #0xc5	; 197
      0011CD C4                    2518 	.db #0xc4	; 196
      0011CE C3                    2519 	.db #0xc3	; 195
      0011CF C2                    2520 	.db #0xc2	; 194
      0011D0 C1                    2521 	.db #0xc1	; 193
      0011D1 BF                    2522 	.db #0xbf	; 191
      0011D2 BE                    2523 	.db #0xbe	; 190
      0011D3 BD                    2524 	.db #0xbd	; 189
      0011D4 BC                    2525 	.db #0xbc	; 188
      0011D5 BA                    2526 	.db #0xba	; 186
      0011D6 B9                    2527 	.db #0xb9	; 185
      0011D7 B8                    2528 	.db #0xb8	; 184
      0011D8 B6                    2529 	.db #0xb6	; 182
      0011D9 B5                    2530 	.db #0xb5	; 181
      0011DA B4                    2531 	.db #0xb4	; 180
      0011DB B2                    2532 	.db #0xb2	; 178
      0011DC B1                    2533 	.db #0xb1	; 177
      0011DD B0                    2534 	.db #0xb0	; 176
      0011DE AE                    2535 	.db #0xae	; 174
      0011DF AD                    2536 	.db #0xad	; 173
      0011E0 AC                    2537 	.db #0xac	; 172
      0011E1 AA                    2538 	.db #0xaa	; 170
      0011E2 A9                    2539 	.db #0xa9	; 169
      0011E3 A7                    2540 	.db #0xa7	; 167
      0011E4 A6                    2541 	.db #0xa6	; 166
      0011E5 A5                    2542 	.db #0xa5	; 165
      0011E6 A3                    2543 	.db #0xa3	; 163
      0011E7 A2                    2544 	.db #0xa2	; 162
      0011E8 A0                    2545 	.db #0xa0	; 160
      0011E9 9F                    2546 	.db #0x9f	; 159
      0011EA 9D                    2547 	.db #0x9d	; 157
      0011EB 9C                    2548 	.db #0x9c	; 156
      0011EC 9B                    2549 	.db #0x9b	; 155
      0011ED 99                    2550 	.db #0x99	; 153
      0011EE 98                    2551 	.db #0x98	; 152
      0011EF 96                    2552 	.db #0x96	; 150
      0011F0 95                    2553 	.db #0x95	; 149
      0011F1 93                    2554 	.db #0x93	; 147
      0011F2 92                    2555 	.db #0x92	; 146
      0011F3 90                    2556 	.db #0x90	; 144
      0011F4 8F                    2557 	.db #0x8f	; 143
      0011F5 8E                    2558 	.db #0x8e	; 142
      0011F6 8C                    2559 	.db #0x8c	; 140
      0011F7 8B                    2560 	.db #0x8b	; 139
      0011F8 89                    2561 	.db #0x89	; 137
      0011F9 88                    2562 	.db #0x88	; 136
      0011FA 86                    2563 	.db #0x86	; 134
      0011FB 85                    2564 	.db #0x85	; 133
      0011FC 83                    2565 	.db #0x83	; 131
      0011FD 82                    2566 	.db #0x82	; 130
      0011FE 81                    2567 	.db #0x81	; 129
      0011FF 7F                    2568 	.db #0x7f	; 127
      001200 7E                    2569 	.db #0x7e	; 126
      001201 7C                    2570 	.db #0x7c	; 124
      001202 7B                    2571 	.db #0x7b	; 123
      001203 7A                    2572 	.db #0x7a	; 122	'z'
      001204 78                    2573 	.db #0x78	; 120	'x'
      001205 77                    2574 	.db #0x77	; 119	'w'
      001206 75                    2575 	.db #0x75	; 117	'u'
      001207 74                    2576 	.db #0x74	; 116	't'
      001208 73                    2577 	.db #0x73	; 115	's'
      001209 71                    2578 	.db #0x71	; 113	'q'
      00120A 70                    2579 	.db #0x70	; 112	'p'
      00120B 6F                    2580 	.db #0x6f	; 111	'o'
      00120C 6D                    2581 	.db #0x6d	; 109	'm'
      00120D 6C                    2582 	.db #0x6c	; 108	'l'
      00120E 6B                    2583 	.db #0x6b	; 107	'k'
      00120F 69                    2584 	.db #0x69	; 105	'i'
      001210 68                    2585 	.db #0x68	; 104	'h'
      001211 67                    2586 	.db #0x67	; 103	'g'
      001212 66                    2587 	.db #0x66	; 102	'f'
      001213 64                    2588 	.db #0x64	; 100	'd'
      001214 63                    2589 	.db #0x63	; 99	'c'
      001215 62                    2590 	.db #0x62	; 98	'b'
      001216 61                    2591 	.db #0x61	; 97	'a'
      001217 5F                    2592 	.db #0x5f	; 95
      001218 5E                    2593 	.db #0x5e	; 94
      001219 5D                    2594 	.db #0x5d	; 93
      00121A 5C                    2595 	.db #0x5c	; 92
      00121B 5B                    2596 	.db #0x5b	; 91
      00121C 59                    2597 	.db #0x59	; 89	'Y'
      00121D 58                    2598 	.db #0x58	; 88	'X'
      00121E 57                    2599 	.db #0x57	; 87	'W'
      00121F 56                    2600 	.db #0x56	; 86	'V'
      001220 55                    2601 	.db #0x55	; 85	'U'
      001221 54                    2602 	.db #0x54	; 84	'T'
      001222 53                    2603 	.db #0x53	; 83	'S'
      001223 51                    2604 	.db #0x51	; 81	'Q'
      001224 50                    2605 	.db #0x50	; 80	'P'
      001225 4F                    2606 	.db #0x4f	; 79	'O'
      001226 4E                    2607 	.db #0x4e	; 78	'N'
                                   2608 	.area CSEG    (CODE)
                                   2609 	.area CONST   (CODE)
      001227                       2610 _font5x7:
      001227 3E                    2611 	.db #0x3e	; 62
      001228 51                    2612 	.db #0x51	; 81	'Q'
      001229 49                    2613 	.db #0x49	; 73	'I'
      00122A 45                    2614 	.db #0x45	; 69	'E'
      00122B 3E                    2615 	.db #0x3e	; 62
      00122C 00                    2616 	.db #0x00	; 0
      00122D 42                    2617 	.db #0x42	; 66	'B'
      00122E 7F                    2618 	.db #0x7f	; 127
      00122F 40                    2619 	.db #0x40	; 64
      001230 00                    2620 	.db #0x00	; 0
      001231 62                    2621 	.db #0x62	; 98	'b'
      001232 51                    2622 	.db #0x51	; 81	'Q'
      001233 49                    2623 	.db #0x49	; 73	'I'
      001234 49                    2624 	.db #0x49	; 73	'I'
      001235 46                    2625 	.db #0x46	; 70	'F'
      001236 22                    2626 	.db #0x22	; 34
      001237 49                    2627 	.db #0x49	; 73	'I'
      001238 49                    2628 	.db #0x49	; 73	'I'
      001239 49                    2629 	.db #0x49	; 73	'I'
      00123A 36                    2630 	.db #0x36	; 54	'6'
      00123B 18                    2631 	.db #0x18	; 24
      00123C 14                    2632 	.db #0x14	; 20
      00123D 12                    2633 	.db #0x12	; 18
      00123E 7F                    2634 	.db #0x7f	; 127
      00123F 10                    2635 	.db #0x10	; 16
      001240 2F                    2636 	.db #0x2f	; 47
      001241 49                    2637 	.db #0x49	; 73	'I'
      001242 49                    2638 	.db #0x49	; 73	'I'
      001243 49                    2639 	.db #0x49	; 73	'I'
      001244 31                    2640 	.db #0x31	; 49	'1'
      001245 3E                    2641 	.db #0x3e	; 62
      001246 49                    2642 	.db #0x49	; 73	'I'
      001247 49                    2643 	.db #0x49	; 73	'I'
      001248 49                    2644 	.db #0x49	; 73	'I'
      001249 32                    2645 	.db #0x32	; 50	'2'
      00124A 01                    2646 	.db #0x01	; 1
      00124B 71                    2647 	.db #0x71	; 113	'q'
      00124C 09                    2648 	.db #0x09	; 9
      00124D 05                    2649 	.db #0x05	; 5
      00124E 03                    2650 	.db #0x03	; 3
      00124F 36                    2651 	.db #0x36	; 54	'6'
      001250 49                    2652 	.db #0x49	; 73	'I'
      001251 49                    2653 	.db #0x49	; 73	'I'
      001252 49                    2654 	.db #0x49	; 73	'I'
      001253 36                    2655 	.db #0x36	; 54	'6'
      001254 26                    2656 	.db #0x26	; 38
      001255 49                    2657 	.db #0x49	; 73	'I'
      001256 49                    2658 	.db #0x49	; 73	'I'
      001257 49                    2659 	.db #0x49	; 73	'I'
      001258 3E                    2660 	.db #0x3e	; 62
                                   2661 	.area CSEG    (CODE)
                                   2662 	.area CONST   (CODE)
      001259                       2663 _font_m:
      001259 7C                    2664 	.db #0x7c	; 124
      00125A 04                    2665 	.db #0x04	; 4
      00125B 18                    2666 	.db #0x18	; 24
      00125C 04                    2667 	.db #0x04	; 4
      00125D 78                    2668 	.db #0x78	; 120	'x'
                                   2669 	.area CSEG    (CODE)
                                   2670 	.area CONST   (CODE)
      00125E                       2671 _font_V:
      00125E 1F                    2672 	.db #0x1f	; 31
      00125F 20                    2673 	.db #0x20	; 32
      001260 40                    2674 	.db #0x40	; 64
      001261 20                    2675 	.db #0x20	; 32
      001262 1F                    2676 	.db #0x1f	; 31
                                   2677 	.area CSEG    (CODE)
                                   2678 	.area CONST   (CODE)
      001263                       2679 _font_minus:
      001263 08                    2680 	.db #0x08	; 8
      001264 08                    2681 	.db #0x08	; 8
      001265 08                    2682 	.db #0x08	; 8
      001266 08                    2683 	.db #0x08	; 8
      001267 08                    2684 	.db #0x08	; 8
                                   2685 	.area CSEG    (CODE)
                                   2686 	.area CONST   (CODE)
      001268                       2687 _font_dot:
      001268 40                    2688 	.db #0x40	; 64
      001269 00                    2689 	.db #0x00	; 0
                                   2690 	.area CSEG    (CODE)
                                   2691 	.area CONST   (CODE)
      00126A                       2692 ___str_0:
      00126A 2D                    2693 	.ascii "-"
      00126B 00                    2694 	.db 0x00
                                   2695 	.area CSEG    (CODE)
                                   2696 	.area CONST   (CODE)
      00126C                       2697 ___str_1:
      00126C 2E                    2698 	.ascii "."
      00126D 00                    2699 	.db 0x00
                                   2700 	.area CSEG    (CODE)
                                   2701 	.area XINIT   (CODE)
                                   2702 	.area CABS    (ABS,CODE)
