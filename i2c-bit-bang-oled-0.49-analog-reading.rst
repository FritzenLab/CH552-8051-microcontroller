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
                                     11 	.globl _font_V
                                     12 	.globl _font_m
                                     13 	.globl _font5x7
                                     14 	.globl _main
                                     15 	.globl _rawToMillivolts
                                     16 	.globl _analogReading
                                     17 	.globl _clock_init
                                     18 	.globl _timer0_init
                                     19 	.globl _timer0_ISR
                                     20 	.globl _oled_print_uint
                                     21 	.globl _get_text_width
                                     22 	.globl _oled_draw_char
                                     23 	.globl _oled_init
                                     24 	.globl _oled_clear
                                     25 	.globl _oled_write_data_stream
                                     26 	.globl _oled_set_cursor
                                     27 	.globl _oled_data
                                     28 	.globl _oled_cmd
                                     29 	.globl _i2c_write_byte
                                     30 	.globl _i2c_stop
                                     31 	.globl _i2c_start
                                     32 	.globl _i2c_delay
                                     33 	.globl _Serial_println_uint
                                     34 	.globl _Serial_begin
                                     35 	.globl _ADC_ChannelSelect
                                     36 	.globl _ADCInit
                                     37 	.globl _UIF_BUS_RST
                                     38 	.globl _UIF_DETECT
                                     39 	.globl _UIF_TRANSFER
                                     40 	.globl _UIF_SUSPEND
                                     41 	.globl _UIF_HST_SOF
                                     42 	.globl _UIF_FIFO_OV
                                     43 	.globl _U_SIE_FREE
                                     44 	.globl _U_TOG_OK
                                     45 	.globl _U_IS_NAK
                                     46 	.globl _ADC_CHAN0
                                     47 	.globl _ADC_CHAN1
                                     48 	.globl _CMP_CHAN
                                     49 	.globl _ADC_START
                                     50 	.globl _ADC_IF
                                     51 	.globl _CMP_IF
                                     52 	.globl _CMPO
                                     53 	.globl _U1RI
                                     54 	.globl _U1TI
                                     55 	.globl _U1RB8
                                     56 	.globl _U1TB8
                                     57 	.globl _U1REN
                                     58 	.globl _U1SMOD
                                     59 	.globl _U1SM0
                                     60 	.globl _S0_R_FIFO
                                     61 	.globl _S0_T_FIFO
                                     62 	.globl _S0_FREE
                                     63 	.globl _S0_IF_BYTE
                                     64 	.globl _S0_IF_FIRST
                                     65 	.globl _S0_IF_OV
                                     66 	.globl _S0_FST_ACT
                                     67 	.globl _CP_RL2
                                     68 	.globl _C_T2
                                     69 	.globl _TR2
                                     70 	.globl _EXEN2
                                     71 	.globl _TCLK
                                     72 	.globl _RCLK
                                     73 	.globl _EXF2
                                     74 	.globl _CAP1F
                                     75 	.globl _TF2
                                     76 	.globl _RI
                                     77 	.globl _TI
                                     78 	.globl _RB8
                                     79 	.globl _TB8
                                     80 	.globl _REN
                                     81 	.globl _SM2
                                     82 	.globl _SM1
                                     83 	.globl _SM0
                                     84 	.globl _IT0
                                     85 	.globl _IE0
                                     86 	.globl _IT1
                                     87 	.globl _IE1
                                     88 	.globl _TR0
                                     89 	.globl _TF0
                                     90 	.globl _TR1
                                     91 	.globl _TF1
                                     92 	.globl _RXD
                                     93 	.globl _PWM1_
                                     94 	.globl _TXD
                                     95 	.globl _PWM2_
                                     96 	.globl _AIN3
                                     97 	.globl _VBUS1
                                     98 	.globl _INT0
                                     99 	.globl _TXD1_
                                    100 	.globl _INT1
                                    101 	.globl _T0
                                    102 	.globl _RXD1_
                                    103 	.globl _PWM2
                                    104 	.globl _T1
                                    105 	.globl _UDP
                                    106 	.globl _UDM
                                    107 	.globl _TIN0
                                    108 	.globl _CAP1
                                    109 	.globl _T2
                                    110 	.globl _AIN0
                                    111 	.globl _VBUS2
                                    112 	.globl _TIN1
                                    113 	.globl _CAP2
                                    114 	.globl _T2EX
                                    115 	.globl _RXD_
                                    116 	.globl _TXD_
                                    117 	.globl _AIN1
                                    118 	.globl _UCC1
                                    119 	.globl _TIN2
                                    120 	.globl _SCS
                                    121 	.globl _CAP1_
                                    122 	.globl _T2_
                                    123 	.globl _AIN2
                                    124 	.globl _UCC2
                                    125 	.globl _TIN3
                                    126 	.globl _PWM1
                                    127 	.globl _MOSI
                                    128 	.globl _TIN4
                                    129 	.globl _RXD1
                                    130 	.globl _MISO
                                    131 	.globl _TIN5
                                    132 	.globl _TXD1
                                    133 	.globl _SCK
                                    134 	.globl _IE_SPI0
                                    135 	.globl _IE_TKEY
                                    136 	.globl _IE_USB
                                    137 	.globl _IE_ADC
                                    138 	.globl _IE_UART1
                                    139 	.globl _IE_PWMX
                                    140 	.globl _IE_GPIO
                                    141 	.globl _IE_WDOG
                                    142 	.globl _PX0
                                    143 	.globl _PT0
                                    144 	.globl _PX1
                                    145 	.globl _PT1
                                    146 	.globl _PS
                                    147 	.globl _PT2
                                    148 	.globl _PL_FLAG
                                    149 	.globl _PH_FLAG
                                    150 	.globl _EX0
                                    151 	.globl _ET0
                                    152 	.globl _EX1
                                    153 	.globl _ET1
                                    154 	.globl _ES
                                    155 	.globl _ET2
                                    156 	.globl _E_DIS
                                    157 	.globl _EA
                                    158 	.globl _P
                                    159 	.globl _F1
                                    160 	.globl _OV
                                    161 	.globl _RS0
                                    162 	.globl _RS1
                                    163 	.globl _F0
                                    164 	.globl _AC
                                    165 	.globl _CY
                                    166 	.globl _UEP1_DMA_H
                                    167 	.globl _UEP1_DMA_L
                                    168 	.globl _UEP1_DMA
                                    169 	.globl _UEP0_DMA_H
                                    170 	.globl _UEP0_DMA_L
                                    171 	.globl _UEP0_DMA
                                    172 	.globl _UEP2_3_MOD
                                    173 	.globl _UEP4_1_MOD
                                    174 	.globl _UEP3_DMA_H
                                    175 	.globl _UEP3_DMA_L
                                    176 	.globl _UEP3_DMA
                                    177 	.globl _UEP2_DMA_H
                                    178 	.globl _UEP2_DMA_L
                                    179 	.globl _UEP2_DMA
                                    180 	.globl _USB_DEV_AD
                                    181 	.globl _USB_CTRL
                                    182 	.globl _USB_INT_EN
                                    183 	.globl _UEP4_T_LEN
                                    184 	.globl _UEP4_CTRL
                                    185 	.globl _UEP0_T_LEN
                                    186 	.globl _UEP0_CTRL
                                    187 	.globl _USB_RX_LEN
                                    188 	.globl _USB_MIS_ST
                                    189 	.globl _USB_INT_ST
                                    190 	.globl _USB_INT_FG
                                    191 	.globl _UEP3_T_LEN
                                    192 	.globl _UEP3_CTRL
                                    193 	.globl _UEP2_T_LEN
                                    194 	.globl _UEP2_CTRL
                                    195 	.globl _UEP1_T_LEN
                                    196 	.globl _UEP1_CTRL
                                    197 	.globl _UDEV_CTRL
                                    198 	.globl _USB_C_CTRL
                                    199 	.globl _TKEY_DATH
                                    200 	.globl _TKEY_DATL
                                    201 	.globl _TKEY_DAT
                                    202 	.globl _TKEY_CTRL
                                    203 	.globl _ADC_DATA
                                    204 	.globl _ADC_CFG
                                    205 	.globl _ADC_CTRL
                                    206 	.globl _SBAUD1
                                    207 	.globl _SBUF1
                                    208 	.globl _SCON1
                                    209 	.globl _SPI0_SETUP
                                    210 	.globl _SPI0_CK_SE
                                    211 	.globl _SPI0_CTRL
                                    212 	.globl _SPI0_DATA
                                    213 	.globl _SPI0_STAT
                                    214 	.globl _PWM_CK_SE
                                    215 	.globl _PWM_CTRL
                                    216 	.globl _PWM_DATA1
                                    217 	.globl _PWM_DATA2
                                    218 	.globl _T2CAP1H
                                    219 	.globl _T2CAP1L
                                    220 	.globl _T2CAP1
                                    221 	.globl _TH2
                                    222 	.globl _TL2
                                    223 	.globl _T2COUNT
                                    224 	.globl _RCAP2H
                                    225 	.globl _RCAP2L
                                    226 	.globl _RCAP2
                                    227 	.globl _T2MOD
                                    228 	.globl _T2CON
                                    229 	.globl _SBUF
                                    230 	.globl _SCON
                                    231 	.globl _TH1
                                    232 	.globl _TH0
                                    233 	.globl _TL1
                                    234 	.globl _TL0
                                    235 	.globl _TMOD
                                    236 	.globl _TCON
                                    237 	.globl _XBUS_AUX
                                    238 	.globl _PIN_FUNC
                                    239 	.globl _P3_DIR_PU
                                    240 	.globl _P3_MOD_OC
                                    241 	.globl _P3
                                    242 	.globl _P2
                                    243 	.globl _P1_DIR_PU
                                    244 	.globl _P1_MOD_OC
                                    245 	.globl _P1
                                    246 	.globl _ROM_CTRL
                                    247 	.globl _ROM_DATA_H
                                    248 	.globl _ROM_DATA_L
                                    249 	.globl _ROM_DATA
                                    250 	.globl _ROM_ADDR_H
                                    251 	.globl _ROM_ADDR_L
                                    252 	.globl _ROM_ADDR
                                    253 	.globl _GPIO_IE
                                    254 	.globl _IP_EX
                                    255 	.globl _IE_EX
                                    256 	.globl _IP
                                    257 	.globl _IE
                                    258 	.globl _WDOG_COUNT
                                    259 	.globl _RESET_KEEP
                                    260 	.globl _WAKE_CTRL
                                    261 	.globl _CLOCK_CFG
                                    262 	.globl _PCON
                                    263 	.globl _GLOBAL_CFG
                                    264 	.globl _SAFE_MOD
                                    265 	.globl _DPH
                                    266 	.globl _DPL
                                    267 	.globl _SP
                                    268 	.globl _B
                                    269 	.globl _ACC
                                    270 	.globl _PSW
                                    271 	.globl _finalAnalog
                                    272 	.globl _rawAnalog
                                    273 	.globl _serialTime
                                    274 	.globl _tick_10ms
                                    275 ;--------------------------------------------------------
                                    276 ; special function registers
                                    277 ;--------------------------------------------------------
                                    278 	.area RSEG    (ABS,DATA)
      000000                        279 	.org 0x0000
                           0000D0   280 _PSW	=	0x00d0
                           0000E0   281 _ACC	=	0x00e0
                           0000F0   282 _B	=	0x00f0
                           000081   283 _SP	=	0x0081
                           000082   284 _DPL	=	0x0082
                           000083   285 _DPH	=	0x0083
                           0000A1   286 _SAFE_MOD	=	0x00a1
                           0000B1   287 _GLOBAL_CFG	=	0x00b1
                           000087   288 _PCON	=	0x0087
                           0000B9   289 _CLOCK_CFG	=	0x00b9
                           0000A9   290 _WAKE_CTRL	=	0x00a9
                           0000FE   291 _RESET_KEEP	=	0x00fe
                           0000FF   292 _WDOG_COUNT	=	0x00ff
                           0000A8   293 _IE	=	0x00a8
                           0000B8   294 _IP	=	0x00b8
                           0000E8   295 _IE_EX	=	0x00e8
                           0000E9   296 _IP_EX	=	0x00e9
                           0000C7   297 _GPIO_IE	=	0x00c7
                           008584   298 _ROM_ADDR	=	0x8584
                           000084   299 _ROM_ADDR_L	=	0x0084
                           000085   300 _ROM_ADDR_H	=	0x0085
                           008F8E   301 _ROM_DATA	=	0x8f8e
                           00008E   302 _ROM_DATA_L	=	0x008e
                           00008F   303 _ROM_DATA_H	=	0x008f
                           000086   304 _ROM_CTRL	=	0x0086
                           000090   305 _P1	=	0x0090
                           000092   306 _P1_MOD_OC	=	0x0092
                           000093   307 _P1_DIR_PU	=	0x0093
                           0000A0   308 _P2	=	0x00a0
                           0000B0   309 _P3	=	0x00b0
                           000096   310 _P3_MOD_OC	=	0x0096
                           000097   311 _P3_DIR_PU	=	0x0097
                           0000C6   312 _PIN_FUNC	=	0x00c6
                           0000A2   313 _XBUS_AUX	=	0x00a2
                           000088   314 _TCON	=	0x0088
                           000089   315 _TMOD	=	0x0089
                           00008A   316 _TL0	=	0x008a
                           00008B   317 _TL1	=	0x008b
                           00008C   318 _TH0	=	0x008c
                           00008D   319 _TH1	=	0x008d
                           000098   320 _SCON	=	0x0098
                           000099   321 _SBUF	=	0x0099
                           0000C8   322 _T2CON	=	0x00c8
                           0000C9   323 _T2MOD	=	0x00c9
                           00CBCA   324 _RCAP2	=	0xcbca
                           0000CA   325 _RCAP2L	=	0x00ca
                           0000CB   326 _RCAP2H	=	0x00cb
                           00CDCC   327 _T2COUNT	=	0xcdcc
                           0000CC   328 _TL2	=	0x00cc
                           0000CD   329 _TH2	=	0x00cd
                           00CFCE   330 _T2CAP1	=	0xcfce
                           0000CE   331 _T2CAP1L	=	0x00ce
                           0000CF   332 _T2CAP1H	=	0x00cf
                           00009B   333 _PWM_DATA2	=	0x009b
                           00009C   334 _PWM_DATA1	=	0x009c
                           00009D   335 _PWM_CTRL	=	0x009d
                           00009E   336 _PWM_CK_SE	=	0x009e
                           0000F8   337 _SPI0_STAT	=	0x00f8
                           0000F9   338 _SPI0_DATA	=	0x00f9
                           0000FA   339 _SPI0_CTRL	=	0x00fa
                           0000FB   340 _SPI0_CK_SE	=	0x00fb
                           0000FC   341 _SPI0_SETUP	=	0x00fc
                           0000C0   342 _SCON1	=	0x00c0
                           0000C1   343 _SBUF1	=	0x00c1
                           0000C2   344 _SBAUD1	=	0x00c2
                           000080   345 _ADC_CTRL	=	0x0080
                           00009A   346 _ADC_CFG	=	0x009a
                           00009F   347 _ADC_DATA	=	0x009f
                           0000C3   348 _TKEY_CTRL	=	0x00c3
                           00C5C4   349 _TKEY_DAT	=	0xc5c4
                           0000C4   350 _TKEY_DATL	=	0x00c4
                           0000C5   351 _TKEY_DATH	=	0x00c5
                           000091   352 _USB_C_CTRL	=	0x0091
                           0000D1   353 _UDEV_CTRL	=	0x00d1
                           0000D2   354 _UEP1_CTRL	=	0x00d2
                           0000D3   355 _UEP1_T_LEN	=	0x00d3
                           0000D4   356 _UEP2_CTRL	=	0x00d4
                           0000D5   357 _UEP2_T_LEN	=	0x00d5
                           0000D6   358 _UEP3_CTRL	=	0x00d6
                           0000D7   359 _UEP3_T_LEN	=	0x00d7
                           0000D8   360 _USB_INT_FG	=	0x00d8
                           0000D9   361 _USB_INT_ST	=	0x00d9
                           0000DA   362 _USB_MIS_ST	=	0x00da
                           0000DB   363 _USB_RX_LEN	=	0x00db
                           0000DC   364 _UEP0_CTRL	=	0x00dc
                           0000DD   365 _UEP0_T_LEN	=	0x00dd
                           0000DE   366 _UEP4_CTRL	=	0x00de
                           0000DF   367 _UEP4_T_LEN	=	0x00df
                           0000E1   368 _USB_INT_EN	=	0x00e1
                           0000E2   369 _USB_CTRL	=	0x00e2
                           0000E3   370 _USB_DEV_AD	=	0x00e3
                           00E5E4   371 _UEP2_DMA	=	0xe5e4
                           0000E4   372 _UEP2_DMA_L	=	0x00e4
                           0000E5   373 _UEP2_DMA_H	=	0x00e5
                           00E7E6   374 _UEP3_DMA	=	0xe7e6
                           0000E6   375 _UEP3_DMA_L	=	0x00e6
                           0000E7   376 _UEP3_DMA_H	=	0x00e7
                           0000EA   377 _UEP4_1_MOD	=	0x00ea
                           0000EB   378 _UEP2_3_MOD	=	0x00eb
                           00EDEC   379 _UEP0_DMA	=	0xedec
                           0000EC   380 _UEP0_DMA_L	=	0x00ec
                           0000ED   381 _UEP0_DMA_H	=	0x00ed
                           00EFEE   382 _UEP1_DMA	=	0xefee
                           0000EE   383 _UEP1_DMA_L	=	0x00ee
                           0000EF   384 _UEP1_DMA_H	=	0x00ef
                                    385 ;--------------------------------------------------------
                                    386 ; special function bits
                                    387 ;--------------------------------------------------------
                                    388 	.area RSEG    (ABS,DATA)
      000000                        389 	.org 0x0000
                           0000D7   390 _CY	=	0x00d7
                           0000D6   391 _AC	=	0x00d6
                           0000D5   392 _F0	=	0x00d5
                           0000D4   393 _RS1	=	0x00d4
                           0000D3   394 _RS0	=	0x00d3
                           0000D2   395 _OV	=	0x00d2
                           0000D1   396 _F1	=	0x00d1
                           0000D0   397 _P	=	0x00d0
                           0000AF   398 _EA	=	0x00af
                           0000AE   399 _E_DIS	=	0x00ae
                           0000AD   400 _ET2	=	0x00ad
                           0000AC   401 _ES	=	0x00ac
                           0000AB   402 _ET1	=	0x00ab
                           0000AA   403 _EX1	=	0x00aa
                           0000A9   404 _ET0	=	0x00a9
                           0000A8   405 _EX0	=	0x00a8
                           0000BF   406 _PH_FLAG	=	0x00bf
                           0000BE   407 _PL_FLAG	=	0x00be
                           0000BD   408 _PT2	=	0x00bd
                           0000BC   409 _PS	=	0x00bc
                           0000BB   410 _PT1	=	0x00bb
                           0000BA   411 _PX1	=	0x00ba
                           0000B9   412 _PT0	=	0x00b9
                           0000B8   413 _PX0	=	0x00b8
                           0000EF   414 _IE_WDOG	=	0x00ef
                           0000EE   415 _IE_GPIO	=	0x00ee
                           0000ED   416 _IE_PWMX	=	0x00ed
                           0000EC   417 _IE_UART1	=	0x00ec
                           0000EB   418 _IE_ADC	=	0x00eb
                           0000EA   419 _IE_USB	=	0x00ea
                           0000E9   420 _IE_TKEY	=	0x00e9
                           0000E8   421 _IE_SPI0	=	0x00e8
                           000097   422 _SCK	=	0x0097
                           000097   423 _TXD1	=	0x0097
                           000097   424 _TIN5	=	0x0097
                           000096   425 _MISO	=	0x0096
                           000096   426 _RXD1	=	0x0096
                           000096   427 _TIN4	=	0x0096
                           000095   428 _MOSI	=	0x0095
                           000095   429 _PWM1	=	0x0095
                           000095   430 _TIN3	=	0x0095
                           000095   431 _UCC2	=	0x0095
                           000095   432 _AIN2	=	0x0095
                           000094   433 _T2_	=	0x0094
                           000094   434 _CAP1_	=	0x0094
                           000094   435 _SCS	=	0x0094
                           000094   436 _TIN2	=	0x0094
                           000094   437 _UCC1	=	0x0094
                           000094   438 _AIN1	=	0x0094
                           000093   439 _TXD_	=	0x0093
                           000092   440 _RXD_	=	0x0092
                           000091   441 _T2EX	=	0x0091
                           000091   442 _CAP2	=	0x0091
                           000091   443 _TIN1	=	0x0091
                           000091   444 _VBUS2	=	0x0091
                           000091   445 _AIN0	=	0x0091
                           000090   446 _T2	=	0x0090
                           000090   447 _CAP1	=	0x0090
                           000090   448 _TIN0	=	0x0090
                           0000B7   449 _UDM	=	0x00b7
                           0000B6   450 _UDP	=	0x00b6
                           0000B5   451 _T1	=	0x00b5
                           0000B4   452 _PWM2	=	0x00b4
                           0000B4   453 _RXD1_	=	0x00b4
                           0000B4   454 _T0	=	0x00b4
                           0000B3   455 _INT1	=	0x00b3
                           0000B2   456 _TXD1_	=	0x00b2
                           0000B2   457 _INT0	=	0x00b2
                           0000B2   458 _VBUS1	=	0x00b2
                           0000B2   459 _AIN3	=	0x00b2
                           0000B1   460 _PWM2_	=	0x00b1
                           0000B1   461 _TXD	=	0x00b1
                           0000B0   462 _PWM1_	=	0x00b0
                           0000B0   463 _RXD	=	0x00b0
                           00008F   464 _TF1	=	0x008f
                           00008E   465 _TR1	=	0x008e
                           00008D   466 _TF0	=	0x008d
                           00008C   467 _TR0	=	0x008c
                           00008B   468 _IE1	=	0x008b
                           00008A   469 _IT1	=	0x008a
                           000089   470 _IE0	=	0x0089
                           000088   471 _IT0	=	0x0088
                           00009F   472 _SM0	=	0x009f
                           00009E   473 _SM1	=	0x009e
                           00009D   474 _SM2	=	0x009d
                           00009C   475 _REN	=	0x009c
                           00009B   476 _TB8	=	0x009b
                           00009A   477 _RB8	=	0x009a
                           000099   478 _TI	=	0x0099
                           000098   479 _RI	=	0x0098
                           0000CF   480 _TF2	=	0x00cf
                           0000CF   481 _CAP1F	=	0x00cf
                           0000CE   482 _EXF2	=	0x00ce
                           0000CD   483 _RCLK	=	0x00cd
                           0000CC   484 _TCLK	=	0x00cc
                           0000CB   485 _EXEN2	=	0x00cb
                           0000CA   486 _TR2	=	0x00ca
                           0000C9   487 _C_T2	=	0x00c9
                           0000C8   488 _CP_RL2	=	0x00c8
                           0000FF   489 _S0_FST_ACT	=	0x00ff
                           0000FE   490 _S0_IF_OV	=	0x00fe
                           0000FD   491 _S0_IF_FIRST	=	0x00fd
                           0000FC   492 _S0_IF_BYTE	=	0x00fc
                           0000FB   493 _S0_FREE	=	0x00fb
                           0000FA   494 _S0_T_FIFO	=	0x00fa
                           0000F8   495 _S0_R_FIFO	=	0x00f8
                           0000C7   496 _U1SM0	=	0x00c7
                           0000C5   497 _U1SMOD	=	0x00c5
                           0000C4   498 _U1REN	=	0x00c4
                           0000C3   499 _U1TB8	=	0x00c3
                           0000C2   500 _U1RB8	=	0x00c2
                           0000C1   501 _U1TI	=	0x00c1
                           0000C0   502 _U1RI	=	0x00c0
                           000087   503 _CMPO	=	0x0087
                           000086   504 _CMP_IF	=	0x0086
                           000085   505 _ADC_IF	=	0x0085
                           000084   506 _ADC_START	=	0x0084
                           000083   507 _CMP_CHAN	=	0x0083
                           000081   508 _ADC_CHAN1	=	0x0081
                           000080   509 _ADC_CHAN0	=	0x0080
                           0000DF   510 _U_IS_NAK	=	0x00df
                           0000DE   511 _U_TOG_OK	=	0x00de
                           0000DD   512 _U_SIE_FREE	=	0x00dd
                           0000DC   513 _UIF_FIFO_OV	=	0x00dc
                           0000DB   514 _UIF_HST_SOF	=	0x00db
                           0000DA   515 _UIF_SUSPEND	=	0x00da
                           0000D9   516 _UIF_TRANSFER	=	0x00d9
                           0000D8   517 _UIF_DETECT	=	0x00d8
                           0000D8   518 _UIF_BUS_RST	=	0x00d8
                                    519 ;--------------------------------------------------------
                                    520 ; overlayable register banks
                                    521 ;--------------------------------------------------------
                                    522 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        523 	.ds 8
                                    524 ;--------------------------------------------------------
                                    525 ; internal ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area DSEG    (DATA)
      000008                        528 _tick_10ms::
      000008                        529 	.ds 2
      00000A                        530 _serialTime::
      00000A                        531 	.ds 2
      00000C                        532 _rawAnalog::
      00000C                        533 	.ds 1
      00000D                        534 _finalAnalog::
      00000D                        535 	.ds 2
                                    536 ;--------------------------------------------------------
                                    537 ; overlayable items in internal ram
                                    538 ;--------------------------------------------------------
                                    539 ;--------------------------------------------------------
                                    540 ; Stack segment in internal ram
                                    541 ;--------------------------------------------------------
                                    542 	.area SSEG
      000011                        543 __start__stack:
      000011                        544 	.ds	1
                                    545 
                                    546 ;--------------------------------------------------------
                                    547 ; indirectly addressable internal ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area ISEG    (DATA)
                                    550 ;--------------------------------------------------------
                                    551 ; absolute internal ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area IABS    (ABS,DATA)
                                    554 	.area IABS    (ABS,DATA)
                                    555 ;--------------------------------------------------------
                                    556 ; bit data
                                    557 ;--------------------------------------------------------
                                    558 	.area BSEG    (BIT)
                                    559 ;--------------------------------------------------------
                                    560 ; paged external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area PSEG    (PAG,XDATA)
                                    563 ;--------------------------------------------------------
                                    564 ; uninitialized external ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area XSEG    (XDATA)
                                    567 ;--------------------------------------------------------
                                    568 ; absolute external ram data
                                    569 ;--------------------------------------------------------
                                    570 	.area XABS    (ABS,XDATA)
                                    571 ;--------------------------------------------------------
                                    572 ; initialized external ram data
                                    573 ;--------------------------------------------------------
                                    574 	.area XISEG   (XDATA)
                                    575 	.area HOME    (CODE)
                                    576 	.area GSINIT0 (CODE)
                                    577 	.area GSINIT1 (CODE)
                                    578 	.area GSINIT2 (CODE)
                                    579 	.area GSINIT3 (CODE)
                                    580 	.area GSINIT4 (CODE)
                                    581 	.area GSINIT5 (CODE)
                                    582 	.area GSINIT  (CODE)
                                    583 	.area GSFINAL (CODE)
                                    584 	.area CSEG    (CODE)
                                    585 ;--------------------------------------------------------
                                    586 ; interrupt vector
                                    587 ;--------------------------------------------------------
                                    588 	.area HOME    (CODE)
      000000                        589 __interrupt_vect:
      000000 02 00 54         [24]  590 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  591 	reti
      000004                        592 	.ds	7
      00000B 02 05 35         [24]  593 	ljmp	_timer0_ISR
                                    594 ; restartable atomic support routines
      00000E                        595 	.ds	2
      000010                        596 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  597 	nop
      000011 00               [12]  598 	nop
      000012                        599 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  600 	movx	a, @r0
      000013 FB               [12]  601 	mov	r3, a
      000014 EA               [12]  602 	mov	a, r2
      000015 F2               [24]  603 	movx	@r0, a
      000016 80 2C            [24]  604 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  605 	nop
      000019 00               [12]  606 	nop
      00001A                        607 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  608 	movx	a, @dptr
      00001B FB               [12]  609 	mov	r3, a
      00001C EA               [12]  610 	mov	a, r2
      00001D F0               [24]  611 	movx	@dptr, a
      00001E 80 24            [24]  612 	sjmp	sdcc_atomic_exchange_exit
      000020                        613 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  614 	mov	a, @r0
      000021 B5 02 02         [24]  615 	cjne	a, ar2, .+#5
      000024 EB               [12]  616 	mov	a, r3
      000025 F6               [12]  617 	mov	@r0, a
      000026 22               [24]  618 	ret
      000027 00               [12]  619 	nop
      000028                        620 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  621 	movx	a, @r0
      000029 B5 02 02         [24]  622 	cjne	a, ar2, .+#5
      00002C EB               [12]  623 	mov	a, r3
      00002D F2               [24]  624 	movx	@r0, a
      00002E 22               [24]  625 	ret
      00002F 00               [12]  626 	nop
      000030                        627 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  628 	movx	a, @dptr
      000031 B5 02 02         [24]  629 	cjne	a, ar2, .+#5
      000034 EB               [12]  630 	mov	a, r3
      000035 F0               [24]  631 	movx	@dptr, a
      000036 22               [24]  632 	ret
      000037                        633 sdcc_atomic_exchange_rollback_end::
                                    634 
      000037                        635 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  636 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  637 	mov	r0, dpl
      00003C 20 F5 D3         [24]  638 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        639 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  640 	mov	a, r2
      000040 C6               [12]  641 	xch	a, @r0
      000041 F5 82            [12]  642 	mov	dpl, a
      000043 22               [24]  643 	ret
      000044                        644 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  645 	mov	dpl, r3
      000046 22               [24]  646 	ret
      000047                        647 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  648 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  649 	mov	r0, dpl
      00004C 20 F5 D9         [24]  650 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  651 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    652 ;--------------------------------------------------------
                                    653 ; global & static initialisations
                                    654 ;--------------------------------------------------------
                                    655 	.area HOME    (CODE)
                                    656 	.area GSINIT  (CODE)
                                    657 	.area GSFINAL (CODE)
                                    658 	.area GSINIT  (CODE)
                                    659 	.globl __sdcc_gsinit_startup
                                    660 	.globl __sdcc_program_startup
                                    661 	.globl __start__stack
                                    662 	.globl __mcs51_genXINIT
                                    663 	.globl __mcs51_genXRAMCLEAR
                                    664 	.globl __mcs51_genRAMCLEAR
                                    665 ;	i2c-bit-bang-oled-0.49-analog-reading.c:7: volatile unsigned int tick_10ms = 0;
      0000AD E4               [12]  666 	clr	a
      0000AE F5 08            [12]  667 	mov	_tick_10ms,a
      0000B0 F5 09            [12]  668 	mov	(_tick_10ms + 1),a
                                    669 ;	i2c-bit-bang-oled-0.49-analog-reading.c:8: volatile unsigned int serialTime = 0;
      0000B2 F5 0A            [12]  670 	mov	_serialTime,a
      0000B4 F5 0B            [12]  671 	mov	(_serialTime + 1),a
                                    672 ;	i2c-bit-bang-oled-0.49-analog-reading.c:10: uint8_t rawAnalog = 0;
      0000B6 F5 0C            [12]  673 	mov	_rawAnalog,a
                                    674 ;	i2c-bit-bang-oled-0.49-analog-reading.c:11: uint16_t finalAnalog = 0;
      0000B8 F5 0D            [12]  675 	mov	_finalAnalog,a
      0000BA F5 0E            [12]  676 	mov	(_finalAnalog + 1),a
                                    677 	.area GSFINAL (CODE)
      0000BF 02 00 51         [24]  678 	ljmp	__sdcc_program_startup
                                    679 ;--------------------------------------------------------
                                    680 ; Home
                                    681 ;--------------------------------------------------------
                                    682 	.area HOME    (CODE)
                                    683 	.area HOME    (CODE)
      000051                        684 __sdcc_program_startup:
      000051 02 05 EA         [24]  685 	ljmp	_main
                                    686 ;	return from main will return to caller
                                    687 ;--------------------------------------------------------
                                    688 ; code
                                    689 ;--------------------------------------------------------
                                    690 	.area CSEG    (CODE)
                                    691 ;------------------------------------------------------------
                                    692 ;Allocation info for local variables in function 'i2c_delay'
                                    693 ;------------------------------------------------------------
                                    694 ;	i2c-bit-bang-oled-0.49-analog-reading.c:23: void i2c_delay(void) {
                                    695 ;	-----------------------------------------
                                    696 ;	 function i2c_delay
                                    697 ;	-----------------------------------------
      0000C2                        698 _i2c_delay:
                           000007   699 	ar7 = 0x07
                           000006   700 	ar6 = 0x06
                           000005   701 	ar5 = 0x05
                           000004   702 	ar4 = 0x04
                           000003   703 	ar3 = 0x03
                           000002   704 	ar2 = 0x02
                           000001   705 	ar1 = 0x01
                           000000   706 	ar0 = 0x00
                                    707 ;	i2c-bit-bang-oled-0.49-analog-reading.c:24: __asm nop __endasm;
      0000C2 00               [12]  708 	nop	
                                    709 ;	i2c-bit-bang-oled-0.49-analog-reading.c:25: __asm nop __endasm;
      0000C3 00               [12]  710 	nop	
                                    711 ;	i2c-bit-bang-oled-0.49-analog-reading.c:26: }
      0000C4 22               [24]  712 	ret
                                    713 ;------------------------------------------------------------
                                    714 ;Allocation info for local variables in function 'i2c_start'
                                    715 ;------------------------------------------------------------
                                    716 ;	i2c-bit-bang-oled-0.49-analog-reading.c:28: void i2c_start(void) {
                                    717 ;	-----------------------------------------
                                    718 ;	 function i2c_start
                                    719 ;	-----------------------------------------
      0000C5                        720 _i2c_start:
                                    721 ;	i2c-bit-bang-oled-0.49-analog-reading.c:29: SDA_RELEASE();
      0000C5 43 90 01         [24]  722 	orl	_P1,#0x01
                                    723 ;	i2c-bit-bang-oled-0.49-analog-reading.c:30: SCL_RELEASE();
      0000C8 43 90 02         [24]  724 	orl	_P1,#0x02
                                    725 ;	i2c-bit-bang-oled-0.49-analog-reading.c:31: i2c_delay();
      0000CB 12 00 C2         [24]  726 	lcall	_i2c_delay
                                    727 ;	i2c-bit-bang-oled-0.49-analog-reading.c:33: SDA_LOW();
      0000CE 53 90 FE         [24]  728 	anl	_P1,#0xfe
                                    729 ;	i2c-bit-bang-oled-0.49-analog-reading.c:34: i2c_delay();
      0000D1 12 00 C2         [24]  730 	lcall	_i2c_delay
                                    731 ;	i2c-bit-bang-oled-0.49-analog-reading.c:35: SCL_LOW();
      0000D4 53 90 FD         [24]  732 	anl	_P1,#0xfd
                                    733 ;	i2c-bit-bang-oled-0.49-analog-reading.c:36: }
      0000D7 22               [24]  734 	ret
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'i2c_stop'
                                    737 ;------------------------------------------------------------
                                    738 ;	i2c-bit-bang-oled-0.49-analog-reading.c:38: void i2c_stop(void) {
                                    739 ;	-----------------------------------------
                                    740 ;	 function i2c_stop
                                    741 ;	-----------------------------------------
      0000D8                        742 _i2c_stop:
                                    743 ;	i2c-bit-bang-oled-0.49-analog-reading.c:39: SDA_LOW();
      0000D8 53 90 FE         [24]  744 	anl	_P1,#0xfe
                                    745 ;	i2c-bit-bang-oled-0.49-analog-reading.c:40: SCL_RELEASE();
      0000DB 43 90 02         [24]  746 	orl	_P1,#0x02
                                    747 ;	i2c-bit-bang-oled-0.49-analog-reading.c:41: i2c_delay();
      0000DE 12 00 C2         [24]  748 	lcall	_i2c_delay
                                    749 ;	i2c-bit-bang-oled-0.49-analog-reading.c:43: SDA_RELEASE();
      0000E1 43 90 01         [24]  750 	orl	_P1,#0x01
                                    751 ;	i2c-bit-bang-oled-0.49-analog-reading.c:44: i2c_delay();
                                    752 ;	i2c-bit-bang-oled-0.49-analog-reading.c:45: }
      0000E4 02 00 C2         [24]  753 	ljmp	_i2c_delay
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'i2c_write_byte'
                                    756 ;------------------------------------------------------------
                                    757 ;data          Allocated to registers r7 
                                    758 ;i             Allocated to registers r6 
                                    759 ;ack           Allocated to registers 
                                    760 ;------------------------------------------------------------
                                    761 ;	i2c-bit-bang-oled-0.49-analog-reading.c:49: uint8_t i2c_write_byte(uint8_t data) {
                                    762 ;	-----------------------------------------
                                    763 ;	 function i2c_write_byte
                                    764 ;	-----------------------------------------
      0000E7                        765 _i2c_write_byte:
      0000E7 AF 82            [24]  766 	mov	r7, dpl
                                    767 ;	i2c-bit-bang-oled-0.49-analog-reading.c:50: for (uint8_t i = 0; i < 8; i++) {
      0000E9 7E 00            [12]  768 	mov	r6,#0x00
      0000EB                        769 00106$:
      0000EB BE 08 00         [24]  770 	cjne	r6,#0x08,00137$
      0000EE                        771 00137$:
      0000EE 50 26            [24]  772 	jnc	00104$
                                    773 ;	i2c-bit-bang-oled-0.49-analog-reading.c:51: if (data & 0x80)
      0000F0 EF               [12]  774 	mov	a,r7
      0000F1 30 E7 05         [24]  775 	jnb	acc.7,00102$
                                    776 ;	i2c-bit-bang-oled-0.49-analog-reading.c:52: SDA_RELEASE();
      0000F4 43 90 01         [24]  777 	orl	_P1,#0x01
      0000F7 80 03            [24]  778 	sjmp	00103$
      0000F9                        779 00102$:
                                    780 ;	i2c-bit-bang-oled-0.49-analog-reading.c:54: SDA_LOW();
      0000F9 53 90 FE         [24]  781 	anl	_P1,#0xfe
      0000FC                        782 00103$:
                                    783 ;	i2c-bit-bang-oled-0.49-analog-reading.c:56: SCL_RELEASE();
      0000FC 43 90 02         [24]  784 	orl	_P1,#0x02
                                    785 ;	i2c-bit-bang-oled-0.49-analog-reading.c:57: i2c_delay();
      0000FF C0 07            [24]  786 	push	ar7
      000101 C0 06            [24]  787 	push	ar6
      000103 12 00 C2         [24]  788 	lcall	_i2c_delay
                                    789 ;	i2c-bit-bang-oled-0.49-analog-reading.c:58: SCL_LOW();
      000106 53 90 FD         [24]  790 	anl	_P1,#0xfd
                                    791 ;	i2c-bit-bang-oled-0.49-analog-reading.c:59: i2c_delay();
      000109 12 00 C2         [24]  792 	lcall	_i2c_delay
      00010C D0 06            [24]  793 	pop	ar6
      00010E D0 07            [24]  794 	pop	ar7
                                    795 ;	i2c-bit-bang-oled-0.49-analog-reading.c:60: data <<= 1;
      000110 EF               [12]  796 	mov	a,r7
      000111 2F               [12]  797 	add	a,r7
      000112 FF               [12]  798 	mov	r7,a
                                    799 ;	i2c-bit-bang-oled-0.49-analog-reading.c:50: for (uint8_t i = 0; i < 8; i++) {
      000113 0E               [12]  800 	inc	r6
      000114 80 D5            [24]  801 	sjmp	00106$
      000116                        802 00104$:
                                    803 ;	i2c-bit-bang-oled-0.49-analog-reading.c:64: SDA_RELEASE();
      000116 43 90 01         [24]  804 	orl	_P1,#0x01
                                    805 ;	i2c-bit-bang-oled-0.49-analog-reading.c:65: SCL_RELEASE();
      000119 43 90 02         [24]  806 	orl	_P1,#0x02
                                    807 ;	i2c-bit-bang-oled-0.49-analog-reading.c:66: i2c_delay();
      00011C 12 00 C2         [24]  808 	lcall	_i2c_delay
                                    809 ;	i2c-bit-bang-oled-0.49-analog-reading.c:68: uint8_t ack = (P1 & (1 << SDA_PIN)) ? 1 : 0;
      00011F E5 90            [12]  810 	mov	a,_P1
      000121 30 E0 04         [24]  811 	jnb	acc.0,00110$
      000124 7F 01            [12]  812 	mov	r7,#0x01
      000126 80 02            [24]  813 	sjmp	00111$
      000128                        814 00110$:
      000128 7F 00            [12]  815 	mov	r7,#0x00
      00012A                        816 00111$:
      00012A 8F 82            [24]  817 	mov	dpl,r7
                                    818 ;	i2c-bit-bang-oled-0.49-analog-reading.c:69: SCL_LOW();
      00012C 53 90 FD         [24]  819 	anl	_P1,#0xfd
                                    820 ;	i2c-bit-bang-oled-0.49-analog-reading.c:70: return ack; // 0 = ACK, 1 = NACK
                                    821 ;	i2c-bit-bang-oled-0.49-analog-reading.c:71: }
      00012F 22               [24]  822 	ret
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'oled_cmd'
                                    825 ;------------------------------------------------------------
                                    826 ;cmd           Allocated to registers r7 
                                    827 ;------------------------------------------------------------
                                    828 ;	i2c-bit-bang-oled-0.49-analog-reading.c:76: void oled_cmd(uint8_t cmd) {
                                    829 ;	-----------------------------------------
                                    830 ;	 function oled_cmd
                                    831 ;	-----------------------------------------
      000130                        832 _oled_cmd:
      000130 AF 82            [24]  833 	mov	r7, dpl
                                    834 ;	i2c-bit-bang-oled-0.49-analog-reading.c:77: i2c_start();
      000132 C0 07            [24]  835 	push	ar7
      000134 12 00 C5         [24]  836 	lcall	_i2c_start
                                    837 ;	i2c-bit-bang-oled-0.49-analog-reading.c:78: i2c_write_byte(OLED_ADDR);
      000137 75 82 78         [24]  838 	mov	dpl, #0x78
      00013A 12 00 E7         [24]  839 	lcall	_i2c_write_byte
                                    840 ;	i2c-bit-bang-oled-0.49-analog-reading.c:79: i2c_write_byte(0x00);
      00013D 75 82 00         [24]  841 	mov	dpl, #0x00
      000140 12 00 E7         [24]  842 	lcall	_i2c_write_byte
      000143 D0 07            [24]  843 	pop	ar7
                                    844 ;	i2c-bit-bang-oled-0.49-analog-reading.c:80: i2c_write_byte(cmd);
      000145 8F 82            [24]  845 	mov	dpl, r7
      000147 12 00 E7         [24]  846 	lcall	_i2c_write_byte
                                    847 ;	i2c-bit-bang-oled-0.49-analog-reading.c:81: i2c_stop();
                                    848 ;	i2c-bit-bang-oled-0.49-analog-reading.c:82: }
      00014A 02 00 D8         [24]  849 	ljmp	_i2c_stop
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'oled_data'
                                    852 ;------------------------------------------------------------
                                    853 ;data          Allocated to registers r7 
                                    854 ;------------------------------------------------------------
                                    855 ;	i2c-bit-bang-oled-0.49-analog-reading.c:84: void oled_data(uint8_t data) {
                                    856 ;	-----------------------------------------
                                    857 ;	 function oled_data
                                    858 ;	-----------------------------------------
      00014D                        859 _oled_data:
      00014D AF 82            [24]  860 	mov	r7, dpl
                                    861 ;	i2c-bit-bang-oled-0.49-analog-reading.c:85: i2c_start();
      00014F C0 07            [24]  862 	push	ar7
      000151 12 00 C5         [24]  863 	lcall	_i2c_start
                                    864 ;	i2c-bit-bang-oled-0.49-analog-reading.c:86: i2c_write_byte(OLED_ADDR);
      000154 75 82 78         [24]  865 	mov	dpl, #0x78
      000157 12 00 E7         [24]  866 	lcall	_i2c_write_byte
                                    867 ;	i2c-bit-bang-oled-0.49-analog-reading.c:87: i2c_write_byte(0x40);
      00015A 75 82 40         [24]  868 	mov	dpl, #0x40
      00015D 12 00 E7         [24]  869 	lcall	_i2c_write_byte
      000160 D0 07            [24]  870 	pop	ar7
                                    871 ;	i2c-bit-bang-oled-0.49-analog-reading.c:88: i2c_write_byte(data);
      000162 8F 82            [24]  872 	mov	dpl, r7
      000164 12 00 E7         [24]  873 	lcall	_i2c_write_byte
                                    874 ;	i2c-bit-bang-oled-0.49-analog-reading.c:89: i2c_stop();
                                    875 ;	i2c-bit-bang-oled-0.49-analog-reading.c:90: }
      000167 02 00 D8         [24]  876 	ljmp	_i2c_stop
                                    877 ;------------------------------------------------------------
                                    878 ;Allocation info for local variables in function 'oled_set_cursor'
                                    879 ;------------------------------------------------------------
                                    880 ;page          Allocated to stack - _bp -3 +1 
                                    881 ;x             Allocated to registers r7 
                                    882 ;col           Allocated to registers r7 
                                    883 ;------------------------------------------------------------
                                    884 ;	i2c-bit-bang-oled-0.49-analog-reading.c:92: void oled_set_cursor(uint8_t x, uint8_t page) {
                                    885 ;	-----------------------------------------
                                    886 ;	 function oled_set_cursor
                                    887 ;	-----------------------------------------
      00016A                        888 _oled_set_cursor:
      00016A C0 10            [24]  889 	push	_bp
      00016C 85 81 10         [24]  890 	mov	_bp,sp
      00016F AF 82            [24]  891 	mov	r7, dpl
                                    892 ;	i2c-bit-bang-oled-0.49-analog-reading.c:94: uint8_t col = x + 32;
      000171 74 20            [12]  893 	mov	a,#0x20
      000173 2F               [12]  894 	add	a, r7
      000174 FF               [12]  895 	mov	r7,a
                                    896 ;	i2c-bit-bang-oled-0.49-analog-reading.c:95: oled_cmd(0xB0 + page);
      000175 E5 10            [12]  897 	mov	a,_bp
      000177 24 FD            [12]  898 	add	a,#0xfd
      000179 F8               [12]  899 	mov	r0,a
      00017A 86 06            [24]  900 	mov	ar6,@r0
      00017C 74 B0            [12]  901 	mov	a,#0xb0
      00017E 2E               [12]  902 	add	a, r6
      00017F F5 82            [12]  903 	mov	dpl,a
      000181 C0 07            [24]  904 	push	ar7
      000183 12 01 30         [24]  905 	lcall	_oled_cmd
      000186 D0 07            [24]  906 	pop	ar7
                                    907 ;	i2c-bit-bang-oled-0.49-analog-reading.c:96: oled_cmd(0x00 | (col & 0x0F));   // low nibble
      000188 74 0F            [12]  908 	mov	a,#0x0f
      00018A 5F               [12]  909 	anl	a,r7
      00018B F5 82            [12]  910 	mov	dpl,a
      00018D C0 07            [24]  911 	push	ar7
      00018F 12 01 30         [24]  912 	lcall	_oled_cmd
      000192 D0 07            [24]  913 	pop	ar7
                                    914 ;	i2c-bit-bang-oled-0.49-analog-reading.c:97: oled_cmd(0x10 | (col >> 4));     // high nibble
      000194 EF               [12]  915 	mov	a,r7
      000195 C4               [12]  916 	swap	a
      000196 54 0F            [12]  917 	anl	a,#0x0f
      000198 FF               [12]  918 	mov	r7,a
      000199 74 10            [12]  919 	mov	a,#0x10
      00019B 4F               [12]  920 	orl	a,r7
      00019C F5 82            [12]  921 	mov	dpl,a
      00019E 12 01 30         [24]  922 	lcall	_oled_cmd
                                    923 ;	i2c-bit-bang-oled-0.49-analog-reading.c:98: }
      0001A1 D0 10            [24]  924 	pop	_bp
      0001A3 22               [24]  925 	ret
                                    926 ;------------------------------------------------------------
                                    927 ;Allocation info for local variables in function 'oled_write_data_stream'
                                    928 ;------------------------------------------------------------
                                    929 ;len           Allocated to stack - _bp -3 +1 
                                    930 ;data          Allocated to stack - _bp +1 +3 
                                    931 ;i             Allocated to registers r4 
                                    932 ;------------------------------------------------------------
                                    933 ;	i2c-bit-bang-oled-0.49-analog-reading.c:99: void oled_write_data_stream(uint8_t *data, uint8_t len) {
                                    934 ;	-----------------------------------------
                                    935 ;	 function oled_write_data_stream
                                    936 ;	-----------------------------------------
      0001A4                        937 _oled_write_data_stream:
      0001A4 C0 10            [24]  938 	push	_bp
      0001A6 85 81 10         [24]  939 	mov	_bp,sp
      0001A9 C0 82            [24]  940 	push	dpl
      0001AB C0 83            [24]  941 	push	dph
      0001AD C0 F0            [24]  942 	push	b
                                    943 ;	i2c-bit-bang-oled-0.49-analog-reading.c:100: i2c_start();
      0001AF 12 00 C5         [24]  944 	lcall	_i2c_start
                                    945 ;	i2c-bit-bang-oled-0.49-analog-reading.c:101: i2c_write_byte(OLED_ADDR);
      0001B2 75 82 78         [24]  946 	mov	dpl, #0x78
      0001B5 12 00 E7         [24]  947 	lcall	_i2c_write_byte
                                    948 ;	i2c-bit-bang-oled-0.49-analog-reading.c:102: i2c_write_byte(0x40);
      0001B8 75 82 40         [24]  949 	mov	dpl, #0x40
      0001BB 12 00 E7         [24]  950 	lcall	_i2c_write_byte
                                    951 ;	i2c-bit-bang-oled-0.49-analog-reading.c:104: for (uint8_t i = 0; i < len; i++) {
      0001BE 7C 00            [12]  952 	mov	r4,#0x00
      0001C0                        953 00103$:
      0001C0 E5 10            [12]  954 	mov	a,_bp
      0001C2 24 FD            [12]  955 	add	a,#0xfd
      0001C4 F8               [12]  956 	mov	r0,a
      0001C5 C3               [12]  957 	clr	c
      0001C6 EC               [12]  958 	mov	a,r4
      0001C7 96               [12]  959 	subb	a,@r0
      0001C8 50 22            [24]  960 	jnc	00101$
                                    961 ;	i2c-bit-bang-oled-0.49-analog-reading.c:105: i2c_write_byte(data[i]);
      0001CA A8 10            [24]  962 	mov	r0,_bp
      0001CC 08               [12]  963 	inc	r0
      0001CD EC               [12]  964 	mov	a,r4
      0001CE 26               [12]  965 	add	a, @r0
      0001CF FA               [12]  966 	mov	r2,a
      0001D0 E4               [12]  967 	clr	a
      0001D1 08               [12]  968 	inc	r0
      0001D2 36               [12]  969 	addc	a, @r0
      0001D3 FB               [12]  970 	mov	r3,a
      0001D4 08               [12]  971 	inc	r0
      0001D5 86 07            [24]  972 	mov	ar7,@r0
      0001D7 8A 82            [24]  973 	mov	dpl,r2
      0001D9 8B 83            [24]  974 	mov	dph,r3
      0001DB 8F F0            [24]  975 	mov	b,r7
      0001DD 12 0D 39         [24]  976 	lcall	__gptrget
      0001E0 F5 82            [12]  977 	mov	dpl,a
      0001E2 C0 04            [24]  978 	push	ar4
      0001E4 12 00 E7         [24]  979 	lcall	_i2c_write_byte
      0001E7 D0 04            [24]  980 	pop	ar4
                                    981 ;	i2c-bit-bang-oled-0.49-analog-reading.c:104: for (uint8_t i = 0; i < len; i++) {
      0001E9 0C               [12]  982 	inc	r4
      0001EA 80 D4            [24]  983 	sjmp	00103$
      0001EC                        984 00101$:
                                    985 ;	i2c-bit-bang-oled-0.49-analog-reading.c:108: i2c_stop();
      0001EC 12 00 D8         [24]  986 	lcall	_i2c_stop
                                    987 ;	i2c-bit-bang-oled-0.49-analog-reading.c:109: }
      0001EF 85 10 81         [24]  988 	mov	sp,_bp
      0001F2 D0 10            [24]  989 	pop	_bp
      0001F4 22               [24]  990 	ret
                                    991 ;------------------------------------------------------------
                                    992 ;Allocation info for local variables in function 'oled_clear'
                                    993 ;------------------------------------------------------------
                                    994 ;page          Allocated to registers r7 
                                    995 ;i             Allocated to registers r6 
                                    996 ;------------------------------------------------------------
                                    997 ;	i2c-bit-bang-oled-0.49-analog-reading.c:110: void oled_clear(void) {
                                    998 ;	-----------------------------------------
                                    999 ;	 function oled_clear
                                   1000 ;	-----------------------------------------
      0001F5                       1001 _oled_clear:
                                   1002 ;	i2c-bit-bang-oled-0.49-analog-reading.c:112: for (uint8_t page = 0; page < 4; page++) {
      0001F5 7F 00            [12] 1003 	mov	r7,#0x00
      0001F7                       1004 00107$:
      0001F7 BF 04 00         [24] 1005 	cjne	r7,#0x04,00137$
      0001FA                       1006 00137$:
      0001FA 50 4B            [24] 1007 	jnc	00109$
                                   1008 ;	i2c-bit-bang-oled-0.49-analog-reading.c:113: oled_cmd(0xB0 + page);
      0001FC 8F 06            [24] 1009 	mov	ar6,r7
      0001FE 74 B0            [12] 1010 	mov	a,#0xb0
      000200 2E               [12] 1011 	add	a, r6
      000201 F5 82            [12] 1012 	mov	dpl,a
      000203 C0 07            [24] 1013 	push	ar7
      000205 12 01 30         [24] 1014 	lcall	_oled_cmd
                                   1015 ;	i2c-bit-bang-oled-0.49-analog-reading.c:114: oled_cmd(0x00);  // col low  = 0x00 → actual col = 32 after remap
      000208 75 82 00         [24] 1016 	mov	dpl, #0x00
      00020B 12 01 30         [24] 1017 	lcall	_oled_cmd
                                   1018 ;	i2c-bit-bang-oled-0.49-analog-reading.c:115: oled_cmd(0x12);  // col high = 0x10 | 0x02 = col 32
      00020E 75 82 12         [24] 1019 	mov	dpl, #0x12
      000211 12 01 30         [24] 1020 	lcall	_oled_cmd
                                   1021 ;	i2c-bit-bang-oled-0.49-analog-reading.c:116: i2c_start();
      000214 12 00 C5         [24] 1022 	lcall	_i2c_start
                                   1023 ;	i2c-bit-bang-oled-0.49-analog-reading.c:117: i2c_write_byte(OLED_ADDR);
      000217 75 82 78         [24] 1024 	mov	dpl, #0x78
      00021A 12 00 E7         [24] 1025 	lcall	_i2c_write_byte
                                   1026 ;	i2c-bit-bang-oled-0.49-analog-reading.c:118: i2c_write_byte(0x40);
      00021D 75 82 40         [24] 1027 	mov	dpl, #0x40
      000220 12 00 E7         [24] 1028 	lcall	_i2c_write_byte
      000223 D0 07            [24] 1029 	pop	ar7
                                   1030 ;	i2c-bit-bang-oled-0.49-analog-reading.c:119: for (uint8_t i = 0; i < 64; i++) i2c_write_byte(0x00);
      000225 7E 00            [12] 1031 	mov	r6,#0x00
      000227                       1032 00104$:
      000227 BE 40 00         [24] 1033 	cjne	r6,#0x40,00139$
      00022A                       1034 00139$:
      00022A 50 11            [24] 1035 	jnc	00101$
      00022C 75 82 00         [24] 1036 	mov	dpl, #0x00
      00022F C0 07            [24] 1037 	push	ar7
      000231 C0 06            [24] 1038 	push	ar6
      000233 12 00 E7         [24] 1039 	lcall	_i2c_write_byte
      000236 D0 06            [24] 1040 	pop	ar6
      000238 D0 07            [24] 1041 	pop	ar7
      00023A 0E               [12] 1042 	inc	r6
      00023B 80 EA            [24] 1043 	sjmp	00104$
      00023D                       1044 00101$:
                                   1045 ;	i2c-bit-bang-oled-0.49-analog-reading.c:120: i2c_stop();
      00023D C0 07            [24] 1046 	push	ar7
      00023F 12 00 D8         [24] 1047 	lcall	_i2c_stop
      000242 D0 07            [24] 1048 	pop	ar7
                                   1049 ;	i2c-bit-bang-oled-0.49-analog-reading.c:112: for (uint8_t page = 0; page < 4; page++) {
      000244 0F               [12] 1050 	inc	r7
      000245 80 B0            [24] 1051 	sjmp	00107$
      000247                       1052 00109$:
                                   1053 ;	i2c-bit-bang-oled-0.49-analog-reading.c:122: }
      000247 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'oled_init'
                                   1057 ;------------------------------------------------------------
                                   1058 ;	i2c-bit-bang-oled-0.49-analog-reading.c:124: void oled_init(void) {
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function oled_init
                                   1061 ;	-----------------------------------------
      000248                       1062 _oled_init:
                                   1063 ;	i2c-bit-bang-oled-0.49-analog-reading.c:125: oled_cmd(0xAE);           // display off
      000248 75 82 AE         [24] 1064 	mov	dpl, #0xae
      00024B 12 01 30         [24] 1065 	lcall	_oled_cmd
                                   1066 ;	i2c-bit-bang-oled-0.49-analog-reading.c:126: oled_cmd(0xD5); oled_cmd(0x80); // clock divide ratio / osc freq
      00024E 75 82 D5         [24] 1067 	mov	dpl, #0xd5
      000251 12 01 30         [24] 1068 	lcall	_oled_cmd
      000254 75 82 80         [24] 1069 	mov	dpl, #0x80
      000257 12 01 30         [24] 1070 	lcall	_oled_cmd
                                   1071 ;	i2c-bit-bang-oled-0.49-analog-reading.c:127: oled_cmd(0xA8); oled_cmd(0x1F); // multiplex ratio = 31 (32 rows)
      00025A 75 82 A8         [24] 1072 	mov	dpl, #0xa8
      00025D 12 01 30         [24] 1073 	lcall	_oled_cmd
      000260 75 82 1F         [24] 1074 	mov	dpl, #0x1f
      000263 12 01 30         [24] 1075 	lcall	_oled_cmd
                                   1076 ;	i2c-bit-bang-oled-0.49-analog-reading.c:128: oled_cmd(0xD3); oled_cmd(0x00); // display offset = 0
      000266 75 82 D3         [24] 1077 	mov	dpl, #0xd3
      000269 12 01 30         [24] 1078 	lcall	_oled_cmd
      00026C 75 82 00         [24] 1079 	mov	dpl, #0x00
      00026F 12 01 30         [24] 1080 	lcall	_oled_cmd
                                   1081 ;	i2c-bit-bang-oled-0.49-analog-reading.c:129: oled_cmd(0x40);                 // display start line = 0
      000272 75 82 40         [24] 1082 	mov	dpl, #0x40
      000275 12 01 30         [24] 1083 	lcall	_oled_cmd
                                   1084 ;	i2c-bit-bang-oled-0.49-analog-reading.c:130: oled_cmd(0x8D); oled_cmd(0x14); // charge pump enable
      000278 75 82 8D         [24] 1085 	mov	dpl, #0x8d
      00027B 12 01 30         [24] 1086 	lcall	_oled_cmd
      00027E 75 82 14         [24] 1087 	mov	dpl, #0x14
      000281 12 01 30         [24] 1088 	lcall	_oled_cmd
                                   1089 ;	i2c-bit-bang-oled-0.49-analog-reading.c:131: oled_cmd(0x20); oled_cmd(0x02); // page addressing mode
      000284 75 82 20         [24] 1090 	mov	dpl, #0x20
      000287 12 01 30         [24] 1091 	lcall	_oled_cmd
      00028A 75 82 02         [24] 1092 	mov	dpl, #0x02
      00028D 12 01 30         [24] 1093 	lcall	_oled_cmd
                                   1094 ;	i2c-bit-bang-oled-0.49-analog-reading.c:132: oled_cmd(0xA1);                 // segment remap (col 127 = SEG0)
      000290 75 82 A1         [24] 1095 	mov	dpl, #0xa1
      000293 12 01 30         [24] 1096 	lcall	_oled_cmd
                                   1097 ;	i2c-bit-bang-oled-0.49-analog-reading.c:133: oled_cmd(0xC8);                 // COM scan remapped
      000296 75 82 C8         [24] 1098 	mov	dpl, #0xc8
      000299 12 01 30         [24] 1099 	lcall	_oled_cmd
                                   1100 ;	i2c-bit-bang-oled-0.49-analog-reading.c:134: oled_cmd(0xDA); oled_cmd(0x12); // COM pins: alt config, no remap
      00029C 75 82 DA         [24] 1101 	mov	dpl, #0xda
      00029F 12 01 30         [24] 1102 	lcall	_oled_cmd
      0002A2 75 82 12         [24] 1103 	mov	dpl, #0x12
      0002A5 12 01 30         [24] 1104 	lcall	_oled_cmd
                                   1105 ;	i2c-bit-bang-oled-0.49-analog-reading.c:135: oled_cmd(0x81); oled_cmd(0xCF); // contrast
      0002A8 75 82 81         [24] 1106 	mov	dpl, #0x81
      0002AB 12 01 30         [24] 1107 	lcall	_oled_cmd
      0002AE 75 82 CF         [24] 1108 	mov	dpl, #0xcf
      0002B1 12 01 30         [24] 1109 	lcall	_oled_cmd
                                   1110 ;	i2c-bit-bang-oled-0.49-analog-reading.c:136: oled_cmd(0xD9); oled_cmd(0x22); // pre-charge period
      0002B4 75 82 D9         [24] 1111 	mov	dpl, #0xd9
      0002B7 12 01 30         [24] 1112 	lcall	_oled_cmd
      0002BA 75 82 22         [24] 1113 	mov	dpl, #0x22
      0002BD 12 01 30         [24] 1114 	lcall	_oled_cmd
                                   1115 ;	i2c-bit-bang-oled-0.49-analog-reading.c:137: oled_cmd(0xDB); oled_cmd(0x00); // VCOMH deselect = 0
      0002C0 75 82 DB         [24] 1116 	mov	dpl, #0xdb
      0002C3 12 01 30         [24] 1117 	lcall	_oled_cmd
      0002C6 75 82 00         [24] 1118 	mov	dpl, #0x00
      0002C9 12 01 30         [24] 1119 	lcall	_oled_cmd
                                   1120 ;	i2c-bit-bang-oled-0.49-analog-reading.c:138: oled_cmd(0xA4);                 // output follows RAM
      0002CC 75 82 A4         [24] 1121 	mov	dpl, #0xa4
      0002CF 12 01 30         [24] 1122 	lcall	_oled_cmd
                                   1123 ;	i2c-bit-bang-oled-0.49-analog-reading.c:139: oled_cmd(0xA6);                 // normal display
      0002D2 75 82 A6         [24] 1124 	mov	dpl, #0xa6
      0002D5 12 01 30         [24] 1125 	lcall	_oled_cmd
                                   1126 ;	i2c-bit-bang-oled-0.49-analog-reading.c:140: oled_cmd(0xAF);                 // display on
      0002D8 75 82 AF         [24] 1127 	mov	dpl, #0xaf
      0002DB 12 01 30         [24] 1128 	lcall	_oled_cmd
                                   1129 ;	i2c-bit-bang-oled-0.49-analog-reading.c:142: oled_clear();
                                   1130 ;	i2c-bit-bang-oled-0.49-analog-reading.c:143: }
      0002DE 02 01 F5         [24] 1131 	ljmp	_oled_clear
                                   1132 ;------------------------------------------------------------
                                   1133 ;Allocation info for local variables in function 'oled_draw_char'
                                   1134 ;------------------------------------------------------------
                                   1135 ;c             Allocated to registers r7 
                                   1136 ;index         Allocated to registers r7 
                                   1137 ;i             Allocated to registers r5 
                                   1138 ;------------------------------------------------------------
                                   1139 ;	i2c-bit-bang-oled-0.49-analog-reading.c:161: void oled_draw_char(char c) {
                                   1140 ;	-----------------------------------------
                                   1141 ;	 function oled_draw_char
                                   1142 ;	-----------------------------------------
      0002E1                       1143 _oled_draw_char:
      0002E1 AF 82            [24] 1144 	mov	r7, dpl
                                   1145 ;	i2c-bit-bang-oled-0.49-analog-reading.c:162: if (c < '0' || c > '9') return;
      0002E3 BF 30 00         [24] 1146 	cjne	r7,#0x30,00129$
      0002E6                       1147 00129$:
      0002E6 40 05            [24] 1148 	jc	00101$
      0002E8 EF               [12] 1149 	mov	a,r7
      0002E9 24 C6            [12] 1150 	add	a,#0xff - 0x39
      0002EB 50 01            [24] 1151 	jnc	00102$
      0002ED                       1152 00101$:
      0002ED 22               [24] 1153 	ret
      0002EE                       1154 00102$:
                                   1155 ;	i2c-bit-bang-oled-0.49-analog-reading.c:164: uint8_t index = c - '0';
      0002EE EF               [12] 1156 	mov	a,r7
      0002EF 24 D0            [12] 1157 	add	a,#0xd0
      0002F1 FF               [12] 1158 	mov	r7,a
                                   1159 ;	i2c-bit-bang-oled-0.49-analog-reading.c:166: i2c_start();
      0002F2 C0 07            [24] 1160 	push	ar7
      0002F4 12 00 C5         [24] 1161 	lcall	_i2c_start
                                   1162 ;	i2c-bit-bang-oled-0.49-analog-reading.c:167: i2c_write_byte(OLED_ADDR);
      0002F7 75 82 78         [24] 1163 	mov	dpl, #0x78
      0002FA 12 00 E7         [24] 1164 	lcall	_i2c_write_byte
                                   1165 ;	i2c-bit-bang-oled-0.49-analog-reading.c:168: i2c_write_byte(0x40);
      0002FD 75 82 40         [24] 1166 	mov	dpl, #0x40
      000300 12 00 E7         [24] 1167 	lcall	_i2c_write_byte
      000303 D0 07            [24] 1168 	pop	ar7
                                   1169 ;	i2c-bit-bang-oled-0.49-analog-reading.c:170: for (uint8_t i = 0; i < 5; i++) {
      000305 EF               [12] 1170 	mov	a,r7
      000306 75 F0 05         [24] 1171 	mov	b,#0x05
      000309 A4               [48] 1172 	mul	ab
      00030A 24 88            [12] 1173 	add	a, #_font5x7
      00030C FE               [12] 1174 	mov	r6,a
      00030D 74 0E            [12] 1175 	mov	a,#(_font5x7 >> 8)
      00030F 35 F0            [12] 1176 	addc	a, b
      000311 FF               [12] 1177 	mov	r7,a
      000312 7D 00            [12] 1178 	mov	r5,#0x00
      000314                       1179 00106$:
      000314 BD 05 00         [24] 1180 	cjne	r5,#0x05,00132$
      000317                       1181 00132$:
      000317 50 1E            [24] 1182 	jnc	00104$
                                   1183 ;	i2c-bit-bang-oled-0.49-analog-reading.c:171: i2c_write_byte(font5x7[index][i]);
      000319 ED               [12] 1184 	mov	a,r5
      00031A 2E               [12] 1185 	add	a, r6
      00031B F5 82            [12] 1186 	mov	dpl,a
      00031D E4               [12] 1187 	clr	a
      00031E 3F               [12] 1188 	addc	a, r7
      00031F F5 83            [12] 1189 	mov	dph,a
      000321 E4               [12] 1190 	clr	a
      000322 93               [24] 1191 	movc	a,@a+dptr
      000323 F5 82            [12] 1192 	mov	dpl,a
      000325 C0 07            [24] 1193 	push	ar7
      000327 C0 06            [24] 1194 	push	ar6
      000329 C0 05            [24] 1195 	push	ar5
      00032B 12 00 E7         [24] 1196 	lcall	_i2c_write_byte
      00032E D0 05            [24] 1197 	pop	ar5
      000330 D0 06            [24] 1198 	pop	ar6
      000332 D0 07            [24] 1199 	pop	ar7
                                   1200 ;	i2c-bit-bang-oled-0.49-analog-reading.c:170: for (uint8_t i = 0; i < 5; i++) {
      000334 0D               [12] 1201 	inc	r5
      000335 80 DD            [24] 1202 	sjmp	00106$
      000337                       1203 00104$:
                                   1204 ;	i2c-bit-bang-oled-0.49-analog-reading.c:174: i2c_write_byte(0x00); // spacing
      000337 75 82 00         [24] 1205 	mov	dpl, #0x00
      00033A 12 00 E7         [24] 1206 	lcall	_i2c_write_byte
                                   1207 ;	i2c-bit-bang-oled-0.49-analog-reading.c:176: i2c_stop();
                                   1208 ;	i2c-bit-bang-oled-0.49-analog-reading.c:177: }
      00033D 02 00 D8         [24] 1209 	ljmp	_i2c_stop
                                   1210 ;------------------------------------------------------------
                                   1211 ;Allocation info for local variables in function 'get_text_width'
                                   1212 ;------------------------------------------------------------
                                   1213 ;value         Allocated to registers r6 r7 
                                   1214 ;digits        Allocated to registers r5 
                                   1215 ;------------------------------------------------------------
                                   1216 ;	i2c-bit-bang-oled-0.49-analog-reading.c:178: uint8_t get_text_width(uint16_t value) {
                                   1217 ;	-----------------------------------------
                                   1218 ;	 function get_text_width
                                   1219 ;	-----------------------------------------
      000340                       1220 _get_text_width:
      000340 AE 82            [24] 1221 	mov	r6, dpl
      000342 AF 83            [24] 1222 	mov	r7, dph
                                   1223 ;	i2c-bit-bang-oled-0.49-analog-reading.c:181: if (value == 0) return 6;
      000344 EE               [12] 1224 	mov	a,r6
      000345 4F               [12] 1225 	orl	a,r7
      000346 70 04            [24] 1226 	jnz	00110$
      000348 75 82 06         [24] 1227 	mov	dpl, #0x06
                                   1228 ;	i2c-bit-bang-oled-0.49-analog-reading.c:183: while (value > 0) {
      00034B 22               [24] 1229 	ret
      00034C                       1230 00110$:
      00034C 7D 00            [12] 1231 	mov	r5,#0x00
      00034E                       1232 00103$:
      00034E EE               [12] 1233 	mov	a,r6
      00034F 4F               [12] 1234 	orl	a,r7
      000350 60 21            [24] 1235 	jz	00105$
                                   1236 ;	i2c-bit-bang-oled-0.49-analog-reading.c:184: digits++;
      000352 0D               [12] 1237 	inc	r5
                                   1238 ;	i2c-bit-bang-oled-0.49-analog-reading.c:185: value /= 10;
      000353 8E 82            [24] 1239 	mov	dpl,r6
      000355 8F 83            [24] 1240 	mov	dph,r7
      000357 C0 05            [24] 1241 	push	ar5
      000359 74 0A            [12] 1242 	mov	a,#0x0a
      00035B C0 E0            [24] 1243 	push	acc
      00035D E4               [12] 1244 	clr	a
      00035E C0 E0            [24] 1245 	push	acc
      000360 12 0C 80         [24] 1246 	lcall	__divuint
      000363 AB 82            [24] 1247 	mov	r3, dpl
      000365 AC 83            [24] 1248 	mov	r4, dph
      000367 15 81            [12] 1249 	dec	sp
      000369 15 81            [12] 1250 	dec	sp
      00036B D0 05            [24] 1251 	pop	ar5
      00036D 8B 06            [24] 1252 	mov	ar6,r3
      00036F 8C 07            [24] 1253 	mov	ar7,r4
      000371 80 DB            [24] 1254 	sjmp	00103$
      000373                       1255 00105$:
                                   1256 ;	i2c-bit-bang-oled-0.49-analog-reading.c:188: return (digits * 6) + (1 + 6 + 6);  
      000373 ED               [12] 1257 	mov	a,r5
      000374 75 F0 06         [24] 1258 	mov	b,#0x06
      000377 A4               [48] 1259 	mul	ab
      000378 24 0D            [12] 1260 	add	a, #0x0d
      00037A F5 82            [12] 1261 	mov	dpl,a
                                   1262 ;	i2c-bit-bang-oled-0.49-analog-reading.c:190: }
      00037C 22               [24] 1263 	ret
                                   1264 ;------------------------------------------------------------
                                   1265 ;Allocation info for local variables in function 'oled_print_uint'
                                   1266 ;------------------------------------------------------------
                                   1267 ;value         Allocated to registers r6 r7 
                                   1268 ;buffer        Allocated to stack - _bp +4 +64 
                                   1269 ;idx           Allocated to registers 
                                   1270 ;buf           Allocated to stack - _bp +68 +6 
                                   1271 ;i             Allocated to registers r4 
                                   1272 ;temp          Allocated to registers r4 r2 
                                   1273 ;rev           Allocated to stack - _bp +74 +6 
                                   1274 ;j             Allocated to stack - _bp +80 +1 
                                   1275 ;k             Allocated to registers r2 
                                   1276 ;index         Allocated to registers 
                                   1277 ;col           Allocated to registers r5 
                                   1278 ;i             Allocated to registers r4 
                                   1279 ;col           Allocated to registers r4 
                                   1280 ;col           Allocated to registers r6 
                                   1281 ;n             Allocated to registers r5 
                                   1282 ;sloc0         Allocated to stack - _bp +1 +2 
                                   1283 ;sloc1         Allocated to stack - _bp +3 +1 
                                   1284 ;------------------------------------------------------------
                                   1285 ;	i2c-bit-bang-oled-0.49-analog-reading.c:191: void oled_print_uint(uint16_t value) {
                                   1286 ;	-----------------------------------------
                                   1287 ;	 function oled_print_uint
                                   1288 ;	-----------------------------------------
      00037D                       1289 _oled_print_uint:
      00037D C0 10            [24] 1290 	push	_bp
      00037F E5 81            [12] 1291 	mov	a,sp
      000381 F5 10            [12] 1292 	mov	_bp,a
      000383 24 50            [12] 1293 	add	a,#0x50
      000385 F5 81            [12] 1294 	mov	sp,a
      000387 AE 82            [24] 1295 	mov	r6, dpl
      000389 AF 83            [24] 1296 	mov	r7, dph
                                   1297 ;	i2c-bit-bang-oled-0.49-analog-reading.c:193: uint8_t idx = 0;
      00038B 7D 00            [12] 1298 	mov	r5,#0x00
                                   1299 ;	i2c-bit-bang-oled-0.49-analog-reading.c:199: if (value == 0) {
      00038D EE               [12] 1300 	mov	a,r6
      00038E 4F               [12] 1301 	orl	a,r7
      00038F 70 0C            [24] 1302 	jnz	00108$
                                   1303 ;	i2c-bit-bang-oled-0.49-analog-reading.c:200: buf[i++] = '0';
      000391 E5 10            [12] 1304 	mov	a,_bp
      000393 24 44            [12] 1305 	add	a,#0x44
      000395 F9               [12] 1306 	mov	r1,a
      000396 7C 01            [12] 1307 	mov	r4,#0x01
      000398 77 30            [12] 1308 	mov	@r1,#0x30
      00039A 02 04 3A         [24] 1309 	ljmp	00109$
      00039D                       1310 00108$:
                                   1311 ;	i2c-bit-bang-oled-0.49-analog-reading.c:202: uint16_t temp = value;
      00039D 8E 04            [24] 1312 	mov	ar4,r6
      00039F 8F 02            [24] 1313 	mov	ar2,r7
                                   1314 ;	i2c-bit-bang-oled-0.49-analog-reading.c:206: while (temp > 0) {
      0003A1 E5 10            [12] 1315 	mov	a,_bp
      0003A3 24 4A            [12] 1316 	add	a,#0x4a
      0003A5 FB               [12] 1317 	mov	r3,a
      0003A6 E5 10            [12] 1318 	mov	a,_bp
      0003A8 24 50            [12] 1319 	add	a,#0x50
      0003AA F8               [12] 1320 	mov	r0,a
      0003AB 76 00            [12] 1321 	mov	@r0,#0x00
      0003AD                       1322 00101$:
      0003AD EC               [12] 1323 	mov	a,r4
      0003AE 4A               [12] 1324 	orl	a,r2
      0003AF 60 62            [24] 1325 	jz	00140$
                                   1326 ;	i2c-bit-bang-oled-0.49-analog-reading.c:207: rev[j++] = (temp % 10) + '0';
      0003B1 C0 05            [24] 1327 	push	ar5
      0003B3 E5 10            [12] 1328 	mov	a,_bp
      0003B5 24 50            [12] 1329 	add	a,#0x50
      0003B7 F8               [12] 1330 	mov	r0,a
      0003B8 E6               [12] 1331 	mov	a,@r0
      0003B9 2B               [12] 1332 	add	a, r3
      0003BA F9               [12] 1333 	mov	r1,a
      0003BB E5 10            [12] 1334 	mov	a,_bp
      0003BD 24 50            [12] 1335 	add	a,#0x50
      0003BF F8               [12] 1336 	mov	r0,a
      0003C0 06               [12] 1337 	inc	@r0
      0003C1 8C 05            [24] 1338 	mov	ar5,r4
      0003C3 8A 07            [24] 1339 	mov	ar7,r2
      0003C5 C0 07            [24] 1340 	push	ar7
      0003C7 C0 05            [24] 1341 	push	ar5
      0003C9 C0 03            [24] 1342 	push	ar3
      0003CB C0 01            [24] 1343 	push	ar1
      0003CD 74 0A            [12] 1344 	mov	a,#0x0a
      0003CF C0 E0            [24] 1345 	push	acc
      0003D1 E4               [12] 1346 	clr	a
      0003D2 C0 E0            [24] 1347 	push	acc
      0003D4 8D 82            [24] 1348 	mov	dpl, r5
      0003D6 8F 83            [24] 1349 	mov	dph, r7
      0003D8 12 0E 02         [24] 1350 	lcall	__moduint
      0003DB AA 82            [24] 1351 	mov	r2, dpl
      0003DD 15 81            [12] 1352 	dec	sp
      0003DF 15 81            [12] 1353 	dec	sp
      0003E1 D0 01            [24] 1354 	pop	ar1
      0003E3 D0 03            [24] 1355 	pop	ar3
      0003E5 D0 05            [24] 1356 	pop	ar5
      0003E7 D0 07            [24] 1357 	pop	ar7
      0003E9 74 30            [12] 1358 	mov	a,#0x30
      0003EB 2A               [12] 1359 	add	a, r2
      0003EC F7               [12] 1360 	mov	@r1,a
                                   1361 ;	i2c-bit-bang-oled-0.49-analog-reading.c:208: temp /= 10;
      0003ED C0 05            [24] 1362 	push	ar5
      0003EF C0 03            [24] 1363 	push	ar3
      0003F1 74 0A            [12] 1364 	mov	a,#0x0a
      0003F3 C0 E0            [24] 1365 	push	acc
      0003F5 E4               [12] 1366 	clr	a
      0003F6 C0 E0            [24] 1367 	push	acc
      0003F8 8D 82            [24] 1368 	mov	dpl, r5
      0003FA 8F 83            [24] 1369 	mov	dph, r7
      0003FC 12 0C 80         [24] 1370 	lcall	__divuint
      0003FF AE 82            [24] 1371 	mov	r6, dpl
      000401 AF 83            [24] 1372 	mov	r7, dph
      000403 15 81            [12] 1373 	dec	sp
      000405 15 81            [12] 1374 	dec	sp
      000407 D0 03            [24] 1375 	pop	ar3
      000409 D0 05            [24] 1376 	pop	ar5
      00040B 8E 04            [24] 1377 	mov	ar4,r6
      00040D 8F 02            [24] 1378 	mov	ar2,r7
      00040F D0 05            [24] 1379 	pop	ar5
                                   1380 ;	i2c-bit-bang-oled-0.49-analog-reading.c:210: while (j > 0) buf[i++] = rev[--j];
      000411 80 9A            [24] 1381 	sjmp	00101$
      000413                       1382 00140$:
      000413 E5 10            [12] 1383 	mov	a,_bp
      000415 24 44            [12] 1384 	add	a,#0x44
      000417 FF               [12] 1385 	mov	r7,a
      000418 8B 06            [24] 1386 	mov	ar6,r3
      00041A 7B 00            [12] 1387 	mov	r3,#0x00
      00041C E5 10            [12] 1388 	mov	a,_bp
      00041E 24 50            [12] 1389 	add	a,#0x50
      000420 F8               [12] 1390 	mov	r0,a
      000421 86 02            [24] 1391 	mov	ar2,@r0
      000423                       1392 00104$:
      000423 EA               [12] 1393 	mov	a,r2
      000424 60 12            [24] 1394 	jz	00154$
      000426 C0 05            [24] 1395 	push	ar5
      000428 EB               [12] 1396 	mov	a,r3
      000429 2F               [12] 1397 	add	a, r7
      00042A F9               [12] 1398 	mov	r1,a
      00042B 0B               [12] 1399 	inc	r3
      00042C 1A               [12] 1400 	dec	r2
      00042D EA               [12] 1401 	mov	a,r2
      00042E 2E               [12] 1402 	add	a, r6
      00042F F8               [12] 1403 	mov	r0,a
      000430 86 05            [24] 1404 	mov	ar5,@r0
      000432 A7 05            [24] 1405 	mov	@r1,ar5
      000434 D0 05            [24] 1406 	pop	ar5
      000436 80 EB            [24] 1407 	sjmp	00104$
      000438                       1408 00154$:
      000438 8B 04            [24] 1409 	mov	ar4,r3
      00043A                       1410 00109$:
                                   1411 ;	i2c-bit-bang-oled-0.49-analog-reading.c:212: buf[i] = '\0';
      00043A E5 10            [12] 1412 	mov	a,_bp
      00043C 24 44            [12] 1413 	add	a,#0x44
      00043E FF               [12] 1414 	mov	r7,a
      00043F 2C               [12] 1415 	add	a,r4
      000440 F8               [12] 1416 	mov	r0,a
      000441 76 00            [12] 1417 	mov	@r0,#0x00
                                   1418 ;	i2c-bit-bang-oled-0.49-analog-reading.c:214: for (uint8_t k = 0; k < i; k++) {
      000443 E5 10            [12] 1419 	mov	a,_bp
      000445 24 04            [12] 1420 	add	a,#0x04
      000447 FE               [12] 1421 	mov	r6,a
      000448 FB               [12] 1422 	mov	r3,a
      000449 7A 00            [12] 1423 	mov	r2,#0x00
      00044B                       1424 00120$:
      00044B C3               [12] 1425 	clr	c
      00044C EA               [12] 1426 	mov	a,r2
      00044D 9C               [12] 1427 	subb	a,r4
      00044E 50 59            [24] 1428 	jnc	00111$
                                   1429 ;	i2c-bit-bang-oled-0.49-analog-reading.c:215: uint8_t index = buf[k] - '0';
      000450 EA               [12] 1430 	mov	a,r2
      000451 2F               [12] 1431 	add	a, r7
      000452 F9               [12] 1432 	mov	r1,a
      000453 E7               [12] 1433 	mov	a,@r1
      000454 24 D0            [12] 1434 	add	a,#0xd0
                                   1435 ;	i2c-bit-bang-oled-0.49-analog-reading.c:217: for (uint8_t col = 0; col < 5; col++) {
      000456 75 F0 05         [24] 1436 	mov	b,#0x05
      000459 A4               [48] 1437 	mul	ab
      00045A A8 10            [24] 1438 	mov	r0,_bp
      00045C 08               [12] 1439 	inc	r0
      00045D 24 88            [12] 1440 	add	a, #_font5x7
      00045F F6               [12] 1441 	mov	@r0,a
      000460 74 0E            [12] 1442 	mov	a,#(_font5x7 >> 8)
      000462 35 F0            [12] 1443 	addc	a, b
      000464 08               [12] 1444 	inc	r0
      000465 F6               [12] 1445 	mov	@r0,a
      000466 E5 10            [12] 1446 	mov	a,_bp
      000468 24 03            [12] 1447 	add	a,#0x03
      00046A F8               [12] 1448 	mov	r0,a
      00046B A6 05            [24] 1449 	mov	@r0,ar5
      00046D 7D 00            [12] 1450 	mov	r5,#0x00
                                   1451 ;	i2c-bit-bang-oled-0.49-analog-reading.c:245: for (uint8_t n = 0; n < idx; n++) {
                                   1452 ;	i2c-bit-bang-oled-0.49-analog-reading.c:217: for (uint8_t col = 0; col < 5; col++) {
      00046F                       1453 00117$:
      00046F BD 05 00         [24] 1454 	cjne	r5,#0x05,00267$
      000472                       1455 00267$:
      000472 50 20            [24] 1456 	jnc	00110$
                                   1457 ;	i2c-bit-bang-oled-0.49-analog-reading.c:218: buffer[idx++] = font5x7[index][col];
      000474 E5 10            [12] 1458 	mov	a,_bp
      000476 24 03            [12] 1459 	add	a,#0x03
      000478 F8               [12] 1460 	mov	r0,a
      000479 E6               [12] 1461 	mov	a,@r0
      00047A 2E               [12] 1462 	add	a, r6
      00047B F9               [12] 1463 	mov	r1,a
      00047C E5 10            [12] 1464 	mov	a,_bp
      00047E 24 03            [12] 1465 	add	a,#0x03
      000480 F8               [12] 1466 	mov	r0,a
      000481 06               [12] 1467 	inc	@r0
      000482 A8 10            [24] 1468 	mov	r0,_bp
      000484 08               [12] 1469 	inc	r0
      000485 ED               [12] 1470 	mov	a,r5
      000486 26               [12] 1471 	add	a, @r0
      000487 F5 82            [12] 1472 	mov	dpl,a
      000489 E4               [12] 1473 	clr	a
      00048A 08               [12] 1474 	inc	r0
      00048B 36               [12] 1475 	addc	a, @r0
      00048C F5 83            [12] 1476 	mov	dph,a
      00048E E4               [12] 1477 	clr	a
      00048F 93               [24] 1478 	movc	a,@a+dptr
      000490 F7               [12] 1479 	mov	@r1,a
                                   1480 ;	i2c-bit-bang-oled-0.49-analog-reading.c:217: for (uint8_t col = 0; col < 5; col++) {
      000491 0D               [12] 1481 	inc	r5
      000492 80 DB            [24] 1482 	sjmp	00117$
      000494                       1483 00110$:
                                   1484 ;	i2c-bit-bang-oled-0.49-analog-reading.c:221: buffer[idx++] = 0x00; // spacing
      000494 E5 10            [12] 1485 	mov	a,_bp
      000496 24 03            [12] 1486 	add	a,#0x03
      000498 F8               [12] 1487 	mov	r0,a
      000499 E6               [12] 1488 	mov	a,@r0
      00049A 04               [12] 1489 	inc	a
      00049B FD               [12] 1490 	mov	r5,a
      00049C E5 10            [12] 1491 	mov	a,_bp
      00049E 24 03            [12] 1492 	add	a,#0x03
      0004A0 F8               [12] 1493 	mov	r0,a
      0004A1 E6               [12] 1494 	mov	a,@r0
      0004A2 2B               [12] 1495 	add	a, r3
      0004A3 F8               [12] 1496 	mov	r0,a
      0004A4 76 00            [12] 1497 	mov	@r0,#0x00
                                   1498 ;	i2c-bit-bang-oled-0.49-analog-reading.c:214: for (uint8_t k = 0; k < i; k++) {
      0004A6 0A               [12] 1499 	inc	r2
      0004A7 80 A2            [24] 1500 	sjmp	00120$
      0004A9                       1501 00111$:
                                   1502 ;	i2c-bit-bang-oled-0.49-analog-reading.c:226: for (uint8_t i = 0; i < 6; i++) buffer[idx++] = 0x00;
      0004A9 8E 07            [24] 1503 	mov	ar7,r6
      0004AB 7C 00            [12] 1504 	mov	r4,#0x00
      0004AD                       1505 00123$:
      0004AD BC 06 00         [24] 1506 	cjne	r4,#0x06,00269$
      0004B0                       1507 00269$:
      0004B0 50 09            [24] 1508 	jnc	00112$
      0004B2 ED               [12] 1509 	mov	a,r5
      0004B3 2F               [12] 1510 	add	a, r7
      0004B4 F9               [12] 1511 	mov	r1,a
      0004B5 0D               [12] 1512 	inc	r5
      0004B6 77 00            [12] 1513 	mov	@r1,#0x00
      0004B8 0C               [12] 1514 	inc	r4
      0004B9 80 F2            [24] 1515 	sjmp	00123$
      0004BB                       1516 00112$:
                                   1517 ;	i2c-bit-bang-oled-0.49-analog-reading.c:229: for (uint8_t col = 0; col < 5; col++) {
      0004BB 8E 07            [24] 1518 	mov	ar7,r6
      0004BD 7C 00            [12] 1519 	mov	r4,#0x00
      0004BF                       1520 00126$:
      0004BF BC 05 00         [24] 1521 	cjne	r4,#0x05,00271$
      0004C2                       1522 00271$:
      0004C2 50 0D            [24] 1523 	jnc	00113$
                                   1524 ;	i2c-bit-bang-oled-0.49-analog-reading.c:230: buffer[idx++] = font_m[col];
      0004C4 ED               [12] 1525 	mov	a,r5
      0004C5 2F               [12] 1526 	add	a, r7
      0004C6 F9               [12] 1527 	mov	r1,a
      0004C7 0D               [12] 1528 	inc	r5
      0004C8 EC               [12] 1529 	mov	a,r4
      0004C9 90 0E BA         [24] 1530 	mov	dptr,#_font_m
      0004CC 93               [24] 1531 	movc	a,@a+dptr
      0004CD F7               [12] 1532 	mov	@r1,a
                                   1533 ;	i2c-bit-bang-oled-0.49-analog-reading.c:229: for (uint8_t col = 0; col < 5; col++) {
      0004CE 0C               [12] 1534 	inc	r4
      0004CF 80 EE            [24] 1535 	sjmp	00126$
      0004D1                       1536 00113$:
                                   1537 ;	i2c-bit-bang-oled-0.49-analog-reading.c:232: buffer[idx++] = 0x00;
      0004D1 8E 07            [24] 1538 	mov	ar7,r6
      0004D3 ED               [12] 1539 	mov	a,r5
      0004D4 04               [12] 1540 	inc	a
      0004D5 FC               [12] 1541 	mov	r4,a
      0004D6 ED               [12] 1542 	mov	a,r5
      0004D7 2E               [12] 1543 	add	a, r6
      0004D8 F8               [12] 1544 	mov	r0,a
      0004D9 76 00            [12] 1545 	mov	@r0,#0x00
                                   1546 ;	i2c-bit-bang-oled-0.49-analog-reading.c:235: for (uint8_t col = 0; col < 5; col++) {
      0004DB 7E 00            [12] 1547 	mov	r6,#0x00
      0004DD                       1548 00129$:
      0004DD BE 05 00         [24] 1549 	cjne	r6,#0x05,00273$
      0004E0                       1550 00273$:
      0004E0 50 0D            [24] 1551 	jnc	00114$
                                   1552 ;	i2c-bit-bang-oled-0.49-analog-reading.c:236: buffer[idx++] = font_V[col];
      0004E2 EC               [12] 1553 	mov	a,r4
      0004E3 2F               [12] 1554 	add	a, r7
      0004E4 F9               [12] 1555 	mov	r1,a
      0004E5 0C               [12] 1556 	inc	r4
      0004E6 EE               [12] 1557 	mov	a,r6
      0004E7 90 0E BF         [24] 1558 	mov	dptr,#_font_V
      0004EA 93               [24] 1559 	movc	a,@a+dptr
      0004EB F7               [12] 1560 	mov	@r1,a
                                   1561 ;	i2c-bit-bang-oled-0.49-analog-reading.c:235: for (uint8_t col = 0; col < 5; col++) {
      0004EC 0E               [12] 1562 	inc	r6
      0004ED 80 EE            [24] 1563 	sjmp	00129$
      0004EF                       1564 00114$:
                                   1565 ;	i2c-bit-bang-oled-0.49-analog-reading.c:238: buffer[idx++] = 0x00;
      0004EF EC               [12] 1566 	mov	a,r4
      0004F0 04               [12] 1567 	inc	a
      0004F1 FE               [12] 1568 	mov	r6,a
      0004F2 EC               [12] 1569 	mov	a,r4
      0004F3 2F               [12] 1570 	add	a, r7
      0004F4 F8               [12] 1571 	mov	r0,a
      0004F5 76 00            [12] 1572 	mov	@r0,#0x00
                                   1573 ;	i2c-bit-bang-oled-0.49-analog-reading.c:241: i2c_start();
      0004F7 C0 07            [24] 1574 	push	ar7
      0004F9 C0 06            [24] 1575 	push	ar6
      0004FB 12 00 C5         [24] 1576 	lcall	_i2c_start
                                   1577 ;	i2c-bit-bang-oled-0.49-analog-reading.c:242: i2c_write_byte(OLED_ADDR);
      0004FE 75 82 78         [24] 1578 	mov	dpl, #0x78
      000501 12 00 E7         [24] 1579 	lcall	_i2c_write_byte
                                   1580 ;	i2c-bit-bang-oled-0.49-analog-reading.c:243: i2c_write_byte(0x40);
      000504 75 82 40         [24] 1581 	mov	dpl, #0x40
      000507 12 00 E7         [24] 1582 	lcall	_i2c_write_byte
      00050A D0 06            [24] 1583 	pop	ar6
      00050C D0 07            [24] 1584 	pop	ar7
                                   1585 ;	i2c-bit-bang-oled-0.49-analog-reading.c:245: for (uint8_t n = 0; n < idx; n++) {
      00050E 7D 00            [12] 1586 	mov	r5,#0x00
      000510                       1587 00132$:
      000510 C3               [12] 1588 	clr	c
      000511 ED               [12] 1589 	mov	a,r5
      000512 9E               [12] 1590 	subb	a,r6
      000513 50 17            [24] 1591 	jnc	00115$
                                   1592 ;	i2c-bit-bang-oled-0.49-analog-reading.c:246: i2c_write_byte(buffer[n]);
      000515 ED               [12] 1593 	mov	a,r5
      000516 2F               [12] 1594 	add	a, r7
      000517 F9               [12] 1595 	mov	r1,a
      000518 87 82            [24] 1596 	mov	dpl,@r1
      00051A C0 07            [24] 1597 	push	ar7
      00051C C0 06            [24] 1598 	push	ar6
      00051E C0 05            [24] 1599 	push	ar5
      000520 12 00 E7         [24] 1600 	lcall	_i2c_write_byte
      000523 D0 05            [24] 1601 	pop	ar5
      000525 D0 06            [24] 1602 	pop	ar6
      000527 D0 07            [24] 1603 	pop	ar7
                                   1604 ;	i2c-bit-bang-oled-0.49-analog-reading.c:245: for (uint8_t n = 0; n < idx; n++) {
      000529 0D               [12] 1605 	inc	r5
      00052A 80 E4            [24] 1606 	sjmp	00132$
      00052C                       1607 00115$:
                                   1608 ;	i2c-bit-bang-oled-0.49-analog-reading.c:249: i2c_stop();
      00052C 12 00 D8         [24] 1609 	lcall	_i2c_stop
                                   1610 ;	i2c-bit-bang-oled-0.49-analog-reading.c:250: }
      00052F 85 10 81         [24] 1611 	mov	sp,_bp
      000532 D0 10            [24] 1612 	pop	_bp
      000534 22               [24] 1613 	ret
                                   1614 ;------------------------------------------------------------
                                   1615 ;Allocation info for local variables in function 'timer0_ISR'
                                   1616 ;------------------------------------------------------------
                                   1617 ;	i2c-bit-bang-oled-0.49-analog-reading.c:252: void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
                                   1618 ;	-----------------------------------------
                                   1619 ;	 function timer0_ISR
                                   1620 ;	-----------------------------------------
      000535                       1621 _timer0_ISR:
      000535 C0 E0            [24] 1622 	push	acc
      000537 C0 07            [24] 1623 	push	ar7
      000539 C0 06            [24] 1624 	push	ar6
      00053B C0 D0            [24] 1625 	push	psw
      00053D 75 D0 00         [24] 1626 	mov	psw,#0x00
                                   1627 ;	i2c-bit-bang-oled-0.49-analog-reading.c:253: TF0 = 0;
                                   1628 ;	assignBit
      000540 C2 8D            [12] 1629 	clr	_TF0
                                   1630 ;	i2c-bit-bang-oled-0.49-analog-reading.c:254: TH0 = 0xB1;
      000542 75 8C B1         [24] 1631 	mov	_TH0,#0xb1
                                   1632 ;	i2c-bit-bang-oled-0.49-analog-reading.c:255: TL0 = 0xE0;
      000545 75 8A E0         [24] 1633 	mov	_TL0,#0xe0
                                   1634 ;	i2c-bit-bang-oled-0.49-analog-reading.c:256: tick_10ms++;
      000548 AE 08            [24] 1635 	mov	r6,_tick_10ms
      00054A AF 09            [24] 1636 	mov	r7,(_tick_10ms + 1)
      00054C 74 01            [12] 1637 	mov	a,#0x01
      00054E 2E               [12] 1638 	add	a, r6
      00054F F5 08            [12] 1639 	mov	_tick_10ms,a
      000551 E4               [12] 1640 	clr	a
      000552 3F               [12] 1641 	addc	a, r7
      000553 F5 09            [12] 1642 	mov	(_tick_10ms + 1),a
                                   1643 ;	i2c-bit-bang-oled-0.49-analog-reading.c:257: serialTime++;
      000555 AE 0A            [24] 1644 	mov	r6,_serialTime
      000557 AF 0B            [24] 1645 	mov	r7,(_serialTime + 1)
      000559 74 01            [12] 1646 	mov	a,#0x01
      00055B 2E               [12] 1647 	add	a, r6
      00055C F5 0A            [12] 1648 	mov	_serialTime,a
      00055E E4               [12] 1649 	clr	a
      00055F 3F               [12] 1650 	addc	a, r7
      000560 F5 0B            [12] 1651 	mov	(_serialTime + 1),a
                                   1652 ;	i2c-bit-bang-oled-0.49-analog-reading.c:258: }
      000562 D0 D0            [24] 1653 	pop	psw
      000564 D0 06            [24] 1654 	pop	ar6
      000566 D0 07            [24] 1655 	pop	ar7
      000568 D0 E0            [24] 1656 	pop	acc
      00056A 32               [24] 1657 	reti
                                   1658 ;	eliminated unneeded push/pop dpl
                                   1659 ;	eliminated unneeded push/pop dph
                                   1660 ;	eliminated unneeded push/pop b
                                   1661 ;------------------------------------------------------------
                                   1662 ;Allocation info for local variables in function 'timer0_init'
                                   1663 ;------------------------------------------------------------
                                   1664 ;	i2c-bit-bang-oled-0.49-analog-reading.c:260: void timer0_init(void) {
                                   1665 ;	-----------------------------------------
                                   1666 ;	 function timer0_init
                                   1667 ;	-----------------------------------------
      00056B                       1668 _timer0_init:
                                   1669 ;	i2c-bit-bang-oled-0.49-analog-reading.c:261: TMOD &= ~0x03;
      00056B 53 89 FC         [24] 1670 	anl	_TMOD,#0xfc
                                   1671 ;	i2c-bit-bang-oled-0.49-analog-reading.c:262: TMOD |=  0x01;
      00056E 43 89 01         [24] 1672 	orl	_TMOD,#0x01
                                   1673 ;	i2c-bit-bang-oled-0.49-analog-reading.c:264: TH0 = 0xB1;
      000571 75 8C B1         [24] 1674 	mov	_TH0,#0xb1
                                   1675 ;	i2c-bit-bang-oled-0.49-analog-reading.c:265: TL0 = 0xE0;
      000574 75 8A E0         [24] 1676 	mov	_TL0,#0xe0
                                   1677 ;	i2c-bit-bang-oled-0.49-analog-reading.c:267: ET0 = 1;
                                   1678 ;	assignBit
      000577 D2 A9            [12] 1679 	setb	_ET0
                                   1680 ;	i2c-bit-bang-oled-0.49-analog-reading.c:268: TR0 = 1;
                                   1681 ;	assignBit
      000579 D2 8C            [12] 1682 	setb	_TR0
                                   1683 ;	i2c-bit-bang-oled-0.49-analog-reading.c:269: EA = 1;
                                   1684 ;	assignBit
      00057B D2 AF            [12] 1685 	setb	_EA
                                   1686 ;	i2c-bit-bang-oled-0.49-analog-reading.c:270: }
      00057D 22               [24] 1687 	ret
                                   1688 ;------------------------------------------------------------
                                   1689 ;Allocation info for local variables in function 'clock_init'
                                   1690 ;------------------------------------------------------------
                                   1691 ;	i2c-bit-bang-oled-0.49-analog-reading.c:273: void clock_init(void) {
                                   1692 ;	-----------------------------------------
                                   1693 ;	 function clock_init
                                   1694 ;	-----------------------------------------
      00057E                       1695 _clock_init:
                                   1696 ;	i2c-bit-bang-oled-0.49-analog-reading.c:274: SAFE_MOD = 0x55;
      00057E 75 A1 55         [24] 1697 	mov	_SAFE_MOD,#0x55
                                   1698 ;	i2c-bit-bang-oled-0.49-analog-reading.c:275: SAFE_MOD = 0xAA;
      000581 75 A1 AA         [24] 1699 	mov	_SAFE_MOD,#0xaa
                                   1700 ;	i2c-bit-bang-oled-0.49-analog-reading.c:276: CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
      000584 74 F8            [12] 1701 	mov	a,#0xf8
      000586 55 B9            [12] 1702 	anl	a,_CLOCK_CFG
      000588 44 06            [12] 1703 	orl	a,#0x06
      00058A F5 B9            [12] 1704 	mov	_CLOCK_CFG,a
                                   1705 ;	i2c-bit-bang-oled-0.49-analog-reading.c:277: SAFE_MOD = 0x00;
      00058C 75 A1 00         [24] 1706 	mov	_SAFE_MOD,#0x00
                                   1707 ;	i2c-bit-bang-oled-0.49-analog-reading.c:278: }
      00058F 22               [24] 1708 	ret
                                   1709 ;------------------------------------------------------------
                                   1710 ;Allocation info for local variables in function 'analogReading'
                                   1711 ;------------------------------------------------------------
                                   1712 ;	i2c-bit-bang-oled-0.49-analog-reading.c:281: uint8_t analogReading(void) {
                                   1713 ;	-----------------------------------------
                                   1714 ;	 function analogReading
                                   1715 ;	-----------------------------------------
      000590                       1716 _analogReading:
                                   1717 ;	i2c-bit-bang-oled-0.49-analog-reading.c:282: ADC_START = 1;
                                   1718 ;	assignBit
      000590 D2 84            [12] 1719 	setb	_ADC_START
                                   1720 ;	i2c-bit-bang-oled-0.49-analog-reading.c:283: while (ADC_START);   // throw away first sample
      000592                       1721 00101$:
      000592 20 84 FD         [24] 1722 	jb	_ADC_START,00101$
                                   1723 ;	i2c-bit-bang-oled-0.49-analog-reading.c:285: ADC_START = 1;
                                   1724 ;	assignBit
      000595 D2 84            [12] 1725 	setb	_ADC_START
                                   1726 ;	i2c-bit-bang-oled-0.49-analog-reading.c:286: while (ADC_START);
      000597                       1727 00104$:
      000597 20 84 FD         [24] 1728 	jb	_ADC_START,00104$
                                   1729 ;	i2c-bit-bang-oled-0.49-analog-reading.c:288: ADC_IF = 0;
                                   1730 ;	assignBit
      00059A C2 85            [12] 1731 	clr	_ADC_IF
                                   1732 ;	i2c-bit-bang-oled-0.49-analog-reading.c:289: return ADC_DATA;
      00059C 85 9F 82         [24] 1733 	mov	dpl, _ADC_DATA
                                   1734 ;	i2c-bit-bang-oled-0.49-analog-reading.c:290: }
      00059F 22               [24] 1735 	ret
                                   1736 ;------------------------------------------------------------
                                   1737 ;Allocation info for local variables in function 'rawToMillivolts'
                                   1738 ;------------------------------------------------------------
                                   1739 ;raw           Allocated to registers r7 
                                   1740 ;------------------------------------------------------------
                                   1741 ;	i2c-bit-bang-oled-0.49-analog-reading.c:292: uint16_t rawToMillivolts(uint8_t raw) {
                                   1742 ;	-----------------------------------------
                                   1743 ;	 function rawToMillivolts
                                   1744 ;	-----------------------------------------
      0005A0                       1745 _rawToMillivolts:
      0005A0 AF 82            [24] 1746 	mov	r7, dpl
                                   1747 ;	i2c-bit-bang-oled-0.49-analog-reading.c:294: return ((uint32_t)raw * 5000) / 255;
      0005A2 7E 00            [12] 1748 	mov	r6,#0x00
      0005A4 7D 00            [12] 1749 	mov	r5,#0x00
      0005A6 7C 00            [12] 1750 	mov	r4,#0x00
      0005A8 C0 07            [24] 1751 	push	ar7
      0005AA C0 06            [24] 1752 	push	ar6
      0005AC C0 05            [24] 1753 	push	ar5
      0005AE C0 04            [24] 1754 	push	ar4
      0005B0 90 13 88         [24] 1755 	mov	dptr,#0x1388
      0005B3 E4               [12] 1756 	clr	a
      0005B4 F5 F0            [12] 1757 	mov	b,a
      0005B6 12 0D 92         [24] 1758 	lcall	__mullong
      0005B9 AC 82            [24] 1759 	mov	r4, dpl
      0005BB AD 83            [24] 1760 	mov	r5, dph
      0005BD AE F0            [24] 1761 	mov	r6, b
      0005BF FF               [12] 1762 	mov	r7, a
      0005C0 E5 81            [12] 1763 	mov	a,sp
      0005C2 24 FC            [12] 1764 	add	a,#0xfc
      0005C4 F5 81            [12] 1765 	mov	sp,a
      0005C6 74 FF            [12] 1766 	mov	a,#0xff
      0005C8 C0 E0            [24] 1767 	push	acc
      0005CA E4               [12] 1768 	clr	a
      0005CB C0 E0            [24] 1769 	push	acc
      0005CD C0 E0            [24] 1770 	push	acc
      0005CF C0 E0            [24] 1771 	push	acc
      0005D1 8C 82            [24] 1772 	mov	dpl, r4
      0005D3 8D 83            [24] 1773 	mov	dph, r5
      0005D5 8E F0            [24] 1774 	mov	b, r6
      0005D7 EF               [12] 1775 	mov	a, r7
      0005D8 12 0C CC         [24] 1776 	lcall	__divulong
      0005DB AC 82            [24] 1777 	mov	r4, dpl
      0005DD AD 83            [24] 1778 	mov	r5, dph
      0005DF E5 81            [12] 1779 	mov	a,sp
      0005E1 24 FC            [12] 1780 	add	a,#0xfc
      0005E3 F5 81            [12] 1781 	mov	sp,a
      0005E5 8C 82            [24] 1782 	mov	dpl,r4
      0005E7 8D 83            [24] 1783 	mov	dph,r5
                                   1784 ;	i2c-bit-bang-oled-0.49-analog-reading.c:295: }
      0005E9 22               [24] 1785 	ret
                                   1786 ;------------------------------------------------------------
                                   1787 ;Allocation info for local variables in function 'main'
                                   1788 ;------------------------------------------------------------
                                   1789 ;m             Allocated to stack - _bp +1 +2 
                                   1790 ;page          Allocated to registers r7 
                                   1791 ;i             Allocated to registers r6 
                                   1792 ;text_width    Allocated to registers 
                                   1793 ;x             Allocated to registers r6 
                                   1794 ;page          Allocated to registers 
                                   1795 ;------------------------------------------------------------
                                   1796 ;	i2c-bit-bang-oled-0.49-analog-reading.c:298: void main(void) {
                                   1797 ;	-----------------------------------------
                                   1798 ;	 function main
                                   1799 ;	-----------------------------------------
      0005EA                       1800 _main:
      0005EA C0 10            [24] 1801 	push	_bp
      0005EC 85 81 10         [24] 1802 	mov	_bp,sp
      0005EF 05 81            [12] 1803 	inc	sp
      0005F1 05 81            [12] 1804 	inc	sp
                                   1805 ;	i2c-bit-bang-oled-0.49-analog-reading.c:300: SAFE_MOD = 0x55;
      0005F3 75 A1 55         [24] 1806 	mov	_SAFE_MOD,#0x55
                                   1807 ;	i2c-bit-bang-oled-0.49-analog-reading.c:301: SAFE_MOD = 0xAA;
      0005F6 75 A1 AA         [24] 1808 	mov	_SAFE_MOD,#0xaa
                                   1809 ;	i2c-bit-bang-oled-0.49-analog-reading.c:302: GLOBAL_CFG &= ~bWDOG_EN;
      0005F9 53 B1 FE         [24] 1810 	anl	_GLOBAL_CFG,#0xfe
                                   1811 ;	i2c-bit-bang-oled-0.49-analog-reading.c:303: SAFE_MOD = 0x00;
      0005FC 75 A1 00         [24] 1812 	mov	_SAFE_MOD,#0x00
                                   1813 ;	i2c-bit-bang-oled-0.49-analog-reading.c:304: clock_init();       // clock MUST be first — everything depends on Fsys=24MHz
      0005FF 12 05 7E         [24] 1814 	lcall	_clock_init
                                   1815 ;	i2c-bit-bang-oled-0.49-analog-reading.c:305: timer0_init();      // timer second — needed for the tick_10ms delay below
      000602 12 05 6B         [24] 1816 	lcall	_timer0_init
                                   1817 ;	i2c-bit-bang-oled-0.49-analog-reading.c:308: Serial_begin();         // after clock, so baud rate is correct
      000605 12 09 C6         [24] 1818 	lcall	_Serial_begin
                                   1819 ;	i2c-bit-bang-oled-0.49-analog-reading.c:309: ADCInit(2);
      000608 75 82 02         [24] 1820 	mov	dpl, #0x02
      00060B 12 07 18         [24] 1821 	lcall	_ADCInit
                                   1822 ;	i2c-bit-bang-oled-0.49-analog-reading.c:310: ADC_ChannelSelect(1); // Option 1, P1.4 as analog input -> else if(ch == 1){ADC_CHAN1 =0;ADC_CHAN0=1;P1_DIR_PU &= ~bAIN1;}            //AIN1
      00060E 75 82 01         [24] 1823 	mov	dpl, #0x01
      000611 12 07 25         [24] 1824 	lcall	_ADC_ChannelSelect
                                   1825 ;	i2c-bit-bang-oled-0.49-analog-reading.c:311: for (volatile uint16_t m = 0; m < 1000; m++); // settle
      000614 A8 10            [24] 1826 	mov	r0,_bp
      000616 08               [12] 1827 	inc	r0
      000617 E4               [12] 1828 	clr	a
      000618 F6               [12] 1829 	mov	@r0,a
      000619 08               [12] 1830 	inc	r0
      00061A F6               [12] 1831 	mov	@r0,a
      00061B                       1832 00113$:
      00061B A8 10            [24] 1833 	mov	r0,_bp
      00061D 08               [12] 1834 	inc	r0
      00061E 86 06            [24] 1835 	mov	ar6,@r0
      000620 08               [12] 1836 	inc	r0
      000621 86 07            [24] 1837 	mov	ar7,@r0
      000623 C3               [12] 1838 	clr	c
      000624 EE               [12] 1839 	mov	a,r6
      000625 94 E8            [12] 1840 	subb	a,#0xe8
      000627 EF               [12] 1841 	mov	a,r7
      000628 94 03            [12] 1842 	subb	a,#0x03
      00062A 50 15            [24] 1843 	jnc	00101$
      00062C A8 10            [24] 1844 	mov	r0,_bp
      00062E 08               [12] 1845 	inc	r0
      00062F 86 06            [24] 1846 	mov	ar6,@r0
      000631 08               [12] 1847 	inc	r0
      000632 86 07            [24] 1848 	mov	ar7,@r0
      000634 A8 10            [24] 1849 	mov	r0,_bp
      000636 08               [12] 1850 	inc	r0
      000637 74 01            [12] 1851 	mov	a,#0x01
      000639 2E               [12] 1852 	add	a, r6
      00063A F6               [12] 1853 	mov	@r0,a
      00063B E4               [12] 1854 	clr	a
      00063C 3F               [12] 1855 	addc	a, r7
      00063D 08               [12] 1856 	inc	r0
      00063E F6               [12] 1857 	mov	@r0,a
      00063F 80 DA            [24] 1858 	sjmp	00113$
      000641                       1859 00101$:
                                   1860 ;	i2c-bit-bang-oled-0.49-analog-reading.c:315: P1_MOD_OC &= ~(1 << 4);  // not open-drain
      000641 53 92 EF         [24] 1861 	anl	_P1_MOD_OC,#0xef
                                   1862 ;	i2c-bit-bang-oled-0.49-analog-reading.c:316: P1_DIR_PU  &= ~(1 << 4); // disable pull-up, set as input
      000644 53 93 EF         [24] 1863 	anl	_P1_DIR_PU,#0xef
                                   1864 ;	i2c-bit-bang-oled-0.49-analog-reading.c:319: P1_MOD_OC |= (1 << SDA_PIN) | (1 << SCL_PIN);  // open-drain
      000647 43 92 03         [24] 1865 	orl	_P1_MOD_OC,#0x03
                                   1866 ;	i2c-bit-bang-oled-0.49-analog-reading.c:320: P1_DIR_PU  &= ~((1 << SDA_PIN) | (1 << SCL_PIN)); // disable internal pull-up
      00064A 53 93 FC         [24] 1867 	anl	_P1_DIR_PU,#0xfc
                                   1868 ;	i2c-bit-bang-oled-0.49-analog-reading.c:321: SDA_RELEASE();
      00064D 43 90 01         [24] 1869 	orl	_P1,#0x01
                                   1870 ;	i2c-bit-bang-oled-0.49-analog-reading.c:322: SCL_RELEASE();
      000650 43 90 02         [24] 1871 	orl	_P1,#0x02
                                   1872 ;	i2c-bit-bang-oled-0.49-analog-reading.c:324: while (tick_10ms < 15); // 150ms power-on delay — timer is running now so this works
      000653                       1873 00102$:
      000653 C3               [12] 1874 	clr	c
      000654 E5 08            [12] 1875 	mov	a,_tick_10ms
      000656 94 0F            [12] 1876 	subb	a,#0x0f
      000658 E5 09            [12] 1877 	mov	a,(_tick_10ms + 1)
      00065A 94 00            [12] 1878 	subb	a,#0x00
      00065C 40 F5            [24] 1879 	jc	00102$
                                   1880 ;	i2c-bit-bang-oled-0.49-analog-reading.c:325: oled_init();
      00065E 12 02 48         [24] 1881 	lcall	_oled_init
                                   1882 ;	i2c-bit-bang-oled-0.49-analog-reading.c:328: while (1) {
      000661                       1883 00110$:
                                   1884 ;	i2c-bit-bang-oled-0.49-analog-reading.c:330: if(serialTime > 100) {   // every ~1 second
      000661 C3               [12] 1885 	clr	c
      000662 74 64            [12] 1886 	mov	a,#0x64
      000664 95 0A            [12] 1887 	subb	a,_serialTime
      000666 E4               [12] 1888 	clr	a
      000667 95 0B            [12] 1889 	subb	a,(_serialTime + 1)
      000669 50 F6            [24] 1890 	jnc	00110$
                                   1891 ;	i2c-bit-bang-oled-0.49-analog-reading.c:331: serialTime = 0;
      00066B E4               [12] 1892 	clr	a
      00066C F5 0A            [12] 1893 	mov	_serialTime,a
      00066E F5 0B            [12] 1894 	mov	(_serialTime + 1),a
                                   1895 ;	i2c-bit-bang-oled-0.49-analog-reading.c:334: rawAnalog = analogReading();
      000670 12 05 90         [24] 1896 	lcall	_analogReading
                                   1897 ;	i2c-bit-bang-oled-0.49-analog-reading.c:335: finalAnalog = rawToMillivolts(rawAnalog);
      000673 85 82 0C         [24] 1898 	mov  _rawAnalog,dpl
      000676 12 05 A0         [24] 1899 	lcall	_rawToMillivolts
                                   1900 ;	i2c-bit-bang-oled-0.49-analog-reading.c:336: Serial_println_uint(finalAnalog);
      000679 85 82 0D         [24] 1901 	mov	_finalAnalog,dpl
      00067C 85 83 0E         [24] 1902 	mov  (_finalAnalog + 1),dph
      00067F 12 0C 15         [24] 1903 	lcall	_Serial_println_uint
                                   1904 ;	i2c-bit-bang-oled-0.49-analog-reading.c:339: for (uint8_t page = 0; page < 4; page++) {
      000682 7F 00            [12] 1905 	mov	r7,#0x00
      000684                       1906 00119$:
      000684 BF 04 00         [24] 1907 	cjne	r7,#0x04,00188$
      000687                       1908 00188$:
      000687 50 4B            [24] 1909 	jnc	00106$
                                   1910 ;	i2c-bit-bang-oled-0.49-analog-reading.c:340: oled_cmd(0xB0 + page);
      000689 8F 06            [24] 1911 	mov	ar6,r7
      00068B 74 B0            [12] 1912 	mov	a,#0xb0
      00068D 2E               [12] 1913 	add	a, r6
      00068E F5 82            [12] 1914 	mov	dpl,a
      000690 C0 07            [24] 1915 	push	ar7
      000692 12 01 30         [24] 1916 	lcall	_oled_cmd
                                   1917 ;	i2c-bit-bang-oled-0.49-analog-reading.c:341: oled_cmd(0x00 | (32 & 0x0F));
      000695 75 82 00         [24] 1918 	mov	dpl, #0x00
      000698 12 01 30         [24] 1919 	lcall	_oled_cmd
                                   1920 ;	i2c-bit-bang-oled-0.49-analog-reading.c:342: oled_cmd(0x10 | (32 >> 4));
      00069B 75 82 12         [24] 1921 	mov	dpl, #0x12
      00069E 12 01 30         [24] 1922 	lcall	_oled_cmd
                                   1923 ;	i2c-bit-bang-oled-0.49-analog-reading.c:344: i2c_start();
      0006A1 12 00 C5         [24] 1924 	lcall	_i2c_start
                                   1925 ;	i2c-bit-bang-oled-0.49-analog-reading.c:345: i2c_write_byte(OLED_ADDR);
      0006A4 75 82 78         [24] 1926 	mov	dpl, #0x78
      0006A7 12 00 E7         [24] 1927 	lcall	_i2c_write_byte
                                   1928 ;	i2c-bit-bang-oled-0.49-analog-reading.c:346: i2c_write_byte(0x40);
      0006AA 75 82 40         [24] 1929 	mov	dpl, #0x40
      0006AD 12 00 E7         [24] 1930 	lcall	_i2c_write_byte
      0006B0 D0 07            [24] 1931 	pop	ar7
                                   1932 ;	i2c-bit-bang-oled-0.49-analog-reading.c:347: for (uint8_t i = 0; i < 64; i++) i2c_write_byte(0x00);
      0006B2 7E 00            [12] 1933 	mov	r6,#0x00
      0006B4                       1934 00116$:
      0006B4 BE 40 00         [24] 1935 	cjne	r6,#0x40,00190$
      0006B7                       1936 00190$:
      0006B7 50 11            [24] 1937 	jnc	00105$
      0006B9 75 82 00         [24] 1938 	mov	dpl, #0x00
      0006BC C0 07            [24] 1939 	push	ar7
      0006BE C0 06            [24] 1940 	push	ar6
      0006C0 12 00 E7         [24] 1941 	lcall	_i2c_write_byte
      0006C3 D0 06            [24] 1942 	pop	ar6
      0006C5 D0 07            [24] 1943 	pop	ar7
      0006C7 0E               [12] 1944 	inc	r6
      0006C8 80 EA            [24] 1945 	sjmp	00116$
      0006CA                       1946 00105$:
                                   1947 ;	i2c-bit-bang-oled-0.49-analog-reading.c:348: i2c_stop();
      0006CA C0 07            [24] 1948 	push	ar7
      0006CC 12 00 D8         [24] 1949 	lcall	_i2c_stop
      0006CF D0 07            [24] 1950 	pop	ar7
                                   1951 ;	i2c-bit-bang-oled-0.49-analog-reading.c:339: for (uint8_t page = 0; page < 4; page++) {
      0006D1 0F               [12] 1952 	inc	r7
      0006D2 80 B0            [24] 1953 	sjmp	00119$
      0006D4                       1954 00106$:
                                   1955 ;	i2c-bit-bang-oled-0.49-analog-reading.c:351: uint8_t text_width = get_text_width(finalAnalog);
      0006D4 85 0D 82         [24] 1956 	mov	dpl, _finalAnalog
      0006D7 85 0E 83         [24] 1957 	mov	dph, (_finalAnalog + 1)
      0006DA 12 03 40         [24] 1958 	lcall	_get_text_width
      0006DD AF 82            [24] 1959 	mov	r7, dpl
                                   1960 ;	i2c-bit-bang-oled-0.49-analog-reading.c:352: uint8_t x = (64 - text_width) / 2;   // center horizontally
      0006DF 7E 00            [12] 1961 	mov	r6,#0x00
      0006E1 74 40            [12] 1962 	mov	a,#0x40
      0006E3 C3               [12] 1963 	clr	c
      0006E4 9F               [12] 1964 	subb	a,r7
      0006E5 F5 82            [12] 1965 	mov	dpl,a
      0006E7 E4               [12] 1966 	clr	a
      0006E8 9E               [12] 1967 	subb	a,r6
      0006E9 F5 83            [12] 1968 	mov	dph,a
      0006EB 74 02            [12] 1969 	mov	a,#0x02
      0006ED C0 E0            [24] 1970 	push	acc
      0006EF E4               [12] 1971 	clr	a
      0006F0 C0 E0            [24] 1972 	push	acc
      0006F2 12 0E 47         [24] 1973 	lcall	__divsint
      0006F5 AE 82            [24] 1974 	mov	r6, dpl
      0006F7 15 81            [12] 1975 	dec	sp
      0006F9 15 81            [12] 1976 	dec	sp
                                   1977 ;	i2c-bit-bang-oled-0.49-analog-reading.c:355: oled_set_cursor(x, page);
      0006FB 74 01            [12] 1978 	mov	a,#0x01
      0006FD C0 E0            [24] 1979 	push	acc
      0006FF 8E 82            [24] 1980 	mov	dpl, r6
      000701 12 01 6A         [24] 1981 	lcall	_oled_set_cursor
      000704 15 81            [12] 1982 	dec	sp
                                   1983 ;	i2c-bit-bang-oled-0.49-analog-reading.c:356: oled_print_uint(finalAnalog);
      000706 85 0D 82         [24] 1984 	mov	dpl, _finalAnalog
      000709 85 0E 83         [24] 1985 	mov	dph, (_finalAnalog + 1)
      00070C 12 03 7D         [24] 1986 	lcall	_oled_print_uint
      00070F 02 06 61         [24] 1987 	ljmp	00110$
                                   1988 ;	i2c-bit-bang-oled-0.49-analog-reading.c:361: }
      000712 85 10 81         [24] 1989 	mov	sp,_bp
      000715 D0 10            [24] 1990 	pop	_bp
      000717 22               [24] 1991 	ret
                                   1992 	.area CSEG    (CODE)
                                   1993 	.area CONST   (CODE)
                                   1994 	.area CONST   (CODE)
      000E88                       1995 _font5x7:
      000E88 3E                    1996 	.db #0x3e	; 62
      000E89 51                    1997 	.db #0x51	; 81	'Q'
      000E8A 49                    1998 	.db #0x49	; 73	'I'
      000E8B 45                    1999 	.db #0x45	; 69	'E'
      000E8C 3E                    2000 	.db #0x3e	; 62
      000E8D 00                    2001 	.db #0x00	; 0
      000E8E 42                    2002 	.db #0x42	; 66	'B'
      000E8F 7F                    2003 	.db #0x7f	; 127
      000E90 40                    2004 	.db #0x40	; 64
      000E91 00                    2005 	.db #0x00	; 0
      000E92 62                    2006 	.db #0x62	; 98	'b'
      000E93 51                    2007 	.db #0x51	; 81	'Q'
      000E94 49                    2008 	.db #0x49	; 73	'I'
      000E95 49                    2009 	.db #0x49	; 73	'I'
      000E96 46                    2010 	.db #0x46	; 70	'F'
      000E97 22                    2011 	.db #0x22	; 34
      000E98 49                    2012 	.db #0x49	; 73	'I'
      000E99 49                    2013 	.db #0x49	; 73	'I'
      000E9A 49                    2014 	.db #0x49	; 73	'I'
      000E9B 36                    2015 	.db #0x36	; 54	'6'
      000E9C 18                    2016 	.db #0x18	; 24
      000E9D 14                    2017 	.db #0x14	; 20
      000E9E 12                    2018 	.db #0x12	; 18
      000E9F 7F                    2019 	.db #0x7f	; 127
      000EA0 10                    2020 	.db #0x10	; 16
      000EA1 2F                    2021 	.db #0x2f	; 47
      000EA2 49                    2022 	.db #0x49	; 73	'I'
      000EA3 49                    2023 	.db #0x49	; 73	'I'
      000EA4 49                    2024 	.db #0x49	; 73	'I'
      000EA5 31                    2025 	.db #0x31	; 49	'1'
      000EA6 3E                    2026 	.db #0x3e	; 62
      000EA7 49                    2027 	.db #0x49	; 73	'I'
      000EA8 49                    2028 	.db #0x49	; 73	'I'
      000EA9 49                    2029 	.db #0x49	; 73	'I'
      000EAA 32                    2030 	.db #0x32	; 50	'2'
      000EAB 01                    2031 	.db #0x01	; 1
      000EAC 71                    2032 	.db #0x71	; 113	'q'
      000EAD 09                    2033 	.db #0x09	; 9
      000EAE 05                    2034 	.db #0x05	; 5
      000EAF 03                    2035 	.db #0x03	; 3
      000EB0 36                    2036 	.db #0x36	; 54	'6'
      000EB1 49                    2037 	.db #0x49	; 73	'I'
      000EB2 49                    2038 	.db #0x49	; 73	'I'
      000EB3 49                    2039 	.db #0x49	; 73	'I'
      000EB4 36                    2040 	.db #0x36	; 54	'6'
      000EB5 26                    2041 	.db #0x26	; 38
      000EB6 49                    2042 	.db #0x49	; 73	'I'
      000EB7 49                    2043 	.db #0x49	; 73	'I'
      000EB8 49                    2044 	.db #0x49	; 73	'I'
      000EB9 3E                    2045 	.db #0x3e	; 62
                                   2046 	.area CSEG    (CODE)
                                   2047 	.area CONST   (CODE)
      000EBA                       2048 _font_m:
      000EBA 7C                    2049 	.db #0x7c	; 124
      000EBB 04                    2050 	.db #0x04	; 4
      000EBC 18                    2051 	.db #0x18	; 24
      000EBD 04                    2052 	.db #0x04	; 4
      000EBE 78                    2053 	.db #0x78	; 120	'x'
                                   2054 	.area CSEG    (CODE)
                                   2055 	.area CONST   (CODE)
      000EBF                       2056 _font_V:
      000EBF 1F                    2057 	.db #0x1f	; 31
      000EC0 20                    2058 	.db #0x20	; 32
      000EC1 40                    2059 	.db #0x40	; 64
      000EC2 20                    2060 	.db #0x20	; 32
      000EC3 1F                    2061 	.db #0x1f	; 31
                                   2062 	.area CSEG    (CODE)
                                   2063 	.area XINIT   (CODE)
                                   2064 	.area CABS    (ABS,CODE)
