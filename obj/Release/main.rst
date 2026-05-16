                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Font_8x8
                                     12 	.globl _main
                                     13 	.globl _Measure_Single
                                     14 	.globl _SSD1306_DisplayResult
                                     15 	.globl _SSD1306_PrintString
                                     16 	.globl _SSD1306_WriteChar
                                     17 	.globl _SSD1306_SetCursor
                                     18 	.globl _SSD1306_Clear
                                     19 	.globl _SSD1306_Init
                                     20 	.globl _SSD1306_Command
                                     21 	.globl _I2C_Write_Byte
                                     22 	.globl _I2C_Stop
                                     23 	.globl _I2C_Start
                                     24 	.globl _SDA_LOW
                                     25 	.globl _SDA_HIGH
                                     26 	.globl _SCL_LOW
                                     27 	.globl _SCL_HIGH
                                     28 	.globl _I2C_Delay
                                     29 	.globl _Delay_ms
                                     30 	.globl _PIN_BUTTON
                                     31 	.globl _PIN_R3_1K
                                     32 	.globl _PIN_R1_10K
                                     33 	.globl _TF0
                                     34 	.globl _TR0
                                     35 	.globl _AUXR
                                     36 	.globl _TH0
                                     37 	.globl _TL0
                                     38 	.globl _TCON
                                     39 	.globl _TMOD
                                     40 	.globl _CLKSEL
                                     41 	.globl _P_SW2
                                     42 	.globl _P5M0
                                     43 	.globl _P5M1
                                     44 	.globl _P5
                                     45 	.globl _P4
                                     46 	.globl _P3M0
                                     47 	.globl _P3M1
                                     48 	.globl _P3
                                     49 	.globl _P2
                                     50 	.globl _P1M0
                                     51 	.globl _P1M1
                                     52 	.globl _P1
                                     53 	.globl _P0
                                     54 	.globl _SSD1306_DisplayResult_PARM_4
                                     55 	.globl _SSD1306_DisplayResult_PARM_3
                                     56 	.globl _SSD1306_DisplayResult_PARM_2
                                     57 	.globl _SSD1306_PrintString_PARM_3
                                     58 	.globl _SSD1306_PrintString_PARM_2
                                     59 	.globl _SSD1306_WriteChar_PARM_3
                                     60 	.globl _SSD1306_WriteChar_PARM_2
                                     61 	.globl _SSD1306_SetCursor_PARM_2
                                     62 ;--------------------------------------------------------
                                     63 ; special function registers
                                     64 ;--------------------------------------------------------
                                     65 	.area RSEG    (ABS,DATA)
      000000                         66 	.org 0x0000
                           000080    67 _P0	=	0x0080
                           000090    68 _P1	=	0x0090
                           000093    69 _P1M1	=	0x0093
                           000094    70 _P1M0	=	0x0094
                           0000A0    71 _P2	=	0x00a0
                           0000B0    72 _P3	=	0x00b0
                           0000B1    73 _P3M1	=	0x00b1
                           0000B2    74 _P3M0	=	0x00b2
                           0000C0    75 _P4	=	0x00c0
                           0000C8    76 _P5	=	0x00c8
                           0000C9    77 _P5M1	=	0x00c9
                           0000CA    78 _P5M0	=	0x00ca
                           00008E    79 _P_SW2	=	0x008e
                           00009D    80 _CLKSEL	=	0x009d
                           000089    81 _TMOD	=	0x0089
                           000088    82 _TCON	=	0x0088
                           00008A    83 _TL0	=	0x008a
                           00008C    84 _TH0	=	0x008c
                           00008E    85 _AUXR	=	0x008e
                                     86 ;--------------------------------------------------------
                                     87 ; special function bits
                                     88 ;--------------------------------------------------------
                                     89 	.area RSEG    (ABS,DATA)
      000000                         90 	.org 0x0000
                           00008C    91 _TR0	=	0x008c
                           00008D    92 _TF0	=	0x008d
                           0000B1    93 _PIN_R1_10K	=	0x00b1
                           0000C4    94 _PIN_R3_1K	=	0x00c4
                           0000B0    95 _PIN_BUTTON	=	0x00b0
                                     96 ;--------------------------------------------------------
                                     97 ; overlayable register banks
                                     98 ;--------------------------------------------------------
                                     99 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        100 	.ds 8
                                    101 ;--------------------------------------------------------
                                    102 ; internal ram data
                                    103 ;--------------------------------------------------------
                                    104 	.area DSEG    (DATA)
      000008                        105 _SSD1306_DisplayResult_sloc0_1_0:
      000008                        106 	.ds 1
      000009                        107 _SSD1306_DisplayResult_sloc1_1_0:
      000009                        108 	.ds 4
      00000D                        109 _SSD1306_DisplayResult_sloc2_1_0:
      00000D                        110 	.ds 4
      000011                        111 _main_sloc0_1_0:
      000011                        112 	.ds 4
      000015                        113 _main_sloc1_1_0:
      000015                        114 	.ds 4
                                    115 ;--------------------------------------------------------
                                    116 ; overlayable items in internal ram
                                    117 ;--------------------------------------------------------
                                    118 ;--------------------------------------------------------
                                    119 ; Stack segment in internal ram
                                    120 ;--------------------------------------------------------
                                    121 	.area SSEG
      000021                        122 __start__stack:
      000021                        123 	.ds	1
                                    124 
                                    125 ;--------------------------------------------------------
                                    126 ; indirectly addressable internal ram data
                                    127 ;--------------------------------------------------------
                                    128 	.area ISEG    (DATA)
                                    129 ;--------------------------------------------------------
                                    130 ; absolute internal ram data
                                    131 ;--------------------------------------------------------
                                    132 	.area IABS    (ABS,DATA)
                                    133 	.area IABS    (ABS,DATA)
                                    134 ;--------------------------------------------------------
                                    135 ; bit data
                                    136 ;--------------------------------------------------------
                                    137 	.area BSEG    (BIT)
      000000                        138 _main_sloc2_1_0:
      000000                        139 	.ds 1
                                    140 ;--------------------------------------------------------
                                    141 ; paged external ram data
                                    142 ;--------------------------------------------------------
                                    143 	.area PSEG    (PAG,XDATA)
                                    144 ;--------------------------------------------------------
                                    145 ; uninitialized external ram data
                                    146 ;--------------------------------------------------------
                                    147 	.area XSEG    (XDATA)
      000001                        148 _Delay_ms_ms_10000_1:
      000001                        149 	.ds 2
      000003                        150 _Delay_ms_i_10000_2:
      000003                        151 	.ds 2
      000005                        152 _I2C_Delay_i_10000_5:
      000005                        153 	.ds 1
      000006                        154 _I2C_Write_Byte_dat_10000_18:
      000006                        155 	.ds 1
      000007                        156 _SSD1306_Command_cmd_10000_24:
      000007                        157 	.ds 1
      000008                        158 _SSD1306_SetCursor_PARM_2:
      000008                        159 	.ds 1
      000009                        160 _SSD1306_SetCursor_page_10000_34:
      000009                        161 	.ds 1
      00000A                        162 _SSD1306_WriteChar_PARM_2:
      00000A                        163 	.ds 1
      00000B                        164 _SSD1306_WriteChar_PARM_3:
      00000B                        165 	.ds 1
      00000C                        166 _SSD1306_WriteChar_page_10000_36:
      00000C                        167 	.ds 1
      00000D                        168 _SSD1306_WriteChar_idx_10000_37:
      00000D                        169 	.ds 1
      00000E                        170 _SSD1306_PrintString_PARM_2:
      00000E                        171 	.ds 1
      00000F                        172 _SSD1306_PrintString_PARM_3:
      00000F                        173 	.ds 3
      000012                        174 _SSD1306_PrintString_page_10000_42:
      000012                        175 	.ds 1
      000013                        176 _SSD1306_DisplayResult_PARM_2:
      000013                        177 	.ds 1
      000014                        178 _SSD1306_DisplayResult_PARM_3:
      000014                        179 	.ds 4
      000018                        180 _SSD1306_DisplayResult_PARM_4:
      000018                        181 	.ds 1
      000019                        182 _SSD1306_DisplayResult_page_10000_45:
      000019                        183 	.ds 1
      00001A                        184 _Measure_Single_use_1k_10000_50:
      00001A                        185 	.ds 1
      00001B                        186 _Measure_Single_discharge_10000_51:
      00001B                        187 	.ds 2
      00001D                        188 _main_final_calc_10000_59:
      00001D                        189 	.ds 4
      000021                        190 _main_last_display_val_10000_59:
      000021                        191 	.ds 4
      000025                        192 _main_filtered_ticks_10000_59:
      000025                        193 	.ds 4
      000029                        194 _main_mode_uf_10000_59:
      000029                        195 	.ds 1
      00002A                        196 _main_is_first_run_10000_59:
      00002A                        197 	.ds 1
      00002B                        198 _main_is_sleeping_10000_59:
      00002B                        199 	.ds 1
                                    200 ;--------------------------------------------------------
                                    201 ; absolute external ram data
                                    202 ;--------------------------------------------------------
                                    203 	.area XABS    (ABS,XDATA)
                                    204 ;--------------------------------------------------------
                                    205 ; initialized external ram data
                                    206 ;--------------------------------------------------------
                                    207 	.area XISEG   (XDATA)
                                    208 	.area HOME    (CODE)
                                    209 	.area GSINIT0 (CODE)
                                    210 	.area GSINIT1 (CODE)
                                    211 	.area GSINIT2 (CODE)
                                    212 	.area GSINIT3 (CODE)
                                    213 	.area GSINIT4 (CODE)
                                    214 	.area GSINIT5 (CODE)
                                    215 	.area GSINIT  (CODE)
                                    216 	.area GSFINAL (CODE)
                                    217 	.area CSEG    (CODE)
                                    218 ;--------------------------------------------------------
                                    219 ; interrupt vector
                                    220 ;--------------------------------------------------------
                                    221 	.area HOME    (CODE)
      000000                        222 __interrupt_vect:
      000000 02 00 06         [24]  223 	ljmp	__sdcc_gsinit_startup
                                    224 ;--------------------------------------------------------
                                    225 ; global & static initialisations
                                    226 ;--------------------------------------------------------
                                    227 	.area HOME    (CODE)
                                    228 	.area GSINIT  (CODE)
                                    229 	.area GSFINAL (CODE)
                                    230 	.area GSINIT  (CODE)
                                    231 	.globl __sdcc_gsinit_startup
                                    232 	.globl __sdcc_program_startup
                                    233 	.globl __start__stack
                                    234 	.globl __mcs51_genXINIT
                                    235 	.globl __mcs51_genXRAMCLEAR
                                    236 	.globl __mcs51_genRAMCLEAR
                                    237 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  238 	ljmp	__sdcc_program_startup
                                    239 ;--------------------------------------------------------
                                    240 ; Home
                                    241 ;--------------------------------------------------------
                                    242 	.area HOME    (CODE)
                                    243 	.area HOME    (CODE)
      000003                        244 __sdcc_program_startup:
      000003 02 08 FE         [24]  245 	ljmp	_main
                                    246 ;	return from main will return to caller
                                    247 ;--------------------------------------------------------
                                    248 ; code
                                    249 ;--------------------------------------------------------
                                    250 	.area CSEG    (CODE)
                                    251 ;------------------------------------------------------------
                                    252 ;Allocation info for local variables in function 'Delay_ms'
                                    253 ;------------------------------------------------------------
                                    254 ;ms                        Allocated with name '_Delay_ms_ms_10000_1'
                                    255 ;i                         Allocated with name '_Delay_ms_i_10000_2'
                                    256 ;------------------------------------------------------------
                                    257 ;	main.c:72: void Delay_ms(unsigned int ms) { volatile unsigned int i; while(ms--) { i = 600; while(i--); } }
                                    258 ;	-----------------------------------------
                                    259 ;	 function Delay_ms
                                    260 ;	-----------------------------------------
      000062                        261 _Delay_ms:
                           000007   262 	ar7 = 0x07
                           000006   263 	ar6 = 0x06
                           000005   264 	ar5 = 0x05
                           000004   265 	ar4 = 0x04
                           000003   266 	ar3 = 0x03
                           000002   267 	ar2 = 0x02
                           000001   268 	ar1 = 0x01
                           000000   269 	ar0 = 0x00
      000062 AF 83            [24]  270 	mov	r7,dph
      000064 E5 82            [12]  271 	mov	a,dpl
      000066 90 00 01         [24]  272 	mov	dptr,#_Delay_ms_ms_10000_1
      000069 F0               [24]  273 	movx	@dptr,a
      00006A EF               [12]  274 	mov	a,r7
      00006B A3               [24]  275 	inc	dptr
      00006C F0               [24]  276 	movx	@dptr,a
      00006D 90 00 01         [24]  277 	mov	dptr,#_Delay_ms_ms_10000_1
      000070 E0               [24]  278 	movx	a,@dptr
      000071 FE               [12]  279 	mov	r6,a
      000072 A3               [24]  280 	inc	dptr
      000073 E0               [24]  281 	movx	a,@dptr
      000074 FF               [12]  282 	mov	r7,a
      000075                        283 00104$:
      000075 8E 04            [24]  284 	mov	ar4,r6
      000077 8F 05            [24]  285 	mov	ar5,r7
      000079 1E               [12]  286 	dec	r6
      00007A BE FF 01         [24]  287 	cjne	r6,#0xff,00134$
      00007D 1F               [12]  288 	dec	r7
      00007E                        289 00134$:
      00007E 90 00 01         [24]  290 	mov	dptr,#_Delay_ms_ms_10000_1
      000081 EE               [12]  291 	mov	a,r6
      000082 F0               [24]  292 	movx	@dptr,a
      000083 EF               [12]  293 	mov	a,r7
      000084 A3               [24]  294 	inc	dptr
      000085 F0               [24]  295 	movx	@dptr,a
      000086 EC               [12]  296 	mov	a,r4
      000087 4D               [12]  297 	orl	a,r5
      000088 60 28            [24]  298 	jz	00113$
      00008A 90 00 03         [24]  299 	mov	dptr,#_Delay_ms_i_10000_2
      00008D 74 58            [12]  300 	mov	a,#0x58
      00008F F0               [24]  301 	movx	@dptr,a
      000090 74 02            [12]  302 	mov	a,#0x02
      000092 A3               [24]  303 	inc	dptr
      000093 F0               [24]  304 	movx	@dptr,a
      000094                        305 00101$:
      000094 90 00 03         [24]  306 	mov	dptr,#_Delay_ms_i_10000_2
      000097 E0               [24]  307 	movx	a,@dptr
      000098 FC               [12]  308 	mov	r4,a
      000099 A3               [24]  309 	inc	dptr
      00009A E0               [24]  310 	movx	a,@dptr
      00009B FD               [12]  311 	mov	r5,a
      00009C EC               [12]  312 	mov	a,r4
      00009D 24 FF            [12]  313 	add	a,#0xff
      00009F FA               [12]  314 	mov	r2,a
      0000A0 ED               [12]  315 	mov	a,r5
      0000A1 34 FF            [12]  316 	addc	a,#0xff
      0000A3 FB               [12]  317 	mov	r3,a
      0000A4 90 00 03         [24]  318 	mov	dptr,#_Delay_ms_i_10000_2
      0000A7 EA               [12]  319 	mov	a,r2
      0000A8 F0               [24]  320 	movx	@dptr,a
      0000A9 EB               [12]  321 	mov	a,r3
      0000AA A3               [24]  322 	inc	dptr
      0000AB F0               [24]  323 	movx	@dptr,a
      0000AC EC               [12]  324 	mov	a,r4
      0000AD 4D               [12]  325 	orl	a,r5
      0000AE 60 C5            [24]  326 	jz	00104$
      0000B0 80 E2            [24]  327 	sjmp	00101$
      0000B2                        328 00113$:
      0000B2 90 00 01         [24]  329 	mov	dptr,#_Delay_ms_ms_10000_1
      0000B5 EE               [12]  330 	mov	a,r6
      0000B6 F0               [24]  331 	movx	@dptr,a
      0000B7 EF               [12]  332 	mov	a,r7
      0000B8 A3               [24]  333 	inc	dptr
      0000B9 F0               [24]  334 	movx	@dptr,a
      0000BA 22               [24]  335 	ret
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'I2C_Delay'
                                    338 ;------------------------------------------------------------
                                    339 ;i                         Allocated with name '_I2C_Delay_i_10000_5'
                                    340 ;------------------------------------------------------------
                                    341 ;	main.c:73: void I2C_Delay(void) { volatile unsigned char i = 25; while(i--); }
                                    342 ;	-----------------------------------------
                                    343 ;	 function I2C_Delay
                                    344 ;	-----------------------------------------
      0000BB                        345 _I2C_Delay:
      0000BB 90 00 05         [24]  346 	mov	dptr,#_I2C_Delay_i_10000_5
      0000BE 74 19            [12]  347 	mov	a,#0x19
      0000C0 F0               [24]  348 	movx	@dptr,a
      0000C1                        349 00101$:
      0000C1 90 00 05         [24]  350 	mov	dptr,#_I2C_Delay_i_10000_5
      0000C4 E0               [24]  351 	movx	a,@dptr
      0000C5 FF               [12]  352 	mov	r7,a
      0000C6 14               [12]  353 	dec	a
      0000C7 F0               [24]  354 	movx	@dptr,a
      0000C8 EF               [12]  355 	mov	a,r7
      0000C9 70 F6            [24]  356 	jnz	00101$
      0000CB 22               [24]  357 	ret
                                    358 ;------------------------------------------------------------
                                    359 ;Allocation info for local variables in function 'SCL_HIGH'
                                    360 ;------------------------------------------------------------
                                    361 ;	main.c:76: void SCL_HIGH(void) { P3M1 &= ~(1 << SCL_BIT); P3M0 &= ~(1 << SCL_BIT); P3 |= (1 << SCL_BIT); }
                                    362 ;	-----------------------------------------
                                    363 ;	 function SCL_HIGH
                                    364 ;	-----------------------------------------
      0000CC                        365 _SCL_HIGH:
      0000CC 53 B1 FB         [24]  366 	anl	_P3M1,#0xfb
      0000CF 53 B2 FB         [24]  367 	anl	_P3M0,#0xfb
      0000D2 43 B0 04         [24]  368 	orl	_P3,#0x04
      0000D5 22               [24]  369 	ret
                                    370 ;------------------------------------------------------------
                                    371 ;Allocation info for local variables in function 'SCL_LOW'
                                    372 ;------------------------------------------------------------
                                    373 ;	main.c:77: void SCL_LOW(void)  { P3M1 |= (1 << SCL_BIT);  P3M0 |= (1 << SCL_BIT);  P3 &= ~(1 << SCL_BIT); }
                                    374 ;	-----------------------------------------
                                    375 ;	 function SCL_LOW
                                    376 ;	-----------------------------------------
      0000D6                        377 _SCL_LOW:
      0000D6 43 B1 04         [24]  378 	orl	_P3M1,#0x04
      0000D9 43 B2 04         [24]  379 	orl	_P3M0,#0x04
      0000DC 53 B0 FB         [24]  380 	anl	_P3,#0xfb
      0000DF 22               [24]  381 	ret
                                    382 ;------------------------------------------------------------
                                    383 ;Allocation info for local variables in function 'SDA_HIGH'
                                    384 ;------------------------------------------------------------
                                    385 ;	main.c:78: void SDA_HIGH(void) { P3M1 &= ~(1 << SDA_BIT); P3M0 &= ~(1 << SDA_BIT); P3 |= (1 << SDA_BIT); }
                                    386 ;	-----------------------------------------
                                    387 ;	 function SDA_HIGH
                                    388 ;	-----------------------------------------
      0000E0                        389 _SDA_HIGH:
      0000E0 53 B1 F7         [24]  390 	anl	_P3M1,#0xf7
      0000E3 53 B2 F7         [24]  391 	anl	_P3M0,#0xf7
      0000E6 43 B0 08         [24]  392 	orl	_P3,#0x08
      0000E9 22               [24]  393 	ret
                                    394 ;------------------------------------------------------------
                                    395 ;Allocation info for local variables in function 'SDA_LOW'
                                    396 ;------------------------------------------------------------
                                    397 ;	main.c:79: void SDA_LOW(void)  { P3M1 |= (1 << SDA_BIT);  P3M0 |= (1 << SDA_BIT);  P3 &= ~(1 << SDA_BIT); }
                                    398 ;	-----------------------------------------
                                    399 ;	 function SDA_LOW
                                    400 ;	-----------------------------------------
      0000EA                        401 _SDA_LOW:
      0000EA 43 B1 08         [24]  402 	orl	_P3M1,#0x08
      0000ED 43 B2 08         [24]  403 	orl	_P3M0,#0x08
      0000F0 53 B0 F7         [24]  404 	anl	_P3,#0xf7
      0000F3 22               [24]  405 	ret
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'I2C_Start'
                                    408 ;------------------------------------------------------------
                                    409 ;	main.c:82: void I2C_Start(void) { SDA_HIGH(); SCL_HIGH(); I2C_Delay(); SDA_LOW(); I2C_Delay(); SCL_LOW(); I2C_Delay(); }
                                    410 ;	-----------------------------------------
                                    411 ;	 function I2C_Start
                                    412 ;	-----------------------------------------
      0000F4                        413 _I2C_Start:
      0000F4 12 00 E0         [24]  414 	lcall	_SDA_HIGH
      0000F7 12 00 CC         [24]  415 	lcall	_SCL_HIGH
      0000FA 12 00 BB         [24]  416 	lcall	_I2C_Delay
      0000FD 12 00 EA         [24]  417 	lcall	_SDA_LOW
      000100 12 00 BB         [24]  418 	lcall	_I2C_Delay
      000103 12 00 D6         [24]  419 	lcall	_SCL_LOW
      000106 02 00 BB         [24]  420 	ljmp	_I2C_Delay
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'I2C_Stop'
                                    423 ;------------------------------------------------------------
                                    424 ;	main.c:83: void I2C_Stop(void)  { SDA_LOW(); SCL_HIGH(); I2C_Delay(); SDA_HIGH(); I2C_Delay(); }
                                    425 ;	-----------------------------------------
                                    426 ;	 function I2C_Stop
                                    427 ;	-----------------------------------------
      000109                        428 _I2C_Stop:
      000109 12 00 EA         [24]  429 	lcall	_SDA_LOW
      00010C 12 00 CC         [24]  430 	lcall	_SCL_HIGH
      00010F 12 00 BB         [24]  431 	lcall	_I2C_Delay
      000112 12 00 E0         [24]  432 	lcall	_SDA_HIGH
      000115 02 00 BB         [24]  433 	ljmp	_I2C_Delay
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function 'I2C_Write_Byte'
                                    436 ;------------------------------------------------------------
                                    437 ;dat                       Allocated with name '_I2C_Write_Byte_dat_10000_18'
                                    438 ;i                         Allocated with name '_I2C_Write_Byte_i_10000_19'
                                    439 ;------------------------------------------------------------
                                    440 ;	main.c:85: void I2C_Write_Byte(unsigned char dat) {
                                    441 ;	-----------------------------------------
                                    442 ;	 function I2C_Write_Byte
                                    443 ;	-----------------------------------------
      000118                        444 _I2C_Write_Byte:
      000118 E5 82            [12]  445 	mov	a,dpl
      00011A 90 00 06         [24]  446 	mov	dptr,#_I2C_Write_Byte_dat_10000_18
      00011D F0               [24]  447 	movx	@dptr,a
                                    448 ;	main.c:87: for(i = 0; i < 8; i++) {
      00011E 7F 00            [12]  449 	mov	r7,#0x00
      000120                        450 00105$:
                                    451 ;	main.c:88: if(dat & 0x80) { SDA_HIGH(); } else { SDA_LOW(); }
      000120 90 00 06         [24]  452 	mov	dptr,#_I2C_Write_Byte_dat_10000_18
      000123 E0               [24]  453 	movx	a,@dptr
      000124 30 E7 09         [24]  454 	jnb	acc.7,00102$
      000127 C0 07            [24]  455 	push	ar7
      000129 12 00 E0         [24]  456 	lcall	_SDA_HIGH
      00012C D0 07            [24]  457 	pop	ar7
      00012E 80 07            [24]  458 	sjmp	00103$
      000130                        459 00102$:
      000130 C0 07            [24]  460 	push	ar7
      000132 12 00 EA         [24]  461 	lcall	_SDA_LOW
      000135 D0 07            [24]  462 	pop	ar7
      000137                        463 00103$:
                                    464 ;	main.c:89: I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW();
      000137 C0 07            [24]  465 	push	ar7
      000139 12 00 BB         [24]  466 	lcall	_I2C_Delay
      00013C 12 00 CC         [24]  467 	lcall	_SCL_HIGH
      00013F 12 00 BB         [24]  468 	lcall	_I2C_Delay
      000142 12 00 D6         [24]  469 	lcall	_SCL_LOW
      000145 D0 07            [24]  470 	pop	ar7
                                    471 ;	main.c:90: dat <<= 1;
      000147 90 00 06         [24]  472 	mov	dptr,#_I2C_Write_Byte_dat_10000_18
      00014A E0               [24]  473 	movx	a,@dptr
      00014B 25 E0            [12]  474 	add	a,acc
      00014D F0               [24]  475 	movx	@dptr,a
                                    476 ;	main.c:87: for(i = 0; i < 8; i++) {
      00014E 0F               [12]  477 	inc	r7
      00014F BF 08 00         [24]  478 	cjne	r7,#0x08,00129$
      000152                        479 00129$:
      000152 40 CC            [24]  480 	jc	00105$
                                    481 ;	main.c:92: SDA_HIGH(); I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW(); I2C_Delay();
      000154 12 00 E0         [24]  482 	lcall	_SDA_HIGH
      000157 12 00 BB         [24]  483 	lcall	_I2C_Delay
      00015A 12 00 CC         [24]  484 	lcall	_SCL_HIGH
      00015D 12 00 BB         [24]  485 	lcall	_I2C_Delay
      000160 12 00 D6         [24]  486 	lcall	_SCL_LOW
                                    487 ;	main.c:93: }
      000163 02 00 BB         [24]  488 	ljmp	_I2C_Delay
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'SSD1306_Command'
                                    491 ;------------------------------------------------------------
                                    492 ;cmd                       Allocated with name '_SSD1306_Command_cmd_10000_24'
                                    493 ;------------------------------------------------------------
                                    494 ;	main.c:95: void SSD1306_Command(unsigned char cmd) { I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x00); I2C_Write_Byte(cmd); I2C_Stop(); }
                                    495 ;	-----------------------------------------
                                    496 ;	 function SSD1306_Command
                                    497 ;	-----------------------------------------
      000166                        498 _SSD1306_Command:
      000166 E5 82            [12]  499 	mov	a,dpl
      000168 90 00 07         [24]  500 	mov	dptr,#_SSD1306_Command_cmd_10000_24
      00016B F0               [24]  501 	movx	@dptr,a
      00016C 12 00 F4         [24]  502 	lcall	_I2C_Start
      00016F 75 82 78         [24]  503 	mov	dpl, #0x78
      000172 12 01 18         [24]  504 	lcall	_I2C_Write_Byte
      000175 75 82 00         [24]  505 	mov	dpl, #0x00
      000178 12 01 18         [24]  506 	lcall	_I2C_Write_Byte
      00017B 90 00 07         [24]  507 	mov	dptr,#_SSD1306_Command_cmd_10000_24
      00017E E0               [24]  508 	movx	a,@dptr
      00017F F5 82            [12]  509 	mov	dpl,a
      000181 12 01 18         [24]  510 	lcall	_I2C_Write_Byte
      000184 02 01 09         [24]  511 	ljmp	_I2C_Stop
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'SSD1306_Init'
                                    514 ;------------------------------------------------------------
                                    515 ;	main.c:97: void SSD1306_Init(void) {
                                    516 ;	-----------------------------------------
                                    517 ;	 function SSD1306_Init
                                    518 ;	-----------------------------------------
      000187                        519 _SSD1306_Init:
                                    520 ;	main.c:98: Delay_ms(250);
      000187 90 00 FA         [24]  521 	mov	dptr,#0x00fa
      00018A 12 00 62         [24]  522 	lcall	_Delay_ms
                                    523 ;	main.c:99: SSD1306_Command(0xAE); SSD1306_Command(0x20); SSD1306_Command(0x02);
      00018D 75 82 AE         [24]  524 	mov	dpl, #0xae
      000190 12 01 66         [24]  525 	lcall	_SSD1306_Command
      000193 75 82 20         [24]  526 	mov	dpl, #0x20
      000196 12 01 66         [24]  527 	lcall	_SSD1306_Command
      000199 75 82 02         [24]  528 	mov	dpl, #0x02
      00019C 12 01 66         [24]  529 	lcall	_SSD1306_Command
                                    530 ;	main.c:100: SSD1306_Command(0xB0); SSD1306_Command(0x00); SSD1306_Command(0x10);
      00019F 75 82 B0         [24]  531 	mov	dpl, #0xb0
      0001A2 12 01 66         [24]  532 	lcall	_SSD1306_Command
      0001A5 75 82 00         [24]  533 	mov	dpl, #0x00
      0001A8 12 01 66         [24]  534 	lcall	_SSD1306_Command
      0001AB 75 82 10         [24]  535 	mov	dpl, #0x10
      0001AE 12 01 66         [24]  536 	lcall	_SSD1306_Command
                                    537 ;	main.c:101: SSD1306_Command(0x40); SSD1306_Command(0x81); SSD1306_Command(0x7F);
      0001B1 75 82 40         [24]  538 	mov	dpl, #0x40
      0001B4 12 01 66         [24]  539 	lcall	_SSD1306_Command
      0001B7 75 82 81         [24]  540 	mov	dpl, #0x81
      0001BA 12 01 66         [24]  541 	lcall	_SSD1306_Command
      0001BD 75 82 7F         [24]  542 	mov	dpl, #0x7f
      0001C0 12 01 66         [24]  543 	lcall	_SSD1306_Command
                                    544 ;	main.c:102: SSD1306_Command(0xA1); SSD1306_Command(0xC8); SSD1306_Command(0xA6);
      0001C3 75 82 A1         [24]  545 	mov	dpl, #0xa1
      0001C6 12 01 66         [24]  546 	lcall	_SSD1306_Command
      0001C9 75 82 C8         [24]  547 	mov	dpl, #0xc8
      0001CC 12 01 66         [24]  548 	lcall	_SSD1306_Command
      0001CF 75 82 A6         [24]  549 	mov	dpl, #0xa6
      0001D2 12 01 66         [24]  550 	lcall	_SSD1306_Command
                                    551 ;	main.c:103: SSD1306_Command(0xA8); SSD1306_Command(0x3F); SSD1306_Command(0xD3); SSD1306_Command(0x00);
      0001D5 75 82 A8         [24]  552 	mov	dpl, #0xa8
      0001D8 12 01 66         [24]  553 	lcall	_SSD1306_Command
      0001DB 75 82 3F         [24]  554 	mov	dpl, #0x3f
      0001DE 12 01 66         [24]  555 	lcall	_SSD1306_Command
      0001E1 75 82 D3         [24]  556 	mov	dpl, #0xd3
      0001E4 12 01 66         [24]  557 	lcall	_SSD1306_Command
      0001E7 75 82 00         [24]  558 	mov	dpl, #0x00
      0001EA 12 01 66         [24]  559 	lcall	_SSD1306_Command
                                    560 ;	main.c:104: SSD1306_Command(0xD5); SSD1306_Command(0x80); SSD1306_Command(0xD9); SSD1306_Command(0x22);
      0001ED 75 82 D5         [24]  561 	mov	dpl, #0xd5
      0001F0 12 01 66         [24]  562 	lcall	_SSD1306_Command
      0001F3 75 82 80         [24]  563 	mov	dpl, #0x80
      0001F6 12 01 66         [24]  564 	lcall	_SSD1306_Command
      0001F9 75 82 D9         [24]  565 	mov	dpl, #0xd9
      0001FC 12 01 66         [24]  566 	lcall	_SSD1306_Command
      0001FF 75 82 22         [24]  567 	mov	dpl, #0x22
      000202 12 01 66         [24]  568 	lcall	_SSD1306_Command
                                    569 ;	main.c:105: SSD1306_Command(0xDA); SSD1306_Command(0x12); SSD1306_Command(0xDB); SSD1306_Command(0x20);
      000205 75 82 DA         [24]  570 	mov	dpl, #0xda
      000208 12 01 66         [24]  571 	lcall	_SSD1306_Command
      00020B 75 82 12         [24]  572 	mov	dpl, #0x12
      00020E 12 01 66         [24]  573 	lcall	_SSD1306_Command
      000211 75 82 DB         [24]  574 	mov	dpl, #0xdb
      000214 12 01 66         [24]  575 	lcall	_SSD1306_Command
      000217 75 82 20         [24]  576 	mov	dpl, #0x20
      00021A 12 01 66         [24]  577 	lcall	_SSD1306_Command
                                    578 ;	main.c:106: SSD1306_Command(0x8D); SSD1306_Command(0x14); SSD1306_Command(0xA4); SSD1306_Command(0xAF);
      00021D 75 82 8D         [24]  579 	mov	dpl, #0x8d
      000220 12 01 66         [24]  580 	lcall	_SSD1306_Command
      000223 75 82 14         [24]  581 	mov	dpl, #0x14
      000226 12 01 66         [24]  582 	lcall	_SSD1306_Command
      000229 75 82 A4         [24]  583 	mov	dpl, #0xa4
      00022C 12 01 66         [24]  584 	lcall	_SSD1306_Command
      00022F 75 82 AF         [24]  585 	mov	dpl, #0xaf
      000232 12 01 66         [24]  586 	lcall	_SSD1306_Command
                                    587 ;	main.c:107: Delay_ms(150);
      000235 90 00 96         [24]  588 	mov	dptr,#0x0096
                                    589 ;	main.c:108: }
      000238 02 00 62         [24]  590 	ljmp	_Delay_ms
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'SSD1306_Clear'
                                    593 ;------------------------------------------------------------
                                    594 ;m                         Allocated with name '_SSD1306_Clear_m_10000_29'
                                    595 ;n                         Allocated with name '_SSD1306_Clear_n_10000_29'
                                    596 ;------------------------------------------------------------
                                    597 ;	main.c:110: void SSD1306_Clear(void) {
                                    598 ;	-----------------------------------------
                                    599 ;	 function SSD1306_Clear
                                    600 ;	-----------------------------------------
      00023B                        601 _SSD1306_Clear:
                                    602 ;	main.c:112: for(m = 0; m < 8; m++) {
      00023B 7F 00            [12]  603 	mov	r7,#0x00
      00023D                        604 00105$:
                                    605 ;	main.c:113: SSD1306_Command(0xB0 + m); SSD1306_Command(0x00); SSD1306_Command(0x10);
      00023D 8F 06            [24]  606 	mov	ar6,r7
      00023F 74 B0            [12]  607 	mov	a,#0xb0
      000241 2E               [12]  608 	add	a, r6
      000242 F5 82            [12]  609 	mov	dpl,a
      000244 C0 07            [24]  610 	push	ar7
      000246 12 01 66         [24]  611 	lcall	_SSD1306_Command
      000249 75 82 00         [24]  612 	mov	dpl, #0x00
      00024C 12 01 66         [24]  613 	lcall	_SSD1306_Command
      00024F 75 82 10         [24]  614 	mov	dpl, #0x10
      000252 12 01 66         [24]  615 	lcall	_SSD1306_Command
                                    616 ;	main.c:114: I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
      000255 12 00 F4         [24]  617 	lcall	_I2C_Start
      000258 75 82 78         [24]  618 	mov	dpl, #0x78
      00025B 12 01 18         [24]  619 	lcall	_I2C_Write_Byte
      00025E 75 82 40         [24]  620 	mov	dpl, #0x40
      000261 12 01 18         [24]  621 	lcall	_I2C_Write_Byte
      000264 D0 07            [24]  622 	pop	ar7
                                    623 ;	main.c:115: for(n = 0; n < 128; n++) { I2C_Write_Byte(0x00); }
      000266 7E 00            [12]  624 	mov	r6,#0x00
      000268                        625 00103$:
      000268 75 82 00         [24]  626 	mov	dpl, #0x00
      00026B C0 07            [24]  627 	push	ar7
      00026D C0 06            [24]  628 	push	ar6
      00026F 12 01 18         [24]  629 	lcall	_I2C_Write_Byte
      000272 D0 06            [24]  630 	pop	ar6
      000274 D0 07            [24]  631 	pop	ar7
      000276 0E               [12]  632 	inc	r6
      000277 BE 80 00         [24]  633 	cjne	r6,#0x80,00129$
      00027A                        634 00129$:
      00027A 40 EC            [24]  635 	jc	00103$
                                    636 ;	main.c:116: I2C_Stop();
      00027C C0 07            [24]  637 	push	ar7
      00027E 12 01 09         [24]  638 	lcall	_I2C_Stop
      000281 D0 07            [24]  639 	pop	ar7
                                    640 ;	main.c:112: for(m = 0; m < 8; m++) {
      000283 0F               [12]  641 	inc	r7
      000284 BF 08 00         [24]  642 	cjne	r7,#0x08,00131$
      000287                        643 00131$:
      000287 40 B4            [24]  644 	jc	00105$
                                    645 ;	main.c:118: }
      000289 22               [24]  646 	ret
                                    647 ;------------------------------------------------------------
                                    648 ;Allocation info for local variables in function 'SSD1306_SetCursor'
                                    649 ;------------------------------------------------------------
                                    650 ;x                         Allocated with name '_SSD1306_SetCursor_PARM_2'
                                    651 ;page                      Allocated with name '_SSD1306_SetCursor_page_10000_34'
                                    652 ;------------------------------------------------------------
                                    653 ;	main.c:120: void SSD1306_SetCursor(uint8_t page, uint8_t x) {
                                    654 ;	-----------------------------------------
                                    655 ;	 function SSD1306_SetCursor
                                    656 ;	-----------------------------------------
      00028A                        657 _SSD1306_SetCursor:
      00028A E5 82            [12]  658 	mov	a,dpl
      00028C 90 00 09         [24]  659 	mov	dptr,#_SSD1306_SetCursor_page_10000_34
      00028F F0               [24]  660 	movx	@dptr,a
                                    661 ;	main.c:121: SSD1306_Command(0xB0 + page);
      000290 E0               [24]  662 	movx	a,@dptr
      000291 24 B0            [12]  663 	add	a,#0xb0
      000293 F5 82            [12]  664 	mov	dpl,a
      000295 12 01 66         [24]  665 	lcall	_SSD1306_Command
                                    666 ;	main.c:122: SSD1306_Command(((x & 0xF0) >> 4) | 0x10);
      000298 90 00 08         [24]  667 	mov	dptr,#_SSD1306_SetCursor_PARM_2
      00029B E0               [24]  668 	movx	a,@dptr
      00029C FF               [12]  669 	mov	r7,a
      00029D FD               [12]  670 	mov	r5,a
      00029E 53 05 F0         [24]  671 	anl	ar5,#0xf0
      0002A1 E4               [12]  672 	clr	a
      0002A2 C4               [12]  673 	swap	a
      0002A3 CD               [12]  674 	xch	a,r5
      0002A4 C4               [12]  675 	swap	a
      0002A5 54 0F            [12]  676 	anl	a,#0x0f
      0002A7 6D               [12]  677 	xrl	a,r5
      0002A8 CD               [12]  678 	xch	a,r5
      0002A9 54 0F            [12]  679 	anl	a,#0x0f
      0002AB CD               [12]  680 	xch	a,r5
      0002AC 6D               [12]  681 	xrl	a,r5
      0002AD CD               [12]  682 	xch	a,r5
      0002AE 30 E3 02         [24]  683 	jnb	acc.3,00103$
      0002B1 44 F0            [12]  684 	orl	a,#0xfffffff0
      0002B3                        685 00103$:
      0002B3 43 05 10         [24]  686 	orl	ar5,#0x10
      0002B6 8D 82            [24]  687 	mov	dpl, r5
      0002B8 C0 07            [24]  688 	push	ar7
      0002BA 12 01 66         [24]  689 	lcall	_SSD1306_Command
      0002BD D0 07            [24]  690 	pop	ar7
                                    691 ;	main.c:123: SSD1306_Command(x & 0x0F);
      0002BF 53 07 0F         [24]  692 	anl	ar7,#0x0f
      0002C2 8F 82            [24]  693 	mov	dpl, r7
                                    694 ;	main.c:124: }
      0002C4 02 01 66         [24]  695 	ljmp	_SSD1306_Command
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'SSD1306_WriteChar'
                                    698 ;------------------------------------------------------------
                                    699 ;x                         Allocated with name '_SSD1306_WriteChar_PARM_2'
                                    700 ;c                         Allocated with name '_SSD1306_WriteChar_PARM_3'
                                    701 ;page                      Allocated with name '_SSD1306_WriteChar_page_10000_36'
                                    702 ;i                         Allocated with name '_SSD1306_WriteChar_i_10000_37'
                                    703 ;idx                       Allocated with name '_SSD1306_WriteChar_idx_10000_37'
                                    704 ;------------------------------------------------------------
                                    705 ;	main.c:126: void SSD1306_WriteChar(uint8_t page, uint8_t x, unsigned char c) {
                                    706 ;	-----------------------------------------
                                    707 ;	 function SSD1306_WriteChar
                                    708 ;	-----------------------------------------
      0002C7                        709 _SSD1306_WriteChar:
      0002C7 E5 82            [12]  710 	mov	a,dpl
      0002C9 90 00 0C         [24]  711 	mov	dptr,#_SSD1306_WriteChar_page_10000_36
      0002CC F0               [24]  712 	movx	@dptr,a
                                    713 ;	main.c:128: if (c >= '0' && c <= '9') idx = c - '0';
      0002CD 90 00 0B         [24]  714 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0002D0 E0               [24]  715 	movx	a,@dptr
      0002D1 FF               [12]  716 	mov	r7,a
      0002D2 BF 30 00         [24]  717 	cjne	r7,#0x30,00221$
      0002D5                        718 00221$:
      0002D5 40 11            [24]  719 	jc	00128$
      0002D7 EF               [12]  720 	mov	a,r7
      0002D8 24 C6            [12]  721 	add	a,#0xff - 0x39
      0002DA 40 0C            [24]  722 	jc	00128$
      0002DC 8F 06            [24]  723 	mov	ar6,r7
      0002DE EE               [12]  724 	mov	a,r6
      0002DF 24 D0            [12]  725 	add	a,#0xd0
      0002E1 90 00 0D         [24]  726 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      0002E4 F0               [24]  727 	movx	@dptr,a
      0002E5 02 03 5A         [24]  728 	ljmp	00129$
      0002E8                        729 00128$:
                                    730 ;	main.c:129: else if (c == '-') idx = 10;
      0002E8 BF 2D 09         [24]  731 	cjne	r7,#0x2d,00125$
      0002EB 90 00 0D         [24]  732 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      0002EE 74 0A            [12]  733 	mov	a,#0x0a
      0002F0 F0               [24]  734 	movx	@dptr,a
      0002F1 02 03 5A         [24]  735 	ljmp	00129$
      0002F4                        736 00125$:
                                    737 ;	main.c:130: else if (c == ' ') idx = 11;
      0002F4 BF 20 09         [24]  738 	cjne	r7,#0x20,00122$
      0002F7 90 00 0D         [24]  739 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      0002FA 74 0B            [12]  740 	mov	a,#0x0b
      0002FC F0               [24]  741 	movx	@dptr,a
      0002FD 02 03 5A         [24]  742 	ljmp	00129$
      000300                        743 00122$:
                                    744 ;	main.c:131: else if (c == '.') idx = 12;
      000300 BF 2E 08         [24]  745 	cjne	r7,#0x2e,00119$
      000303 90 00 0D         [24]  746 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000306 74 0C            [12]  747 	mov	a,#0x0c
      000308 F0               [24]  748 	movx	@dptr,a
      000309 80 4F            [24]  749 	sjmp	00129$
      00030B                        750 00119$:
                                    751 ;	main.c:132: else if (c == ':') idx = 13;
      00030B BF 3A 08         [24]  752 	cjne	r7,#0x3a,00116$
      00030E 90 00 0D         [24]  753 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000311 74 0D            [12]  754 	mov	a,#0x0d
      000313 F0               [24]  755 	movx	@dptr,a
      000314 80 44            [24]  756 	sjmp	00129$
      000316                        757 00116$:
                                    758 ;	main.c:133: else if (c == '*') idx = 14;
      000316 BF 2A 08         [24]  759 	cjne	r7,#0x2a,00113$
      000319 90 00 0D         [24]  760 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      00031C 74 0E            [12]  761 	mov	a,#0x0e
      00031E F0               [24]  762 	movx	@dptr,a
      00031F 80 39            [24]  763 	sjmp	00129$
      000321                        764 00113$:
                                    765 ;	main.c:134: else if (c == '=') idx = 15;
      000321 BF 3D 08         [24]  766 	cjne	r7,#0x3d,00110$
      000324 90 00 0D         [24]  767 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000327 74 0F            [12]  768 	mov	a,#0x0f
      000329 F0               [24]  769 	movx	@dptr,a
      00032A 80 2E            [24]  770 	sjmp	00129$
      00032C                        771 00110$:
                                    772 ;	main.c:135: else if (c >= 'A' && c <= 'Z') { idx = c - 'A' + 16; }
      00032C BF 41 00         [24]  773 	cjne	r7,#0x41,00236$
      00032F                        774 00236$:
      00032F 40 10            [24]  775 	jc	00106$
      000331 EF               [12]  776 	mov	a,r7
      000332 24 A5            [12]  777 	add	a,#0xff - 0x5a
      000334 40 0B            [24]  778 	jc	00106$
      000336 8F 06            [24]  779 	mov	ar6,r7
      000338 90 00 0D         [24]  780 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      00033B 74 CF            [12]  781 	mov	a,#0xcf
      00033D 2E               [12]  782 	add	a, r6
      00033E F0               [24]  783 	movx	@dptr,a
      00033F 80 19            [24]  784 	sjmp	00129$
      000341                        785 00106$:
                                    786 ;	main.c:136: else if (c >= 'a' && c <= 'z') { idx = c - 'a' + 16; }
      000341 BF 61 00         [24]  787 	cjne	r7,#0x61,00239$
      000344                        788 00239$:
      000344 40 0E            [24]  789 	jc	00102$
      000346 EF               [12]  790 	mov	a,r7
      000347 24 85            [12]  791 	add	a,#0xff - 0x7a
      000349 40 09            [24]  792 	jc	00102$
      00034B 90 00 0D         [24]  793 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      00034E 74 AF            [12]  794 	mov	a,#0xaf
      000350 2F               [12]  795 	add	a, r7
      000351 F0               [24]  796 	movx	@dptr,a
      000352 80 06            [24]  797 	sjmp	00129$
      000354                        798 00102$:
                                    799 ;	main.c:137: else idx = 11;
      000354 90 00 0D         [24]  800 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000357 74 0B            [12]  801 	mov	a,#0x0b
      000359 F0               [24]  802 	movx	@dptr,a
      00035A                        803 00129$:
                                    804 ;	main.c:139: SSD1306_SetCursor(page, x);
      00035A 90 00 0C         [24]  805 	mov	dptr,#_SSD1306_WriteChar_page_10000_36
      00035D E0               [24]  806 	movx	a,@dptr
      00035E FF               [12]  807 	mov	r7,a
      00035F 90 00 0A         [24]  808 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      000362 E0               [24]  809 	movx	a,@dptr
      000363 90 00 08         [24]  810 	mov	dptr,#_SSD1306_SetCursor_PARM_2
      000366 F0               [24]  811 	movx	@dptr,a
      000367 8F 82            [24]  812 	mov	dpl, r7
      000369 12 02 8A         [24]  813 	lcall	_SSD1306_SetCursor
                                    814 ;	main.c:140: I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
      00036C 12 00 F4         [24]  815 	lcall	_I2C_Start
      00036F 75 82 78         [24]  816 	mov	dpl, #0x78
      000372 12 01 18         [24]  817 	lcall	_I2C_Write_Byte
      000375 75 82 40         [24]  818 	mov	dpl, #0x40
      000378 12 01 18         [24]  819 	lcall	_I2C_Write_Byte
                                    820 ;	main.c:141: for(i = 0; i < 8; i++) { I2C_Write_Byte(Font_8x8[idx][i]); }
      00037B 90 00 0D         [24]  821 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      00037E E0               [24]  822 	movx	a,@dptr
      00037F 75 F0 08         [24]  823 	mov	b,#0x08
      000382 A4               [48]  824 	mul	ab
      000383 24 77            [12]  825 	add	a, #_Font_8x8
      000385 FE               [12]  826 	mov	r6,a
      000386 74 13            [12]  827 	mov	a,#(_Font_8x8 >> 8)
      000388 35 F0            [12]  828 	addc	a, b
      00038A FF               [12]  829 	mov	r7,a
      00038B 7D 00            [12]  830 	mov	r5,#0x00
      00038D                        831 00132$:
      00038D ED               [12]  832 	mov	a,r5
      00038E 2E               [12]  833 	add	a, r6
      00038F F5 82            [12]  834 	mov	dpl,a
      000391 E4               [12]  835 	clr	a
      000392 3F               [12]  836 	addc	a, r7
      000393 F5 83            [12]  837 	mov	dph,a
      000395 E4               [12]  838 	clr	a
      000396 93               [24]  839 	movc	a,@a+dptr
      000397 F5 82            [12]  840 	mov	dpl,a
      000399 C0 07            [24]  841 	push	ar7
      00039B C0 06            [24]  842 	push	ar6
      00039D C0 05            [24]  843 	push	ar5
      00039F 12 01 18         [24]  844 	lcall	_I2C_Write_Byte
      0003A2 D0 05            [24]  845 	pop	ar5
      0003A4 D0 06            [24]  846 	pop	ar6
      0003A6 D0 07            [24]  847 	pop	ar7
      0003A8 0D               [12]  848 	inc	r5
      0003A9 BD 08 00         [24]  849 	cjne	r5,#0x08,00242$
      0003AC                        850 00242$:
      0003AC 40 DF            [24]  851 	jc	00132$
                                    852 ;	main.c:142: I2C_Stop();
                                    853 ;	main.c:143: }
      0003AE 02 01 09         [24]  854 	ljmp	_I2C_Stop
                                    855 ;------------------------------------------------------------
                                    856 ;Allocation info for local variables in function 'SSD1306_PrintString'
                                    857 ;------------------------------------------------------------
                                    858 ;x                         Allocated with name '_SSD1306_PrintString_PARM_2'
                                    859 ;str                       Allocated with name '_SSD1306_PrintString_PARM_3'
                                    860 ;page                      Allocated with name '_SSD1306_PrintString_page_10000_42'
                                    861 ;------------------------------------------------------------
                                    862 ;	main.c:145: void SSD1306_PrintString(uint8_t page, uint8_t x, char *str) {
                                    863 ;	-----------------------------------------
                                    864 ;	 function SSD1306_PrintString
                                    865 ;	-----------------------------------------
      0003B1                        866 _SSD1306_PrintString:
      0003B1 E5 82            [12]  867 	mov	a,dpl
      0003B3 90 00 12         [24]  868 	mov	dptr,#_SSD1306_PrintString_page_10000_42
      0003B6 F0               [24]  869 	movx	@dptr,a
                                    870 ;	main.c:146: while (*str) { SSD1306_WriteChar(page, x, (unsigned char)*str); x += 8; str++; }
      0003B7 E0               [24]  871 	movx	a,@dptr
      0003B8 FF               [12]  872 	mov	r7,a
      0003B9 90 00 0F         [24]  873 	mov	dptr,#_SSD1306_PrintString_PARM_3
      0003BC E0               [24]  874 	movx	a,@dptr
      0003BD FC               [12]  875 	mov	r4,a
      0003BE A3               [24]  876 	inc	dptr
      0003BF E0               [24]  877 	movx	a,@dptr
      0003C0 FD               [12]  878 	mov	r5,a
      0003C1 A3               [24]  879 	inc	dptr
      0003C2 E0               [24]  880 	movx	a,@dptr
      0003C3 FE               [12]  881 	mov	r6,a
      0003C4                        882 00101$:
      0003C4 8C 82            [24]  883 	mov	dpl,r4
      0003C6 8D 83            [24]  884 	mov	dph,r5
      0003C8 8E F0            [24]  885 	mov	b,r6
      0003CA 12 13 14         [24]  886 	lcall	__gptrget
      0003CD FB               [12]  887 	mov	r3,a
      0003CE 60 35            [24]  888 	jz	00104$
      0003D0 90 00 0E         [24]  889 	mov	dptr,#_SSD1306_PrintString_PARM_2
      0003D3 E0               [24]  890 	movx	a,@dptr
      0003D4 FA               [12]  891 	mov	r2,a
      0003D5 90 00 0A         [24]  892 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0003D8 F0               [24]  893 	movx	@dptr,a
      0003D9 90 00 0B         [24]  894 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0003DC EB               [12]  895 	mov	a,r3
      0003DD F0               [24]  896 	movx	@dptr,a
      0003DE 8F 82            [24]  897 	mov	dpl, r7
      0003E0 C0 07            [24]  898 	push	ar7
      0003E2 C0 06            [24]  899 	push	ar6
      0003E4 C0 05            [24]  900 	push	ar5
      0003E6 C0 04            [24]  901 	push	ar4
      0003E8 C0 02            [24]  902 	push	ar2
      0003EA 12 02 C7         [24]  903 	lcall	_SSD1306_WriteChar
      0003ED D0 02            [24]  904 	pop	ar2
      0003EF D0 04            [24]  905 	pop	ar4
      0003F1 D0 05            [24]  906 	pop	ar5
      0003F3 D0 06            [24]  907 	pop	ar6
      0003F5 D0 07            [24]  908 	pop	ar7
      0003F7 90 00 0E         [24]  909 	mov	dptr,#_SSD1306_PrintString_PARM_2
      0003FA 74 08            [12]  910 	mov	a,#0x08
      0003FC 2A               [12]  911 	add	a, r2
      0003FD F0               [24]  912 	movx	@dptr,a
      0003FE 0C               [12]  913 	inc	r4
      0003FF BC 00 C2         [24]  914 	cjne	r4,#0x00,00101$
      000402 0D               [12]  915 	inc	r5
      000403 80 BF            [24]  916 	sjmp	00101$
      000405                        917 00104$:
                                    918 ;	main.c:147: }
      000405 22               [24]  919 	ret
                                    920 ;------------------------------------------------------------
                                    921 ;Allocation info for local variables in function 'SSD1306_DisplayResult'
                                    922 ;------------------------------------------------------------
                                    923 ;sloc0                     Allocated with name '_SSD1306_DisplayResult_sloc0_1_0'
                                    924 ;sloc1                     Allocated with name '_SSD1306_DisplayResult_sloc1_1_0'
                                    925 ;sloc2                     Allocated with name '_SSD1306_DisplayResult_sloc2_1_0'
                                    926 ;x                         Allocated with name '_SSD1306_DisplayResult_PARM_2'
                                    927 ;val                       Allocated with name '_SSD1306_DisplayResult_PARM_3'
                                    928 ;is_microfarads            Allocated with name '_SSD1306_DisplayResult_PARM_4'
                                    929 ;page                      Allocated with name '_SSD1306_DisplayResult_page_10000_45'
                                    930 ;------------------------------------------------------------
                                    931 ;	main.c:149: void SSD1306_DisplayResult(uint8_t page, uint8_t x, uint32_t val, uint8_t is_microfarads) {
                                    932 ;	-----------------------------------------
                                    933 ;	 function SSD1306_DisplayResult
                                    934 ;	-----------------------------------------
      000406                        935 _SSD1306_DisplayResult:
      000406 E5 82            [12]  936 	mov	a,dpl
      000408 90 00 19         [24]  937 	mov	dptr,#_SSD1306_DisplayResult_page_10000_45
      00040B F0               [24]  938 	movx	@dptr,a
                                    939 ;	main.c:150: SSD1306_PrintString(page, x, "CX: ");
      00040C E0               [24]  940 	movx	a,@dptr
      00040D FF               [12]  941 	mov	r7,a
      00040E 90 00 13         [24]  942 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000411 E0               [24]  943 	movx	a,@dptr
      000412 FE               [12]  944 	mov	r6,a
      000413 90 00 0E         [24]  945 	mov	dptr,#_SSD1306_PrintString_PARM_2
      000416 F0               [24]  946 	movx	@dptr,a
      000417 90 00 0F         [24]  947 	mov	dptr,#_SSD1306_PrintString_PARM_3
      00041A 74 C7            [12]  948 	mov	a,#___str_0
      00041C F0               [24]  949 	movx	@dptr,a
      00041D 74 14            [12]  950 	mov	a,#(___str_0 >> 8)
      00041F A3               [24]  951 	inc	dptr
      000420 F0               [24]  952 	movx	@dptr,a
      000421 74 80            [12]  953 	mov	a,#0x80
      000423 A3               [24]  954 	inc	dptr
      000424 F0               [24]  955 	movx	@dptr,a
      000425 8F 82            [24]  956 	mov	dpl, r7
      000427 C0 07            [24]  957 	push	ar7
      000429 C0 06            [24]  958 	push	ar6
      00042B 12 03 B1         [24]  959 	lcall	_SSD1306_PrintString
      00042E D0 06            [24]  960 	pop	ar6
      000430 D0 07            [24]  961 	pop	ar7
                                    962 ;	main.c:151: x += 32;
      000432 90 00 13         [24]  963 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000435 74 20            [12]  964 	mov	a,#0x20
      000437 2E               [12]  965 	add	a, r6
      000438 F0               [24]  966 	movx	@dptr,a
                                    967 ;	main.c:153: if (!is_microfarads) {
      000439 90 00 18         [24]  968 	mov	dptr,#_SSD1306_DisplayResult_PARM_4
      00043C E0               [24]  969 	movx	a,@dptr
      00043D 60 03            [24]  970 	jz	00120$
      00043F 02 06 5E         [24]  971 	ljmp	00104$
      000442                        972 00120$:
                                    973 ;	main.c:154: if (val <= 139) {
      000442 90 00 14         [24]  974 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      000445 E0               [24]  975 	movx	a,@dptr
      000446 FB               [12]  976 	mov	r3,a
      000447 A3               [24]  977 	inc	dptr
      000448 E0               [24]  978 	movx	a,@dptr
      000449 FC               [12]  979 	mov	r4,a
      00044A A3               [24]  980 	inc	dptr
      00044B E0               [24]  981 	movx	a,@dptr
      00044C FD               [12]  982 	mov	r5,a
      00044D A3               [24]  983 	inc	dptr
      00044E E0               [24]  984 	movx	a,@dptr
      00044F FE               [12]  985 	mov	r6,a
      000450 C3               [12]  986 	clr	c
      000451 74 8B            [12]  987 	mov	a,#0x8b
      000453 9B               [12]  988 	subb	a,r3
      000454 E4               [12]  989 	clr	a
      000455 9C               [12]  990 	subb	a,r4
      000456 E4               [12]  991 	clr	a
      000457 9D               [12]  992 	subb	a,r5
      000458 E4               [12]  993 	clr	a
      000459 9E               [12]  994 	subb	a,r6
      00045A 40 1B            [24]  995 	jc	00102$
                                    996 ;	main.c:155: SSD1306_PrintString(page, x, "  0.0 NF");
      00045C 90 00 13         [24]  997 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      00045F E0               [24]  998 	movx	a,@dptr
      000460 90 00 0E         [24]  999 	mov	dptr,#_SSD1306_PrintString_PARM_2
      000463 F0               [24] 1000 	movx	@dptr,a
      000464 90 00 0F         [24] 1001 	mov	dptr,#_SSD1306_PrintString_PARM_3
      000467 74 CC            [12] 1002 	mov	a,#___str_1
      000469 F0               [24] 1003 	movx	@dptr,a
      00046A 74 14            [12] 1004 	mov	a,#(___str_1 >> 8)
      00046C A3               [24] 1005 	inc	dptr
      00046D F0               [24] 1006 	movx	@dptr,a
      00046E 74 80            [12] 1007 	mov	a,#0x80
      000470 A3               [24] 1008 	inc	dptr
      000471 F0               [24] 1009 	movx	@dptr,a
      000472 8F 82            [24] 1010 	mov	dpl, r7
                                   1011 ;	main.c:156: return;
      000474 02 03 B1         [24] 1012 	ljmp	_SSD1306_PrintString
      000477                       1013 00102$:
                                   1014 ;	main.c:158: val -= 139;
      000477 EB               [12] 1015 	mov	a,r3
      000478 24 75            [12] 1016 	add	a,#0x75
      00047A FB               [12] 1017 	mov	r3,a
      00047B EC               [12] 1018 	mov	a,r4
      00047C 34 FF            [12] 1019 	addc	a,#0xff
      00047E FC               [12] 1020 	mov	r4,a
      00047F ED               [12] 1021 	mov	a,r5
      000480 34 FF            [12] 1022 	addc	a,#0xff
      000482 FD               [12] 1023 	mov	r5,a
      000483 EE               [12] 1024 	mov	a,r6
      000484 34 FF            [12] 1025 	addc	a,#0xff
      000486 FE               [12] 1026 	mov	r6,a
      000487 90 00 14         [24] 1027 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      00048A EB               [12] 1028 	mov	a,r3
      00048B F0               [24] 1029 	movx	@dptr,a
      00048C EC               [12] 1030 	mov	a,r4
      00048D A3               [24] 1031 	inc	dptr
      00048E F0               [24] 1032 	movx	@dptr,a
      00048F ED               [12] 1033 	mov	a,r5
      000490 A3               [24] 1034 	inc	dptr
      000491 F0               [24] 1035 	movx	@dptr,a
      000492 EE               [12] 1036 	mov	a,r6
      000493 A3               [24] 1037 	inc	dptr
      000494 F0               [24] 1038 	movx	@dptr,a
                                   1039 ;	main.c:160: SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
      000495 90 00 13         [24] 1040 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000498 E0               [24] 1041 	movx	a,@dptr
      000499 F5 08            [12] 1042 	mov	_SSD1306_DisplayResult_sloc0_1_0,a
      00049B 90 00 14         [24] 1043 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      00049E E0               [24] 1044 	movx	a,@dptr
      00049F F5 09            [12] 1045 	mov	_SSD1306_DisplayResult_sloc1_1_0,a
      0004A1 A3               [24] 1046 	inc	dptr
      0004A2 E0               [24] 1047 	movx	a,@dptr
      0004A3 F5 0A            [12] 1048 	mov	(_SSD1306_DisplayResult_sloc1_1_0 + 1),a
      0004A5 A3               [24] 1049 	inc	dptr
      0004A6 E0               [24] 1050 	movx	a,@dptr
      0004A7 F5 0B            [12] 1051 	mov	(_SSD1306_DisplayResult_sloc1_1_0 + 2),a
      0004A9 A3               [24] 1052 	inc	dptr
      0004AA E0               [24] 1053 	movx	a,@dptr
      0004AB F5 0C            [12] 1054 	mov	(_SSD1306_DisplayResult_sloc1_1_0 + 3),a
      0004AD 90 00 35         [24] 1055 	mov	dptr,#__divulong_PARM_2
      0004B0 74 E8            [12] 1056 	mov	a,#0xe8
      0004B2 F0               [24] 1057 	movx	@dptr,a
      0004B3 74 03            [12] 1058 	mov	a,#0x03
      0004B5 A3               [24] 1059 	inc	dptr
      0004B6 F0               [24] 1060 	movx	@dptr,a
      0004B7 E4               [12] 1061 	clr	a
      0004B8 A3               [24] 1062 	inc	dptr
      0004B9 F0               [24] 1063 	movx	@dptr,a
      0004BA A3               [24] 1064 	inc	dptr
      0004BB F0               [24] 1065 	movx	@dptr,a
      0004BC 85 09 82         [24] 1066 	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
      0004BF 85 0A 83         [24] 1067 	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
      0004C2 85 0B F0         [24] 1068 	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
      0004C5 E5 0C            [12] 1069 	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
      0004C7 C0 07            [24] 1070 	push	ar7
      0004C9 12 10 66         [24] 1071 	lcall	__divulong
      0004CC A8 82            [24] 1072 	mov	r0, dpl
      0004CE A9 83            [24] 1073 	mov	r1, dph
      0004D0 AD F0            [24] 1074 	mov	r5, b
      0004D2 FE               [12] 1075 	mov	r6, a
      0004D3 90 00 2C         [24] 1076 	mov	dptr,#__modulong_PARM_2
      0004D6 74 0A            [12] 1077 	mov	a,#0x0a
      0004D8 F0               [24] 1078 	movx	@dptr,a
      0004D9 E4               [12] 1079 	clr	a
      0004DA A3               [24] 1080 	inc	dptr
      0004DB F0               [24] 1081 	movx	@dptr,a
      0004DC A3               [24] 1082 	inc	dptr
      0004DD F0               [24] 1083 	movx	@dptr,a
      0004DE A3               [24] 1084 	inc	dptr
      0004DF F0               [24] 1085 	movx	@dptr,a
      0004E0 88 82            [24] 1086 	mov	dpl, r0
      0004E2 89 83            [24] 1087 	mov	dph, r1
      0004E4 8D F0            [24] 1088 	mov	b, r5
      0004E6 EE               [12] 1089 	mov	a, r6
      0004E7 12 0E 56         [24] 1090 	lcall	__modulong
      0004EA AB 82            [24] 1091 	mov	r3, dpl
      0004EC D0 07            [24] 1092 	pop	ar7
      0004EE 74 30            [12] 1093 	mov	a,#0x30
      0004F0 2B               [12] 1094 	add	a, r3
      0004F1 FB               [12] 1095 	mov	r3,a
      0004F2 90 00 0A         [24] 1096 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0004F5 E5 08            [12] 1097 	mov	a,_SSD1306_DisplayResult_sloc0_1_0
      0004F7 F0               [24] 1098 	movx	@dptr,a
      0004F8 90 00 0B         [24] 1099 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0004FB EB               [12] 1100 	mov	a,r3
      0004FC F0               [24] 1101 	movx	@dptr,a
      0004FD 8F 82            [24] 1102 	mov	dpl, r7
      0004FF C0 07            [24] 1103 	push	ar7
      000501 12 02 C7         [24] 1104 	lcall	_SSD1306_WriteChar
      000504 D0 07            [24] 1105 	pop	ar7
      000506 AE 08            [24] 1106 	mov	r6,_SSD1306_DisplayResult_sloc0_1_0
      000508 90 00 13         [24] 1107 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      00050B 74 08            [12] 1108 	mov	a,#0x08
      00050D 2E               [12] 1109 	add	a, r6
      00050E F0               [24] 1110 	movx	@dptr,a
                                   1111 ;	main.c:161: SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
      00050F E0               [24] 1112 	movx	a,@dptr
      000510 FE               [12] 1113 	mov	r6,a
      000511 90 00 35         [24] 1114 	mov	dptr,#__divulong_PARM_2
      000514 74 64            [12] 1115 	mov	a,#0x64
      000516 F0               [24] 1116 	movx	@dptr,a
      000517 E4               [12] 1117 	clr	a
      000518 A3               [24] 1118 	inc	dptr
      000519 F0               [24] 1119 	movx	@dptr,a
      00051A A3               [24] 1120 	inc	dptr
      00051B F0               [24] 1121 	movx	@dptr,a
      00051C A3               [24] 1122 	inc	dptr
      00051D F0               [24] 1123 	movx	@dptr,a
      00051E 85 09 82         [24] 1124 	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
      000521 85 0A 83         [24] 1125 	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
      000524 85 0B F0         [24] 1126 	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
      000527 E5 0C            [12] 1127 	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
      000529 C0 07            [24] 1128 	push	ar7
      00052B C0 06            [24] 1129 	push	ar6
      00052D 12 10 66         [24] 1130 	lcall	__divulong
      000530 AA 82            [24] 1131 	mov	r2, dpl
      000532 AB 83            [24] 1132 	mov	r3, dph
      000534 AC F0            [24] 1133 	mov	r4, b
      000536 FD               [12] 1134 	mov	r5, a
      000537 90 00 2C         [24] 1135 	mov	dptr,#__modulong_PARM_2
      00053A 74 0A            [12] 1136 	mov	a,#0x0a
      00053C F0               [24] 1137 	movx	@dptr,a
      00053D E4               [12] 1138 	clr	a
      00053E A3               [24] 1139 	inc	dptr
      00053F F0               [24] 1140 	movx	@dptr,a
      000540 A3               [24] 1141 	inc	dptr
      000541 F0               [24] 1142 	movx	@dptr,a
      000542 A3               [24] 1143 	inc	dptr
      000543 F0               [24] 1144 	movx	@dptr,a
      000544 8A 82            [24] 1145 	mov	dpl, r2
      000546 8B 83            [24] 1146 	mov	dph, r3
      000548 8C F0            [24] 1147 	mov	b, r4
      00054A ED               [12] 1148 	mov	a, r5
      00054B 12 0E 56         [24] 1149 	lcall	__modulong
      00054E AA 82            [24] 1150 	mov	r2, dpl
      000550 D0 06            [24] 1151 	pop	ar6
      000552 D0 07            [24] 1152 	pop	ar7
      000554 74 30            [12] 1153 	mov	a,#0x30
      000556 2A               [12] 1154 	add	a, r2
      000557 FA               [12] 1155 	mov	r2,a
      000558 90 00 0A         [24] 1156 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      00055B EE               [12] 1157 	mov	a,r6
      00055C F0               [24] 1158 	movx	@dptr,a
      00055D 90 00 0B         [24] 1159 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000560 EA               [12] 1160 	mov	a,r2
      000561 F0               [24] 1161 	movx	@dptr,a
      000562 8F 82            [24] 1162 	mov	dpl, r7
      000564 C0 07            [24] 1163 	push	ar7
      000566 C0 06            [24] 1164 	push	ar6
      000568 12 02 C7         [24] 1165 	lcall	_SSD1306_WriteChar
      00056B D0 06            [24] 1166 	pop	ar6
      00056D D0 07            [24] 1167 	pop	ar7
      00056F 90 00 13         [24] 1168 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000572 74 08            [12] 1169 	mov	a,#0x08
      000574 2E               [12] 1170 	add	a, r6
      000575 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	main.c:162: SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
      000576 E0               [24] 1173 	movx	a,@dptr
      000577 FE               [12] 1174 	mov	r6,a
      000578 90 00 35         [24] 1175 	mov	dptr,#__divulong_PARM_2
      00057B 74 0A            [12] 1176 	mov	a,#0x0a
      00057D F0               [24] 1177 	movx	@dptr,a
      00057E E4               [12] 1178 	clr	a
      00057F A3               [24] 1179 	inc	dptr
      000580 F0               [24] 1180 	movx	@dptr,a
      000581 A3               [24] 1181 	inc	dptr
      000582 F0               [24] 1182 	movx	@dptr,a
      000583 A3               [24] 1183 	inc	dptr
      000584 F0               [24] 1184 	movx	@dptr,a
      000585 85 09 82         [24] 1185 	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
      000588 85 0A 83         [24] 1186 	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
      00058B 85 0B F0         [24] 1187 	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
      00058E E5 0C            [12] 1188 	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
      000590 C0 07            [24] 1189 	push	ar7
      000592 C0 06            [24] 1190 	push	ar6
      000594 12 10 66         [24] 1191 	lcall	__divulong
      000597 AA 82            [24] 1192 	mov	r2, dpl
      000599 AB 83            [24] 1193 	mov	r3, dph
      00059B AC F0            [24] 1194 	mov	r4, b
      00059D FD               [12] 1195 	mov	r5, a
      00059E 90 00 2C         [24] 1196 	mov	dptr,#__modulong_PARM_2
      0005A1 74 0A            [12] 1197 	mov	a,#0x0a
      0005A3 F0               [24] 1198 	movx	@dptr,a
      0005A4 E4               [12] 1199 	clr	a
      0005A5 A3               [24] 1200 	inc	dptr
      0005A6 F0               [24] 1201 	movx	@dptr,a
      0005A7 A3               [24] 1202 	inc	dptr
      0005A8 F0               [24] 1203 	movx	@dptr,a
      0005A9 A3               [24] 1204 	inc	dptr
      0005AA F0               [24] 1205 	movx	@dptr,a
      0005AB 8A 82            [24] 1206 	mov	dpl, r2
      0005AD 8B 83            [24] 1207 	mov	dph, r3
      0005AF 8C F0            [24] 1208 	mov	b, r4
      0005B1 ED               [12] 1209 	mov	a, r5
      0005B2 12 0E 56         [24] 1210 	lcall	__modulong
      0005B5 AA 82            [24] 1211 	mov	r2, dpl
      0005B7 D0 06            [24] 1212 	pop	ar6
      0005B9 D0 07            [24] 1213 	pop	ar7
      0005BB 74 30            [12] 1214 	mov	a,#0x30
      0005BD 2A               [12] 1215 	add	a, r2
      0005BE FA               [12] 1216 	mov	r2,a
      0005BF 90 00 0A         [24] 1217 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0005C2 EE               [12] 1218 	mov	a,r6
      0005C3 F0               [24] 1219 	movx	@dptr,a
      0005C4 90 00 0B         [24] 1220 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0005C7 EA               [12] 1221 	mov	a,r2
      0005C8 F0               [24] 1222 	movx	@dptr,a
      0005C9 8F 82            [24] 1223 	mov	dpl, r7
      0005CB C0 07            [24] 1224 	push	ar7
      0005CD C0 06            [24] 1225 	push	ar6
      0005CF 12 02 C7         [24] 1226 	lcall	_SSD1306_WriteChar
      0005D2 D0 06            [24] 1227 	pop	ar6
      0005D4 D0 07            [24] 1228 	pop	ar7
      0005D6 90 00 13         [24] 1229 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0005D9 74 08            [12] 1230 	mov	a,#0x08
      0005DB 2E               [12] 1231 	add	a, r6
      0005DC F0               [24] 1232 	movx	@dptr,a
                                   1233 ;	main.c:163: SSD1306_WriteChar(page, x, '.');                       x += 8;
      0005DD E0               [24] 1234 	movx	a,@dptr
      0005DE FE               [12] 1235 	mov	r6,a
      0005DF 90 00 0A         [24] 1236 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0005E2 F0               [24] 1237 	movx	@dptr,a
      0005E3 90 00 0B         [24] 1238 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0005E6 74 2E            [12] 1239 	mov	a,#0x2e
      0005E8 F0               [24] 1240 	movx	@dptr,a
      0005E9 8F 82            [24] 1241 	mov	dpl, r7
      0005EB C0 07            [24] 1242 	push	ar7
      0005ED C0 06            [24] 1243 	push	ar6
      0005EF 12 02 C7         [24] 1244 	lcall	_SSD1306_WriteChar
      0005F2 D0 06            [24] 1245 	pop	ar6
      0005F4 D0 07            [24] 1246 	pop	ar7
      0005F6 90 00 13         [24] 1247 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0005F9 74 08            [12] 1248 	mov	a,#0x08
      0005FB 2E               [12] 1249 	add	a, r6
      0005FC F0               [24] 1250 	movx	@dptr,a
                                   1251 ;	main.c:164: SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
      0005FD E0               [24] 1252 	movx	a,@dptr
      0005FE FE               [12] 1253 	mov	r6,a
      0005FF 90 00 2C         [24] 1254 	mov	dptr,#__modulong_PARM_2
      000602 74 0A            [12] 1255 	mov	a,#0x0a
      000604 F0               [24] 1256 	movx	@dptr,a
      000605 E4               [12] 1257 	clr	a
      000606 A3               [24] 1258 	inc	dptr
      000607 F0               [24] 1259 	movx	@dptr,a
      000608 A3               [24] 1260 	inc	dptr
      000609 F0               [24] 1261 	movx	@dptr,a
      00060A A3               [24] 1262 	inc	dptr
      00060B F0               [24] 1263 	movx	@dptr,a
      00060C 85 09 82         [24] 1264 	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
      00060F 85 0A 83         [24] 1265 	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
      000612 85 0B F0         [24] 1266 	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
      000615 E5 0C            [12] 1267 	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
      000617 C0 07            [24] 1268 	push	ar7
      000619 C0 06            [24] 1269 	push	ar6
      00061B 12 0E 56         [24] 1270 	lcall	__modulong
      00061E AA 82            [24] 1271 	mov	r2, dpl
      000620 D0 06            [24] 1272 	pop	ar6
      000622 D0 07            [24] 1273 	pop	ar7
      000624 74 30            [12] 1274 	mov	a,#0x30
      000626 2A               [12] 1275 	add	a, r2
      000627 FA               [12] 1276 	mov	r2,a
      000628 90 00 0A         [24] 1277 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      00062B EE               [12] 1278 	mov	a,r6
      00062C F0               [24] 1279 	movx	@dptr,a
      00062D 90 00 0B         [24] 1280 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000630 EA               [12] 1281 	mov	a,r2
      000631 F0               [24] 1282 	movx	@dptr,a
      000632 8F 82            [24] 1283 	mov	dpl, r7
      000634 C0 07            [24] 1284 	push	ar7
      000636 C0 06            [24] 1285 	push	ar6
      000638 12 02 C7         [24] 1286 	lcall	_SSD1306_WriteChar
      00063B D0 06            [24] 1287 	pop	ar6
      00063D D0 07            [24] 1288 	pop	ar7
      00063F 90 00 13         [24] 1289 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000642 74 08            [12] 1290 	mov	a,#0x08
      000644 2E               [12] 1291 	add	a, r6
      000645 F0               [24] 1292 	movx	@dptr,a
                                   1293 ;	main.c:165: SSD1306_PrintString(page, x, " NF");
      000646 E0               [24] 1294 	movx	a,@dptr
      000647 90 00 0E         [24] 1295 	mov	dptr,#_SSD1306_PrintString_PARM_2
      00064A F0               [24] 1296 	movx	@dptr,a
      00064B 90 00 0F         [24] 1297 	mov	dptr,#_SSD1306_PrintString_PARM_3
      00064E 74 D5            [12] 1298 	mov	a,#___str_2
      000650 F0               [24] 1299 	movx	@dptr,a
      000651 74 14            [12] 1300 	mov	a,#(___str_2 >> 8)
      000653 A3               [24] 1301 	inc	dptr
      000654 F0               [24] 1302 	movx	@dptr,a
      000655 74 80            [12] 1303 	mov	a,#0x80
      000657 A3               [24] 1304 	inc	dptr
      000658 F0               [24] 1305 	movx	@dptr,a
      000659 8F 82            [24] 1306 	mov	dpl, r7
      00065B 02 03 B1         [24] 1307 	ljmp	_SSD1306_PrintString
      00065E                       1308 00104$:
                                   1309 ;	main.c:168: SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
      00065E 90 00 13         [24] 1310 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000661 E0               [24] 1311 	movx	a,@dptr
      000662 F5 09            [12] 1312 	mov	_SSD1306_DisplayResult_sloc1_1_0,a
      000664 90 00 14         [24] 1313 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      000667 E0               [24] 1314 	movx	a,@dptr
      000668 F5 0D            [12] 1315 	mov	_SSD1306_DisplayResult_sloc2_1_0,a
      00066A A3               [24] 1316 	inc	dptr
      00066B E0               [24] 1317 	movx	a,@dptr
      00066C F5 0E            [12] 1318 	mov	(_SSD1306_DisplayResult_sloc2_1_0 + 1),a
      00066E A3               [24] 1319 	inc	dptr
      00066F E0               [24] 1320 	movx	a,@dptr
      000670 F5 0F            [12] 1321 	mov	(_SSD1306_DisplayResult_sloc2_1_0 + 2),a
      000672 A3               [24] 1322 	inc	dptr
      000673 E0               [24] 1323 	movx	a,@dptr
      000674 F5 10            [12] 1324 	mov	(_SSD1306_DisplayResult_sloc2_1_0 + 3),a
      000676 90 00 35         [24] 1325 	mov	dptr,#__divulong_PARM_2
      000679 74 E8            [12] 1326 	mov	a,#0xe8
      00067B F0               [24] 1327 	movx	@dptr,a
      00067C 74 03            [12] 1328 	mov	a,#0x03
      00067E A3               [24] 1329 	inc	dptr
      00067F F0               [24] 1330 	movx	@dptr,a
      000680 E4               [12] 1331 	clr	a
      000681 A3               [24] 1332 	inc	dptr
      000682 F0               [24] 1333 	movx	@dptr,a
      000683 A3               [24] 1334 	inc	dptr
      000684 F0               [24] 1335 	movx	@dptr,a
      000685 85 0D 82         [24] 1336 	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
      000688 85 0E 83         [24] 1337 	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
      00068B 85 0F F0         [24] 1338 	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
      00068E E5 10            [12] 1339 	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
      000690 C0 07            [24] 1340 	push	ar7
      000692 12 10 66         [24] 1341 	lcall	__divulong
      000695 A8 82            [24] 1342 	mov	r0, dpl
      000697 A9 83            [24] 1343 	mov	r1, dph
      000699 AD F0            [24] 1344 	mov	r5, b
      00069B FE               [12] 1345 	mov	r6, a
      00069C 90 00 2C         [24] 1346 	mov	dptr,#__modulong_PARM_2
      00069F 74 0A            [12] 1347 	mov	a,#0x0a
      0006A1 F0               [24] 1348 	movx	@dptr,a
      0006A2 E4               [12] 1349 	clr	a
      0006A3 A3               [24] 1350 	inc	dptr
      0006A4 F0               [24] 1351 	movx	@dptr,a
      0006A5 A3               [24] 1352 	inc	dptr
      0006A6 F0               [24] 1353 	movx	@dptr,a
      0006A7 A3               [24] 1354 	inc	dptr
      0006A8 F0               [24] 1355 	movx	@dptr,a
      0006A9 88 82            [24] 1356 	mov	dpl, r0
      0006AB 89 83            [24] 1357 	mov	dph, r1
      0006AD 8D F0            [24] 1358 	mov	b, r5
      0006AF EE               [12] 1359 	mov	a, r6
      0006B0 12 0E 56         [24] 1360 	lcall	__modulong
      0006B3 AB 82            [24] 1361 	mov	r3, dpl
      0006B5 D0 07            [24] 1362 	pop	ar7
      0006B7 74 30            [12] 1363 	mov	a,#0x30
      0006B9 2B               [12] 1364 	add	a, r3
      0006BA FB               [12] 1365 	mov	r3,a
      0006BB 90 00 0A         [24] 1366 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0006BE E5 09            [12] 1367 	mov	a,_SSD1306_DisplayResult_sloc1_1_0
      0006C0 F0               [24] 1368 	movx	@dptr,a
      0006C1 90 00 0B         [24] 1369 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0006C4 EB               [12] 1370 	mov	a,r3
      0006C5 F0               [24] 1371 	movx	@dptr,a
      0006C6 8F 82            [24] 1372 	mov	dpl, r7
      0006C8 C0 07            [24] 1373 	push	ar7
      0006CA 12 02 C7         [24] 1374 	lcall	_SSD1306_WriteChar
      0006CD D0 07            [24] 1375 	pop	ar7
      0006CF AE 09            [24] 1376 	mov	r6,_SSD1306_DisplayResult_sloc1_1_0
      0006D1 90 00 13         [24] 1377 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0006D4 74 08            [12] 1378 	mov	a,#0x08
      0006D6 2E               [12] 1379 	add	a, r6
      0006D7 F0               [24] 1380 	movx	@dptr,a
                                   1381 ;	main.c:169: SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
      0006D8 E0               [24] 1382 	movx	a,@dptr
      0006D9 FE               [12] 1383 	mov	r6,a
      0006DA 90 00 35         [24] 1384 	mov	dptr,#__divulong_PARM_2
      0006DD 74 64            [12] 1385 	mov	a,#0x64
      0006DF F0               [24] 1386 	movx	@dptr,a
      0006E0 E4               [12] 1387 	clr	a
      0006E1 A3               [24] 1388 	inc	dptr
      0006E2 F0               [24] 1389 	movx	@dptr,a
      0006E3 A3               [24] 1390 	inc	dptr
      0006E4 F0               [24] 1391 	movx	@dptr,a
      0006E5 A3               [24] 1392 	inc	dptr
      0006E6 F0               [24] 1393 	movx	@dptr,a
      0006E7 85 0D 82         [24] 1394 	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
      0006EA 85 0E 83         [24] 1395 	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
      0006ED 85 0F F0         [24] 1396 	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
      0006F0 E5 10            [12] 1397 	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
      0006F2 C0 07            [24] 1398 	push	ar7
      0006F4 C0 06            [24] 1399 	push	ar6
      0006F6 12 10 66         [24] 1400 	lcall	__divulong
      0006F9 AA 82            [24] 1401 	mov	r2, dpl
      0006FB AB 83            [24] 1402 	mov	r3, dph
      0006FD AC F0            [24] 1403 	mov	r4, b
      0006FF FD               [12] 1404 	mov	r5, a
      000700 90 00 2C         [24] 1405 	mov	dptr,#__modulong_PARM_2
      000703 74 0A            [12] 1406 	mov	a,#0x0a
      000705 F0               [24] 1407 	movx	@dptr,a
      000706 E4               [12] 1408 	clr	a
      000707 A3               [24] 1409 	inc	dptr
      000708 F0               [24] 1410 	movx	@dptr,a
      000709 A3               [24] 1411 	inc	dptr
      00070A F0               [24] 1412 	movx	@dptr,a
      00070B A3               [24] 1413 	inc	dptr
      00070C F0               [24] 1414 	movx	@dptr,a
      00070D 8A 82            [24] 1415 	mov	dpl, r2
      00070F 8B 83            [24] 1416 	mov	dph, r3
      000711 8C F0            [24] 1417 	mov	b, r4
      000713 ED               [12] 1418 	mov	a, r5
      000714 12 0E 56         [24] 1419 	lcall	__modulong
      000717 AA 82            [24] 1420 	mov	r2, dpl
      000719 D0 06            [24] 1421 	pop	ar6
      00071B D0 07            [24] 1422 	pop	ar7
      00071D 74 30            [12] 1423 	mov	a,#0x30
      00071F 2A               [12] 1424 	add	a, r2
      000720 FA               [12] 1425 	mov	r2,a
      000721 90 00 0A         [24] 1426 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      000724 EE               [12] 1427 	mov	a,r6
      000725 F0               [24] 1428 	movx	@dptr,a
      000726 90 00 0B         [24] 1429 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000729 EA               [12] 1430 	mov	a,r2
      00072A F0               [24] 1431 	movx	@dptr,a
      00072B 8F 82            [24] 1432 	mov	dpl, r7
      00072D C0 07            [24] 1433 	push	ar7
      00072F C0 06            [24] 1434 	push	ar6
      000731 12 02 C7         [24] 1435 	lcall	_SSD1306_WriteChar
      000734 D0 06            [24] 1436 	pop	ar6
      000736 D0 07            [24] 1437 	pop	ar7
      000738 90 00 13         [24] 1438 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      00073B 74 08            [12] 1439 	mov	a,#0x08
      00073D 2E               [12] 1440 	add	a, r6
      00073E F0               [24] 1441 	movx	@dptr,a
                                   1442 ;	main.c:170: SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
      00073F E0               [24] 1443 	movx	a,@dptr
      000740 FE               [12] 1444 	mov	r6,a
      000741 90 00 35         [24] 1445 	mov	dptr,#__divulong_PARM_2
      000744 74 0A            [12] 1446 	mov	a,#0x0a
      000746 F0               [24] 1447 	movx	@dptr,a
      000747 E4               [12] 1448 	clr	a
      000748 A3               [24] 1449 	inc	dptr
      000749 F0               [24] 1450 	movx	@dptr,a
      00074A A3               [24] 1451 	inc	dptr
      00074B F0               [24] 1452 	movx	@dptr,a
      00074C A3               [24] 1453 	inc	dptr
      00074D F0               [24] 1454 	movx	@dptr,a
      00074E 85 0D 82         [24] 1455 	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
      000751 85 0E 83         [24] 1456 	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
      000754 85 0F F0         [24] 1457 	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
      000757 E5 10            [12] 1458 	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
      000759 C0 07            [24] 1459 	push	ar7
      00075B C0 06            [24] 1460 	push	ar6
      00075D 12 10 66         [24] 1461 	lcall	__divulong
      000760 AA 82            [24] 1462 	mov	r2, dpl
      000762 AB 83            [24] 1463 	mov	r3, dph
      000764 AC F0            [24] 1464 	mov	r4, b
      000766 FD               [12] 1465 	mov	r5, a
      000767 90 00 2C         [24] 1466 	mov	dptr,#__modulong_PARM_2
      00076A 74 0A            [12] 1467 	mov	a,#0x0a
      00076C F0               [24] 1468 	movx	@dptr,a
      00076D E4               [12] 1469 	clr	a
      00076E A3               [24] 1470 	inc	dptr
      00076F F0               [24] 1471 	movx	@dptr,a
      000770 A3               [24] 1472 	inc	dptr
      000771 F0               [24] 1473 	movx	@dptr,a
      000772 A3               [24] 1474 	inc	dptr
      000773 F0               [24] 1475 	movx	@dptr,a
      000774 8A 82            [24] 1476 	mov	dpl, r2
      000776 8B 83            [24] 1477 	mov	dph, r3
      000778 8C F0            [24] 1478 	mov	b, r4
      00077A ED               [12] 1479 	mov	a, r5
      00077B 12 0E 56         [24] 1480 	lcall	__modulong
      00077E AA 82            [24] 1481 	mov	r2, dpl
      000780 D0 06            [24] 1482 	pop	ar6
      000782 D0 07            [24] 1483 	pop	ar7
      000784 74 30            [12] 1484 	mov	a,#0x30
      000786 2A               [12] 1485 	add	a, r2
      000787 FA               [12] 1486 	mov	r2,a
      000788 90 00 0A         [24] 1487 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      00078B EE               [12] 1488 	mov	a,r6
      00078C F0               [24] 1489 	movx	@dptr,a
      00078D 90 00 0B         [24] 1490 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000790 EA               [12] 1491 	mov	a,r2
      000791 F0               [24] 1492 	movx	@dptr,a
      000792 8F 82            [24] 1493 	mov	dpl, r7
      000794 C0 07            [24] 1494 	push	ar7
      000796 C0 06            [24] 1495 	push	ar6
      000798 12 02 C7         [24] 1496 	lcall	_SSD1306_WriteChar
      00079B D0 06            [24] 1497 	pop	ar6
      00079D D0 07            [24] 1498 	pop	ar7
      00079F 90 00 13         [24] 1499 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0007A2 74 08            [12] 1500 	mov	a,#0x08
      0007A4 2E               [12] 1501 	add	a, r6
      0007A5 F0               [24] 1502 	movx	@dptr,a
                                   1503 ;	main.c:171: SSD1306_WriteChar(page, x, '.');                       x += 8;
      0007A6 E0               [24] 1504 	movx	a,@dptr
      0007A7 FE               [12] 1505 	mov	r6,a
      0007A8 90 00 0A         [24] 1506 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0007AB F0               [24] 1507 	movx	@dptr,a
      0007AC 90 00 0B         [24] 1508 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0007AF 74 2E            [12] 1509 	mov	a,#0x2e
      0007B1 F0               [24] 1510 	movx	@dptr,a
      0007B2 8F 82            [24] 1511 	mov	dpl, r7
      0007B4 C0 07            [24] 1512 	push	ar7
      0007B6 C0 06            [24] 1513 	push	ar6
      0007B8 12 02 C7         [24] 1514 	lcall	_SSD1306_WriteChar
      0007BB D0 06            [24] 1515 	pop	ar6
      0007BD D0 07            [24] 1516 	pop	ar7
      0007BF 90 00 13         [24] 1517 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0007C2 74 08            [12] 1518 	mov	a,#0x08
      0007C4 2E               [12] 1519 	add	a, r6
      0007C5 F0               [24] 1520 	movx	@dptr,a
                                   1521 ;	main.c:172: SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
      0007C6 E0               [24] 1522 	movx	a,@dptr
      0007C7 FE               [12] 1523 	mov	r6,a
      0007C8 90 00 2C         [24] 1524 	mov	dptr,#__modulong_PARM_2
      0007CB 74 0A            [12] 1525 	mov	a,#0x0a
      0007CD F0               [24] 1526 	movx	@dptr,a
      0007CE E4               [12] 1527 	clr	a
      0007CF A3               [24] 1528 	inc	dptr
      0007D0 F0               [24] 1529 	movx	@dptr,a
      0007D1 A3               [24] 1530 	inc	dptr
      0007D2 F0               [24] 1531 	movx	@dptr,a
      0007D3 A3               [24] 1532 	inc	dptr
      0007D4 F0               [24] 1533 	movx	@dptr,a
      0007D5 85 0D 82         [24] 1534 	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
      0007D8 85 0E 83         [24] 1535 	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
      0007DB 85 0F F0         [24] 1536 	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
      0007DE E5 10            [12] 1537 	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
      0007E0 C0 07            [24] 1538 	push	ar7
      0007E2 C0 06            [24] 1539 	push	ar6
      0007E4 12 0E 56         [24] 1540 	lcall	__modulong
      0007E7 AA 82            [24] 1541 	mov	r2, dpl
      0007E9 D0 06            [24] 1542 	pop	ar6
      0007EB D0 07            [24] 1543 	pop	ar7
      0007ED 74 30            [12] 1544 	mov	a,#0x30
      0007EF 2A               [12] 1545 	add	a, r2
      0007F0 FA               [12] 1546 	mov	r2,a
      0007F1 90 00 0A         [24] 1547 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0007F4 EE               [12] 1548 	mov	a,r6
      0007F5 F0               [24] 1549 	movx	@dptr,a
      0007F6 90 00 0B         [24] 1550 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0007F9 EA               [12] 1551 	mov	a,r2
      0007FA F0               [24] 1552 	movx	@dptr,a
      0007FB 8F 82            [24] 1553 	mov	dpl, r7
      0007FD C0 07            [24] 1554 	push	ar7
      0007FF C0 06            [24] 1555 	push	ar6
      000801 12 02 C7         [24] 1556 	lcall	_SSD1306_WriteChar
      000804 D0 06            [24] 1557 	pop	ar6
      000806 D0 07            [24] 1558 	pop	ar7
      000808 90 00 13         [24] 1559 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      00080B 74 08            [12] 1560 	mov	a,#0x08
      00080D 2E               [12] 1561 	add	a, r6
      00080E F0               [24] 1562 	movx	@dptr,a
                                   1563 ;	main.c:173: SSD1306_PrintString(page, x, " UF");
      00080F E0               [24] 1564 	movx	a,@dptr
      000810 90 00 0E         [24] 1565 	mov	dptr,#_SSD1306_PrintString_PARM_2
      000813 F0               [24] 1566 	movx	@dptr,a
      000814 90 00 0F         [24] 1567 	mov	dptr,#_SSD1306_PrintString_PARM_3
      000817 74 D9            [12] 1568 	mov	a,#___str_3
      000819 F0               [24] 1569 	movx	@dptr,a
      00081A 74 14            [12] 1570 	mov	a,#(___str_3 >> 8)
      00081C A3               [24] 1571 	inc	dptr
      00081D F0               [24] 1572 	movx	@dptr,a
      00081E 74 80            [12] 1573 	mov	a,#0x80
      000820 A3               [24] 1574 	inc	dptr
      000821 F0               [24] 1575 	movx	@dptr,a
      000822 8F 82            [24] 1576 	mov	dpl, r7
                                   1577 ;	main.c:175: }
      000824 02 03 B1         [24] 1578 	ljmp	_SSD1306_PrintString
                                   1579 ;------------------------------------------------------------
                                   1580 ;Allocation info for local variables in function 'Measure_Single'
                                   1581 ;------------------------------------------------------------
                                   1582 ;use_1k                    Allocated with name '_Measure_Single_use_1k_10000_50'
                                   1583 ;cycles                    Allocated with name '_Measure_Single_cycles_10000_51'
                                   1584 ;max_limit                 Allocated with name '_Measure_Single_max_limit_10000_51'
                                   1585 ;discharge                 Allocated with name '_Measure_Single_discharge_10000_51'
                                   1586 ;------------------------------------------------------------
                                   1587 ;	main.c:177: uint32_t Measure_Single(uint8_t use_1k) {
                                   1588 ;	-----------------------------------------
                                   1589 ;	 function Measure_Single
                                   1590 ;	-----------------------------------------
      000827                       1591 _Measure_Single:
      000827 E5 82            [12] 1592 	mov	a,dpl
      000829 90 00 1A         [24] 1593 	mov	dptr,#_Measure_Single_use_1k_10000_50
      00082C F0               [24] 1594 	movx	@dptr,a
                                   1595 ;	main.c:179: uint32_t max_limit = use_1k ? 80000000 : 3000000;
      00082D E0               [24] 1596 	movx	a,@dptr
      00082E FF               [12] 1597 	mov	r7,a
      00082F E0               [24] 1598 	movx	a,@dptr
      000830 60 0A            [24] 1599 	jz	00117$
      000832 7B 00            [12] 1600 	mov	r3,#0x00
      000834 7C B4            [12] 1601 	mov	r4,#0xb4
      000836 7D C4            [12] 1602 	mov	r5,#0xc4
      000838 7E 04            [12] 1603 	mov	r6,#0x04
      00083A 80 08            [24] 1604 	sjmp	00118$
      00083C                       1605 00117$:
      00083C 7B C0            [12] 1606 	mov	r3,#0xc0
      00083E 7C C6            [12] 1607 	mov	r4,#0xc6
      000840 7D 2D            [12] 1608 	mov	r5,#0x2d
      000842 7E 00            [12] 1609 	mov	r6,#0x00
      000844                       1610 00118$:
                                   1611 ;	main.c:182: P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 0;
      000844 53 B1 FD         [24] 1612 	anl	_P3M1,#0xfd
      000847 43 B2 02         [24] 1613 	orl	_P3M0,#0x02
                                   1614 ;	assignBit
      00084A C2 B1            [12] 1615 	clr	_PIN_R1_10K
                                   1616 ;	main.c:183: P5M1 &= ~MASK_R3_1K; P5M0 |= MASK_R3_1K; PIN_R3_1K = 0;
      00084C 53 C9 EF         [24] 1617 	anl	_P5M1,#0xef
      00084F 43 CA 10         [24] 1618 	orl	_P5M0,#0x10
                                   1619 ;	assignBit
      000852 C2 C4            [12] 1620 	clr	_PIN_R3_1K
                                   1621 ;	main.c:185: for(discharge = 0; discharge < 30000; discharge++) { __asm__("nop"); }
      000854 90 00 1B         [24] 1622 	mov	dptr,#_Measure_Single_discharge_10000_51
      000857 E4               [12] 1623 	clr	a
      000858 F0               [24] 1624 	movx	@dptr,a
      000859 A3               [24] 1625 	inc	dptr
      00085A F0               [24] 1626 	movx	@dptr,a
      00085B                       1627 00113$:
      00085B 90 00 1B         [24] 1628 	mov	dptr,#_Measure_Single_discharge_10000_51
      00085E E0               [24] 1629 	movx	a,@dptr
      00085F F9               [12] 1630 	mov	r1,a
      000860 A3               [24] 1631 	inc	dptr
      000861 E0               [24] 1632 	movx	a,@dptr
      000862 FA               [12] 1633 	mov	r2,a
      000863 C3               [12] 1634 	clr	c
      000864 E9               [12] 1635 	mov	a,r1
      000865 94 30            [12] 1636 	subb	a,#0x30
      000867 EA               [12] 1637 	mov	a,r2
      000868 94 75            [12] 1638 	subb	a,#0x75
      00086A 50 16            [24] 1639 	jnc	00101$
      00086C 00               [12] 1640 	nop
      00086D 90 00 1B         [24] 1641 	mov	dptr,#_Measure_Single_discharge_10000_51
      000870 E0               [24] 1642 	movx	a,@dptr
      000871 F9               [12] 1643 	mov	r1,a
      000872 A3               [24] 1644 	inc	dptr
      000873 E0               [24] 1645 	movx	a,@dptr
      000874 FA               [12] 1646 	mov	r2,a
      000875 90 00 1B         [24] 1647 	mov	dptr,#_Measure_Single_discharge_10000_51
      000878 74 01            [12] 1648 	mov	a,#0x01
      00087A 29               [12] 1649 	add	a, r1
      00087B F0               [24] 1650 	movx	@dptr,a
      00087C E4               [12] 1651 	clr	a
      00087D 3A               [12] 1652 	addc	a, r2
      00087E A3               [24] 1653 	inc	dptr
      00087F F0               [24] 1654 	movx	@dptr,a
      000880 80 D9            [24] 1655 	sjmp	00113$
      000882                       1656 00101$:
                                   1657 ;	main.c:187: TH0 = 0x00; TL0 = 0x00; TF0 = 0;
      000882 75 8C 00         [24] 1658 	mov	_TH0,#0x00
      000885 75 8A 00         [24] 1659 	mov	_TL0,#0x00
                                   1660 ;	assignBit
      000888 C2 8D            [12] 1661 	clr	_TF0
                                   1662 ;	main.c:189: if (use_1k) {
      00088A EF               [12] 1663 	mov	a,r7
      00088B 60 10            [24] 1664 	jz	00103$
                                   1665 ;	main.c:190: P3M1 |= 0x02; P3M0 &= ~0x02;
      00088D 43 B1 02         [24] 1666 	orl	_P3M1,#0x02
      000890 53 B2 FD         [24] 1667 	anl	_P3M0,#0xfd
                                   1668 ;	main.c:191: P5M1 &= ~MASK_R3_1K; P5M0 |= MASK_R3_1K; PIN_R3_1K = 1;
      000893 53 C9 EF         [24] 1669 	anl	_P5M1,#0xef
      000896 43 CA 10         [24] 1670 	orl	_P5M0,#0x10
                                   1671 ;	assignBit
      000899 D2 C4            [12] 1672 	setb	_PIN_R3_1K
      00089B 80 0E            [24] 1673 	sjmp	00104$
      00089D                       1674 00103$:
                                   1675 ;	main.c:193: P5M1 |= MASK_R3_1K; P5M0 &= ~MASK_R3_1K;
      00089D 43 C9 10         [24] 1676 	orl	_P5M1,#0x10
      0008A0 53 CA EF         [24] 1677 	anl	_P5M0,#0xef
                                   1678 ;	main.c:194: P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 1;
      0008A3 53 B1 FD         [24] 1679 	anl	_P3M1,#0xfd
      0008A6 43 B2 02         [24] 1680 	orl	_P3M0,#0x02
                                   1681 ;	assignBit
      0008A9 D2 B1            [12] 1682 	setb	_PIN_R1_10K
      0008AB                       1683 00104$:
                                   1684 ;	main.c:197: TR0 = 1;
                                   1685 ;	assignBit
      0008AB D2 8C            [12] 1686 	setb	_TR0
                                   1687 ;	main.c:198: while (!(P5 & MASK_DET_55)) {
      0008AD 8B 07            [24] 1688 	mov	ar7,r3
      0008AF 78 00            [12] 1689 	mov	r0,#0x00
      0008B1 79 00            [12] 1690 	mov	r1,#0x00
      0008B3 7A 00            [12] 1691 	mov	r2,#0x00
      0008B5 7B 00            [12] 1692 	mov	r3,#0x00
      0008B7                       1693 00109$:
      0008B7 E5 C8            [12] 1694 	mov	a,_P5
      0008B9 20 E5 17         [24] 1695 	jb	acc.5,00111$
                                   1696 ;	main.c:199: if (TF0) {
                                   1697 ;	main.c:200: TF0 = 0;
                                   1698 ;	assignBit
      0008BC 10 8D 02         [24] 1699 	jbc	_TF0,00166$
      0008BF 80 F6            [24] 1700 	sjmp	00109$
      0008C1                       1701 00166$:
                                   1702 ;	main.c:201: cycles += 65536;
      0008C1 74 01            [12] 1703 	mov	a,#0x01
      0008C3 2A               [12] 1704 	add	a, r2
      0008C4 FA               [12] 1705 	mov	r2,a
      0008C5 E4               [12] 1706 	clr	a
      0008C6 3B               [12] 1707 	addc	a, r3
      0008C7 FB               [12] 1708 	mov	r3,a
                                   1709 ;	main.c:202: if (cycles > max_limit) break;
      0008C8 C3               [12] 1710 	clr	c
      0008C9 EF               [12] 1711 	mov	a,r7
      0008CA 98               [12] 1712 	subb	a,r0
      0008CB EC               [12] 1713 	mov	a,r4
      0008CC 99               [12] 1714 	subb	a,r1
      0008CD ED               [12] 1715 	mov	a,r5
      0008CE 9A               [12] 1716 	subb	a,r2
      0008CF EE               [12] 1717 	mov	a,r6
      0008D0 9B               [12] 1718 	subb	a,r3
      0008D1 50 E4            [24] 1719 	jnc	00109$
      0008D3                       1720 00111$:
                                   1721 ;	main.c:205: TR0 = 0;
                                   1722 ;	assignBit
      0008D3 C2 8C            [12] 1723 	clr	_TR0
                                   1724 ;	main.c:206: cycles += ((uint16_t)TH0 << 8) | TL0;
      0008D5 AF 8C            [24] 1725 	mov	r7,_TH0
      0008D7 7E 00            [12] 1726 	mov	r6,#0x00
      0008D9 AC 8A            [24] 1727 	mov	r4,_TL0
      0008DB 7D 00            [12] 1728 	mov	r5,#0x00
      0008DD EC               [12] 1729 	mov	a,r4
      0008DE 42 06            [12] 1730 	orl	ar6,a
      0008E0 ED               [12] 1731 	mov	a,r5
      0008E1 42 07            [12] 1732 	orl	ar7,a
      0008E3 E4               [12] 1733 	clr	a
      0008E4 FD               [12] 1734 	mov	r5,a
      0008E5 FC               [12] 1735 	mov	r4,a
      0008E6 EE               [12] 1736 	mov	a,r6
      0008E7 28               [12] 1737 	add	a, r0
      0008E8 F8               [12] 1738 	mov	r0,a
      0008E9 EF               [12] 1739 	mov	a,r7
      0008EA 39               [12] 1740 	addc	a, r1
      0008EB F9               [12] 1741 	mov	r1,a
      0008EC ED               [12] 1742 	mov	a,r5
      0008ED 3A               [12] 1743 	addc	a, r2
      0008EE FA               [12] 1744 	mov	r2,a
      0008EF EC               [12] 1745 	mov	a,r4
      0008F0 3B               [12] 1746 	addc	a, r3
      0008F1 FB               [12] 1747 	mov	r3,a
                                   1748 ;	main.c:208: PIN_R1_10K = 0;
                                   1749 ;	assignBit
      0008F2 C2 B1            [12] 1750 	clr	_PIN_R1_10K
                                   1751 ;	main.c:209: PIN_R3_1K = 0;
                                   1752 ;	assignBit
      0008F4 C2 C4            [12] 1753 	clr	_PIN_R3_1K
                                   1754 ;	main.c:211: return cycles;
      0008F6 88 82            [24] 1755 	mov	dpl, r0
      0008F8 89 83            [24] 1756 	mov	dph, r1
      0008FA 8A F0            [24] 1757 	mov	b, r2
      0008FC EB               [12] 1758 	mov	a, r3
                                   1759 ;	main.c:212: }
      0008FD 22               [24] 1760 	ret
                                   1761 ;------------------------------------------------------------
                                   1762 ;Allocation info for local variables in function 'main'
                                   1763 ;------------------------------------------------------------
                                   1764 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1765 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   1766 ;raw_ticks                 Allocated with name '_main_raw_ticks_10000_59'
                                   1767 ;final_calc                Allocated with name '_main_final_calc_10000_59'
                                   1768 ;last_display_val          Allocated with name '_main_last_display_val_10000_59'
                                   1769 ;filtered_ticks            Allocated with name '_main_filtered_ticks_10000_59'
                                   1770 ;mode_uf                   Allocated with name '_main_mode_uf_10000_59'
                                   1771 ;is_first_run              Allocated with name '_main_is_first_run_10000_59'
                                   1772 ;is_sleeping               Allocated with name '_main_is_sleeping_10000_59'
                                   1773 ;------------------------------------------------------------
                                   1774 ;	main.c:215: void main(void) {
                                   1775 ;	-----------------------------------------
                                   1776 ;	 function main
                                   1777 ;	-----------------------------------------
      0008FE                       1778 _main:
                                   1779 ;	main.c:218: uint32_t last_display_val = 0;
      0008FE 90 00 21         [24] 1780 	mov	dptr,#_main_last_display_val_10000_59
      000901 E4               [12] 1781 	clr	a
      000902 F0               [24] 1782 	movx	@dptr,a
      000903 A3               [24] 1783 	inc	dptr
      000904 F0               [24] 1784 	movx	@dptr,a
      000905 A3               [24] 1785 	inc	dptr
      000906 F0               [24] 1786 	movx	@dptr,a
      000907 A3               [24] 1787 	inc	dptr
      000908 F0               [24] 1788 	movx	@dptr,a
                                   1789 ;	main.c:219: float filtered_ticks = 0.0f;
      000909 90 00 25         [24] 1790 	mov	dptr,#_main_filtered_ticks_10000_59
      00090C F0               [24] 1791 	movx	@dptr,a
      00090D A3               [24] 1792 	inc	dptr
      00090E F0               [24] 1793 	movx	@dptr,a
      00090F A3               [24] 1794 	inc	dptr
      000910 F0               [24] 1795 	movx	@dptr,a
      000911 A3               [24] 1796 	inc	dptr
      000912 F0               [24] 1797 	movx	@dptr,a
                                   1798 ;	main.c:221: uint8_t is_first_run = 1;
      000913 90 00 2A         [24] 1799 	mov	dptr,#_main_is_first_run_10000_59
      000916 04               [12] 1800 	inc	a
      000917 F0               [24] 1801 	movx	@dptr,a
                                   1802 ;	main.c:222: uint8_t is_sleeping = 0; //программный флаг сна
      000918 90 00 2B         [24] 1803 	mov	dptr,#_main_is_sleeping_10000_59
      00091B E4               [12] 1804 	clr	a
      00091C F0               [24] 1805 	movx	@dptr,a
                                   1806 ;	main.c:225: P5M1 |= MASK_DET_55; P5M0 &= ~MASK_DET_55;
      00091D 43 C9 20         [24] 1807 	orl	_P5M1,#0x20
      000920 53 CA DF         [24] 1808 	anl	_P5M0,#0xdf
                                   1809 ;	main.c:228: P3M1 |= (1 << 0); P3M0 &= ~(1 << 0);
      000923 43 B1 01         [24] 1810 	orl	_P3M1,#0x01
      000926 53 B2 FE         [24] 1811 	anl	_P3M0,#0xfe
                                   1812 ;	main.c:230: P_SW2 = 0x80; CLKSEL = 0x00; P_SW2 = 0x00;
      000929 75 8E 80         [24] 1813 	mov	_P_SW2,#0x80
      00092C 75 9D 00         [24] 1814 	mov	_CLKSEL,#0x00
      00092F 75 8E 00         [24] 1815 	mov	_P_SW2,#0x00
                                   1816 ;	main.c:231: AUXR |= 0x80; TMOD &= 0xF0; TR0 = 0; TF0 = 0;
      000932 43 8E 80         [24] 1817 	orl	_AUXR,#0x80
      000935 53 89 F0         [24] 1818 	anl	_TMOD,#0xf0
                                   1819 ;	assignBit
      000938 C2 8C            [12] 1820 	clr	_TR0
                                   1821 ;	assignBit
      00093A C2 8D            [12] 1822 	clr	_TF0
                                   1823 ;	main.c:233: SCL_HIGH(); SDA_HIGH(); Delay_ms(100);
      00093C 12 00 CC         [24] 1824 	lcall	_SCL_HIGH
      00093F 12 00 E0         [24] 1825 	lcall	_SDA_HIGH
      000942 90 00 64         [24] 1826 	mov	dptr,#0x0064
      000945 12 00 62         [24] 1827 	lcall	_Delay_ms
                                   1828 ;	main.c:234: SSD1306_Init();
      000948 12 01 87         [24] 1829 	lcall	_SSD1306_Init
                                   1830 ;	main.c:235: SSD1306_Clear();
      00094B 12 02 3B         [24] 1831 	lcall	_SSD1306_Clear
                                   1832 ;	main.c:237: while(1) {
      00094E                       1833 00146$:
                                   1834 ;	main.c:239: if (PIN_BUTTON == 0) {
      00094E 20 B0 49         [24] 1835 	jb	_PIN_BUTTON,00110$
                                   1836 ;	main.c:240: Delay_ms(50); // Надежный антидребезг нажатия
      000951 90 00 32         [24] 1837 	mov	dptr,#0x0032
      000954 12 00 62         [24] 1838 	lcall	_Delay_ms
                                   1839 ;	main.c:241: if (PIN_BUTTON == 0) {
      000957 20 B0 40         [24] 1840 	jb	_PIN_BUTTON,00110$
                                   1841 ;	main.c:244: while(PIN_BUTTON == 0) {
      00095A                       1842 00101$:
      00095A 20 B0 08         [24] 1843 	jb	_PIN_BUTTON,00103$
                                   1844 ;	main.c:245: Delay_ms(10);
      00095D 90 00 0A         [24] 1845 	mov	dptr,#0x000a
      000960 12 00 62         [24] 1846 	lcall	_Delay_ms
      000963 80 F5            [24] 1847 	sjmp	00101$
      000965                       1848 00103$:
                                   1849 ;	main.c:247: Delay_ms(100); // Антидребезг на размыкание контактов
      000965 90 00 64         [24] 1850 	mov	dptr,#0x0064
      000968 12 00 62         [24] 1851 	lcall	_Delay_ms
                                   1852 ;	main.c:250: if (is_sleeping == 0) {
      00096B 90 00 2B         [24] 1853 	mov	dptr,#_main_is_sleeping_10000_59
      00096E E0               [24] 1854 	movx	a,@dptr
      00096F 70 0E            [24] 1855 	jnz	00105$
                                   1856 ;	main.c:251: is_sleeping = 1;
      000971 90 00 2B         [24] 1857 	mov	dptr,#_main_is_sleeping_10000_59
      000974 74 01            [12] 1858 	mov	a,#0x01
      000976 F0               [24] 1859 	movx	@dptr,a
                                   1860 ;	main.c:252: SSD1306_Command(0xAE); // Просто выключаем экран
      000977 75 82 AE         [24] 1861 	mov	dpl, #0xae
      00097A 12 01 66         [24] 1862 	lcall	_SSD1306_Command
      00097D 80 1B            [24] 1863 	sjmp	00110$
      00097F                       1864 00105$:
                                   1865 ;	main.c:254: is_sleeping = 0;
      00097F 90 00 2B         [24] 1866 	mov	dptr,#_main_is_sleeping_10000_59
      000982 E4               [12] 1867 	clr	a
      000983 F0               [24] 1868 	movx	@dptr,a
                                   1869 ;	main.c:255: SSD1306_Command(0xAF); // Просто включаем экран
      000984 75 82 AF         [24] 1870 	mov	dpl, #0xaf
      000987 12 01 66         [24] 1871 	lcall	_SSD1306_Command
                                   1872 ;	main.c:256: last_display_val = 0;  // Сброс, чтобы сразу обновить экран актуальным замером
      00098A 90 00 21         [24] 1873 	mov	dptr,#_main_last_display_val_10000_59
      00098D E4               [12] 1874 	clr	a
      00098E F0               [24] 1875 	movx	@dptr,a
      00098F A3               [24] 1876 	inc	dptr
      000990 F0               [24] 1877 	movx	@dptr,a
      000991 A3               [24] 1878 	inc	dptr
      000992 F0               [24] 1879 	movx	@dptr,a
      000993 A3               [24] 1880 	inc	dptr
      000994 F0               [24] 1881 	movx	@dptr,a
                                   1882 ;	main.c:257: is_first_run = 1;
      000995 90 00 2A         [24] 1883 	mov	dptr,#_main_is_first_run_10000_59
      000998 04               [12] 1884 	inc	a
      000999 F0               [24] 1885 	movx	@dptr,a
      00099A                       1886 00110$:
                                   1887 ;	main.c:263: if (is_sleeping == 1) {
      00099A 90 00 2B         [24] 1888 	mov	dptr,#_main_is_sleeping_10000_59
      00099D E0               [24] 1889 	movx	a,@dptr
      00099E FF               [12] 1890 	mov	r7,a
      00099F BF 01 08         [24] 1891 	cjne	r7,#0x01,00112$
                                   1892 ;	main.c:264: Delay_ms(100);
      0009A2 90 00 64         [24] 1893 	mov	dptr,#0x0064
      0009A5 12 00 62         [24] 1894 	lcall	_Delay_ms
                                   1895 ;	main.c:265: continue; // Прыгаем обратно в начало while(1) только опрашивать кнопку
      0009A8 80 A4            [24] 1896 	sjmp	00146$
      0009AA                       1897 00112$:
                                   1898 ;	main.c:270: raw_ticks = Measure_Single(0);
      0009AA 75 82 00         [24] 1899 	mov	dpl, #0x00
      0009AD 12 08 27         [24] 1900 	lcall	_Measure_Single
      0009B0 AC 82            [24] 1901 	mov	r4, dpl
      0009B2 AD 83            [24] 1902 	mov	r5, dph
      0009B4 AE F0            [24] 1903 	mov	r6, b
      0009B6 FF               [12] 1904 	mov	r7, a
                                   1905 ;	main.c:272: if (raw_ticks > 55000) {
      0009B7 C3               [12] 1906 	clr	c
      0009B8 74 D8            [12] 1907 	mov	a,#0xd8
      0009BA 9C               [12] 1908 	subb	a,r4
      0009BB 74 D6            [12] 1909 	mov	a,#0xd6
      0009BD 9D               [12] 1910 	subb	a,r5
      0009BE E4               [12] 1911 	clr	a
      0009BF 9E               [12] 1912 	subb	a,r6
      0009C0 E4               [12] 1913 	clr	a
      0009C1 9F               [12] 1914 	subb	a,r7
      0009C2 40 03            [24] 1915 	jc	00270$
      0009C4 02 0C F5         [24] 1916 	ljmp	00141$
      0009C7                       1917 00270$:
                                   1918 ;	main.c:273: mode_uf = 1;
      0009C7 90 00 29         [24] 1919 	mov	dptr,#_main_mode_uf_10000_59
      0009CA 74 01            [12] 1920 	mov	a,#0x01
      0009CC F0               [24] 1921 	movx	@dptr,a
                                   1922 ;	main.c:274: raw_ticks = Measure_Single(1);
      0009CD 75 82 01         [24] 1923 	mov	dpl, #0x01
      0009D0 12 08 27         [24] 1924 	lcall	_Measure_Single
      0009D3 85 82 15         [24] 1925 	mov	_main_sloc1_1_0,dpl
      0009D6 85 83 16         [24] 1926 	mov	(_main_sloc1_1_0 + 1),dph
      0009D9 85 F0 17         [24] 1927 	mov	(_main_sloc1_1_0 + 2),b
      0009DC F5 18            [12] 1928 	mov	(_main_sloc1_1_0 + 3),a
                                   1929 ;	main.c:276: if (is_first_run || filtered_ticks < 1000.0f) {
      0009DE 90 00 2A         [24] 1930 	mov	dptr,#_main_is_first_run_10000_59
      0009E1 E0               [24] 1931 	movx	a,@dptr
      0009E2 70 38            [24] 1932 	jnz	00113$
      0009E4 90 00 25         [24] 1933 	mov	dptr,#_main_filtered_ticks_10000_59
      0009E7 E0               [24] 1934 	movx	a,@dptr
      0009E8 F5 11            [12] 1935 	mov	_main_sloc0_1_0,a
      0009EA A3               [24] 1936 	inc	dptr
      0009EB E0               [24] 1937 	movx	a,@dptr
      0009EC F5 12            [12] 1938 	mov	(_main_sloc0_1_0 + 1),a
      0009EE A3               [24] 1939 	inc	dptr
      0009EF E0               [24] 1940 	movx	a,@dptr
      0009F0 F5 13            [12] 1941 	mov	(_main_sloc0_1_0 + 2),a
      0009F2 A3               [24] 1942 	inc	dptr
      0009F3 E0               [24] 1943 	movx	a,@dptr
      0009F4 F5 14            [12] 1944 	mov	(_main_sloc0_1_0 + 3),a
      0009F6 E4               [12] 1945 	clr	a
      0009F7 C0 E0            [24] 1946 	push	acc
      0009F9 C0 E0            [24] 1947 	push	acc
      0009FB 74 7A            [12] 1948 	mov	a,#0x7a
      0009FD C0 E0            [24] 1949 	push	acc
      0009FF 74 44            [12] 1950 	mov	a,#0x44
      000A01 C0 E0            [24] 1951 	push	acc
      000A03 85 11 82         [24] 1952 	mov	dpl, _main_sloc0_1_0
      000A06 85 12 83         [24] 1953 	mov	dph, (_main_sloc0_1_0 + 1)
      000A09 85 13 F0         [24] 1954 	mov	b, (_main_sloc0_1_0 + 2)
      000A0C E5 14            [12] 1955 	mov	a, (_main_sloc0_1_0 + 3)
      000A0E 12 11 D9         [24] 1956 	lcall	___fslt
      000A11 AB 82            [24] 1957 	mov	r3, dpl
      000A13 E5 81            [12] 1958 	mov	a,sp
      000A15 24 FC            [12] 1959 	add	a,#0xfc
      000A17 F5 81            [12] 1960 	mov	sp,a
      000A19 EB               [12] 1961 	mov	a,r3
      000A1A 60 2B            [24] 1962 	jz	00114$
      000A1C                       1963 00113$:
                                   1964 ;	main.c:277: filtered_ticks = (float)raw_ticks;
      000A1C 85 15 82         [24] 1965 	mov	dpl, _main_sloc1_1_0
      000A1F 85 16 83         [24] 1966 	mov	dph, (_main_sloc1_1_0 + 1)
      000A22 85 17 F0         [24] 1967 	mov	b, (_main_sloc1_1_0 + 2)
      000A25 E5 18            [12] 1968 	mov	a, (_main_sloc1_1_0 + 3)
      000A27 12 11 8D         [24] 1969 	lcall	___ulong2fs
      000A2A A8 82            [24] 1970 	mov	r0, dpl
      000A2C A9 83            [24] 1971 	mov	r1, dph
      000A2E AA F0            [24] 1972 	mov	r2, b
      000A30 FB               [12] 1973 	mov	r3, a
      000A31 90 00 25         [24] 1974 	mov	dptr,#_main_filtered_ticks_10000_59
      000A34 E8               [12] 1975 	mov	a,r0
      000A35 F0               [24] 1976 	movx	@dptr,a
      000A36 E9               [12] 1977 	mov	a,r1
      000A37 A3               [24] 1978 	inc	dptr
      000A38 F0               [24] 1979 	movx	@dptr,a
      000A39 EA               [12] 1980 	mov	a,r2
      000A3A A3               [24] 1981 	inc	dptr
      000A3B F0               [24] 1982 	movx	@dptr,a
      000A3C EB               [12] 1983 	mov	a,r3
      000A3D A3               [24] 1984 	inc	dptr
      000A3E F0               [24] 1985 	movx	@dptr,a
                                   1986 ;	main.c:278: is_first_run = 0;
      000A3F 90 00 2A         [24] 1987 	mov	dptr,#_main_is_first_run_10000_59
      000A42 E4               [12] 1988 	clr	a
      000A43 F0               [24] 1989 	movx	@dptr,a
      000A44 02 0A CC         [24] 1990 	ljmp	00115$
      000A47                       1991 00114$:
                                   1992 ;	main.c:280: filtered_ticks = filtered_ticks + 0.25f * ((float)raw_ticks - filtered_ticks);
      000A47 85 15 82         [24] 1993 	mov	dpl, _main_sloc1_1_0
      000A4A 85 16 83         [24] 1994 	mov	dph, (_main_sloc1_1_0 + 1)
      000A4D 85 17 F0         [24] 1995 	mov	b, (_main_sloc1_1_0 + 2)
      000A50 E5 18            [12] 1996 	mov	a, (_main_sloc1_1_0 + 3)
      000A52 12 11 8D         [24] 1997 	lcall	___ulong2fs
      000A55 A8 82            [24] 1998 	mov	r0, dpl
      000A57 A9 83            [24] 1999 	mov	r1, dph
      000A59 AA F0            [24] 2000 	mov	r2, b
      000A5B FB               [12] 2001 	mov	r3, a
      000A5C C0 11            [24] 2002 	push	_main_sloc0_1_0
      000A5E C0 12            [24] 2003 	push	(_main_sloc0_1_0 + 1)
      000A60 C0 13            [24] 2004 	push	(_main_sloc0_1_0 + 2)
      000A62 C0 14            [24] 2005 	push	(_main_sloc0_1_0 + 3)
      000A64 88 82            [24] 2006 	mov	dpl, r0
      000A66 89 83            [24] 2007 	mov	dph, r1
      000A68 8A F0            [24] 2008 	mov	b, r2
      000A6A EB               [12] 2009 	mov	a, r3
      000A6B 12 0E 4B         [24] 2010 	lcall	___fssub
      000A6E A8 82            [24] 2011 	mov	r0, dpl
      000A70 A9 83            [24] 2012 	mov	r1, dph
      000A72 AA F0            [24] 2013 	mov	r2, b
      000A74 FB               [12] 2014 	mov	r3, a
      000A75 E5 81            [12] 2015 	mov	a,sp
      000A77 24 FC            [12] 2016 	add	a,#0xfc
      000A79 F5 81            [12] 2017 	mov	sp,a
      000A7B C0 00            [24] 2018 	push	ar0
      000A7D C0 01            [24] 2019 	push	ar1
      000A7F C0 02            [24] 2020 	push	ar2
      000A81 C0 03            [24] 2021 	push	ar3
      000A83 90 00 00         [24] 2022 	mov	dptr,#0x0000
      000A86 75 F0 80         [24] 2023 	mov	b, #0x80
      000A89 74 3E            [12] 2024 	mov	a, #0x3e
      000A8B 12 0F 95         [24] 2025 	lcall	___fsmul
      000A8E A8 82            [24] 2026 	mov	r0, dpl
      000A90 A9 83            [24] 2027 	mov	r1, dph
      000A92 AA F0            [24] 2028 	mov	r2, b
      000A94 FB               [12] 2029 	mov	r3, a
      000A95 E5 81            [12] 2030 	mov	a,sp
      000A97 24 FC            [12] 2031 	add	a,#0xfc
      000A99 F5 81            [12] 2032 	mov	sp,a
      000A9B C0 00            [24] 2033 	push	ar0
      000A9D C0 01            [24] 2034 	push	ar1
      000A9F C0 02            [24] 2035 	push	ar2
      000AA1 C0 03            [24] 2036 	push	ar3
      000AA3 85 11 82         [24] 2037 	mov	dpl, _main_sloc0_1_0
      000AA6 85 12 83         [24] 2038 	mov	dph, (_main_sloc0_1_0 + 1)
      000AA9 85 13 F0         [24] 2039 	mov	b, (_main_sloc0_1_0 + 2)
      000AAC E5 14            [12] 2040 	mov	a, (_main_sloc0_1_0 + 3)
      000AAE 12 12 09         [24] 2041 	lcall	___fsadd
      000AB1 A8 82            [24] 2042 	mov	r0, dpl
      000AB3 A9 83            [24] 2043 	mov	r1, dph
      000AB5 AA F0            [24] 2044 	mov	r2, b
      000AB7 FB               [12] 2045 	mov	r3, a
      000AB8 E5 81            [12] 2046 	mov	a,sp
      000ABA 24 FC            [12] 2047 	add	a,#0xfc
      000ABC F5 81            [12] 2048 	mov	sp,a
      000ABE 90 00 25         [24] 2049 	mov	dptr,#_main_filtered_ticks_10000_59
      000AC1 E8               [12] 2050 	mov	a,r0
      000AC2 F0               [24] 2051 	movx	@dptr,a
      000AC3 E9               [12] 2052 	mov	a,r1
      000AC4 A3               [24] 2053 	inc	dptr
      000AC5 F0               [24] 2054 	movx	@dptr,a
      000AC6 EA               [12] 2055 	mov	a,r2
      000AC7 A3               [24] 2056 	inc	dptr
      000AC8 F0               [24] 2057 	movx	@dptr,a
      000AC9 EB               [12] 2058 	mov	a,r3
      000ACA A3               [24] 2059 	inc	dptr
      000ACB F0               [24] 2060 	movx	@dptr,a
      000ACC                       2061 00115$:
                                   2062 ;	main.c:284: if (filtered_ticks < 650000.0f) {
      000ACC 90 00 25         [24] 2063 	mov	dptr,#_main_filtered_ticks_10000_59
      000ACF E0               [24] 2064 	movx	a,@dptr
      000AD0 F5 15            [12] 2065 	mov	_main_sloc1_1_0,a
      000AD2 A3               [24] 2066 	inc	dptr
      000AD3 E0               [24] 2067 	movx	a,@dptr
      000AD4 F5 16            [12] 2068 	mov	(_main_sloc1_1_0 + 1),a
      000AD6 A3               [24] 2069 	inc	dptr
      000AD7 E0               [24] 2070 	movx	a,@dptr
      000AD8 F5 17            [12] 2071 	mov	(_main_sloc1_1_0 + 2),a
      000ADA A3               [24] 2072 	inc	dptr
      000ADB E0               [24] 2073 	movx	a,@dptr
      000ADC F5 18            [12] 2074 	mov	(_main_sloc1_1_0 + 3),a
      000ADE E4               [12] 2075 	clr	a
      000ADF C0 E0            [24] 2076 	push	acc
      000AE1 74 B1            [12] 2077 	mov	a,#0xb1
      000AE3 C0 E0            [24] 2078 	push	acc
      000AE5 74 1E            [12] 2079 	mov	a,#0x1e
      000AE7 C0 E0            [24] 2080 	push	acc
      000AE9 74 49            [12] 2081 	mov	a,#0x49
      000AEB C0 E0            [24] 2082 	push	acc
      000AED 85 15 82         [24] 2083 	mov	dpl, _main_sloc1_1_0
      000AF0 85 16 83         [24] 2084 	mov	dph, (_main_sloc1_1_0 + 1)
      000AF3 85 17 F0         [24] 2085 	mov	b, (_main_sloc1_1_0 + 2)
      000AF6 E5 18            [12] 2086 	mov	a, (_main_sloc1_1_0 + 3)
      000AF8 12 11 D9         [24] 2087 	lcall	___fslt
      000AFB AB 82            [24] 2088 	mov	r3, dpl
      000AFD E5 81            [12] 2089 	mov	a,sp
      000AFF 24 FC            [12] 2090 	add	a,#0xfc
      000B01 F5 81            [12] 2091 	mov	sp,a
      000B03 EB               [12] 2092 	mov	a,r3
      000B04 60 42            [24] 2093 	jz	00122$
                                   2094 ;	main.c:285: final_calc = (uint32_t)(filtered_ticks * 0.0000059f); // Скорректировано под 10 мкФ
      000B06 C0 15            [24] 2095 	push	_main_sloc1_1_0
      000B08 C0 16            [24] 2096 	push	(_main_sloc1_1_0 + 1)
      000B0A C0 17            [24] 2097 	push	(_main_sloc1_1_0 + 2)
      000B0C C0 18            [24] 2098 	push	(_main_sloc1_1_0 + 3)
      000B0E 90 F8 9D         [24] 2099 	mov	dptr,#0xf89d
      000B11 75 F0 C5         [24] 2100 	mov	b, #0xc5
      000B14 74 36            [12] 2101 	mov	a, #0x36
      000B16 12 0F 95         [24] 2102 	lcall	___fsmul
      000B19 A8 82            [24] 2103 	mov	r0, dpl
      000B1B A9 83            [24] 2104 	mov	r1, dph
      000B1D AA F0            [24] 2105 	mov	r2, b
      000B1F FB               [12] 2106 	mov	r3, a
      000B20 E5 81            [12] 2107 	mov	a,sp
      000B22 24 FC            [12] 2108 	add	a,#0xfc
      000B24 F5 81            [12] 2109 	mov	sp,a
      000B26 88 82            [24] 2110 	mov	dpl, r0
      000B28 89 83            [24] 2111 	mov	dph, r1
      000B2A 8A F0            [24] 2112 	mov	b, r2
      000B2C EB               [12] 2113 	mov	a, r3
      000B2D 12 11 A0         [24] 2114 	lcall	___fs2ulong
      000B30 A8 82            [24] 2115 	mov	r0, dpl
      000B32 A9 83            [24] 2116 	mov	r1, dph
      000B34 AA F0            [24] 2117 	mov	r2, b
      000B36 FB               [12] 2118 	mov	r3, a
      000B37 90 00 1D         [24] 2119 	mov	dptr,#_main_final_calc_10000_59
      000B3A E8               [12] 2120 	mov	a,r0
      000B3B F0               [24] 2121 	movx	@dptr,a
      000B3C E9               [12] 2122 	mov	a,r1
      000B3D A3               [24] 2123 	inc	dptr
      000B3E F0               [24] 2124 	movx	@dptr,a
      000B3F EA               [12] 2125 	mov	a,r2
      000B40 A3               [24] 2126 	inc	dptr
      000B41 F0               [24] 2127 	movx	@dptr,a
      000B42 EB               [12] 2128 	mov	a,r3
      000B43 A3               [24] 2129 	inc	dptr
      000B44 F0               [24] 2130 	movx	@dptr,a
      000B45 02 0C 25         [24] 2131 	ljmp	00123$
      000B48                       2132 00122$:
                                   2133 ;	main.c:287: else if (filtered_ticks >= 650000.0f && filtered_ticks < 2000000.0f) {
      000B48 E4               [12] 2134 	clr	a
      000B49 C0 E0            [24] 2135 	push	acc
      000B4B 74 B1            [12] 2136 	mov	a,#0xb1
      000B4D C0 E0            [24] 2137 	push	acc
      000B4F 74 1E            [12] 2138 	mov	a,#0x1e
      000B51 C0 E0            [24] 2139 	push	acc
      000B53 74 49            [12] 2140 	mov	a,#0x49
      000B55 C0 E0            [24] 2141 	push	acc
      000B57 85 15 82         [24] 2142 	mov	dpl, _main_sloc1_1_0
      000B5A 85 16 83         [24] 2143 	mov	dph, (_main_sloc1_1_0 + 1)
      000B5D 85 17 F0         [24] 2144 	mov	b, (_main_sloc1_1_0 + 2)
      000B60 E5 18            [12] 2145 	mov	a, (_main_sloc1_1_0 + 3)
      000B62 12 11 D9         [24] 2146 	lcall	___fslt
      000B65 E5 81            [12] 2147 	mov	a,sp
      000B67 24 FC            [12] 2148 	add	a,#0xfc
      000B69 F5 81            [12] 2149 	mov	sp,a
      000B6B E5 82            [12] 2150 	mov	a, dpl
      000B6D 24 FF            [12] 2151 	add	a,#0xff
      000B6F 92 00            [24] 2152 	mov	_main_sloc2_1_0,c
      000B71 40 69            [24] 2153 	jc	00118$
      000B73 E4               [12] 2154 	clr	a
      000B74 C0 E0            [24] 2155 	push	acc
      000B76 74 24            [12] 2156 	mov	a,#0x24
      000B78 C0 E0            [24] 2157 	push	acc
      000B7A 74 F4            [12] 2158 	mov	a,#0xf4
      000B7C C0 E0            [24] 2159 	push	acc
      000B7E 74 49            [12] 2160 	mov	a,#0x49
      000B80 C0 E0            [24] 2161 	push	acc
      000B82 85 15 82         [24] 2162 	mov	dpl, _main_sloc1_1_0
      000B85 85 16 83         [24] 2163 	mov	dph, (_main_sloc1_1_0 + 1)
      000B88 85 17 F0         [24] 2164 	mov	b, (_main_sloc1_1_0 + 2)
      000B8B E5 18            [12] 2165 	mov	a, (_main_sloc1_1_0 + 3)
      000B8D 12 11 D9         [24] 2166 	lcall	___fslt
      000B90 AB 82            [24] 2167 	mov	r3, dpl
      000B92 E5 81            [12] 2168 	mov	a,sp
      000B94 24 FC            [12] 2169 	add	a,#0xfc
      000B96 F5 81            [12] 2170 	mov	sp,a
      000B98 EB               [12] 2171 	mov	a,r3
      000B99 60 41            [24] 2172 	jz	00118$
                                   2173 ;	main.c:288: final_calc = (uint32_t)(filtered_ticks * 0.0001996f);
      000B9B C0 15            [24] 2174 	push	_main_sloc1_1_0
      000B9D C0 16            [24] 2175 	push	(_main_sloc1_1_0 + 1)
      000B9F C0 17            [24] 2176 	push	(_main_sloc1_1_0 + 2)
      000BA1 C0 18            [24] 2177 	push	(_main_sloc1_1_0 + 3)
      000BA3 90 4B B8         [24] 2178 	mov	dptr,#0x4bb8
      000BA6 75 F0 51         [24] 2179 	mov	b, #0x51
      000BA9 74 39            [12] 2180 	mov	a, #0x39
      000BAB 12 0F 95         [24] 2181 	lcall	___fsmul
      000BAE A8 82            [24] 2182 	mov	r0, dpl
      000BB0 A9 83            [24] 2183 	mov	r1, dph
      000BB2 AA F0            [24] 2184 	mov	r2, b
      000BB4 FB               [12] 2185 	mov	r3, a
      000BB5 E5 81            [12] 2186 	mov	a,sp
      000BB7 24 FC            [12] 2187 	add	a,#0xfc
      000BB9 F5 81            [12] 2188 	mov	sp,a
      000BBB 88 82            [24] 2189 	mov	dpl, r0
      000BBD 89 83            [24] 2190 	mov	dph, r1
      000BBF 8A F0            [24] 2191 	mov	b, r2
      000BC1 EB               [12] 2192 	mov	a, r3
      000BC2 12 11 A0         [24] 2193 	lcall	___fs2ulong
      000BC5 A8 82            [24] 2194 	mov	r0, dpl
      000BC7 A9 83            [24] 2195 	mov	r1, dph
      000BC9 AA F0            [24] 2196 	mov	r2, b
      000BCB FB               [12] 2197 	mov	r3, a
      000BCC 90 00 1D         [24] 2198 	mov	dptr,#_main_final_calc_10000_59
      000BCF E8               [12] 2199 	mov	a,r0
      000BD0 F0               [24] 2200 	movx	@dptr,a
      000BD1 E9               [12] 2201 	mov	a,r1
      000BD2 A3               [24] 2202 	inc	dptr
      000BD3 F0               [24] 2203 	movx	@dptr,a
      000BD4 EA               [12] 2204 	mov	a,r2
      000BD5 A3               [24] 2205 	inc	dptr
      000BD6 F0               [24] 2206 	movx	@dptr,a
      000BD7 EB               [12] 2207 	mov	a,r3
      000BD8 A3               [24] 2208 	inc	dptr
      000BD9 F0               [24] 2209 	movx	@dptr,a
      000BDA 80 49            [24] 2210 	sjmp	00123$
      000BDC                       2211 00118$:
                                   2212 ;	main.c:291: final_calc = (uint32_t)(filtered_ticks * 0.0003050f);
      000BDC 90 00 25         [24] 2213 	mov	dptr,#_main_filtered_ticks_10000_59
      000BDF E0               [24] 2214 	movx	a,@dptr
      000BE0 C0 E0            [24] 2215 	push	acc
      000BE2 A3               [24] 2216 	inc	dptr
      000BE3 E0               [24] 2217 	movx	a,@dptr
      000BE4 C0 E0            [24] 2218 	push	acc
      000BE6 A3               [24] 2219 	inc	dptr
      000BE7 E0               [24] 2220 	movx	a,@dptr
      000BE8 C0 E0            [24] 2221 	push	acc
      000BEA A3               [24] 2222 	inc	dptr
      000BEB E0               [24] 2223 	movx	a,@dptr
      000BEC C0 E0            [24] 2224 	push	acc
      000BEE 90 E8 68         [24] 2225 	mov	dptr,#0xe868
      000BF1 75 F0 9F         [24] 2226 	mov	b, #0x9f
      000BF4 74 39            [12] 2227 	mov	a, #0x39
      000BF6 12 0F 95         [24] 2228 	lcall	___fsmul
      000BF9 A8 82            [24] 2229 	mov	r0, dpl
      000BFB A9 83            [24] 2230 	mov	r1, dph
      000BFD AA F0            [24] 2231 	mov	r2, b
      000BFF FB               [12] 2232 	mov	r3, a
      000C00 E5 81            [12] 2233 	mov	a,sp
      000C02 24 FC            [12] 2234 	add	a,#0xfc
      000C04 F5 81            [12] 2235 	mov	sp,a
      000C06 88 82            [24] 2236 	mov	dpl, r0
      000C08 89 83            [24] 2237 	mov	dph, r1
      000C0A 8A F0            [24] 2238 	mov	b, r2
      000C0C EB               [12] 2239 	mov	a, r3
      000C0D 12 11 A0         [24] 2240 	lcall	___fs2ulong
      000C10 A8 82            [24] 2241 	mov	r0, dpl
      000C12 A9 83            [24] 2242 	mov	r1, dph
      000C14 AA F0            [24] 2243 	mov	r2, b
      000C16 FB               [12] 2244 	mov	r3, a
      000C17 90 00 1D         [24] 2245 	mov	dptr,#_main_final_calc_10000_59
      000C1A E8               [12] 2246 	mov	a,r0
      000C1B F0               [24] 2247 	movx	@dptr,a
      000C1C E9               [12] 2248 	mov	a,r1
      000C1D A3               [24] 2249 	inc	dptr
      000C1E F0               [24] 2250 	movx	@dptr,a
      000C1F EA               [12] 2251 	mov	a,r2
      000C20 A3               [24] 2252 	inc	dptr
      000C21 F0               [24] 2253 	movx	@dptr,a
      000C22 EB               [12] 2254 	mov	a,r3
      000C23 A3               [24] 2255 	inc	dptr
      000C24 F0               [24] 2256 	movx	@dptr,a
      000C25                       2257 00123$:
                                   2258 ;	main.c:294: if (final_calc == 0) final_calc = 1;
      000C25 90 00 1D         [24] 2259 	mov	dptr,#_main_final_calc_10000_59
      000C28 E0               [24] 2260 	movx	a,@dptr
      000C29 F5 F0            [12] 2261 	mov	b,a
      000C2B A3               [24] 2262 	inc	dptr
      000C2C E0               [24] 2263 	movx	a,@dptr
      000C2D 42 F0            [12] 2264 	orl	b,a
      000C2F A3               [24] 2265 	inc	dptr
      000C30 E0               [24] 2266 	movx	a,@dptr
      000C31 42 F0            [12] 2267 	orl	b,a
      000C33 A3               [24] 2268 	inc	dptr
      000C34 E0               [24] 2269 	movx	a,@dptr
      000C35 45 F0            [12] 2270 	orl	a,b
      000C37 70 0D            [24] 2271 	jnz	00125$
      000C39 90 00 1D         [24] 2272 	mov	dptr,#_main_final_calc_10000_59
      000C3C 74 01            [12] 2273 	mov	a,#0x01
      000C3E F0               [24] 2274 	movx	@dptr,a
      000C3F E4               [12] 2275 	clr	a
      000C40 A3               [24] 2276 	inc	dptr
      000C41 F0               [24] 2277 	movx	@dptr,a
      000C42 A3               [24] 2278 	inc	dptr
      000C43 F0               [24] 2279 	movx	@dptr,a
      000C44 A3               [24] 2280 	inc	dptr
      000C45 F0               [24] 2281 	movx	@dptr,a
      000C46                       2282 00125$:
                                   2283 ;	main.c:296: if (final_calc > last_display_val) {
      000C46 90 00 1D         [24] 2284 	mov	dptr,#_main_final_calc_10000_59
      000C49 E0               [24] 2285 	movx	a,@dptr
      000C4A F5 11            [12] 2286 	mov	_main_sloc0_1_0,a
      000C4C A3               [24] 2287 	inc	dptr
      000C4D E0               [24] 2288 	movx	a,@dptr
      000C4E F5 12            [12] 2289 	mov	(_main_sloc0_1_0 + 1),a
      000C50 A3               [24] 2290 	inc	dptr
      000C51 E0               [24] 2291 	movx	a,@dptr
      000C52 F5 13            [12] 2292 	mov	(_main_sloc0_1_0 + 2),a
      000C54 A3               [24] 2293 	inc	dptr
      000C55 E0               [24] 2294 	movx	a,@dptr
      000C56 F5 14            [12] 2295 	mov	(_main_sloc0_1_0 + 3),a
      000C58 90 00 21         [24] 2296 	mov	dptr,#_main_last_display_val_10000_59
      000C5B E0               [24] 2297 	movx	a,@dptr
      000C5C F5 15            [12] 2298 	mov	_main_sloc1_1_0,a
      000C5E A3               [24] 2299 	inc	dptr
      000C5F E0               [24] 2300 	movx	a,@dptr
      000C60 F5 16            [12] 2301 	mov	(_main_sloc1_1_0 + 1),a
      000C62 A3               [24] 2302 	inc	dptr
      000C63 E0               [24] 2303 	movx	a,@dptr
      000C64 F5 17            [12] 2304 	mov	(_main_sloc1_1_0 + 2),a
      000C66 A3               [24] 2305 	inc	dptr
      000C67 E0               [24] 2306 	movx	a,@dptr
      000C68 F5 18            [12] 2307 	mov	(_main_sloc1_1_0 + 3),a
      000C6A C3               [12] 2308 	clr	c
      000C6B E5 15            [12] 2309 	mov	a,_main_sloc1_1_0
      000C6D 95 11            [12] 2310 	subb	a,_main_sloc0_1_0
      000C6F E5 16            [12] 2311 	mov	a,(_main_sloc1_1_0 + 1)
      000C71 95 12            [12] 2312 	subb	a,(_main_sloc0_1_0 + 1)
      000C73 E5 17            [12] 2313 	mov	a,(_main_sloc1_1_0 + 2)
      000C75 95 13            [12] 2314 	subb	a,(_main_sloc0_1_0 + 2)
      000C77 E5 18            [12] 2315 	mov	a,(_main_sloc1_1_0 + 3)
      000C79 95 14            [12] 2316 	subb	a,(_main_sloc0_1_0 + 3)
      000C7B 50 3C            [24] 2317 	jnc	00131$
                                   2318 ;	main.c:297: if ((final_calc - last_display_val) < 2) final_calc = last_display_val;
      000C7D E5 11            [12] 2319 	mov	a,_main_sloc0_1_0
      000C7F C3               [12] 2320 	clr	c
      000C80 95 15            [12] 2321 	subb	a,_main_sloc1_1_0
      000C82 F8               [12] 2322 	mov	r0,a
      000C83 E5 12            [12] 2323 	mov	a,(_main_sloc0_1_0 + 1)
      000C85 95 16            [12] 2324 	subb	a,(_main_sloc1_1_0 + 1)
      000C87 F9               [12] 2325 	mov	r1,a
      000C88 E5 13            [12] 2326 	mov	a,(_main_sloc0_1_0 + 2)
      000C8A 95 17            [12] 2327 	subb	a,(_main_sloc1_1_0 + 2)
      000C8C FA               [12] 2328 	mov	r2,a
      000C8D E5 14            [12] 2329 	mov	a,(_main_sloc0_1_0 + 3)
      000C8F 95 18            [12] 2330 	subb	a,(_main_sloc1_1_0 + 3)
      000C91 FB               [12] 2331 	mov	r3,a
      000C92 C3               [12] 2332 	clr	c
      000C93 E8               [12] 2333 	mov	a,r0
      000C94 94 02            [12] 2334 	subb	a,#0x02
      000C96 E9               [12] 2335 	mov	a,r1
      000C97 94 00            [12] 2336 	subb	a,#0x00
      000C99 EA               [12] 2337 	mov	a,r2
      000C9A 94 00            [12] 2338 	subb	a,#0x00
      000C9C EB               [12] 2339 	mov	a,r3
      000C9D 94 00            [12] 2340 	subb	a,#0x00
      000C9F 40 03            [24] 2341 	jc	00278$
      000CA1 02 0D D2         [24] 2342 	ljmp	00142$
      000CA4                       2343 00278$:
      000CA4 90 00 1D         [24] 2344 	mov	dptr,#_main_final_calc_10000_59
      000CA7 E5 15            [12] 2345 	mov	a,_main_sloc1_1_0
      000CA9 F0               [24] 2346 	movx	@dptr,a
      000CAA E5 16            [12] 2347 	mov	a,(_main_sloc1_1_0 + 1)
      000CAC A3               [24] 2348 	inc	dptr
      000CAD F0               [24] 2349 	movx	@dptr,a
      000CAE E5 17            [12] 2350 	mov	a,(_main_sloc1_1_0 + 2)
      000CB0 A3               [24] 2351 	inc	dptr
      000CB1 F0               [24] 2352 	movx	@dptr,a
      000CB2 E5 18            [12] 2353 	mov	a,(_main_sloc1_1_0 + 3)
      000CB4 A3               [24] 2354 	inc	dptr
      000CB5 F0               [24] 2355 	movx	@dptr,a
      000CB6 02 0D D2         [24] 2356 	ljmp	00142$
      000CB9                       2357 00131$:
                                   2358 ;	main.c:299: if ((last_display_val - final_calc) < 2) final_calc = last_display_val;
      000CB9 E5 15            [12] 2359 	mov	a,_main_sloc1_1_0
      000CBB C3               [12] 2360 	clr	c
      000CBC 95 11            [12] 2361 	subb	a,_main_sloc0_1_0
      000CBE F8               [12] 2362 	mov	r0,a
      000CBF E5 16            [12] 2363 	mov	a,(_main_sloc1_1_0 + 1)
      000CC1 95 12            [12] 2364 	subb	a,(_main_sloc0_1_0 + 1)
      000CC3 F9               [12] 2365 	mov	r1,a
      000CC4 E5 17            [12] 2366 	mov	a,(_main_sloc1_1_0 + 2)
      000CC6 95 13            [12] 2367 	subb	a,(_main_sloc0_1_0 + 2)
      000CC8 FA               [12] 2368 	mov	r2,a
      000CC9 E5 18            [12] 2369 	mov	a,(_main_sloc1_1_0 + 3)
      000CCB 95 14            [12] 2370 	subb	a,(_main_sloc0_1_0 + 3)
      000CCD FB               [12] 2371 	mov	r3,a
      000CCE C3               [12] 2372 	clr	c
      000CCF E8               [12] 2373 	mov	a,r0
      000CD0 94 02            [12] 2374 	subb	a,#0x02
      000CD2 E9               [12] 2375 	mov	a,r1
      000CD3 94 00            [12] 2376 	subb	a,#0x00
      000CD5 EA               [12] 2377 	mov	a,r2
      000CD6 94 00            [12] 2378 	subb	a,#0x00
      000CD8 EB               [12] 2379 	mov	a,r3
      000CD9 94 00            [12] 2380 	subb	a,#0x00
      000CDB 40 03            [24] 2381 	jc	00279$
      000CDD 02 0D D2         [24] 2382 	ljmp	00142$
      000CE0                       2383 00279$:
      000CE0 90 00 1D         [24] 2384 	mov	dptr,#_main_final_calc_10000_59
      000CE3 E5 15            [12] 2385 	mov	a,_main_sloc1_1_0
      000CE5 F0               [24] 2386 	movx	@dptr,a
      000CE6 E5 16            [12] 2387 	mov	a,(_main_sloc1_1_0 + 1)
      000CE8 A3               [24] 2388 	inc	dptr
      000CE9 F0               [24] 2389 	movx	@dptr,a
      000CEA E5 17            [12] 2390 	mov	a,(_main_sloc1_1_0 + 2)
      000CEC A3               [24] 2391 	inc	dptr
      000CED F0               [24] 2392 	movx	@dptr,a
      000CEE E5 18            [12] 2393 	mov	a,(_main_sloc1_1_0 + 3)
      000CF0 A3               [24] 2394 	inc	dptr
      000CF1 F0               [24] 2395 	movx	@dptr,a
      000CF2 02 0D D2         [24] 2396 	ljmp	00142$
      000CF5                       2397 00141$:
                                   2398 ;	main.c:303: mode_uf = 0;
      000CF5 90 00 29         [24] 2399 	mov	dptr,#_main_mode_uf_10000_59
      000CF8 E4               [12] 2400 	clr	a
      000CF9 F0               [24] 2401 	movx	@dptr,a
                                   2402 ;	main.c:304: is_first_run = 1;
      000CFA 90 00 2A         [24] 2403 	mov	dptr,#_main_is_first_run_10000_59
      000CFD 04               [12] 2404 	inc	a
      000CFE F0               [24] 2405 	movx	@dptr,a
                                   2406 ;	main.c:306: final_calc = (uint32_t)((float)raw_ticks * 0.18823f);
      000CFF 8C 82            [24] 2407 	mov	dpl, r4
      000D01 8D 83            [24] 2408 	mov	dph, r5
      000D03 8E F0            [24] 2409 	mov	b, r6
      000D05 EF               [12] 2410 	mov	a, r7
      000D06 12 11 8D         [24] 2411 	lcall	___ulong2fs
      000D09 AC 82            [24] 2412 	mov	r4, dpl
      000D0B AD 83            [24] 2413 	mov	r5, dph
      000D0D AE F0            [24] 2414 	mov	r6, b
      000D0F FF               [12] 2415 	mov	r7, a
      000D10 C0 04            [24] 2416 	push	ar4
      000D12 C0 05            [24] 2417 	push	ar5
      000D14 C0 06            [24] 2418 	push	ar6
      000D16 C0 07            [24] 2419 	push	ar7
      000D18 90 BF 5D         [24] 2420 	mov	dptr,#0xbf5d
      000D1B 75 F0 40         [24] 2421 	mov	b, #0x40
      000D1E 74 3E            [12] 2422 	mov	a, #0x3e
      000D20 12 0F 95         [24] 2423 	lcall	___fsmul
      000D23 AC 82            [24] 2424 	mov	r4, dpl
      000D25 AD 83            [24] 2425 	mov	r5, dph
      000D27 AE F0            [24] 2426 	mov	r6, b
      000D29 FF               [12] 2427 	mov	r7, a
      000D2A E5 81            [12] 2428 	mov	a,sp
      000D2C 24 FC            [12] 2429 	add	a,#0xfc
      000D2E F5 81            [12] 2430 	mov	sp,a
      000D30 8C 82            [24] 2431 	mov	dpl, r4
      000D32 8D 83            [24] 2432 	mov	dph, r5
      000D34 8E F0            [24] 2433 	mov	b, r6
      000D36 EF               [12] 2434 	mov	a, r7
      000D37 12 11 A0         [24] 2435 	lcall	___fs2ulong
      000D3A 85 82 15         [24] 2436 	mov	_main_sloc1_1_0,dpl
      000D3D 85 83 16         [24] 2437 	mov	(_main_sloc1_1_0 + 1),dph
      000D40 85 F0 17         [24] 2438 	mov	(_main_sloc1_1_0 + 2),b
      000D43 F5 18            [12] 2439 	mov	(_main_sloc1_1_0 + 3),a
      000D45 90 00 1D         [24] 2440 	mov	dptr,#_main_final_calc_10000_59
      000D48 E5 15            [12] 2441 	mov	a,_main_sloc1_1_0
      000D4A F0               [24] 2442 	movx	@dptr,a
      000D4B E5 16            [12] 2443 	mov	a,(_main_sloc1_1_0 + 1)
      000D4D A3               [24] 2444 	inc	dptr
      000D4E F0               [24] 2445 	movx	@dptr,a
      000D4F E5 17            [12] 2446 	mov	a,(_main_sloc1_1_0 + 2)
      000D51 A3               [24] 2447 	inc	dptr
      000D52 F0               [24] 2448 	movx	@dptr,a
      000D53 E5 18            [12] 2449 	mov	a,(_main_sloc1_1_0 + 3)
      000D55 A3               [24] 2450 	inc	dptr
      000D56 F0               [24] 2451 	movx	@dptr,a
                                   2452 ;	main.c:308: if (final_calc > last_display_val) {
      000D57 90 00 21         [24] 2453 	mov	dptr,#_main_last_display_val_10000_59
      000D5A E0               [24] 2454 	movx	a,@dptr
      000D5B F8               [12] 2455 	mov	r0,a
      000D5C A3               [24] 2456 	inc	dptr
      000D5D E0               [24] 2457 	movx	a,@dptr
      000D5E F9               [12] 2458 	mov	r1,a
      000D5F A3               [24] 2459 	inc	dptr
      000D60 E0               [24] 2460 	movx	a,@dptr
      000D61 FA               [12] 2461 	mov	r2,a
      000D62 A3               [24] 2462 	inc	dptr
      000D63 E0               [24] 2463 	movx	a,@dptr
      000D64 FB               [12] 2464 	mov	r3,a
      000D65 C3               [12] 2465 	clr	c
      000D66 E8               [12] 2466 	mov	a,r0
      000D67 95 15            [12] 2467 	subb	a,_main_sloc1_1_0
      000D69 E9               [12] 2468 	mov	a,r1
      000D6A 95 16            [12] 2469 	subb	a,(_main_sloc1_1_0 + 1)
      000D6C EA               [12] 2470 	mov	a,r2
      000D6D 95 17            [12] 2471 	subb	a,(_main_sloc1_1_0 + 2)
      000D6F EB               [12] 2472 	mov	a,r3
      000D70 95 18            [12] 2473 	subb	a,(_main_sloc1_1_0 + 3)
      000D72 50 30            [24] 2474 	jnc	00138$
                                   2475 ;	main.c:309: if ((final_calc - last_display_val) < 12) final_calc = last_display_val;
      000D74 E5 15            [12] 2476 	mov	a,_main_sloc1_1_0
      000D76 C3               [12] 2477 	clr	c
      000D77 98               [12] 2478 	subb	a,r0
      000D78 FC               [12] 2479 	mov	r4,a
      000D79 E5 16            [12] 2480 	mov	a,(_main_sloc1_1_0 + 1)
      000D7B 99               [12] 2481 	subb	a,r1
      000D7C FD               [12] 2482 	mov	r5,a
      000D7D E5 17            [12] 2483 	mov	a,(_main_sloc1_1_0 + 2)
      000D7F 9A               [12] 2484 	subb	a,r2
      000D80 FE               [12] 2485 	mov	r6,a
      000D81 E5 18            [12] 2486 	mov	a,(_main_sloc1_1_0 + 3)
      000D83 9B               [12] 2487 	subb	a,r3
      000D84 FF               [12] 2488 	mov	r7,a
      000D85 C3               [12] 2489 	clr	c
      000D86 EC               [12] 2490 	mov	a,r4
      000D87 94 0C            [12] 2491 	subb	a,#0x0c
      000D89 ED               [12] 2492 	mov	a,r5
      000D8A 94 00            [12] 2493 	subb	a,#0x00
      000D8C EE               [12] 2494 	mov	a,r6
      000D8D 94 00            [12] 2495 	subb	a,#0x00
      000D8F EF               [12] 2496 	mov	a,r7
      000D90 94 00            [12] 2497 	subb	a,#0x00
      000D92 50 3E            [24] 2498 	jnc	00142$
      000D94 90 00 1D         [24] 2499 	mov	dptr,#_main_final_calc_10000_59
      000D97 E8               [12] 2500 	mov	a,r0
      000D98 F0               [24] 2501 	movx	@dptr,a
      000D99 E9               [12] 2502 	mov	a,r1
      000D9A A3               [24] 2503 	inc	dptr
      000D9B F0               [24] 2504 	movx	@dptr,a
      000D9C EA               [12] 2505 	mov	a,r2
      000D9D A3               [24] 2506 	inc	dptr
      000D9E F0               [24] 2507 	movx	@dptr,a
      000D9F EB               [12] 2508 	mov	a,r3
      000DA0 A3               [24] 2509 	inc	dptr
      000DA1 F0               [24] 2510 	movx	@dptr,a
      000DA2 80 2E            [24] 2511 	sjmp	00142$
      000DA4                       2512 00138$:
                                   2513 ;	main.c:311: if ((last_display_val - final_calc) < 12) final_calc = last_display_val;
      000DA4 E8               [12] 2514 	mov	a,r0
      000DA5 C3               [12] 2515 	clr	c
      000DA6 95 15            [12] 2516 	subb	a,_main_sloc1_1_0
      000DA8 FC               [12] 2517 	mov	r4,a
      000DA9 E9               [12] 2518 	mov	a,r1
      000DAA 95 16            [12] 2519 	subb	a,(_main_sloc1_1_0 + 1)
      000DAC FD               [12] 2520 	mov	r5,a
      000DAD EA               [12] 2521 	mov	a,r2
      000DAE 95 17            [12] 2522 	subb	a,(_main_sloc1_1_0 + 2)
      000DB0 FE               [12] 2523 	mov	r6,a
      000DB1 EB               [12] 2524 	mov	a,r3
      000DB2 95 18            [12] 2525 	subb	a,(_main_sloc1_1_0 + 3)
      000DB4 FF               [12] 2526 	mov	r7,a
      000DB5 C3               [12] 2527 	clr	c
      000DB6 EC               [12] 2528 	mov	a,r4
      000DB7 94 0C            [12] 2529 	subb	a,#0x0c
      000DB9 ED               [12] 2530 	mov	a,r5
      000DBA 94 00            [12] 2531 	subb	a,#0x00
      000DBC EE               [12] 2532 	mov	a,r6
      000DBD 94 00            [12] 2533 	subb	a,#0x00
      000DBF EF               [12] 2534 	mov	a,r7
      000DC0 94 00            [12] 2535 	subb	a,#0x00
      000DC2 50 0E            [24] 2536 	jnc	00142$
      000DC4 90 00 1D         [24] 2537 	mov	dptr,#_main_final_calc_10000_59
      000DC7 E8               [12] 2538 	mov	a,r0
      000DC8 F0               [24] 2539 	movx	@dptr,a
      000DC9 E9               [12] 2540 	mov	a,r1
      000DCA A3               [24] 2541 	inc	dptr
      000DCB F0               [24] 2542 	movx	@dptr,a
      000DCC EA               [12] 2543 	mov	a,r2
      000DCD A3               [24] 2544 	inc	dptr
      000DCE F0               [24] 2545 	movx	@dptr,a
      000DCF EB               [12] 2546 	mov	a,r3
      000DD0 A3               [24] 2547 	inc	dptr
      000DD1 F0               [24] 2548 	movx	@dptr,a
      000DD2                       2549 00142$:
                                   2550 ;	main.c:315: if (final_calc != last_display_val) {
      000DD2 90 00 1D         [24] 2551 	mov	dptr,#_main_final_calc_10000_59
      000DD5 E0               [24] 2552 	movx	a,@dptr
      000DD6 FC               [12] 2553 	mov	r4,a
      000DD7 A3               [24] 2554 	inc	dptr
      000DD8 E0               [24] 2555 	movx	a,@dptr
      000DD9 FD               [12] 2556 	mov	r5,a
      000DDA A3               [24] 2557 	inc	dptr
      000DDB E0               [24] 2558 	movx	a,@dptr
      000DDC FE               [12] 2559 	mov	r6,a
      000DDD A3               [24] 2560 	inc	dptr
      000DDE E0               [24] 2561 	movx	a,@dptr
      000DDF FF               [12] 2562 	mov	r7,a
      000DE0 90 00 21         [24] 2563 	mov	dptr,#_main_last_display_val_10000_59
      000DE3 E0               [24] 2564 	movx	a,@dptr
      000DE4 F8               [12] 2565 	mov	r0,a
      000DE5 A3               [24] 2566 	inc	dptr
      000DE6 E0               [24] 2567 	movx	a,@dptr
      000DE7 F9               [12] 2568 	mov	r1,a
      000DE8 A3               [24] 2569 	inc	dptr
      000DE9 E0               [24] 2570 	movx	a,@dptr
      000DEA FA               [12] 2571 	mov	r2,a
      000DEB A3               [24] 2572 	inc	dptr
      000DEC E0               [24] 2573 	movx	a,@dptr
      000DED FB               [12] 2574 	mov	r3,a
      000DEE EC               [12] 2575 	mov	a,r4
      000DEF B5 00 0E         [24] 2576 	cjne	a,ar0,00283$
      000DF2 ED               [12] 2577 	mov	a,r5
      000DF3 B5 01 0A         [24] 2578 	cjne	a,ar1,00283$
      000DF6 EE               [12] 2579 	mov	a,r6
      000DF7 B5 02 06         [24] 2580 	cjne	a,ar2,00283$
      000DFA EF               [12] 2581 	mov	a,r7
      000DFB B5 03 02         [24] 2582 	cjne	a,ar3,00283$
      000DFE 80 42            [24] 2583 	sjmp	00144$
      000E00                       2584 00283$:
                                   2585 ;	main.c:316: SSD1306_DisplayResult(3, 16, final_calc, mode_uf);
      000E00 90 00 29         [24] 2586 	mov	dptr,#_main_mode_uf_10000_59
      000E03 E0               [24] 2587 	movx	a,@dptr
      000E04 FB               [12] 2588 	mov	r3,a
      000E05 90 00 13         [24] 2589 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000E08 74 10            [12] 2590 	mov	a,#0x10
      000E0A F0               [24] 2591 	movx	@dptr,a
      000E0B 90 00 14         [24] 2592 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      000E0E EC               [12] 2593 	mov	a,r4
      000E0F F0               [24] 2594 	movx	@dptr,a
      000E10 ED               [12] 2595 	mov	a,r5
      000E11 A3               [24] 2596 	inc	dptr
      000E12 F0               [24] 2597 	movx	@dptr,a
      000E13 EE               [12] 2598 	mov	a,r6
      000E14 A3               [24] 2599 	inc	dptr
      000E15 F0               [24] 2600 	movx	@dptr,a
      000E16 EF               [12] 2601 	mov	a,r7
      000E17 A3               [24] 2602 	inc	dptr
      000E18 F0               [24] 2603 	movx	@dptr,a
      000E19 90 00 18         [24] 2604 	mov	dptr,#_SSD1306_DisplayResult_PARM_4
      000E1C EB               [12] 2605 	mov	a,r3
      000E1D F0               [24] 2606 	movx	@dptr,a
      000E1E 75 82 03         [24] 2607 	mov	dpl, #0x03
      000E21 C0 07            [24] 2608 	push	ar7
      000E23 C0 06            [24] 2609 	push	ar6
      000E25 C0 05            [24] 2610 	push	ar5
      000E27 C0 04            [24] 2611 	push	ar4
      000E29 12 04 06         [24] 2612 	lcall	_SSD1306_DisplayResult
      000E2C D0 04            [24] 2613 	pop	ar4
      000E2E D0 05            [24] 2614 	pop	ar5
      000E30 D0 06            [24] 2615 	pop	ar6
      000E32 D0 07            [24] 2616 	pop	ar7
                                   2617 ;	main.c:317: last_display_val = final_calc;
      000E34 90 00 21         [24] 2618 	mov	dptr,#_main_last_display_val_10000_59
      000E37 EC               [12] 2619 	mov	a,r4
      000E38 F0               [24] 2620 	movx	@dptr,a
      000E39 ED               [12] 2621 	mov	a,r5
      000E3A A3               [24] 2622 	inc	dptr
      000E3B F0               [24] 2623 	movx	@dptr,a
      000E3C EE               [12] 2624 	mov	a,r6
      000E3D A3               [24] 2625 	inc	dptr
      000E3E F0               [24] 2626 	movx	@dptr,a
      000E3F EF               [12] 2627 	mov	a,r7
      000E40 A3               [24] 2628 	inc	dptr
      000E41 F0               [24] 2629 	movx	@dptr,a
      000E42                       2630 00144$:
                                   2631 ;	main.c:320: Delay_ms(300);
      000E42 90 01 2C         [24] 2632 	mov	dptr,#0x012c
      000E45 12 00 62         [24] 2633 	lcall	_Delay_ms
                                   2634 ;	main.c:322: }
      000E48 02 09 4E         [24] 2635 	ljmp	00146$
                                   2636 	.area CSEG    (CODE)
                                   2637 	.area CONST   (CODE)
      001377                       2638 _Font_8x8:
      001377 3E                    2639 	.db #0x3e	; 62
      001378 51                    2640 	.db #0x51	; 81	'Q'
      001379 49                    2641 	.db #0x49	; 73	'I'
      00137A 45                    2642 	.db #0x45	; 69	'E'
      00137B 3E                    2643 	.db #0x3e	; 62
      00137C 00                    2644 	.db #0x00	; 0
      00137D 00                    2645 	.db #0x00	; 0
      00137E 00                    2646 	.db #0x00	; 0
      00137F 00                    2647 	.db #0x00	; 0
      001380 42                    2648 	.db #0x42	; 66	'B'
      001381 7F                    2649 	.db #0x7f	; 127
      001382 40                    2650 	.db #0x40	; 64
      001383 00                    2651 	.db #0x00	; 0
      001384 00                    2652 	.db #0x00	; 0
      001385 00                    2653 	.db #0x00	; 0
      001386 00                    2654 	.db #0x00	; 0
      001387 42                    2655 	.db #0x42	; 66	'B'
      001388 61                    2656 	.db #0x61	; 97	'a'
      001389 51                    2657 	.db #0x51	; 81	'Q'
      00138A 49                    2658 	.db #0x49	; 73	'I'
      00138B 46                    2659 	.db #0x46	; 70	'F'
      00138C 00                    2660 	.db #0x00	; 0
      00138D 00                    2661 	.db #0x00	; 0
      00138E 00                    2662 	.db #0x00	; 0
      00138F 21                    2663 	.db #0x21	; 33
      001390 41                    2664 	.db #0x41	; 65	'A'
      001391 45                    2665 	.db #0x45	; 69	'E'
      001392 4B                    2666 	.db #0x4b	; 75	'K'
      001393 31                    2667 	.db #0x31	; 49	'1'
      001394 00                    2668 	.db #0x00	; 0
      001395 00                    2669 	.db #0x00	; 0
      001396 00                    2670 	.db #0x00	; 0
      001397 18                    2671 	.db #0x18	; 24
      001398 14                    2672 	.db #0x14	; 20
      001399 12                    2673 	.db #0x12	; 18
      00139A 7F                    2674 	.db #0x7f	; 127
      00139B 10                    2675 	.db #0x10	; 16
      00139C 00                    2676 	.db #0x00	; 0
      00139D 00                    2677 	.db #0x00	; 0
      00139E 00                    2678 	.db #0x00	; 0
      00139F 27                    2679 	.db #0x27	; 39
      0013A0 45                    2680 	.db #0x45	; 69	'E'
      0013A1 45                    2681 	.db #0x45	; 69	'E'
      0013A2 45                    2682 	.db #0x45	; 69	'E'
      0013A3 39                    2683 	.db #0x39	; 57	'9'
      0013A4 00                    2684 	.db #0x00	; 0
      0013A5 00                    2685 	.db #0x00	; 0
      0013A6 00                    2686 	.db #0x00	; 0
      0013A7 3C                    2687 	.db #0x3c	; 60
      0013A8 4A                    2688 	.db #0x4a	; 74	'J'
      0013A9 49                    2689 	.db #0x49	; 73	'I'
      0013AA 49                    2690 	.db #0x49	; 73	'I'
      0013AB 30                    2691 	.db #0x30	; 48	'0'
      0013AC 00                    2692 	.db #0x00	; 0
      0013AD 00                    2693 	.db #0x00	; 0
      0013AE 00                    2694 	.db #0x00	; 0
      0013AF 01                    2695 	.db #0x01	; 1
      0013B0 71                    2696 	.db #0x71	; 113	'q'
      0013B1 09                    2697 	.db #0x09	; 9
      0013B2 05                    2698 	.db #0x05	; 5
      0013B3 03                    2699 	.db #0x03	; 3
      0013B4 00                    2700 	.db #0x00	; 0
      0013B5 00                    2701 	.db #0x00	; 0
      0013B6 00                    2702 	.db #0x00	; 0
      0013B7 36                    2703 	.db #0x36	; 54	'6'
      0013B8 49                    2704 	.db #0x49	; 73	'I'
      0013B9 49                    2705 	.db #0x49	; 73	'I'
      0013BA 49                    2706 	.db #0x49	; 73	'I'
      0013BB 36                    2707 	.db #0x36	; 54	'6'
      0013BC 00                    2708 	.db #0x00	; 0
      0013BD 00                    2709 	.db #0x00	; 0
      0013BE 00                    2710 	.db #0x00	; 0
      0013BF 06                    2711 	.db #0x06	; 6
      0013C0 49                    2712 	.db #0x49	; 73	'I'
      0013C1 49                    2713 	.db #0x49	; 73	'I'
      0013C2 29                    2714 	.db #0x29	; 41
      0013C3 1E                    2715 	.db #0x1e	; 30
      0013C4 00                    2716 	.db #0x00	; 0
      0013C5 00                    2717 	.db #0x00	; 0
      0013C6 00                    2718 	.db #0x00	; 0
      0013C7 08                    2719 	.db #0x08	; 8
      0013C8 08                    2720 	.db #0x08	; 8
      0013C9 08                    2721 	.db #0x08	; 8
      0013CA 08                    2722 	.db #0x08	; 8
      0013CB 08                    2723 	.db #0x08	; 8
      0013CC 00                    2724 	.db #0x00	; 0
      0013CD 00                    2725 	.db #0x00	; 0
      0013CE 00                    2726 	.db #0x00	; 0
      0013CF 00                    2727 	.db #0x00	; 0
      0013D0 00                    2728 	.db #0x00	; 0
      0013D1 00                    2729 	.db #0x00	; 0
      0013D2 00                    2730 	.db #0x00	; 0
      0013D3 00                    2731 	.db #0x00	; 0
      0013D4 00                    2732 	.db #0x00	; 0
      0013D5 00                    2733 	.db #0x00	; 0
      0013D6 00                    2734 	.db #0x00	; 0
      0013D7 00                    2735 	.db #0x00	; 0
      0013D8 60                    2736 	.db #0x60	; 96
      0013D9 60                    2737 	.db #0x60	; 96
      0013DA 00                    2738 	.db #0x00	; 0
      0013DB 00                    2739 	.db #0x00	; 0
      0013DC 00                    2740 	.db #0x00	; 0
      0013DD 00                    2741 	.db #0x00	; 0
      0013DE 00                    2742 	.db #0x00	; 0
      0013DF 00                    2743 	.db #0x00	; 0
      0013E0 36                    2744 	.db #0x36	; 54	'6'
      0013E1 36                    2745 	.db #0x36	; 54	'6'
      0013E2 00                    2746 	.db #0x00	; 0
      0013E3 00                    2747 	.db #0x00	; 0
      0013E4 00                    2748 	.db #0x00	; 0
      0013E5 00                    2749 	.db #0x00	; 0
      0013E6 00                    2750 	.db #0x00	; 0
      0013E7 06                    2751 	.db #0x06	; 6
      0013E8 09                    2752 	.db #0x09	; 9
      0013E9 09                    2753 	.db #0x09	; 9
      0013EA 06                    2754 	.db #0x06	; 6
      0013EB 00                    2755 	.db #0x00	; 0
      0013EC 00                    2756 	.db #0x00	; 0
      0013ED 00                    2757 	.db #0x00	; 0
      0013EE 00                    2758 	.db #0x00	; 0
      0013EF 14                    2759 	.db #0x14	; 20
      0013F0 14                    2760 	.db #0x14	; 20
      0013F1 14                    2761 	.db #0x14	; 20
      0013F2 14                    2762 	.db #0x14	; 20
      0013F3 14                    2763 	.db #0x14	; 20
      0013F4 00                    2764 	.db #0x00	; 0
      0013F5 00                    2765 	.db #0x00	; 0
      0013F6 00                    2766 	.db #0x00	; 0
      0013F7 7E                    2767 	.db #0x7e	; 126
      0013F8 11                    2768 	.db #0x11	; 17
      0013F9 11                    2769 	.db #0x11	; 17
      0013FA 11                    2770 	.db #0x11	; 17
      0013FB 7E                    2771 	.db #0x7e	; 126
      0013FC 00                    2772 	.db #0x00	; 0
      0013FD 00                    2773 	.db #0x00	; 0
      0013FE 00                    2774 	.db #0x00	; 0
      0013FF 7F                    2775 	.db #0x7f	; 127
      001400 49                    2776 	.db #0x49	; 73	'I'
      001401 49                    2777 	.db #0x49	; 73	'I'
      001402 49                    2778 	.db #0x49	; 73	'I'
      001403 36                    2779 	.db #0x36	; 54	'6'
      001404 00                    2780 	.db #0x00	; 0
      001405 00                    2781 	.db #0x00	; 0
      001406 00                    2782 	.db #0x00	; 0
      001407 3E                    2783 	.db #0x3e	; 62
      001408 41                    2784 	.db #0x41	; 65	'A'
      001409 41                    2785 	.db #0x41	; 65	'A'
      00140A 41                    2786 	.db #0x41	; 65	'A'
      00140B 22                    2787 	.db #0x22	; 34
      00140C 00                    2788 	.db #0x00	; 0
      00140D 00                    2789 	.db #0x00	; 0
      00140E 00                    2790 	.db #0x00	; 0
      00140F 7F                    2791 	.db #0x7f	; 127
      001410 41                    2792 	.db #0x41	; 65	'A'
      001411 41                    2793 	.db #0x41	; 65	'A'
      001412 22                    2794 	.db #0x22	; 34
      001413 1C                    2795 	.db #0x1c	; 28
      001414 00                    2796 	.db #0x00	; 0
      001415 00                    2797 	.db #0x00	; 0
      001416 00                    2798 	.db #0x00	; 0
      001417 7F                    2799 	.db #0x7f	; 127
      001418 49                    2800 	.db #0x49	; 73	'I'
      001419 49                    2801 	.db #0x49	; 73	'I'
      00141A 49                    2802 	.db #0x49	; 73	'I'
      00141B 41                    2803 	.db #0x41	; 65	'A'
      00141C 00                    2804 	.db #0x00	; 0
      00141D 00                    2805 	.db #0x00	; 0
      00141E 00                    2806 	.db #0x00	; 0
      00141F 7F                    2807 	.db #0x7f	; 127
      001420 09                    2808 	.db #0x09	; 9
      001421 09                    2809 	.db #0x09	; 9
      001422 01                    2810 	.db #0x01	; 1
      001423 01                    2811 	.db #0x01	; 1
      001424 00                    2812 	.db #0x00	; 0
      001425 00                    2813 	.db #0x00	; 0
      001426 00                    2814 	.db #0x00	; 0
      001427 3E                    2815 	.db #0x3e	; 62
      001428 41                    2816 	.db #0x41	; 65	'A'
      001429 49                    2817 	.db #0x49	; 73	'I'
      00142A 49                    2818 	.db #0x49	; 73	'I'
      00142B 7A                    2819 	.db #0x7a	; 122	'z'
      00142C 00                    2820 	.db #0x00	; 0
      00142D 00                    2821 	.db #0x00	; 0
      00142E 00                    2822 	.db #0x00	; 0
      00142F 7F                    2823 	.db #0x7f	; 127
      001430 08                    2824 	.db #0x08	; 8
      001431 08                    2825 	.db #0x08	; 8
      001432 08                    2826 	.db #0x08	; 8
      001433 7F                    2827 	.db #0x7f	; 127
      001434 00                    2828 	.db #0x00	; 0
      001435 00                    2829 	.db #0x00	; 0
      001436 00                    2830 	.db #0x00	; 0
      001437 00                    2831 	.db #0x00	; 0
      001438 41                    2832 	.db #0x41	; 65	'A'
      001439 7F                    2833 	.db #0x7f	; 127
      00143A 41                    2834 	.db #0x41	; 65	'A'
      00143B 00                    2835 	.db #0x00	; 0
      00143C 00                    2836 	.db #0x00	; 0
      00143D 00                    2837 	.db #0x00	; 0
      00143E 00                    2838 	.db #0x00	; 0
      00143F 20                    2839 	.db #0x20	; 32
      001440 40                    2840 	.db #0x40	; 64
      001441 41                    2841 	.db #0x41	; 65	'A'
      001442 3F                    2842 	.db #0x3f	; 63
      001443 01                    2843 	.db #0x01	; 1
      001444 00                    2844 	.db #0x00	; 0
      001445 00                    2845 	.db #0x00	; 0
      001446 00                    2846 	.db #0x00	; 0
      001447 7F                    2847 	.db #0x7f	; 127
      001448 08                    2848 	.db #0x08	; 8
      001449 14                    2849 	.db #0x14	; 20
      00144A 22                    2850 	.db #0x22	; 34
      00144B 41                    2851 	.db #0x41	; 65	'A'
      00144C 00                    2852 	.db #0x00	; 0
      00144D 00                    2853 	.db #0x00	; 0
      00144E 00                    2854 	.db #0x00	; 0
      00144F 7F                    2855 	.db #0x7f	; 127
      001450 40                    2856 	.db #0x40	; 64
      001451 40                    2857 	.db #0x40	; 64
      001452 40                    2858 	.db #0x40	; 64
      001453 40                    2859 	.db #0x40	; 64
      001454 00                    2860 	.db #0x00	; 0
      001455 00                    2861 	.db #0x00	; 0
      001456 00                    2862 	.db #0x00	; 0
      001457 7F                    2863 	.db #0x7f	; 127
      001458 02                    2864 	.db #0x02	; 2
      001459 0C                    2865 	.db #0x0c	; 12
      00145A 02                    2866 	.db #0x02	; 2
      00145B 7F                    2867 	.db #0x7f	; 127
      00145C 00                    2868 	.db #0x00	; 0
      00145D 00                    2869 	.db #0x00	; 0
      00145E 00                    2870 	.db #0x00	; 0
      00145F 7F                    2871 	.db #0x7f	; 127
      001460 04                    2872 	.db #0x04	; 4
      001461 08                    2873 	.db #0x08	; 8
      001462 10                    2874 	.db #0x10	; 16
      001463 7F                    2875 	.db #0x7f	; 127
      001464 00                    2876 	.db #0x00	; 0
      001465 00                    2877 	.db #0x00	; 0
      001466 00                    2878 	.db #0x00	; 0
      001467 3E                    2879 	.db #0x3e	; 62
      001468 41                    2880 	.db #0x41	; 65	'A'
      001469 41                    2881 	.db #0x41	; 65	'A'
      00146A 41                    2882 	.db #0x41	; 65	'A'
      00146B 3E                    2883 	.db #0x3e	; 62
      00146C 00                    2884 	.db #0x00	; 0
      00146D 00                    2885 	.db #0x00	; 0
      00146E 00                    2886 	.db #0x00	; 0
      00146F 7F                    2887 	.db #0x7f	; 127
      001470 09                    2888 	.db #0x09	; 9
      001471 09                    2889 	.db #0x09	; 9
      001472 09                    2890 	.db #0x09	; 9
      001473 06                    2891 	.db #0x06	; 6
      001474 00                    2892 	.db #0x00	; 0
      001475 00                    2893 	.db #0x00	; 0
      001476 00                    2894 	.db #0x00	; 0
      001477 3E                    2895 	.db #0x3e	; 62
      001478 41                    2896 	.db #0x41	; 65	'A'
      001479 51                    2897 	.db #0x51	; 81	'Q'
      00147A 21                    2898 	.db #0x21	; 33
      00147B 5E                    2899 	.db #0x5e	; 94
      00147C 00                    2900 	.db #0x00	; 0
      00147D 00                    2901 	.db #0x00	; 0
      00147E 00                    2902 	.db #0x00	; 0
      00147F 7F                    2903 	.db #0x7f	; 127
      001480 09                    2904 	.db #0x09	; 9
      001481 19                    2905 	.db #0x19	; 25
      001482 29                    2906 	.db #0x29	; 41
      001483 46                    2907 	.db #0x46	; 70	'F'
      001484 00                    2908 	.db #0x00	; 0
      001485 00                    2909 	.db #0x00	; 0
      001486 00                    2910 	.db #0x00	; 0
      001487 46                    2911 	.db #0x46	; 70	'F'
      001488 49                    2912 	.db #0x49	; 73	'I'
      001489 49                    2913 	.db #0x49	; 73	'I'
      00148A 49                    2914 	.db #0x49	; 73	'I'
      00148B 31                    2915 	.db #0x31	; 49	'1'
      00148C 00                    2916 	.db #0x00	; 0
      00148D 00                    2917 	.db #0x00	; 0
      00148E 00                    2918 	.db #0x00	; 0
      00148F 01                    2919 	.db #0x01	; 1
      001490 01                    2920 	.db #0x01	; 1
      001491 7F                    2921 	.db #0x7f	; 127
      001492 01                    2922 	.db #0x01	; 1
      001493 01                    2923 	.db #0x01	; 1
      001494 00                    2924 	.db #0x00	; 0
      001495 00                    2925 	.db #0x00	; 0
      001496 00                    2926 	.db #0x00	; 0
      001497 3F                    2927 	.db #0x3f	; 63
      001498 40                    2928 	.db #0x40	; 64
      001499 40                    2929 	.db #0x40	; 64
      00149A 40                    2930 	.db #0x40	; 64
      00149B 3F                    2931 	.db #0x3f	; 63
      00149C 00                    2932 	.db #0x00	; 0
      00149D 00                    2933 	.db #0x00	; 0
      00149E 00                    2934 	.db #0x00	; 0
      00149F 1F                    2935 	.db #0x1f	; 31
      0014A0 20                    2936 	.db #0x20	; 32
      0014A1 40                    2937 	.db #0x40	; 64
      0014A2 20                    2938 	.db #0x20	; 32
      0014A3 1F                    2939 	.db #0x1f	; 31
      0014A4 00                    2940 	.db #0x00	; 0
      0014A5 00                    2941 	.db #0x00	; 0
      0014A6 00                    2942 	.db #0x00	; 0
      0014A7 7F                    2943 	.db #0x7f	; 127
      0014A8 20                    2944 	.db #0x20	; 32
      0014A9 18                    2945 	.db #0x18	; 24
      0014AA 20                    2946 	.db #0x20	; 32
      0014AB 7F                    2947 	.db #0x7f	; 127
      0014AC 00                    2948 	.db #0x00	; 0
      0014AD 00                    2949 	.db #0x00	; 0
      0014AE 00                    2950 	.db #0x00	; 0
      0014AF 63                    2951 	.db #0x63	; 99	'c'
      0014B0 14                    2952 	.db #0x14	; 20
      0014B1 08                    2953 	.db #0x08	; 8
      0014B2 14                    2954 	.db #0x14	; 20
      0014B3 63                    2955 	.db #0x63	; 99	'c'
      0014B4 00                    2956 	.db #0x00	; 0
      0014B5 00                    2957 	.db #0x00	; 0
      0014B6 00                    2958 	.db #0x00	; 0
      0014B7 07                    2959 	.db #0x07	; 7
      0014B8 08                    2960 	.db #0x08	; 8
      0014B9 70                    2961 	.db #0x70	; 112	'p'
      0014BA 08                    2962 	.db #0x08	; 8
      0014BB 07                    2963 	.db #0x07	; 7
      0014BC 00                    2964 	.db #0x00	; 0
      0014BD 00                    2965 	.db #0x00	; 0
      0014BE 00                    2966 	.db #0x00	; 0
      0014BF 61                    2967 	.db #0x61	; 97	'a'
      0014C0 51                    2968 	.db #0x51	; 81	'Q'
      0014C1 49                    2969 	.db #0x49	; 73	'I'
      0014C2 45                    2970 	.db #0x45	; 69	'E'
      0014C3 43                    2971 	.db #0x43	; 67	'C'
      0014C4 00                    2972 	.db #0x00	; 0
      0014C5 00                    2973 	.db #0x00	; 0
      0014C6 00                    2974 	.db #0x00	; 0
                                   2975 	.area CONST   (CODE)
      0014C7                       2976 ___str_0:
      0014C7 43 58 3A 20           2977 	.ascii "CX: "
      0014CB 00                    2978 	.db 0x00
                                   2979 	.area CSEG    (CODE)
                                   2980 	.area CONST   (CODE)
      0014CC                       2981 ___str_1:
      0014CC 20 20 30 2E 30 20 4E  2982 	.ascii "  0.0 NF"
             46
      0014D4 00                    2983 	.db 0x00
                                   2984 	.area CSEG    (CODE)
                                   2985 	.area CONST   (CODE)
      0014D5                       2986 ___str_2:
      0014D5 20 4E 46              2987 	.ascii " NF"
      0014D8 00                    2988 	.db 0x00
                                   2989 	.area CSEG    (CODE)
                                   2990 	.area CONST   (CODE)
      0014D9                       2991 ___str_3:
      0014D9 20 55 46              2992 	.ascii " UF"
      0014DC 00                    2993 	.db 0x00
                                   2994 	.area CSEG    (CODE)
                                   2995 	.area XINIT   (CODE)
                                   2996 	.area CABS    (ABS,CODE)
