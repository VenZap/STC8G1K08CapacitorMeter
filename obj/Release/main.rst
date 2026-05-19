                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Font_8x8
                                     12 	.globl _main
                                     13 	.globl _Measure_Single
                                     14 	.globl _Timer0_ISR
                                     15 	.globl _SSD1306_DisplayResult
                                     16 	.globl _SSD1306_PrintString
                                     17 	.globl _SSD1306_WriteChar
                                     18 	.globl _SSD1306_SetCursor
                                     19 	.globl _SSD1306_Clear
                                     20 	.globl _SSD1306_Init
                                     21 	.globl _SSD1306_Command
                                     22 	.globl _I2C_Write_Byte
                                     23 	.globl _I2C_Stop
                                     24 	.globl _I2C_Start
                                     25 	.globl _SDA_LOW
                                     26 	.globl _SDA_HIGH
                                     27 	.globl _SCL_LOW
                                     28 	.globl _SCL_HIGH
                                     29 	.globl _I2C_Delay
                                     30 	.globl _Delay_ms
                                     31 	.globl _PIN_BUTTON
                                     32 	.globl _PIN_R1_10K
                                     33 	.globl _ET0
                                     34 	.globl _EA
                                     35 	.globl _TF0
                                     36 	.globl _TR0
                                     37 	.globl _IE
                                     38 	.globl _AUXR
                                     39 	.globl _TH0
                                     40 	.globl _TL0
                                     41 	.globl _TCON
                                     42 	.globl _TMOD
                                     43 	.globl _CLKSEL
                                     44 	.globl _P_SW2
                                     45 	.globl _P5M0
                                     46 	.globl _P5M1
                                     47 	.globl _P5
                                     48 	.globl _P4
                                     49 	.globl _P3M0
                                     50 	.globl _P3M1
                                     51 	.globl _P3
                                     52 	.globl _P2
                                     53 	.globl _P1M0
                                     54 	.globl _P1M1
                                     55 	.globl _P1
                                     56 	.globl _P0
                                     57 	.globl _timer0_overflows
                                     58 	.globl _SSD1306_DisplayResult_PARM_4
                                     59 	.globl _SSD1306_DisplayResult_PARM_3
                                     60 	.globl _SSD1306_DisplayResult_PARM_2
                                     61 	.globl _SSD1306_PrintString_PARM_3
                                     62 	.globl _SSD1306_PrintString_PARM_2
                                     63 	.globl _SSD1306_WriteChar_PARM_3
                                     64 	.globl _SSD1306_WriteChar_PARM_2
                                     65 	.globl _SSD1306_SetCursor_PARM_2
                                     66 ;--------------------------------------------------------
                                     67 ; special function registers
                                     68 ;--------------------------------------------------------
                                     69 	.area RSEG    (ABS,DATA)
      000000                         70 	.org 0x0000
                           000080    71 _P0	=	0x0080
                           000090    72 _P1	=	0x0090
                           000093    73 _P1M1	=	0x0093
                           000094    74 _P1M0	=	0x0094
                           0000A0    75 _P2	=	0x00a0
                           0000B0    76 _P3	=	0x00b0
                           0000B1    77 _P3M1	=	0x00b1
                           0000B2    78 _P3M0	=	0x00b2
                           0000C0    79 _P4	=	0x00c0
                           0000C8    80 _P5	=	0x00c8
                           0000C9    81 _P5M1	=	0x00c9
                           0000CA    82 _P5M0	=	0x00ca
                           00008E    83 _P_SW2	=	0x008e
                           00009D    84 _CLKSEL	=	0x009d
                           000089    85 _TMOD	=	0x0089
                           000088    86 _TCON	=	0x0088
                           00008A    87 _TL0	=	0x008a
                           00008C    88 _TH0	=	0x008c
                           00008E    89 _AUXR	=	0x008e
                           0000A8    90 _IE	=	0x00a8
                                     91 ;--------------------------------------------------------
                                     92 ; special function bits
                                     93 ;--------------------------------------------------------
                                     94 	.area RSEG    (ABS,DATA)
      000000                         95 	.org 0x0000
                           00008C    96 _TR0	=	0x008c
                           00008D    97 _TF0	=	0x008d
                           0000AF    98 _EA	=	0x00af
                           0000A9    99 _ET0	=	0x00a9
                           0000B1   100 _PIN_R1_10K	=	0x00b1
                           0000B0   101 _PIN_BUTTON	=	0x00b0
                                    102 ;--------------------------------------------------------
                                    103 ; overlayable register banks
                                    104 ;--------------------------------------------------------
                                    105 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        106 	.ds 8
                                    107 ;--------------------------------------------------------
                                    108 ; internal ram data
                                    109 ;--------------------------------------------------------
                                    110 	.area DSEG    (DATA)
      000008                        111 _SSD1306_DisplayResult_sloc0_1_0:
      000008                        112 	.ds 1
      000009                        113 _SSD1306_DisplayResult_sloc1_1_0:
      000009                        114 	.ds 4
      00000D                        115 _SSD1306_DisplayResult_sloc2_1_0:
      00000D                        116 	.ds 4
      000011                        117 _main_sloc0_1_0:
      000011                        118 	.ds 4
      000015                        119 _main_sloc1_1_0:
      000015                        120 	.ds 4
                                    121 ;--------------------------------------------------------
                                    122 ; overlayable items in internal ram
                                    123 ;--------------------------------------------------------
                                    124 ;--------------------------------------------------------
                                    125 ; Stack segment in internal ram
                                    126 ;--------------------------------------------------------
                                    127 	.area SSEG
      00001D                        128 __start__stack:
      00001D                        129 	.ds	1
                                    130 
                                    131 ;--------------------------------------------------------
                                    132 ; indirectly addressable internal ram data
                                    133 ;--------------------------------------------------------
                                    134 	.area ISEG    (DATA)
                                    135 ;--------------------------------------------------------
                                    136 ; absolute internal ram data
                                    137 ;--------------------------------------------------------
                                    138 	.area IABS    (ABS,DATA)
                                    139 	.area IABS    (ABS,DATA)
                                    140 ;--------------------------------------------------------
                                    141 ; bit data
                                    142 ;--------------------------------------------------------
                                    143 	.area BSEG    (BIT)
                                    144 ;--------------------------------------------------------
                                    145 ; paged external ram data
                                    146 ;--------------------------------------------------------
                                    147 	.area PSEG    (PAG,XDATA)
                                    148 ;--------------------------------------------------------
                                    149 ; uninitialized external ram data
                                    150 ;--------------------------------------------------------
                                    151 	.area XSEG    (XDATA)
      000001                        152 _Delay_ms_ms_10000_1:
      000001                        153 	.ds 2
      000003                        154 _Delay_ms_i_10000_2:
      000003                        155 	.ds 2
      000005                        156 _I2C_Delay_i_10000_5:
      000005                        157 	.ds 1
      000006                        158 _I2C_Write_Byte_dat_10000_18:
      000006                        159 	.ds 1
      000007                        160 _SSD1306_Command_cmd_10000_24:
      000007                        161 	.ds 1
      000008                        162 _SSD1306_SetCursor_PARM_2:
      000008                        163 	.ds 1
      000009                        164 _SSD1306_SetCursor_page_10000_34:
      000009                        165 	.ds 1
      00000A                        166 _SSD1306_WriteChar_PARM_2:
      00000A                        167 	.ds 1
      00000B                        168 _SSD1306_WriteChar_PARM_3:
      00000B                        169 	.ds 1
      00000C                        170 _SSD1306_WriteChar_page_10000_36:
      00000C                        171 	.ds 1
      00000D                        172 _SSD1306_WriteChar_idx_10000_37:
      00000D                        173 	.ds 1
      00000E                        174 _SSD1306_PrintString_PARM_2:
      00000E                        175 	.ds 1
      00000F                        176 _SSD1306_PrintString_PARM_3:
      00000F                        177 	.ds 3
      000012                        178 _SSD1306_PrintString_page_10000_42:
      000012                        179 	.ds 1
      000013                        180 _SSD1306_DisplayResult_PARM_2:
      000013                        181 	.ds 1
      000014                        182 _SSD1306_DisplayResult_PARM_3:
      000014                        183 	.ds 4
      000018                        184 _SSD1306_DisplayResult_PARM_4:
      000018                        185 	.ds 1
      000019                        186 _SSD1306_DisplayResult_page_10000_45:
      000019                        187 	.ds 1
      00001A                        188 _Measure_Single_stable_counter_10000_53:
      00001A                        189 	.ds 1
      00001B                        190 _main_final_calc_10000_60:
      00001B                        191 	.ds 4
      00001F                        192 _main_last_display_val_10000_60:
      00001F                        193 	.ds 4
      000023                        194 _main_filtered_ticks_10000_60:
      000023                        195 	.ds 4
      000027                        196 _main_mode_uf_10000_60:
      000027                        197 	.ds 1
      000028                        198 _main_is_first_run_10000_60:
      000028                        199 	.ds 1
      000029                        200 _main_is_sleeping_10000_60:
      000029                        201 	.ds 1
      00002A                        202 _main_discharge_10000_60:
      00002A                        203 	.ds 2
                                    204 ;--------------------------------------------------------
                                    205 ; absolute external ram data
                                    206 ;--------------------------------------------------------
                                    207 	.area XABS    (ABS,XDATA)
                                    208 ;--------------------------------------------------------
                                    209 ; initialized external ram data
                                    210 ;--------------------------------------------------------
                                    211 	.area XISEG   (XDATA)
      000046                        212 _timer0_overflows::
      000046                        213 	.ds 2
                                    214 	.area HOME    (CODE)
                                    215 	.area GSINIT0 (CODE)
                                    216 	.area GSINIT1 (CODE)
                                    217 	.area GSINIT2 (CODE)
                                    218 	.area GSINIT3 (CODE)
                                    219 	.area GSINIT4 (CODE)
                                    220 	.area GSINIT5 (CODE)
                                    221 	.area GSINIT  (CODE)
                                    222 	.area GSFINAL (CODE)
                                    223 	.area CSEG    (CODE)
                                    224 ;--------------------------------------------------------
                                    225 ; interrupt vector
                                    226 ;--------------------------------------------------------
                                    227 	.area HOME    (CODE)
      000000                        228 __interrupt_vect:
      000000 02 00 54         [24]  229 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  230 	reti
      000004                        231 	.ds	7
      00000B 02 08 71         [24]  232 	ljmp	_Timer0_ISR
                                    233 ; restartable atomic support routines
      00000E                        234 	.ds	2
      000010                        235 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  236 	nop
      000011 00               [12]  237 	nop
      000012                        238 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  239 	movx	a, @r0
      000013 FB               [12]  240 	mov	r3, a
      000014 EA               [12]  241 	mov	a, r2
      000015 F2               [24]  242 	movx	@r0, a
      000016 80 2C            [24]  243 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  244 	nop
      000019 00               [12]  245 	nop
      00001A                        246 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  247 	movx	a, @dptr
      00001B FB               [12]  248 	mov	r3, a
      00001C EA               [12]  249 	mov	a, r2
      00001D F0               [24]  250 	movx	@dptr, a
      00001E 80 24            [24]  251 	sjmp	sdcc_atomic_exchange_exit
      000020                        252 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  253 	mov	a, @r0
      000021 B5 02 02         [24]  254 	cjne	a, ar2, .+#5
      000024 EB               [12]  255 	mov	a, r3
      000025 F6               [12]  256 	mov	@r0, a
      000026 22               [24]  257 	ret
      000027 00               [12]  258 	nop
      000028                        259 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  260 	movx	a, @r0
      000029 B5 02 02         [24]  261 	cjne	a, ar2, .+#5
      00002C EB               [12]  262 	mov	a, r3
      00002D F2               [24]  263 	movx	@r0, a
      00002E 22               [24]  264 	ret
      00002F 00               [12]  265 	nop
      000030                        266 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  267 	movx	a, @dptr
      000031 B5 02 02         [24]  268 	cjne	a, ar2, .+#5
      000034 EB               [12]  269 	mov	a, r3
      000035 F0               [24]  270 	movx	@dptr, a
      000036 22               [24]  271 	ret
      000037                        272 sdcc_atomic_exchange_rollback_end::
                                    273 
      000037                        274 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  275 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  276 	mov	r0, dpl
      00003C 20 F5 D3         [24]  277 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        278 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  279 	mov	a, r2
      000040 C6               [12]  280 	xch	a, @r0
      000041 F5 82            [12]  281 	mov	dpl, a
      000043 22               [24]  282 	ret
      000044                        283 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  284 	mov	dpl, r3
      000046 22               [24]  285 	ret
      000047                        286 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  287 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  288 	mov	r0, dpl
      00004C 20 F5 D9         [24]  289 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  290 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    291 ;--------------------------------------------------------
                                    292 ; global & static initialisations
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.globl __sdcc_gsinit_startup
                                    299 	.globl __sdcc_program_startup
                                    300 	.globl __start__stack
                                    301 	.globl __mcs51_genXINIT
                                    302 	.globl __mcs51_genXRAMCLEAR
                                    303 	.globl __mcs51_genRAMCLEAR
                                    304 	.area GSFINAL (CODE)
      0000AD 02 00 51         [24]  305 	ljmp	__sdcc_program_startup
                                    306 ;--------------------------------------------------------
                                    307 ; Home
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area HOME    (CODE)
      000051                        311 __sdcc_program_startup:
      000051 02 09 29         [24]  312 	ljmp	_main
                                    313 ;	return from main will return to caller
                                    314 ;--------------------------------------------------------
                                    315 ; code
                                    316 ;--------------------------------------------------------
                                    317 	.area CSEG    (CODE)
                                    318 ;------------------------------------------------------------
                                    319 ;Allocation info for local variables in function 'Delay_ms'
                                    320 ;------------------------------------------------------------
                                    321 ;ms            Allocated with name '_Delay_ms_ms_10000_1'
                                    322 ;i             Allocated with name '_Delay_ms_i_10000_2'
                                    323 ;------------------------------------------------------------
                                    324 ;	main.c:78: void Delay_ms(unsigned int ms) { volatile unsigned int i; while(ms--) { i = 600; while(i--); } }
                                    325 ;	-----------------------------------------
                                    326 ;	 function Delay_ms
                                    327 ;	-----------------------------------------
      0000B0                        328 _Delay_ms:
                           000007   329 	ar7 = 0x07
                           000006   330 	ar6 = 0x06
                           000005   331 	ar5 = 0x05
                           000004   332 	ar4 = 0x04
                           000003   333 	ar3 = 0x03
                           000002   334 	ar2 = 0x02
                           000001   335 	ar1 = 0x01
                           000000   336 	ar0 = 0x00
      0000B0 AF 83            [24]  337 	mov	r7,dph
      0000B2 E5 82            [12]  338 	mov	a,dpl
      0000B4 90 00 01         [24]  339 	mov	dptr,#_Delay_ms_ms_10000_1
      0000B7 F0               [24]  340 	movx	@dptr,a
      0000B8 EF               [12]  341 	mov	a,r7
      0000B9 A3               [24]  342 	inc	dptr
      0000BA F0               [24]  343 	movx	@dptr,a
      0000BB 90 00 01         [24]  344 	mov	dptr,#_Delay_ms_ms_10000_1
      0000BE E0               [24]  345 	movx	a,@dptr
      0000BF FE               [12]  346 	mov	r6,a
      0000C0 A3               [24]  347 	inc	dptr
      0000C1 E0               [24]  348 	movx	a,@dptr
      0000C2 FF               [12]  349 	mov	r7,a
      0000C3                        350 00104$:
      0000C3 8E 04            [24]  351 	mov	ar4,r6
      0000C5 8F 05            [24]  352 	mov	ar5,r7
      0000C7 1E               [12]  353 	dec	r6
      0000C8 BE FF 01         [24]  354 	cjne	r6,#0xff,00134$
      0000CB 1F               [12]  355 	dec	r7
      0000CC                        356 00134$:
      0000CC 90 00 01         [24]  357 	mov	dptr,#_Delay_ms_ms_10000_1
      0000CF EE               [12]  358 	mov	a,r6
      0000D0 F0               [24]  359 	movx	@dptr,a
      0000D1 EF               [12]  360 	mov	a,r7
      0000D2 A3               [24]  361 	inc	dptr
      0000D3 F0               [24]  362 	movx	@dptr,a
      0000D4 EC               [12]  363 	mov	a,r4
      0000D5 4D               [12]  364 	orl	a,r5
      0000D6 60 28            [24]  365 	jz	00113$
      0000D8 90 00 03         [24]  366 	mov	dptr,#_Delay_ms_i_10000_2
      0000DB 74 58            [12]  367 	mov	a,#0x58
      0000DD F0               [24]  368 	movx	@dptr,a
      0000DE 74 02            [12]  369 	mov	a,#0x02
      0000E0 A3               [24]  370 	inc	dptr
      0000E1 F0               [24]  371 	movx	@dptr,a
      0000E2                        372 00101$:
      0000E2 90 00 03         [24]  373 	mov	dptr,#_Delay_ms_i_10000_2
      0000E5 E0               [24]  374 	movx	a,@dptr
      0000E6 FC               [12]  375 	mov	r4,a
      0000E7 A3               [24]  376 	inc	dptr
      0000E8 E0               [24]  377 	movx	a,@dptr
      0000E9 FD               [12]  378 	mov	r5,a
      0000EA EC               [12]  379 	mov	a,r4
      0000EB 24 FF            [12]  380 	add	a,#0xff
      0000ED FA               [12]  381 	mov	r2,a
      0000EE ED               [12]  382 	mov	a,r5
      0000EF 34 FF            [12]  383 	addc	a,#0xff
      0000F1 FB               [12]  384 	mov	r3,a
      0000F2 90 00 03         [24]  385 	mov	dptr,#_Delay_ms_i_10000_2
      0000F5 EA               [12]  386 	mov	a,r2
      0000F6 F0               [24]  387 	movx	@dptr,a
      0000F7 EB               [12]  388 	mov	a,r3
      0000F8 A3               [24]  389 	inc	dptr
      0000F9 F0               [24]  390 	movx	@dptr,a
      0000FA EC               [12]  391 	mov	a,r4
      0000FB 4D               [12]  392 	orl	a,r5
      0000FC 60 C5            [24]  393 	jz	00104$
      0000FE 80 E2            [24]  394 	sjmp	00101$
      000100                        395 00113$:
      000100 90 00 01         [24]  396 	mov	dptr,#_Delay_ms_ms_10000_1
      000103 EE               [12]  397 	mov	a,r6
      000104 F0               [24]  398 	movx	@dptr,a
      000105 EF               [12]  399 	mov	a,r7
      000106 A3               [24]  400 	inc	dptr
      000107 F0               [24]  401 	movx	@dptr,a
      000108 22               [24]  402 	ret
                                    403 ;------------------------------------------------------------
                                    404 ;Allocation info for local variables in function 'I2C_Delay'
                                    405 ;------------------------------------------------------------
                                    406 ;i             Allocated with name '_I2C_Delay_i_10000_5'
                                    407 ;------------------------------------------------------------
                                    408 ;	main.c:79: void I2C_Delay(void) { volatile unsigned char i = 25; while(i--); }
                                    409 ;	-----------------------------------------
                                    410 ;	 function I2C_Delay
                                    411 ;	-----------------------------------------
      000109                        412 _I2C_Delay:
      000109 90 00 05         [24]  413 	mov	dptr,#_I2C_Delay_i_10000_5
      00010C 74 19            [12]  414 	mov	a,#0x19
      00010E F0               [24]  415 	movx	@dptr,a
      00010F                        416 00101$:
      00010F 90 00 05         [24]  417 	mov	dptr,#_I2C_Delay_i_10000_5
      000112 E0               [24]  418 	movx	a,@dptr
      000113 FF               [12]  419 	mov	r7,a
      000114 14               [12]  420 	dec	a
      000115 F0               [24]  421 	movx	@dptr,a
      000116 EF               [12]  422 	mov	a,r7
      000117 70 F6            [24]  423 	jnz	00101$
      000119 22               [24]  424 	ret
                                    425 ;------------------------------------------------------------
                                    426 ;Allocation info for local variables in function 'SCL_HIGH'
                                    427 ;------------------------------------------------------------
                                    428 ;	main.c:82: void SCL_HIGH(void) { P3M1 &= ~(1 << SCL_BIT); P3M0 &= ~(1 << SCL_BIT); P3 |= (1 << SCL_BIT); }
                                    429 ;	-----------------------------------------
                                    430 ;	 function SCL_HIGH
                                    431 ;	-----------------------------------------
      00011A                        432 _SCL_HIGH:
      00011A 53 B1 FB         [24]  433 	anl	_P3M1,#0xfb
      00011D 53 B2 FB         [24]  434 	anl	_P3M0,#0xfb
      000120 43 B0 04         [24]  435 	orl	_P3,#0x04
      000123 22               [24]  436 	ret
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'SCL_LOW'
                                    439 ;------------------------------------------------------------
                                    440 ;	main.c:83: void SCL_LOW(void)  { P3M1 |= (1 << SCL_BIT);  P3M0 |= (1 << SCL_BIT);  P3 &= ~(1 << SCL_BIT); }
                                    441 ;	-----------------------------------------
                                    442 ;	 function SCL_LOW
                                    443 ;	-----------------------------------------
      000124                        444 _SCL_LOW:
      000124 43 B1 04         [24]  445 	orl	_P3M1,#0x04
      000127 43 B2 04         [24]  446 	orl	_P3M0,#0x04
      00012A 53 B0 FB         [24]  447 	anl	_P3,#0xfb
      00012D 22               [24]  448 	ret
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'SDA_HIGH'
                                    451 ;------------------------------------------------------------
                                    452 ;	main.c:84: void SDA_HIGH(void) { P3M1 &= ~(1 << SDA_BIT); P3M0 &= ~(1 << SDA_BIT); P3 |= (1 << SDA_BIT); }
                                    453 ;	-----------------------------------------
                                    454 ;	 function SDA_HIGH
                                    455 ;	-----------------------------------------
      00012E                        456 _SDA_HIGH:
      00012E 53 B1 F7         [24]  457 	anl	_P3M1,#0xf7
      000131 53 B2 F7         [24]  458 	anl	_P3M0,#0xf7
      000134 43 B0 08         [24]  459 	orl	_P3,#0x08
      000137 22               [24]  460 	ret
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'SDA_LOW'
                                    463 ;------------------------------------------------------------
                                    464 ;	main.c:85: void SDA_LOW(void)  { P3M1 |= (1 << SDA_BIT);  P3M0 |= (1 << SDA_BIT);  P3 &= ~(1 << SDA_BIT); }
                                    465 ;	-----------------------------------------
                                    466 ;	 function SDA_LOW
                                    467 ;	-----------------------------------------
      000138                        468 _SDA_LOW:
      000138 43 B1 08         [24]  469 	orl	_P3M1,#0x08
      00013B 43 B2 08         [24]  470 	orl	_P3M0,#0x08
      00013E 53 B0 F7         [24]  471 	anl	_P3,#0xf7
      000141 22               [24]  472 	ret
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'I2C_Start'
                                    475 ;------------------------------------------------------------
                                    476 ;	main.c:88: void I2C_Start(void) { SDA_HIGH(); SCL_HIGH(); I2C_Delay(); SDA_LOW(); I2C_Delay(); SCL_LOW(); I2C_Delay(); }
                                    477 ;	-----------------------------------------
                                    478 ;	 function I2C_Start
                                    479 ;	-----------------------------------------
      000142                        480 _I2C_Start:
      000142 12 01 2E         [24]  481 	lcall	_SDA_HIGH
      000145 12 01 1A         [24]  482 	lcall	_SCL_HIGH
      000148 12 01 09         [24]  483 	lcall	_I2C_Delay
      00014B 12 01 38         [24]  484 	lcall	_SDA_LOW
      00014E 12 01 09         [24]  485 	lcall	_I2C_Delay
      000151 12 01 24         [24]  486 	lcall	_SCL_LOW
      000154 02 01 09         [24]  487 	ljmp	_I2C_Delay
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'I2C_Stop'
                                    490 ;------------------------------------------------------------
                                    491 ;	main.c:89: void I2C_Stop(void)  { SDA_LOW(); SCL_HIGH(); I2C_Delay(); SDA_HIGH(); I2C_Delay(); }
                                    492 ;	-----------------------------------------
                                    493 ;	 function I2C_Stop
                                    494 ;	-----------------------------------------
      000157                        495 _I2C_Stop:
      000157 12 01 38         [24]  496 	lcall	_SDA_LOW
      00015A 12 01 1A         [24]  497 	lcall	_SCL_HIGH
      00015D 12 01 09         [24]  498 	lcall	_I2C_Delay
      000160 12 01 2E         [24]  499 	lcall	_SDA_HIGH
      000163 02 01 09         [24]  500 	ljmp	_I2C_Delay
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'I2C_Write_Byte'
                                    503 ;------------------------------------------------------------
                                    504 ;dat           Allocated with name '_I2C_Write_Byte_dat_10000_18'
                                    505 ;i             Allocated with name '_I2C_Write_Byte_i_10000_19'
                                    506 ;------------------------------------------------------------
                                    507 ;	main.c:91: void I2C_Write_Byte(unsigned char dat) {
                                    508 ;	-----------------------------------------
                                    509 ;	 function I2C_Write_Byte
                                    510 ;	-----------------------------------------
      000166                        511 _I2C_Write_Byte:
      000166 E5 82            [12]  512 	mov	a,dpl
      000168 90 00 06         [24]  513 	mov	dptr,#_I2C_Write_Byte_dat_10000_18
      00016B F0               [24]  514 	movx	@dptr,a
                                    515 ;	main.c:93: for(i = 0; i < 8; i++) {
      00016C 7F 00            [12]  516 	mov	r7,#0x00
      00016E                        517 00105$:
                                    518 ;	main.c:94: if(dat & 0x80) { SDA_HIGH(); } else { SDA_LOW(); }
      00016E 90 00 06         [24]  519 	mov	dptr,#_I2C_Write_Byte_dat_10000_18
      000171 E0               [24]  520 	movx	a,@dptr
      000172 30 E7 09         [24]  521 	jnb	acc.7,00102$
      000175 C0 07            [24]  522 	push	ar7
      000177 12 01 2E         [24]  523 	lcall	_SDA_HIGH
      00017A D0 07            [24]  524 	pop	ar7
      00017C 80 07            [24]  525 	sjmp	00103$
      00017E                        526 00102$:
      00017E C0 07            [24]  527 	push	ar7
      000180 12 01 38         [24]  528 	lcall	_SDA_LOW
      000183 D0 07            [24]  529 	pop	ar7
      000185                        530 00103$:
                                    531 ;	main.c:95: I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW();
      000185 C0 07            [24]  532 	push	ar7
      000187 12 01 09         [24]  533 	lcall	_I2C_Delay
      00018A 12 01 1A         [24]  534 	lcall	_SCL_HIGH
      00018D 12 01 09         [24]  535 	lcall	_I2C_Delay
      000190 12 01 24         [24]  536 	lcall	_SCL_LOW
      000193 D0 07            [24]  537 	pop	ar7
                                    538 ;	main.c:96: dat <<= 1;
      000195 90 00 06         [24]  539 	mov	dptr,#_I2C_Write_Byte_dat_10000_18
      000198 E0               [24]  540 	movx	a,@dptr
      000199 25 E0            [12]  541 	add	a,acc
      00019B F0               [24]  542 	movx	@dptr,a
                                    543 ;	main.c:93: for(i = 0; i < 8; i++) {
      00019C 0F               [12]  544 	inc	r7
      00019D BF 08 00         [24]  545 	cjne	r7,#0x08,00129$
      0001A0                        546 00129$:
      0001A0 40 CC            [24]  547 	jc	00105$
                                    548 ;	main.c:98: SDA_HIGH(); I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW(); I2C_Delay();
      0001A2 12 01 2E         [24]  549 	lcall	_SDA_HIGH
      0001A5 12 01 09         [24]  550 	lcall	_I2C_Delay
      0001A8 12 01 1A         [24]  551 	lcall	_SCL_HIGH
      0001AB 12 01 09         [24]  552 	lcall	_I2C_Delay
      0001AE 12 01 24         [24]  553 	lcall	_SCL_LOW
                                    554 ;	main.c:99: }
      0001B1 02 01 09         [24]  555 	ljmp	_I2C_Delay
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'SSD1306_Command'
                                    558 ;------------------------------------------------------------
                                    559 ;cmd           Allocated with name '_SSD1306_Command_cmd_10000_24'
                                    560 ;------------------------------------------------------------
                                    561 ;	main.c:101: void SSD1306_Command(unsigned char cmd) { I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x00); I2C_Write_Byte(cmd); I2C_Stop(); }
                                    562 ;	-----------------------------------------
                                    563 ;	 function SSD1306_Command
                                    564 ;	-----------------------------------------
      0001B4                        565 _SSD1306_Command:
      0001B4 E5 82            [12]  566 	mov	a,dpl
      0001B6 90 00 07         [24]  567 	mov	dptr,#_SSD1306_Command_cmd_10000_24
      0001B9 F0               [24]  568 	movx	@dptr,a
      0001BA 12 01 42         [24]  569 	lcall	_I2C_Start
      0001BD 75 82 78         [24]  570 	mov	dpl, #0x78
      0001C0 12 01 66         [24]  571 	lcall	_I2C_Write_Byte
      0001C3 75 82 00         [24]  572 	mov	dpl, #0x00
      0001C6 12 01 66         [24]  573 	lcall	_I2C_Write_Byte
      0001C9 90 00 07         [24]  574 	mov	dptr,#_SSD1306_Command_cmd_10000_24
      0001CC E0               [24]  575 	movx	a,@dptr
      0001CD F5 82            [12]  576 	mov	dpl,a
      0001CF 12 01 66         [24]  577 	lcall	_I2C_Write_Byte
      0001D2 02 01 57         [24]  578 	ljmp	_I2C_Stop
                                    579 ;------------------------------------------------------------
                                    580 ;Allocation info for local variables in function 'SSD1306_Init'
                                    581 ;------------------------------------------------------------
                                    582 ;	main.c:103: void SSD1306_Init(void) {
                                    583 ;	-----------------------------------------
                                    584 ;	 function SSD1306_Init
                                    585 ;	-----------------------------------------
      0001D5                        586 _SSD1306_Init:
                                    587 ;	main.c:104: Delay_ms(250);
      0001D5 90 00 FA         [24]  588 	mov	dptr,#0x00fa
      0001D8 12 00 B0         [24]  589 	lcall	_Delay_ms
                                    590 ;	main.c:105: SSD1306_Command(0xAE); SSD1306_Command(0x20); SSD1306_Command(0x02);
      0001DB 75 82 AE         [24]  591 	mov	dpl, #0xae
      0001DE 12 01 B4         [24]  592 	lcall	_SSD1306_Command
      0001E1 75 82 20         [24]  593 	mov	dpl, #0x20
      0001E4 12 01 B4         [24]  594 	lcall	_SSD1306_Command
      0001E7 75 82 02         [24]  595 	mov	dpl, #0x02
      0001EA 12 01 B4         [24]  596 	lcall	_SSD1306_Command
                                    597 ;	main.c:106: SSD1306_Command(0xB0); SSD1306_Command(0x00); SSD1306_Command(0x10);
      0001ED 75 82 B0         [24]  598 	mov	dpl, #0xb0
      0001F0 12 01 B4         [24]  599 	lcall	_SSD1306_Command
      0001F3 75 82 00         [24]  600 	mov	dpl, #0x00
      0001F6 12 01 B4         [24]  601 	lcall	_SSD1306_Command
      0001F9 75 82 10         [24]  602 	mov	dpl, #0x10
      0001FC 12 01 B4         [24]  603 	lcall	_SSD1306_Command
                                    604 ;	main.c:107: SSD1306_Command(0x40); SSD1306_Command(0x81); SSD1306_Command(0x7F);
      0001FF 75 82 40         [24]  605 	mov	dpl, #0x40
      000202 12 01 B4         [24]  606 	lcall	_SSD1306_Command
      000205 75 82 81         [24]  607 	mov	dpl, #0x81
      000208 12 01 B4         [24]  608 	lcall	_SSD1306_Command
      00020B 75 82 7F         [24]  609 	mov	dpl, #0x7f
      00020E 12 01 B4         [24]  610 	lcall	_SSD1306_Command
                                    611 ;	main.c:108: SSD1306_Command(0xA1); SSD1306_Command(0xC8); SSD1306_Command(0xA6);
      000211 75 82 A1         [24]  612 	mov	dpl, #0xa1
      000214 12 01 B4         [24]  613 	lcall	_SSD1306_Command
      000217 75 82 C8         [24]  614 	mov	dpl, #0xc8
      00021A 12 01 B4         [24]  615 	lcall	_SSD1306_Command
      00021D 75 82 A6         [24]  616 	mov	dpl, #0xa6
      000220 12 01 B4         [24]  617 	lcall	_SSD1306_Command
                                    618 ;	main.c:109: SSD1306_Command(0xA8); SSD1306_Command(0x3F); SSD1306_Command(0xD3); SSD1306_Command(0x00);
      000223 75 82 A8         [24]  619 	mov	dpl, #0xa8
      000226 12 01 B4         [24]  620 	lcall	_SSD1306_Command
      000229 75 82 3F         [24]  621 	mov	dpl, #0x3f
      00022C 12 01 B4         [24]  622 	lcall	_SSD1306_Command
      00022F 75 82 D3         [24]  623 	mov	dpl, #0xd3
      000232 12 01 B4         [24]  624 	lcall	_SSD1306_Command
      000235 75 82 00         [24]  625 	mov	dpl, #0x00
      000238 12 01 B4         [24]  626 	lcall	_SSD1306_Command
                                    627 ;	main.c:110: SSD1306_Command(0xD5); SSD1306_Command(0x80); SSD1306_Command(0xD9); SSD1306_Command(0x22);
      00023B 75 82 D5         [24]  628 	mov	dpl, #0xd5
      00023E 12 01 B4         [24]  629 	lcall	_SSD1306_Command
      000241 75 82 80         [24]  630 	mov	dpl, #0x80
      000244 12 01 B4         [24]  631 	lcall	_SSD1306_Command
      000247 75 82 D9         [24]  632 	mov	dpl, #0xd9
      00024A 12 01 B4         [24]  633 	lcall	_SSD1306_Command
      00024D 75 82 22         [24]  634 	mov	dpl, #0x22
      000250 12 01 B4         [24]  635 	lcall	_SSD1306_Command
                                    636 ;	main.c:111: SSD1306_Command(0xDA); SSD1306_Command(0x12); SSD1306_Command(0xDB); SSD1306_Command(0x20);
      000253 75 82 DA         [24]  637 	mov	dpl, #0xda
      000256 12 01 B4         [24]  638 	lcall	_SSD1306_Command
      000259 75 82 12         [24]  639 	mov	dpl, #0x12
      00025C 12 01 B4         [24]  640 	lcall	_SSD1306_Command
      00025F 75 82 DB         [24]  641 	mov	dpl, #0xdb
      000262 12 01 B4         [24]  642 	lcall	_SSD1306_Command
      000265 75 82 20         [24]  643 	mov	dpl, #0x20
      000268 12 01 B4         [24]  644 	lcall	_SSD1306_Command
                                    645 ;	main.c:112: SSD1306_Command(0x8D); SSD1306_Command(0x14); SSD1306_Command(0xA4); SSD1306_Command(0xAF);
      00026B 75 82 8D         [24]  646 	mov	dpl, #0x8d
      00026E 12 01 B4         [24]  647 	lcall	_SSD1306_Command
      000271 75 82 14         [24]  648 	mov	dpl, #0x14
      000274 12 01 B4         [24]  649 	lcall	_SSD1306_Command
      000277 75 82 A4         [24]  650 	mov	dpl, #0xa4
      00027A 12 01 B4         [24]  651 	lcall	_SSD1306_Command
      00027D 75 82 AF         [24]  652 	mov	dpl, #0xaf
      000280 12 01 B4         [24]  653 	lcall	_SSD1306_Command
                                    654 ;	main.c:113: Delay_ms(150);
      000283 90 00 96         [24]  655 	mov	dptr,#0x0096
                                    656 ;	main.c:114: }
      000286 02 00 B0         [24]  657 	ljmp	_Delay_ms
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'SSD1306_Clear'
                                    660 ;------------------------------------------------------------
                                    661 ;m             Allocated with name '_SSD1306_Clear_m_10000_29'
                                    662 ;n             Allocated with name '_SSD1306_Clear_n_10000_29'
                                    663 ;------------------------------------------------------------
                                    664 ;	main.c:116: void SSD1306_Clear(void) {
                                    665 ;	-----------------------------------------
                                    666 ;	 function SSD1306_Clear
                                    667 ;	-----------------------------------------
      000289                        668 _SSD1306_Clear:
                                    669 ;	main.c:118: for(m = 0; m < 8; m++) {
      000289 7F 00            [12]  670 	mov	r7,#0x00
      00028B                        671 00105$:
                                    672 ;	main.c:119: SSD1306_Command(0xB0 + m); SSD1306_Command(0x00); SSD1306_Command(0x10);
      00028B 8F 06            [24]  673 	mov	ar6,r7
      00028D 74 B0            [12]  674 	mov	a,#0xb0
      00028F 2E               [12]  675 	add	a, r6
      000290 F5 82            [12]  676 	mov	dpl,a
      000292 C0 07            [24]  677 	push	ar7
      000294 12 01 B4         [24]  678 	lcall	_SSD1306_Command
      000297 75 82 00         [24]  679 	mov	dpl, #0x00
      00029A 12 01 B4         [24]  680 	lcall	_SSD1306_Command
      00029D 75 82 10         [24]  681 	mov	dpl, #0x10
      0002A0 12 01 B4         [24]  682 	lcall	_SSD1306_Command
                                    683 ;	main.c:120: I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
      0002A3 12 01 42         [24]  684 	lcall	_I2C_Start
      0002A6 75 82 78         [24]  685 	mov	dpl, #0x78
      0002A9 12 01 66         [24]  686 	lcall	_I2C_Write_Byte
      0002AC 75 82 40         [24]  687 	mov	dpl, #0x40
      0002AF 12 01 66         [24]  688 	lcall	_I2C_Write_Byte
      0002B2 D0 07            [24]  689 	pop	ar7
                                    690 ;	main.c:121: for(n = 0; n < 128; n++) { I2C_Write_Byte(0x00); }
      0002B4 7E 00            [12]  691 	mov	r6,#0x00
      0002B6                        692 00103$:
      0002B6 75 82 00         [24]  693 	mov	dpl, #0x00
      0002B9 C0 07            [24]  694 	push	ar7
      0002BB C0 06            [24]  695 	push	ar6
      0002BD 12 01 66         [24]  696 	lcall	_I2C_Write_Byte
      0002C0 D0 06            [24]  697 	pop	ar6
      0002C2 D0 07            [24]  698 	pop	ar7
      0002C4 0E               [12]  699 	inc	r6
      0002C5 BE 80 00         [24]  700 	cjne	r6,#0x80,00129$
      0002C8                        701 00129$:
      0002C8 40 EC            [24]  702 	jc	00103$
                                    703 ;	main.c:122: I2C_Stop();
      0002CA C0 07            [24]  704 	push	ar7
      0002CC 12 01 57         [24]  705 	lcall	_I2C_Stop
      0002CF D0 07            [24]  706 	pop	ar7
                                    707 ;	main.c:118: for(m = 0; m < 8; m++) {
      0002D1 0F               [12]  708 	inc	r7
      0002D2 BF 08 00         [24]  709 	cjne	r7,#0x08,00131$
      0002D5                        710 00131$:
      0002D5 40 B4            [24]  711 	jc	00105$
                                    712 ;	main.c:124: }
      0002D7 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'SSD1306_SetCursor'
                                    716 ;------------------------------------------------------------
                                    717 ;x             Allocated with name '_SSD1306_SetCursor_PARM_2'
                                    718 ;page          Allocated with name '_SSD1306_SetCursor_page_10000_34'
                                    719 ;------------------------------------------------------------
                                    720 ;	main.c:126: void SSD1306_SetCursor(uint8_t page, uint8_t x) {
                                    721 ;	-----------------------------------------
                                    722 ;	 function SSD1306_SetCursor
                                    723 ;	-----------------------------------------
      0002D8                        724 _SSD1306_SetCursor:
      0002D8 E5 82            [12]  725 	mov	a,dpl
      0002DA 90 00 09         [24]  726 	mov	dptr,#_SSD1306_SetCursor_page_10000_34
      0002DD F0               [24]  727 	movx	@dptr,a
                                    728 ;	main.c:127: SSD1306_Command(0xB0 + page);
      0002DE E0               [24]  729 	movx	a,@dptr
      0002DF 24 B0            [12]  730 	add	a,#0xb0
      0002E1 F5 82            [12]  731 	mov	dpl,a
      0002E3 12 01 B4         [24]  732 	lcall	_SSD1306_Command
                                    733 ;	main.c:128: SSD1306_Command(((x & 0xF0) >> 4) | 0x10);
      0002E6 90 00 08         [24]  734 	mov	dptr,#_SSD1306_SetCursor_PARM_2
      0002E9 E0               [24]  735 	movx	a,@dptr
      0002EA FF               [12]  736 	mov	r7,a
      0002EB FD               [12]  737 	mov	r5,a
      0002EC 53 05 F0         [24]  738 	anl	ar5,#0xf0
      0002EF E4               [12]  739 	clr	a
      0002F0 CD               [12]  740 	xch	a,r5
      0002F1 C4               [12]  741 	swap	a
      0002F2 54 0F            [12]  742 	anl	a,#0x0f
      0002F4 6D               [12]  743 	xrl	a,r5
      0002F5 CD               [12]  744 	xch	a,r5
      0002F6 54 0F            [12]  745 	anl	a,#0x0f
      0002F8 CD               [12]  746 	xch	a,r5
      0002F9 6D               [12]  747 	xrl	a,r5
      0002FA CD               [12]  748 	xch	a,r5
      0002FB 30 E3 02         [24]  749 	jnb	acc.3,00103$
      0002FE 44 F0            [12]  750 	orl	a,#0xfffffff0
      000300                        751 00103$:
      000300 43 05 10         [24]  752 	orl	ar5,#0x10
      000303 8D 82            [24]  753 	mov	dpl, r5
      000305 C0 07            [24]  754 	push	ar7
      000307 12 01 B4         [24]  755 	lcall	_SSD1306_Command
      00030A D0 07            [24]  756 	pop	ar7
                                    757 ;	main.c:129: SSD1306_Command(x & 0x0F);
      00030C 53 07 0F         [24]  758 	anl	ar7,#0x0f
      00030F 8F 82            [24]  759 	mov	dpl, r7
                                    760 ;	main.c:130: }
      000311 02 01 B4         [24]  761 	ljmp	_SSD1306_Command
                                    762 ;------------------------------------------------------------
                                    763 ;Allocation info for local variables in function 'SSD1306_WriteChar'
                                    764 ;------------------------------------------------------------
                                    765 ;x             Allocated with name '_SSD1306_WriteChar_PARM_2'
                                    766 ;c             Allocated with name '_SSD1306_WriteChar_PARM_3'
                                    767 ;page          Allocated with name '_SSD1306_WriteChar_page_10000_36'
                                    768 ;i             Allocated with name '_SSD1306_WriteChar_i_10000_37'
                                    769 ;idx           Allocated with name '_SSD1306_WriteChar_idx_10000_37'
                                    770 ;------------------------------------------------------------
                                    771 ;	main.c:132: void SSD1306_WriteChar(uint8_t page, uint8_t x, unsigned char c) {
                                    772 ;	-----------------------------------------
                                    773 ;	 function SSD1306_WriteChar
                                    774 ;	-----------------------------------------
      000314                        775 _SSD1306_WriteChar:
      000314 E5 82            [12]  776 	mov	a,dpl
      000316 90 00 0C         [24]  777 	mov	dptr,#_SSD1306_WriteChar_page_10000_36
      000319 F0               [24]  778 	movx	@dptr,a
                                    779 ;	main.c:134: if (c >= '0' && c <= '9') idx = c - '0';
      00031A 90 00 0B         [24]  780 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      00031D E0               [24]  781 	movx	a,@dptr
      00031E FF               [12]  782 	mov	r7,a
      00031F BF 30 00         [24]  783 	cjne	r7,#0x30,00221$
      000322                        784 00221$:
      000322 40 10            [24]  785 	jc	00128$
      000324 EF               [12]  786 	mov	a,r7
      000325 24 C6            [12]  787 	add	a,#0xff - 0x39
      000327 40 0B            [24]  788 	jc	00128$
      000329 8F 06            [24]  789 	mov	ar6,r7
      00032B EE               [12]  790 	mov	a,r6
      00032C 24 D0            [12]  791 	add	a,#0xd0
      00032E 90 00 0D         [24]  792 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000331 F0               [24]  793 	movx	@dptr,a
      000332 80 70            [24]  794 	sjmp	00129$
      000334                        795 00128$:
                                    796 ;	main.c:135: else if (c == '-') idx = 10;
      000334 BF 2D 08         [24]  797 	cjne	r7,#0x2d,00125$
      000337 90 00 0D         [24]  798 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      00033A 74 0A            [12]  799 	mov	a,#0x0a
      00033C F0               [24]  800 	movx	@dptr,a
      00033D 80 65            [24]  801 	sjmp	00129$
      00033F                        802 00125$:
                                    803 ;	main.c:136: else if (c == ' ') idx = 11;
      00033F BF 20 08         [24]  804 	cjne	r7,#0x20,00122$
      000342 90 00 0D         [24]  805 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000345 74 0B            [12]  806 	mov	a,#0x0b
      000347 F0               [24]  807 	movx	@dptr,a
      000348 80 5A            [24]  808 	sjmp	00129$
      00034A                        809 00122$:
                                    810 ;	main.c:137: else if (c == '.') idx = 12;
      00034A BF 2E 08         [24]  811 	cjne	r7,#0x2e,00119$
      00034D 90 00 0D         [24]  812 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000350 74 0C            [12]  813 	mov	a,#0x0c
      000352 F0               [24]  814 	movx	@dptr,a
      000353 80 4F            [24]  815 	sjmp	00129$
      000355                        816 00119$:
                                    817 ;	main.c:138: else if (c == ':') idx = 13;
      000355 BF 3A 08         [24]  818 	cjne	r7,#0x3a,00116$
      000358 90 00 0D         [24]  819 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      00035B 74 0D            [12]  820 	mov	a,#0x0d
      00035D F0               [24]  821 	movx	@dptr,a
      00035E 80 44            [24]  822 	sjmp	00129$
      000360                        823 00116$:
                                    824 ;	main.c:139: else if (c == '*') idx = 14;
      000360 BF 2A 08         [24]  825 	cjne	r7,#0x2a,00113$
      000363 90 00 0D         [24]  826 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000366 74 0E            [12]  827 	mov	a,#0x0e
      000368 F0               [24]  828 	movx	@dptr,a
      000369 80 39            [24]  829 	sjmp	00129$
      00036B                        830 00113$:
                                    831 ;	main.c:140: else if (c == '=') idx = 15;
      00036B BF 3D 08         [24]  832 	cjne	r7,#0x3d,00110$
      00036E 90 00 0D         [24]  833 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000371 74 0F            [12]  834 	mov	a,#0x0f
      000373 F0               [24]  835 	movx	@dptr,a
      000374 80 2E            [24]  836 	sjmp	00129$
      000376                        837 00110$:
                                    838 ;	main.c:141: else if (c >= 'A' && c <= 'Z') { idx = c - 'A' + 16; }
      000376 BF 41 00         [24]  839 	cjne	r7,#0x41,00236$
      000379                        840 00236$:
      000379 40 10            [24]  841 	jc	00106$
      00037B EF               [12]  842 	mov	a,r7
      00037C 24 A5            [12]  843 	add	a,#0xff - 0x5a
      00037E 40 0B            [24]  844 	jc	00106$
      000380 8F 06            [24]  845 	mov	ar6,r7
      000382 90 00 0D         [24]  846 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000385 74 CF            [12]  847 	mov	a,#0xcf
      000387 2E               [12]  848 	add	a, r6
      000388 F0               [24]  849 	movx	@dptr,a
      000389 80 19            [24]  850 	sjmp	00129$
      00038B                        851 00106$:
                                    852 ;	main.c:142: else if (c >= 'a' && c <= 'z') { idx = c - 'a' + 16; }
      00038B BF 61 00         [24]  853 	cjne	r7,#0x61,00239$
      00038E                        854 00239$:
      00038E 40 0E            [24]  855 	jc	00102$
      000390 EF               [12]  856 	mov	a,r7
      000391 24 85            [12]  857 	add	a,#0xff - 0x7a
      000393 40 09            [24]  858 	jc	00102$
      000395 90 00 0D         [24]  859 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      000398 74 AF            [12]  860 	mov	a,#0xaf
      00039A 2F               [12]  861 	add	a, r7
      00039B F0               [24]  862 	movx	@dptr,a
      00039C 80 06            [24]  863 	sjmp	00129$
      00039E                        864 00102$:
                                    865 ;	main.c:143: else idx = 11;
      00039E 90 00 0D         [24]  866 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      0003A1 74 0B            [12]  867 	mov	a,#0x0b
      0003A3 F0               [24]  868 	movx	@dptr,a
      0003A4                        869 00129$:
                                    870 ;	main.c:145: SSD1306_SetCursor(page, x);
      0003A4 90 00 0C         [24]  871 	mov	dptr,#_SSD1306_WriteChar_page_10000_36
      0003A7 E0               [24]  872 	movx	a,@dptr
      0003A8 FF               [12]  873 	mov	r7,a
      0003A9 90 00 0A         [24]  874 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0003AC E0               [24]  875 	movx	a,@dptr
      0003AD 90 00 08         [24]  876 	mov	dptr,#_SSD1306_SetCursor_PARM_2
      0003B0 F0               [24]  877 	movx	@dptr,a
      0003B1 8F 82            [24]  878 	mov	dpl, r7
      0003B3 12 02 D8         [24]  879 	lcall	_SSD1306_SetCursor
                                    880 ;	main.c:146: I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
      0003B6 12 01 42         [24]  881 	lcall	_I2C_Start
      0003B9 75 82 78         [24]  882 	mov	dpl, #0x78
      0003BC 12 01 66         [24]  883 	lcall	_I2C_Write_Byte
      0003BF 75 82 40         [24]  884 	mov	dpl, #0x40
      0003C2 12 01 66         [24]  885 	lcall	_I2C_Write_Byte
                                    886 ;	main.c:147: for(i = 0; i < 8; i++) { I2C_Write_Byte(Font_8x8[idx][i]); }
      0003C5 90 00 0D         [24]  887 	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
      0003C8 E0               [24]  888 	movx	a,@dptr
      0003C9 75 F0 08         [24]  889 	mov	b,#0x08
      0003CC A4               [48]  890 	mul	ab
      0003CD 24 06            [12]  891 	add	a, #_Font_8x8
      0003CF FE               [12]  892 	mov	r6,a
      0003D0 74 10            [12]  893 	mov	a,#(_Font_8x8 >> 8)
      0003D2 35 F0            [12]  894 	addc	a, b
      0003D4 FF               [12]  895 	mov	r7,a
      0003D5 7D 00            [12]  896 	mov	r5,#0x00
      0003D7                        897 00132$:
      0003D7 ED               [12]  898 	mov	a,r5
      0003D8 2E               [12]  899 	add	a, r6
      0003D9 F5 82            [12]  900 	mov	dpl,a
      0003DB E4               [12]  901 	clr	a
      0003DC 3F               [12]  902 	addc	a, r7
      0003DD F5 83            [12]  903 	mov	dph,a
      0003DF E4               [12]  904 	clr	a
      0003E0 93               [24]  905 	movc	a,@a+dptr
      0003E1 F5 82            [12]  906 	mov	dpl,a
      0003E3 C0 07            [24]  907 	push	ar7
      0003E5 C0 06            [24]  908 	push	ar6
      0003E7 C0 05            [24]  909 	push	ar5
      0003E9 12 01 66         [24]  910 	lcall	_I2C_Write_Byte
      0003EC D0 05            [24]  911 	pop	ar5
      0003EE D0 06            [24]  912 	pop	ar6
      0003F0 D0 07            [24]  913 	pop	ar7
      0003F2 0D               [12]  914 	inc	r5
      0003F3 BD 08 00         [24]  915 	cjne	r5,#0x08,00242$
      0003F6                        916 00242$:
      0003F6 40 DF            [24]  917 	jc	00132$
                                    918 ;	main.c:148: I2C_Stop();
                                    919 ;	main.c:149: }
      0003F8 02 01 57         [24]  920 	ljmp	_I2C_Stop
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function 'SSD1306_PrintString'
                                    923 ;------------------------------------------------------------
                                    924 ;x             Allocated with name '_SSD1306_PrintString_PARM_2'
                                    925 ;str           Allocated with name '_SSD1306_PrintString_PARM_3'
                                    926 ;page          Allocated with name '_SSD1306_PrintString_page_10000_42'
                                    927 ;------------------------------------------------------------
                                    928 ;	main.c:151: void SSD1306_PrintString(uint8_t page, uint8_t x, char *str) {
                                    929 ;	-----------------------------------------
                                    930 ;	 function SSD1306_PrintString
                                    931 ;	-----------------------------------------
      0003FB                        932 _SSD1306_PrintString:
      0003FB E5 82            [12]  933 	mov	a,dpl
      0003FD 90 00 12         [24]  934 	mov	dptr,#_SSD1306_PrintString_page_10000_42
      000400 F0               [24]  935 	movx	@dptr,a
                                    936 ;	main.c:152: while (*str) { SSD1306_WriteChar(page, x, (unsigned char)*str); x += 8; str++; }
      000401 E0               [24]  937 	movx	a,@dptr
      000402 FF               [12]  938 	mov	r7,a
      000403 90 00 0F         [24]  939 	mov	dptr,#_SSD1306_PrintString_PARM_3
      000406 E0               [24]  940 	movx	a,@dptr
      000407 FC               [12]  941 	mov	r4,a
      000408 A3               [24]  942 	inc	dptr
      000409 E0               [24]  943 	movx	a,@dptr
      00040A FD               [12]  944 	mov	r5,a
      00040B A3               [24]  945 	inc	dptr
      00040C E0               [24]  946 	movx	a,@dptr
      00040D FE               [12]  947 	mov	r6,a
      00040E                        948 00101$:
      00040E 8C 82            [24]  949 	mov	dpl,r4
      000410 8D 83            [24]  950 	mov	dph,r5
      000412 8E F0            [24]  951 	mov	b,r6
      000414 12 0F E6         [24]  952 	lcall	__gptrget
      000417 FB               [12]  953 	mov	r3,a
      000418 60 35            [24]  954 	jz	00104$
      00041A 90 00 0E         [24]  955 	mov	dptr,#_SSD1306_PrintString_PARM_2
      00041D E0               [24]  956 	movx	a,@dptr
      00041E FA               [12]  957 	mov	r2,a
      00041F 90 00 0A         [24]  958 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      000422 F0               [24]  959 	movx	@dptr,a
      000423 90 00 0B         [24]  960 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000426 EB               [12]  961 	mov	a,r3
      000427 F0               [24]  962 	movx	@dptr,a
      000428 8F 82            [24]  963 	mov	dpl, r7
      00042A C0 07            [24]  964 	push	ar7
      00042C C0 06            [24]  965 	push	ar6
      00042E C0 05            [24]  966 	push	ar5
      000430 C0 04            [24]  967 	push	ar4
      000432 C0 02            [24]  968 	push	ar2
      000434 12 03 14         [24]  969 	lcall	_SSD1306_WriteChar
      000437 D0 02            [24]  970 	pop	ar2
      000439 D0 04            [24]  971 	pop	ar4
      00043B D0 05            [24]  972 	pop	ar5
      00043D D0 06            [24]  973 	pop	ar6
      00043F D0 07            [24]  974 	pop	ar7
      000441 90 00 0E         [24]  975 	mov	dptr,#_SSD1306_PrintString_PARM_2
      000444 74 08            [12]  976 	mov	a,#0x08
      000446 2A               [12]  977 	add	a, r2
      000447 F0               [24]  978 	movx	@dptr,a
      000448 0C               [12]  979 	inc	r4
      000449 BC 00 C2         [24]  980 	cjne	r4,#0x00,00101$
      00044C 0D               [12]  981 	inc	r5
      00044D 80 BF            [24]  982 	sjmp	00101$
      00044F                        983 00104$:
                                    984 ;	main.c:153: }
      00044F 22               [24]  985 	ret
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'SSD1306_DisplayResult'
                                    988 ;------------------------------------------------------------
                                    989 ;sloc0         Allocated with name '_SSD1306_DisplayResult_sloc0_1_0'
                                    990 ;sloc1         Allocated with name '_SSD1306_DisplayResult_sloc1_1_0'
                                    991 ;sloc2         Allocated with name '_SSD1306_DisplayResult_sloc2_1_0'
                                    992 ;x             Allocated with name '_SSD1306_DisplayResult_PARM_2'
                                    993 ;val           Allocated with name '_SSD1306_DisplayResult_PARM_3'
                                    994 ;is_microfarads Allocated with name '_SSD1306_DisplayResult_PARM_4'
                                    995 ;page          Allocated with name '_SSD1306_DisplayResult_page_10000_45'
                                    996 ;------------------------------------------------------------
                                    997 ;	main.c:155: void SSD1306_DisplayResult(uint8_t page, uint8_t x, uint32_t val, uint8_t is_microfarads) {
                                    998 ;	-----------------------------------------
                                    999 ;	 function SSD1306_DisplayResult
                                   1000 ;	-----------------------------------------
      000450                       1001 _SSD1306_DisplayResult:
      000450 E5 82            [12] 1002 	mov	a,dpl
      000452 90 00 19         [24] 1003 	mov	dptr,#_SSD1306_DisplayResult_page_10000_45
      000455 F0               [24] 1004 	movx	@dptr,a
                                   1005 ;	main.c:156: SSD1306_PrintString(page, x, "CX: ");
      000456 E0               [24] 1006 	movx	a,@dptr
      000457 FF               [12] 1007 	mov	r7,a
      000458 90 00 13         [24] 1008 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      00045B E0               [24] 1009 	movx	a,@dptr
      00045C FE               [12] 1010 	mov	r6,a
      00045D 90 00 0E         [24] 1011 	mov	dptr,#_SSD1306_PrintString_PARM_2
      000460 F0               [24] 1012 	movx	@dptr,a
      000461 90 00 0F         [24] 1013 	mov	dptr,#_SSD1306_PrintString_PARM_3
      000464 74 56            [12] 1014 	mov	a,#___str_0
      000466 F0               [24] 1015 	movx	@dptr,a
      000467 74 11            [12] 1016 	mov	a,#(___str_0 >> 8)
      000469 A3               [24] 1017 	inc	dptr
      00046A F0               [24] 1018 	movx	@dptr,a
      00046B 74 80            [12] 1019 	mov	a,#0x80
      00046D A3               [24] 1020 	inc	dptr
      00046E F0               [24] 1021 	movx	@dptr,a
      00046F 8F 82            [24] 1022 	mov	dpl, r7
      000471 C0 07            [24] 1023 	push	ar7
      000473 C0 06            [24] 1024 	push	ar6
      000475 12 03 FB         [24] 1025 	lcall	_SSD1306_PrintString
      000478 D0 06            [24] 1026 	pop	ar6
      00047A D0 07            [24] 1027 	pop	ar7
                                   1028 ;	main.c:157: x += 32;
      00047C 90 00 13         [24] 1029 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      00047F 74 20            [12] 1030 	mov	a,#0x20
      000481 2E               [12] 1031 	add	a, r6
      000482 F0               [24] 1032 	movx	@dptr,a
                                   1033 ;	main.c:159: if (!is_microfarads) {
      000483 90 00 18         [24] 1034 	mov	dptr,#_SSD1306_DisplayResult_PARM_4
      000486 E0               [24] 1035 	movx	a,@dptr
      000487 60 03            [24] 1036 	jz	00120$
      000489 02 06 A8         [24] 1037 	ljmp	00104$
      00048C                       1038 00120$:
                                   1039 ;	main.c:160: if (val <= 139) {
      00048C 90 00 14         [24] 1040 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      00048F E0               [24] 1041 	movx	a,@dptr
      000490 FB               [12] 1042 	mov	r3,a
      000491 A3               [24] 1043 	inc	dptr
      000492 E0               [24] 1044 	movx	a,@dptr
      000493 FC               [12] 1045 	mov	r4,a
      000494 A3               [24] 1046 	inc	dptr
      000495 E0               [24] 1047 	movx	a,@dptr
      000496 FD               [12] 1048 	mov	r5,a
      000497 A3               [24] 1049 	inc	dptr
      000498 E0               [24] 1050 	movx	a,@dptr
      000499 FE               [12] 1051 	mov	r6,a
      00049A C3               [12] 1052 	clr	c
      00049B 74 8B            [12] 1053 	mov	a,#0x8b
      00049D 9B               [12] 1054 	subb	a,r3
      00049E E4               [12] 1055 	clr	a
      00049F 9C               [12] 1056 	subb	a,r4
      0004A0 E4               [12] 1057 	clr	a
      0004A1 9D               [12] 1058 	subb	a,r5
      0004A2 E4               [12] 1059 	clr	a
      0004A3 9E               [12] 1060 	subb	a,r6
      0004A4 40 1B            [24] 1061 	jc	00102$
                                   1062 ;	main.c:161: SSD1306_PrintString(page, x, "  0.0 NF");
      0004A6 90 00 13         [24] 1063 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0004A9 E0               [24] 1064 	movx	a,@dptr
      0004AA 90 00 0E         [24] 1065 	mov	dptr,#_SSD1306_PrintString_PARM_2
      0004AD F0               [24] 1066 	movx	@dptr,a
      0004AE 90 00 0F         [24] 1067 	mov	dptr,#_SSD1306_PrintString_PARM_3
      0004B1 74 5B            [12] 1068 	mov	a,#___str_1
      0004B3 F0               [24] 1069 	movx	@dptr,a
      0004B4 74 11            [12] 1070 	mov	a,#(___str_1 >> 8)
      0004B6 A3               [24] 1071 	inc	dptr
      0004B7 F0               [24] 1072 	movx	@dptr,a
      0004B8 74 80            [12] 1073 	mov	a,#0x80
      0004BA A3               [24] 1074 	inc	dptr
      0004BB F0               [24] 1075 	movx	@dptr,a
      0004BC 8F 82            [24] 1076 	mov	dpl, r7
                                   1077 ;	main.c:162: return;
      0004BE 02 03 FB         [24] 1078 	ljmp	_SSD1306_PrintString
      0004C1                       1079 00102$:
                                   1080 ;	main.c:164: val -= 139;
      0004C1 EB               [12] 1081 	mov	a,r3
      0004C2 24 75            [12] 1082 	add	a,#0x75
      0004C4 FB               [12] 1083 	mov	r3,a
      0004C5 EC               [12] 1084 	mov	a,r4
      0004C6 34 FF            [12] 1085 	addc	a,#0xff
      0004C8 FC               [12] 1086 	mov	r4,a
      0004C9 ED               [12] 1087 	mov	a,r5
      0004CA 34 FF            [12] 1088 	addc	a,#0xff
      0004CC FD               [12] 1089 	mov	r5,a
      0004CD EE               [12] 1090 	mov	a,r6
      0004CE 34 FF            [12] 1091 	addc	a,#0xff
      0004D0 FE               [12] 1092 	mov	r6,a
      0004D1 90 00 14         [24] 1093 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      0004D4 EB               [12] 1094 	mov	a,r3
      0004D5 F0               [24] 1095 	movx	@dptr,a
      0004D6 EC               [12] 1096 	mov	a,r4
      0004D7 A3               [24] 1097 	inc	dptr
      0004D8 F0               [24] 1098 	movx	@dptr,a
      0004D9 ED               [12] 1099 	mov	a,r5
      0004DA A3               [24] 1100 	inc	dptr
      0004DB F0               [24] 1101 	movx	@dptr,a
      0004DC EE               [12] 1102 	mov	a,r6
      0004DD A3               [24] 1103 	inc	dptr
      0004DE F0               [24] 1104 	movx	@dptr,a
                                   1105 ;	main.c:166: SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
      0004DF 90 00 13         [24] 1106 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0004E2 E0               [24] 1107 	movx	a,@dptr
      0004E3 F5 08            [12] 1108 	mov	_SSD1306_DisplayResult_sloc0_1_0,a
      0004E5 90 00 14         [24] 1109 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      0004E8 E0               [24] 1110 	movx	a,@dptr
      0004E9 F5 09            [12] 1111 	mov	_SSD1306_DisplayResult_sloc1_1_0,a
      0004EB A3               [24] 1112 	inc	dptr
      0004EC E0               [24] 1113 	movx	a,@dptr
      0004ED F5 0A            [12] 1114 	mov	(_SSD1306_DisplayResult_sloc1_1_0 + 1),a
      0004EF A3               [24] 1115 	inc	dptr
      0004F0 E0               [24] 1116 	movx	a,@dptr
      0004F1 F5 0B            [12] 1117 	mov	(_SSD1306_DisplayResult_sloc1_1_0 + 2),a
      0004F3 A3               [24] 1118 	inc	dptr
      0004F4 E0               [24] 1119 	movx	a,@dptr
      0004F5 F5 0C            [12] 1120 	mov	(_SSD1306_DisplayResult_sloc1_1_0 + 3),a
      0004F7 90 00 35         [24] 1121 	mov	dptr,#__divulong_PARM_2
      0004FA 74 E8            [12] 1122 	mov	a,#0xe8
      0004FC F0               [24] 1123 	movx	@dptr,a
      0004FD 74 03            [12] 1124 	mov	a,#0x03
      0004FF A3               [24] 1125 	inc	dptr
      000500 F0               [24] 1126 	movx	@dptr,a
      000501 E4               [12] 1127 	clr	a
      000502 A3               [24] 1128 	inc	dptr
      000503 F0               [24] 1129 	movx	@dptr,a
      000504 A3               [24] 1130 	inc	dptr
      000505 F0               [24] 1131 	movx	@dptr,a
      000506 85 09 82         [24] 1132 	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
      000509 85 0A 83         [24] 1133 	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
      00050C 85 0B F0         [24] 1134 	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
      00050F E5 0C            [12] 1135 	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
      000511 C0 07            [24] 1136 	push	ar7
      000513 12 0E 86         [24] 1137 	lcall	__divulong
      000516 A8 82            [24] 1138 	mov	r0, dpl
      000518 A9 83            [24] 1139 	mov	r1, dph
      00051A AD F0            [24] 1140 	mov	r5, b
      00051C FE               [12] 1141 	mov	r6, a
      00051D 90 00 2C         [24] 1142 	mov	dptr,#__modulong_PARM_2
      000520 74 0A            [12] 1143 	mov	a,#0x0a
      000522 F0               [24] 1144 	movx	@dptr,a
      000523 E4               [12] 1145 	clr	a
      000524 A3               [24] 1146 	inc	dptr
      000525 F0               [24] 1147 	movx	@dptr,a
      000526 A3               [24] 1148 	inc	dptr
      000527 F0               [24] 1149 	movx	@dptr,a
      000528 A3               [24] 1150 	inc	dptr
      000529 F0               [24] 1151 	movx	@dptr,a
      00052A 88 82            [24] 1152 	mov	dpl, r0
      00052C 89 83            [24] 1153 	mov	dph, r1
      00052E 8D F0            [24] 1154 	mov	b, r5
      000530 EE               [12] 1155 	mov	a, r6
      000531 12 0D 47         [24] 1156 	lcall	__modulong
      000534 AB 82            [24] 1157 	mov	r3, dpl
      000536 D0 07            [24] 1158 	pop	ar7
      000538 74 30            [12] 1159 	mov	a,#0x30
      00053A 2B               [12] 1160 	add	a, r3
      00053B FB               [12] 1161 	mov	r3,a
      00053C 90 00 0A         [24] 1162 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      00053F E5 08            [12] 1163 	mov	a,_SSD1306_DisplayResult_sloc0_1_0
      000541 F0               [24] 1164 	movx	@dptr,a
      000542 90 00 0B         [24] 1165 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000545 EB               [12] 1166 	mov	a,r3
      000546 F0               [24] 1167 	movx	@dptr,a
      000547 8F 82            [24] 1168 	mov	dpl, r7
      000549 C0 07            [24] 1169 	push	ar7
      00054B 12 03 14         [24] 1170 	lcall	_SSD1306_WriteChar
      00054E D0 07            [24] 1171 	pop	ar7
      000550 AE 08            [24] 1172 	mov	r6,_SSD1306_DisplayResult_sloc0_1_0
      000552 90 00 13         [24] 1173 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000555 74 08            [12] 1174 	mov	a,#0x08
      000557 2E               [12] 1175 	add	a, r6
      000558 F0               [24] 1176 	movx	@dptr,a
                                   1177 ;	main.c:167: SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
      000559 E0               [24] 1178 	movx	a,@dptr
      00055A FE               [12] 1179 	mov	r6,a
      00055B 90 00 35         [24] 1180 	mov	dptr,#__divulong_PARM_2
      00055E 74 64            [12] 1181 	mov	a,#0x64
      000560 F0               [24] 1182 	movx	@dptr,a
      000561 E4               [12] 1183 	clr	a
      000562 A3               [24] 1184 	inc	dptr
      000563 F0               [24] 1185 	movx	@dptr,a
      000564 A3               [24] 1186 	inc	dptr
      000565 F0               [24] 1187 	movx	@dptr,a
      000566 A3               [24] 1188 	inc	dptr
      000567 F0               [24] 1189 	movx	@dptr,a
      000568 85 09 82         [24] 1190 	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
      00056B 85 0A 83         [24] 1191 	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
      00056E 85 0B F0         [24] 1192 	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
      000571 E5 0C            [12] 1193 	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
      000573 C0 07            [24] 1194 	push	ar7
      000575 C0 06            [24] 1195 	push	ar6
      000577 12 0E 86         [24] 1196 	lcall	__divulong
      00057A AA 82            [24] 1197 	mov	r2, dpl
      00057C AB 83            [24] 1198 	mov	r3, dph
      00057E AC F0            [24] 1199 	mov	r4, b
      000580 FD               [12] 1200 	mov	r5, a
      000581 90 00 2C         [24] 1201 	mov	dptr,#__modulong_PARM_2
      000584 74 0A            [12] 1202 	mov	a,#0x0a
      000586 F0               [24] 1203 	movx	@dptr,a
      000587 E4               [12] 1204 	clr	a
      000588 A3               [24] 1205 	inc	dptr
      000589 F0               [24] 1206 	movx	@dptr,a
      00058A A3               [24] 1207 	inc	dptr
      00058B F0               [24] 1208 	movx	@dptr,a
      00058C A3               [24] 1209 	inc	dptr
      00058D F0               [24] 1210 	movx	@dptr,a
      00058E 8A 82            [24] 1211 	mov	dpl, r2
      000590 8B 83            [24] 1212 	mov	dph, r3
      000592 8C F0            [24] 1213 	mov	b, r4
      000594 ED               [12] 1214 	mov	a, r5
      000595 12 0D 47         [24] 1215 	lcall	__modulong
      000598 AA 82            [24] 1216 	mov	r2, dpl
      00059A D0 06            [24] 1217 	pop	ar6
      00059C D0 07            [24] 1218 	pop	ar7
      00059E 74 30            [12] 1219 	mov	a,#0x30
      0005A0 2A               [12] 1220 	add	a, r2
      0005A1 FA               [12] 1221 	mov	r2,a
      0005A2 90 00 0A         [24] 1222 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0005A5 EE               [12] 1223 	mov	a,r6
      0005A6 F0               [24] 1224 	movx	@dptr,a
      0005A7 90 00 0B         [24] 1225 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0005AA EA               [12] 1226 	mov	a,r2
      0005AB F0               [24] 1227 	movx	@dptr,a
      0005AC 8F 82            [24] 1228 	mov	dpl, r7
      0005AE C0 07            [24] 1229 	push	ar7
      0005B0 C0 06            [24] 1230 	push	ar6
      0005B2 12 03 14         [24] 1231 	lcall	_SSD1306_WriteChar
      0005B5 D0 06            [24] 1232 	pop	ar6
      0005B7 D0 07            [24] 1233 	pop	ar7
      0005B9 90 00 13         [24] 1234 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0005BC 74 08            [12] 1235 	mov	a,#0x08
      0005BE 2E               [12] 1236 	add	a, r6
      0005BF F0               [24] 1237 	movx	@dptr,a
                                   1238 ;	main.c:168: SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
      0005C0 E0               [24] 1239 	movx	a,@dptr
      0005C1 FE               [12] 1240 	mov	r6,a
      0005C2 90 00 35         [24] 1241 	mov	dptr,#__divulong_PARM_2
      0005C5 74 0A            [12] 1242 	mov	a,#0x0a
      0005C7 F0               [24] 1243 	movx	@dptr,a
      0005C8 E4               [12] 1244 	clr	a
      0005C9 A3               [24] 1245 	inc	dptr
      0005CA F0               [24] 1246 	movx	@dptr,a
      0005CB A3               [24] 1247 	inc	dptr
      0005CC F0               [24] 1248 	movx	@dptr,a
      0005CD A3               [24] 1249 	inc	dptr
      0005CE F0               [24] 1250 	movx	@dptr,a
      0005CF 85 09 82         [24] 1251 	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
      0005D2 85 0A 83         [24] 1252 	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
      0005D5 85 0B F0         [24] 1253 	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
      0005D8 E5 0C            [12] 1254 	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
      0005DA C0 07            [24] 1255 	push	ar7
      0005DC C0 06            [24] 1256 	push	ar6
      0005DE 12 0E 86         [24] 1257 	lcall	__divulong
      0005E1 AA 82            [24] 1258 	mov	r2, dpl
      0005E3 AB 83            [24] 1259 	mov	r3, dph
      0005E5 AC F0            [24] 1260 	mov	r4, b
      0005E7 FD               [12] 1261 	mov	r5, a
      0005E8 90 00 2C         [24] 1262 	mov	dptr,#__modulong_PARM_2
      0005EB 74 0A            [12] 1263 	mov	a,#0x0a
      0005ED F0               [24] 1264 	movx	@dptr,a
      0005EE E4               [12] 1265 	clr	a
      0005EF A3               [24] 1266 	inc	dptr
      0005F0 F0               [24] 1267 	movx	@dptr,a
      0005F1 A3               [24] 1268 	inc	dptr
      0005F2 F0               [24] 1269 	movx	@dptr,a
      0005F3 A3               [24] 1270 	inc	dptr
      0005F4 F0               [24] 1271 	movx	@dptr,a
      0005F5 8A 82            [24] 1272 	mov	dpl, r2
      0005F7 8B 83            [24] 1273 	mov	dph, r3
      0005F9 8C F0            [24] 1274 	mov	b, r4
      0005FB ED               [12] 1275 	mov	a, r5
      0005FC 12 0D 47         [24] 1276 	lcall	__modulong
      0005FF AA 82            [24] 1277 	mov	r2, dpl
      000601 D0 06            [24] 1278 	pop	ar6
      000603 D0 07            [24] 1279 	pop	ar7
      000605 74 30            [12] 1280 	mov	a,#0x30
      000607 2A               [12] 1281 	add	a, r2
      000608 FA               [12] 1282 	mov	r2,a
      000609 90 00 0A         [24] 1283 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      00060C EE               [12] 1284 	mov	a,r6
      00060D F0               [24] 1285 	movx	@dptr,a
      00060E 90 00 0B         [24] 1286 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000611 EA               [12] 1287 	mov	a,r2
      000612 F0               [24] 1288 	movx	@dptr,a
      000613 8F 82            [24] 1289 	mov	dpl, r7
      000615 C0 07            [24] 1290 	push	ar7
      000617 C0 06            [24] 1291 	push	ar6
      000619 12 03 14         [24] 1292 	lcall	_SSD1306_WriteChar
      00061C D0 06            [24] 1293 	pop	ar6
      00061E D0 07            [24] 1294 	pop	ar7
      000620 90 00 13         [24] 1295 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000623 74 08            [12] 1296 	mov	a,#0x08
      000625 2E               [12] 1297 	add	a, r6
      000626 F0               [24] 1298 	movx	@dptr,a
                                   1299 ;	main.c:169: SSD1306_WriteChar(page, x, '.');                       x += 8;
      000627 E0               [24] 1300 	movx	a,@dptr
      000628 FE               [12] 1301 	mov	r6,a
      000629 90 00 0A         [24] 1302 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      00062C F0               [24] 1303 	movx	@dptr,a
      00062D 90 00 0B         [24] 1304 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000630 74 2E            [12] 1305 	mov	a,#0x2e
      000632 F0               [24] 1306 	movx	@dptr,a
      000633 8F 82            [24] 1307 	mov	dpl, r7
      000635 C0 07            [24] 1308 	push	ar7
      000637 C0 06            [24] 1309 	push	ar6
      000639 12 03 14         [24] 1310 	lcall	_SSD1306_WriteChar
      00063C D0 06            [24] 1311 	pop	ar6
      00063E D0 07            [24] 1312 	pop	ar7
      000640 90 00 13         [24] 1313 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000643 74 08            [12] 1314 	mov	a,#0x08
      000645 2E               [12] 1315 	add	a, r6
      000646 F0               [24] 1316 	movx	@dptr,a
                                   1317 ;	main.c:170: SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
      000647 E0               [24] 1318 	movx	a,@dptr
      000648 FE               [12] 1319 	mov	r6,a
      000649 90 00 2C         [24] 1320 	mov	dptr,#__modulong_PARM_2
      00064C 74 0A            [12] 1321 	mov	a,#0x0a
      00064E F0               [24] 1322 	movx	@dptr,a
      00064F E4               [12] 1323 	clr	a
      000650 A3               [24] 1324 	inc	dptr
      000651 F0               [24] 1325 	movx	@dptr,a
      000652 A3               [24] 1326 	inc	dptr
      000653 F0               [24] 1327 	movx	@dptr,a
      000654 A3               [24] 1328 	inc	dptr
      000655 F0               [24] 1329 	movx	@dptr,a
      000656 85 09 82         [24] 1330 	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
      000659 85 0A 83         [24] 1331 	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
      00065C 85 0B F0         [24] 1332 	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
      00065F E5 0C            [12] 1333 	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
      000661 C0 07            [24] 1334 	push	ar7
      000663 C0 06            [24] 1335 	push	ar6
      000665 12 0D 47         [24] 1336 	lcall	__modulong
      000668 AA 82            [24] 1337 	mov	r2, dpl
      00066A D0 06            [24] 1338 	pop	ar6
      00066C D0 07            [24] 1339 	pop	ar7
      00066E 74 30            [12] 1340 	mov	a,#0x30
      000670 2A               [12] 1341 	add	a, r2
      000671 FA               [12] 1342 	mov	r2,a
      000672 90 00 0A         [24] 1343 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      000675 EE               [12] 1344 	mov	a,r6
      000676 F0               [24] 1345 	movx	@dptr,a
      000677 90 00 0B         [24] 1346 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      00067A EA               [12] 1347 	mov	a,r2
      00067B F0               [24] 1348 	movx	@dptr,a
      00067C 8F 82            [24] 1349 	mov	dpl, r7
      00067E C0 07            [24] 1350 	push	ar7
      000680 C0 06            [24] 1351 	push	ar6
      000682 12 03 14         [24] 1352 	lcall	_SSD1306_WriteChar
      000685 D0 06            [24] 1353 	pop	ar6
      000687 D0 07            [24] 1354 	pop	ar7
      000689 90 00 13         [24] 1355 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      00068C 74 08            [12] 1356 	mov	a,#0x08
      00068E 2E               [12] 1357 	add	a, r6
      00068F F0               [24] 1358 	movx	@dptr,a
                                   1359 ;	main.c:171: SSD1306_PrintString(page, x, " NF");
      000690 E0               [24] 1360 	movx	a,@dptr
      000691 90 00 0E         [24] 1361 	mov	dptr,#_SSD1306_PrintString_PARM_2
      000694 F0               [24] 1362 	movx	@dptr,a
      000695 90 00 0F         [24] 1363 	mov	dptr,#_SSD1306_PrintString_PARM_3
      000698 74 64            [12] 1364 	mov	a,#___str_2
      00069A F0               [24] 1365 	movx	@dptr,a
      00069B 74 11            [12] 1366 	mov	a,#(___str_2 >> 8)
      00069D A3               [24] 1367 	inc	dptr
      00069E F0               [24] 1368 	movx	@dptr,a
      00069F 74 80            [12] 1369 	mov	a,#0x80
      0006A1 A3               [24] 1370 	inc	dptr
      0006A2 F0               [24] 1371 	movx	@dptr,a
      0006A3 8F 82            [24] 1372 	mov	dpl, r7
      0006A5 02 03 FB         [24] 1373 	ljmp	_SSD1306_PrintString
      0006A8                       1374 00104$:
                                   1375 ;	main.c:174: SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
      0006A8 90 00 13         [24] 1376 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0006AB E0               [24] 1377 	movx	a,@dptr
      0006AC F5 09            [12] 1378 	mov	_SSD1306_DisplayResult_sloc1_1_0,a
      0006AE 90 00 14         [24] 1379 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      0006B1 E0               [24] 1380 	movx	a,@dptr
      0006B2 F5 0D            [12] 1381 	mov	_SSD1306_DisplayResult_sloc2_1_0,a
      0006B4 A3               [24] 1382 	inc	dptr
      0006B5 E0               [24] 1383 	movx	a,@dptr
      0006B6 F5 0E            [12] 1384 	mov	(_SSD1306_DisplayResult_sloc2_1_0 + 1),a
      0006B8 A3               [24] 1385 	inc	dptr
      0006B9 E0               [24] 1386 	movx	a,@dptr
      0006BA F5 0F            [12] 1387 	mov	(_SSD1306_DisplayResult_sloc2_1_0 + 2),a
      0006BC A3               [24] 1388 	inc	dptr
      0006BD E0               [24] 1389 	movx	a,@dptr
      0006BE F5 10            [12] 1390 	mov	(_SSD1306_DisplayResult_sloc2_1_0 + 3),a
      0006C0 90 00 35         [24] 1391 	mov	dptr,#__divulong_PARM_2
      0006C3 74 E8            [12] 1392 	mov	a,#0xe8
      0006C5 F0               [24] 1393 	movx	@dptr,a
      0006C6 74 03            [12] 1394 	mov	a,#0x03
      0006C8 A3               [24] 1395 	inc	dptr
      0006C9 F0               [24] 1396 	movx	@dptr,a
      0006CA E4               [12] 1397 	clr	a
      0006CB A3               [24] 1398 	inc	dptr
      0006CC F0               [24] 1399 	movx	@dptr,a
      0006CD A3               [24] 1400 	inc	dptr
      0006CE F0               [24] 1401 	movx	@dptr,a
      0006CF 85 0D 82         [24] 1402 	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
      0006D2 85 0E 83         [24] 1403 	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
      0006D5 85 0F F0         [24] 1404 	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
      0006D8 E5 10            [12] 1405 	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
      0006DA C0 07            [24] 1406 	push	ar7
      0006DC 12 0E 86         [24] 1407 	lcall	__divulong
      0006DF A8 82            [24] 1408 	mov	r0, dpl
      0006E1 A9 83            [24] 1409 	mov	r1, dph
      0006E3 AD F0            [24] 1410 	mov	r5, b
      0006E5 FE               [12] 1411 	mov	r6, a
      0006E6 90 00 2C         [24] 1412 	mov	dptr,#__modulong_PARM_2
      0006E9 74 0A            [12] 1413 	mov	a,#0x0a
      0006EB F0               [24] 1414 	movx	@dptr,a
      0006EC E4               [12] 1415 	clr	a
      0006ED A3               [24] 1416 	inc	dptr
      0006EE F0               [24] 1417 	movx	@dptr,a
      0006EF A3               [24] 1418 	inc	dptr
      0006F0 F0               [24] 1419 	movx	@dptr,a
      0006F1 A3               [24] 1420 	inc	dptr
      0006F2 F0               [24] 1421 	movx	@dptr,a
      0006F3 88 82            [24] 1422 	mov	dpl, r0
      0006F5 89 83            [24] 1423 	mov	dph, r1
      0006F7 8D F0            [24] 1424 	mov	b, r5
      0006F9 EE               [12] 1425 	mov	a, r6
      0006FA 12 0D 47         [24] 1426 	lcall	__modulong
      0006FD AB 82            [24] 1427 	mov	r3, dpl
      0006FF D0 07            [24] 1428 	pop	ar7
      000701 74 30            [12] 1429 	mov	a,#0x30
      000703 2B               [12] 1430 	add	a, r3
      000704 FB               [12] 1431 	mov	r3,a
      000705 90 00 0A         [24] 1432 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      000708 E5 09            [12] 1433 	mov	a,_SSD1306_DisplayResult_sloc1_1_0
      00070A F0               [24] 1434 	movx	@dptr,a
      00070B 90 00 0B         [24] 1435 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      00070E EB               [12] 1436 	mov	a,r3
      00070F F0               [24] 1437 	movx	@dptr,a
      000710 8F 82            [24] 1438 	mov	dpl, r7
      000712 C0 07            [24] 1439 	push	ar7
      000714 12 03 14         [24] 1440 	lcall	_SSD1306_WriteChar
      000717 D0 07            [24] 1441 	pop	ar7
      000719 AE 09            [24] 1442 	mov	r6,_SSD1306_DisplayResult_sloc1_1_0
      00071B 90 00 13         [24] 1443 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      00071E 74 08            [12] 1444 	mov	a,#0x08
      000720 2E               [12] 1445 	add	a, r6
      000721 F0               [24] 1446 	movx	@dptr,a
                                   1447 ;	main.c:175: SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
      000722 E0               [24] 1448 	movx	a,@dptr
      000723 FE               [12] 1449 	mov	r6,a
      000724 90 00 35         [24] 1450 	mov	dptr,#__divulong_PARM_2
      000727 74 64            [12] 1451 	mov	a,#0x64
      000729 F0               [24] 1452 	movx	@dptr,a
      00072A E4               [12] 1453 	clr	a
      00072B A3               [24] 1454 	inc	dptr
      00072C F0               [24] 1455 	movx	@dptr,a
      00072D A3               [24] 1456 	inc	dptr
      00072E F0               [24] 1457 	movx	@dptr,a
      00072F A3               [24] 1458 	inc	dptr
      000730 F0               [24] 1459 	movx	@dptr,a
      000731 85 0D 82         [24] 1460 	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
      000734 85 0E 83         [24] 1461 	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
      000737 85 0F F0         [24] 1462 	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
      00073A E5 10            [12] 1463 	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
      00073C C0 07            [24] 1464 	push	ar7
      00073E C0 06            [24] 1465 	push	ar6
      000740 12 0E 86         [24] 1466 	lcall	__divulong
      000743 AA 82            [24] 1467 	mov	r2, dpl
      000745 AB 83            [24] 1468 	mov	r3, dph
      000747 AC F0            [24] 1469 	mov	r4, b
      000749 FD               [12] 1470 	mov	r5, a
      00074A 90 00 2C         [24] 1471 	mov	dptr,#__modulong_PARM_2
      00074D 74 0A            [12] 1472 	mov	a,#0x0a
      00074F F0               [24] 1473 	movx	@dptr,a
      000750 E4               [12] 1474 	clr	a
      000751 A3               [24] 1475 	inc	dptr
      000752 F0               [24] 1476 	movx	@dptr,a
      000753 A3               [24] 1477 	inc	dptr
      000754 F0               [24] 1478 	movx	@dptr,a
      000755 A3               [24] 1479 	inc	dptr
      000756 F0               [24] 1480 	movx	@dptr,a
      000757 8A 82            [24] 1481 	mov	dpl, r2
      000759 8B 83            [24] 1482 	mov	dph, r3
      00075B 8C F0            [24] 1483 	mov	b, r4
      00075D ED               [12] 1484 	mov	a, r5
      00075E 12 0D 47         [24] 1485 	lcall	__modulong
      000761 AA 82            [24] 1486 	mov	r2, dpl
      000763 D0 06            [24] 1487 	pop	ar6
      000765 D0 07            [24] 1488 	pop	ar7
      000767 74 30            [12] 1489 	mov	a,#0x30
      000769 2A               [12] 1490 	add	a, r2
      00076A FA               [12] 1491 	mov	r2,a
      00076B 90 00 0A         [24] 1492 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      00076E EE               [12] 1493 	mov	a,r6
      00076F F0               [24] 1494 	movx	@dptr,a
      000770 90 00 0B         [24] 1495 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000773 EA               [12] 1496 	mov	a,r2
      000774 F0               [24] 1497 	movx	@dptr,a
      000775 8F 82            [24] 1498 	mov	dpl, r7
      000777 C0 07            [24] 1499 	push	ar7
      000779 C0 06            [24] 1500 	push	ar6
      00077B 12 03 14         [24] 1501 	lcall	_SSD1306_WriteChar
      00077E D0 06            [24] 1502 	pop	ar6
      000780 D0 07            [24] 1503 	pop	ar7
      000782 90 00 13         [24] 1504 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000785 74 08            [12] 1505 	mov	a,#0x08
      000787 2E               [12] 1506 	add	a, r6
      000788 F0               [24] 1507 	movx	@dptr,a
                                   1508 ;	main.c:176: SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
      000789 E0               [24] 1509 	movx	a,@dptr
      00078A FE               [12] 1510 	mov	r6,a
      00078B 90 00 35         [24] 1511 	mov	dptr,#__divulong_PARM_2
      00078E 74 0A            [12] 1512 	mov	a,#0x0a
      000790 F0               [24] 1513 	movx	@dptr,a
      000791 E4               [12] 1514 	clr	a
      000792 A3               [24] 1515 	inc	dptr
      000793 F0               [24] 1516 	movx	@dptr,a
      000794 A3               [24] 1517 	inc	dptr
      000795 F0               [24] 1518 	movx	@dptr,a
      000796 A3               [24] 1519 	inc	dptr
      000797 F0               [24] 1520 	movx	@dptr,a
      000798 85 0D 82         [24] 1521 	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
      00079B 85 0E 83         [24] 1522 	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
      00079E 85 0F F0         [24] 1523 	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
      0007A1 E5 10            [12] 1524 	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
      0007A3 C0 07            [24] 1525 	push	ar7
      0007A5 C0 06            [24] 1526 	push	ar6
      0007A7 12 0E 86         [24] 1527 	lcall	__divulong
      0007AA AA 82            [24] 1528 	mov	r2, dpl
      0007AC AB 83            [24] 1529 	mov	r3, dph
      0007AE AC F0            [24] 1530 	mov	r4, b
      0007B0 FD               [12] 1531 	mov	r5, a
      0007B1 90 00 2C         [24] 1532 	mov	dptr,#__modulong_PARM_2
      0007B4 74 0A            [12] 1533 	mov	a,#0x0a
      0007B6 F0               [24] 1534 	movx	@dptr,a
      0007B7 E4               [12] 1535 	clr	a
      0007B8 A3               [24] 1536 	inc	dptr
      0007B9 F0               [24] 1537 	movx	@dptr,a
      0007BA A3               [24] 1538 	inc	dptr
      0007BB F0               [24] 1539 	movx	@dptr,a
      0007BC A3               [24] 1540 	inc	dptr
      0007BD F0               [24] 1541 	movx	@dptr,a
      0007BE 8A 82            [24] 1542 	mov	dpl, r2
      0007C0 8B 83            [24] 1543 	mov	dph, r3
      0007C2 8C F0            [24] 1544 	mov	b, r4
      0007C4 ED               [12] 1545 	mov	a, r5
      0007C5 12 0D 47         [24] 1546 	lcall	__modulong
      0007C8 AA 82            [24] 1547 	mov	r2, dpl
      0007CA D0 06            [24] 1548 	pop	ar6
      0007CC D0 07            [24] 1549 	pop	ar7
      0007CE 74 30            [12] 1550 	mov	a,#0x30
      0007D0 2A               [12] 1551 	add	a, r2
      0007D1 FA               [12] 1552 	mov	r2,a
      0007D2 90 00 0A         [24] 1553 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0007D5 EE               [12] 1554 	mov	a,r6
      0007D6 F0               [24] 1555 	movx	@dptr,a
      0007D7 90 00 0B         [24] 1556 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0007DA EA               [12] 1557 	mov	a,r2
      0007DB F0               [24] 1558 	movx	@dptr,a
      0007DC 8F 82            [24] 1559 	mov	dpl, r7
      0007DE C0 07            [24] 1560 	push	ar7
      0007E0 C0 06            [24] 1561 	push	ar6
      0007E2 12 03 14         [24] 1562 	lcall	_SSD1306_WriteChar
      0007E5 D0 06            [24] 1563 	pop	ar6
      0007E7 D0 07            [24] 1564 	pop	ar7
      0007E9 90 00 13         [24] 1565 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      0007EC 74 08            [12] 1566 	mov	a,#0x08
      0007EE 2E               [12] 1567 	add	a, r6
      0007EF F0               [24] 1568 	movx	@dptr,a
                                   1569 ;	main.c:177: SSD1306_WriteChar(page, x, '.');                       x += 8;
      0007F0 E0               [24] 1570 	movx	a,@dptr
      0007F1 FE               [12] 1571 	mov	r6,a
      0007F2 90 00 0A         [24] 1572 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      0007F5 F0               [24] 1573 	movx	@dptr,a
      0007F6 90 00 0B         [24] 1574 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      0007F9 74 2E            [12] 1575 	mov	a,#0x2e
      0007FB F0               [24] 1576 	movx	@dptr,a
      0007FC 8F 82            [24] 1577 	mov	dpl, r7
      0007FE C0 07            [24] 1578 	push	ar7
      000800 C0 06            [24] 1579 	push	ar6
      000802 12 03 14         [24] 1580 	lcall	_SSD1306_WriteChar
      000805 D0 06            [24] 1581 	pop	ar6
      000807 D0 07            [24] 1582 	pop	ar7
      000809 90 00 13         [24] 1583 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      00080C 74 08            [12] 1584 	mov	a,#0x08
      00080E 2E               [12] 1585 	add	a, r6
      00080F F0               [24] 1586 	movx	@dptr,a
                                   1587 ;	main.c:178: SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
      000810 E0               [24] 1588 	movx	a,@dptr
      000811 FE               [12] 1589 	mov	r6,a
      000812 90 00 2C         [24] 1590 	mov	dptr,#__modulong_PARM_2
      000815 74 0A            [12] 1591 	mov	a,#0x0a
      000817 F0               [24] 1592 	movx	@dptr,a
      000818 E4               [12] 1593 	clr	a
      000819 A3               [24] 1594 	inc	dptr
      00081A F0               [24] 1595 	movx	@dptr,a
      00081B A3               [24] 1596 	inc	dptr
      00081C F0               [24] 1597 	movx	@dptr,a
      00081D A3               [24] 1598 	inc	dptr
      00081E F0               [24] 1599 	movx	@dptr,a
      00081F 85 0D 82         [24] 1600 	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
      000822 85 0E 83         [24] 1601 	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
      000825 85 0F F0         [24] 1602 	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
      000828 E5 10            [12] 1603 	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
      00082A C0 07            [24] 1604 	push	ar7
      00082C C0 06            [24] 1605 	push	ar6
      00082E 12 0D 47         [24] 1606 	lcall	__modulong
      000831 AA 82            [24] 1607 	mov	r2, dpl
      000833 D0 06            [24] 1608 	pop	ar6
      000835 D0 07            [24] 1609 	pop	ar7
      000837 74 30            [12] 1610 	mov	a,#0x30
      000839 2A               [12] 1611 	add	a, r2
      00083A FA               [12] 1612 	mov	r2,a
      00083B 90 00 0A         [24] 1613 	mov	dptr,#_SSD1306_WriteChar_PARM_2
      00083E EE               [12] 1614 	mov	a,r6
      00083F F0               [24] 1615 	movx	@dptr,a
      000840 90 00 0B         [24] 1616 	mov	dptr,#_SSD1306_WriteChar_PARM_3
      000843 EA               [12] 1617 	mov	a,r2
      000844 F0               [24] 1618 	movx	@dptr,a
      000845 8F 82            [24] 1619 	mov	dpl, r7
      000847 C0 07            [24] 1620 	push	ar7
      000849 C0 06            [24] 1621 	push	ar6
      00084B 12 03 14         [24] 1622 	lcall	_SSD1306_WriteChar
      00084E D0 06            [24] 1623 	pop	ar6
      000850 D0 07            [24] 1624 	pop	ar7
      000852 90 00 13         [24] 1625 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000855 74 08            [12] 1626 	mov	a,#0x08
      000857 2E               [12] 1627 	add	a, r6
      000858 F0               [24] 1628 	movx	@dptr,a
                                   1629 ;	main.c:179: SSD1306_PrintString(page, x, " UF");
      000859 E0               [24] 1630 	movx	a,@dptr
      00085A 90 00 0E         [24] 1631 	mov	dptr,#_SSD1306_PrintString_PARM_2
      00085D F0               [24] 1632 	movx	@dptr,a
      00085E 90 00 0F         [24] 1633 	mov	dptr,#_SSD1306_PrintString_PARM_3
      000861 74 68            [12] 1634 	mov	a,#___str_3
      000863 F0               [24] 1635 	movx	@dptr,a
      000864 74 11            [12] 1636 	mov	a,#(___str_3 >> 8)
      000866 A3               [24] 1637 	inc	dptr
      000867 F0               [24] 1638 	movx	@dptr,a
      000868 74 80            [12] 1639 	mov	a,#0x80
      00086A A3               [24] 1640 	inc	dptr
      00086B F0               [24] 1641 	movx	@dptr,a
      00086C 8F 82            [24] 1642 	mov	dpl, r7
                                   1643 ;	main.c:181: }
      00086E 02 03 FB         [24] 1644 	ljmp	_SSD1306_PrintString
                                   1645 ;------------------------------------------------------------
                                   1646 ;Allocation info for local variables in function 'Timer0_ISR'
                                   1647 ;------------------------------------------------------------
                                   1648 ;	main.c:185: void Timer0_ISR(void) __interrupt (1) {
                                   1649 ;	-----------------------------------------
                                   1650 ;	 function Timer0_ISR
                                   1651 ;	-----------------------------------------
      000871                       1652 _Timer0_ISR:
      000871 C0 E0            [24] 1653 	push	acc
      000873 C0 82            [24] 1654 	push	dpl
      000875 C0 83            [24] 1655 	push	dph
      000877 C0 07            [24] 1656 	push	ar7
      000879 C0 06            [24] 1657 	push	ar6
      00087B C0 D0            [24] 1658 	push	psw
      00087D 75 D0 00         [24] 1659 	mov	psw,#0x00
                                   1660 ;	main.c:186: timer0_overflows++;
      000880 90 00 46         [24] 1661 	mov	dptr,#_timer0_overflows
      000883 E0               [24] 1662 	movx	a,@dptr
      000884 FE               [12] 1663 	mov	r6,a
      000885 A3               [24] 1664 	inc	dptr
      000886 E0               [24] 1665 	movx	a,@dptr
      000887 FF               [12] 1666 	mov	r7,a
      000888 90 00 46         [24] 1667 	mov	dptr,#_timer0_overflows
      00088B 74 01            [12] 1668 	mov	a,#0x01
      00088D 2E               [12] 1669 	add	a, r6
      00088E F0               [24] 1670 	movx	@dptr,a
      00088F E4               [12] 1671 	clr	a
      000890 3F               [12] 1672 	addc	a, r7
      000891 A3               [24] 1673 	inc	dptr
      000892 F0               [24] 1674 	movx	@dptr,a
                                   1675 ;	main.c:187: }
      000893 D0 D0            [24] 1676 	pop	psw
      000895 D0 06            [24] 1677 	pop	ar6
      000897 D0 07            [24] 1678 	pop	ar7
      000899 D0 83            [24] 1679 	pop	dph
      00089B D0 82            [24] 1680 	pop	dpl
      00089D D0 E0            [24] 1681 	pop	acc
      00089F 32               [24] 1682 	reti
                                   1683 ;	eliminated unneeded push/pop b
                                   1684 ;------------------------------------------------------------
                                   1685 ;Allocation info for local variables in function 'Measure_Single'
                                   1686 ;------------------------------------------------------------
                                   1687 ;total_ticks   Allocated with name '_Measure_Single_total_ticks_10000_53'
                                   1688 ;stable_counter Allocated with name '_Measure_Single_stable_counter_10000_53'
                                   1689 ;------------------------------------------------------------
                                   1690 ;	main.c:190: uint32_t Measure_Single(void) {
                                   1691 ;	-----------------------------------------
                                   1692 ;	 function Measure_Single
                                   1693 ;	-----------------------------------------
      0008A0                       1694 _Measure_Single:
                                   1695 ;	main.c:192: uint8_t stable_counter = 0;
      0008A0 90 00 1A         [24] 1696 	mov	dptr,#_Measure_Single_stable_counter_10000_53
      0008A3 E4               [12] 1697 	clr	a
      0008A4 F0               [24] 1698 	movx	@dptr,a
                                   1699 ;	main.c:195: TH0 = 0x00;
      0008A5 F5 8C            [12] 1700 	mov	_TH0,a
                                   1701 ;	main.c:196: TL0 = 0x00;
      0008A7 F5 8A            [12] 1702 	mov	_TL0,a
                                   1703 ;	main.c:197: TF0 = 0;
                                   1704 ;	assignBit
      0008A9 C2 8D            [12] 1705 	clr	_TF0
                                   1706 ;	main.c:198: timer0_overflows = 0;
      0008AB 90 00 46         [24] 1707 	mov	dptr,#_timer0_overflows
      0008AE E4               [12] 1708 	clr	a
      0008AF F0               [24] 1709 	movx	@dptr,a
      0008B0 A3               [24] 1710 	inc	dptr
      0008B1 F0               [24] 1711 	movx	@dptr,a
                                   1712 ;	main.c:201: ET0 = 1;
                                   1713 ;	assignBit
      0008B2 D2 A9            [12] 1714 	setb	_ET0
                                   1715 ;	main.c:204: P3M1 &= ~0x02; P3M0 |= 0x02;
      0008B4 53 B1 FD         [24] 1716 	anl	_P3M1,#0xfd
      0008B7 43 B2 02         [24] 1717 	orl	_P3M0,#0x02
                                   1718 ;	main.c:205: PIN_R1_10K = 1;
                                   1719 ;	assignBit
      0008BA D2 B1            [12] 1720 	setb	_PIN_R1_10K
                                   1721 ;	main.c:207: TR0 = 1; // Стартуем Таймер 0
                                   1722 ;	assignBit
      0008BC D2 8C            [12] 1723 	setb	_TR0
                                   1724 ;	main.c:210: while (1) {
      0008BE                       1725 00109$:
                                   1726 ;	main.c:211: if (P5 & MASK_DET_55) {
      0008BE E5 C8            [12] 1727 	mov	a,_P5
      0008C0 30 E5 0E         [24] 1728 	jnb	acc.5,00104$
                                   1729 ;	main.c:212: stable_counter++;
      0008C3 90 00 1A         [24] 1730 	mov	dptr,#_Measure_Single_stable_counter_10000_53
      0008C6 E0               [24] 1731 	movx	a,@dptr
      0008C7 24 01            [12] 1732 	add	a, #0x01
      0008C9 F0               [24] 1733 	movx	@dptr,a
                                   1734 ;	main.c:213: if (stable_counter > 10) {
      0008CA E0               [24] 1735 	movx	a,@dptr
      0008CB 24 F5            [12] 1736 	add	a,#0xff - 0x0a
      0008CD 50 07            [24] 1737 	jnc	00105$
                                   1738 ;	main.c:214: break; // Успешно зарядился
      0008CF 80 16            [24] 1739 	sjmp	00110$
      0008D1                       1740 00104$:
                                   1741 ;	main.c:217: stable_counter = 0;
      0008D1 90 00 1A         [24] 1742 	mov	dptr,#_Measure_Single_stable_counter_10000_53
      0008D4 E4               [12] 1743 	clr	a
      0008D5 F0               [24] 1744 	movx	@dptr,a
      0008D6                       1745 00105$:
                                   1746 ;	main.c:221: if (timer0_overflows > 1700) {
      0008D6 90 00 46         [24] 1747 	mov	dptr,#_timer0_overflows
      0008D9 E0               [24] 1748 	movx	a,@dptr
      0008DA FE               [12] 1749 	mov	r6,a
      0008DB A3               [24] 1750 	inc	dptr
      0008DC E0               [24] 1751 	movx	a,@dptr
      0008DD FF               [12] 1752 	mov	r7,a
      0008DE C3               [12] 1753 	clr	c
      0008DF 74 A4            [12] 1754 	mov	a,#0xa4
      0008E1 9E               [12] 1755 	subb	a,r6
      0008E2 74 06            [12] 1756 	mov	a,#0x06
      0008E4 9F               [12] 1757 	subb	a,r7
      0008E5 50 D7            [24] 1758 	jnc	00109$
                                   1759 ;	main.c:222: break;
      0008E7                       1760 00110$:
                                   1761 ;	main.c:225: TR0 = 0;  // Стоп Таймер 0
                                   1762 ;	assignBit
      0008E7 C2 8C            [12] 1763 	clr	_TR0
                                   1764 ;	main.c:226: ET0 = 0;  // Выключаем прерывание таймера, чтобы не мешало основной программе
                                   1765 ;	assignBit
      0008E9 C2 A9            [12] 1766 	clr	_ET0
                                   1767 ;	main.c:229: total_ticks = ((uint32_t)timer0_overflows << 16) | ((uint16_t)TH0 << 8) | TL0;
      0008EB 90 00 46         [24] 1768 	mov	dptr,#_timer0_overflows
      0008EE E0               [24] 1769 	movx	a,@dptr
      0008EF FC               [12] 1770 	mov	r4,a
      0008F0 A3               [24] 1771 	inc	dptr
      0008F1 E0               [24] 1772 	movx	a,@dptr
      0008F2 FF               [12] 1773 	mov	r7,a
      0008F3 8C 06            [24] 1774 	mov	ar6,r4
      0008F5 7C 00            [12] 1775 	mov	r4,#0x00
      0008F7 7D 00            [12] 1776 	mov	r5,#0x00
      0008F9 AB 8C            [24] 1777 	mov	r3,_TH0
      0008FB 7A 00            [12] 1778 	mov	r2,#0x00
      0008FD 8A 00            [24] 1779 	mov	ar0,r2
      0008FF 8B 01            [24] 1780 	mov	ar1,r3
      000901 7B 00            [12] 1781 	mov	r3,#0x00
      000903 E8               [12] 1782 	mov	a,r0
      000904 42 04            [12] 1783 	orl	ar4,a
      000906 E9               [12] 1784 	mov	a,r1
      000907 42 05            [12] 1785 	orl	ar5,a
      000909 EA               [12] 1786 	mov	a,r2
      00090A 42 06            [12] 1787 	orl	ar6,a
      00090C EB               [12] 1788 	mov	a,r3
      00090D 42 07            [12] 1789 	orl	ar7,a
      00090F A8 8A            [24] 1790 	mov	r0,_TL0
      000911 E4               [12] 1791 	clr	a
      000912 F9               [12] 1792 	mov	r1,a
      000913 FA               [12] 1793 	mov	r2,a
      000914 FB               [12] 1794 	mov	r3,a
      000915 E8               [12] 1795 	mov	a,r0
      000916 42 04            [12] 1796 	orl	ar4,a
      000918 E9               [12] 1797 	mov	a,r1
      000919 42 05            [12] 1798 	orl	ar5,a
      00091B EA               [12] 1799 	mov	a,r2
      00091C 42 06            [12] 1800 	orl	ar6,a
      00091E EB               [12] 1801 	mov	a,r3
      00091F 42 07            [12] 1802 	orl	ar7,a
                                   1803 ;	main.c:231: return total_ticks;
      000921 8C 82            [24] 1804 	mov	dpl, r4
      000923 8D 83            [24] 1805 	mov	dph, r5
      000925 8E F0            [24] 1806 	mov	b, r6
      000927 EF               [12] 1807 	mov	a, r7
                                   1808 ;	main.c:232: }
      000928 22               [24] 1809 	ret
                                   1810 ;------------------------------------------------------------
                                   1811 ;Allocation info for local variables in function 'main'
                                   1812 ;------------------------------------------------------------
                                   1813 ;sloc0         Allocated with name '_main_sloc0_1_0'
                                   1814 ;sloc1         Allocated with name '_main_sloc1_1_0'
                                   1815 ;raw_ticks     Allocated with name '_main_raw_ticks_10000_60'
                                   1816 ;final_calc    Allocated with name '_main_final_calc_10000_60'
                                   1817 ;last_display_val Allocated with name '_main_last_display_val_10000_60'
                                   1818 ;filtered_ticks Allocated with name '_main_filtered_ticks_10000_60'
                                   1819 ;mode_uf       Allocated with name '_main_mode_uf_10000_60'
                                   1820 ;is_first_run  Allocated with name '_main_is_first_run_10000_60'
                                   1821 ;is_sleeping   Allocated with name '_main_is_sleeping_10000_60'
                                   1822 ;discharge     Allocated with name '_main_discharge_10000_60'
                                   1823 ;------------------------------------------------------------
                                   1824 ;	main.c:235: void main(void) {
                                   1825 ;	-----------------------------------------
                                   1826 ;	 function main
                                   1827 ;	-----------------------------------------
      000929                       1828 _main:
                                   1829 ;	main.c:238: uint32_t last_display_val = 0;
      000929 90 00 1F         [24] 1830 	mov	dptr,#_main_last_display_val_10000_60
      00092C E4               [12] 1831 	clr	a
      00092D F0               [24] 1832 	movx	@dptr,a
      00092E A3               [24] 1833 	inc	dptr
      00092F F0               [24] 1834 	movx	@dptr,a
      000930 A3               [24] 1835 	inc	dptr
      000931 F0               [24] 1836 	movx	@dptr,a
      000932 A3               [24] 1837 	inc	dptr
      000933 F0               [24] 1838 	movx	@dptr,a
                                   1839 ;	main.c:239: uint32_t filtered_ticks = 0;
      000934 90 00 23         [24] 1840 	mov	dptr,#_main_filtered_ticks_10000_60
      000937 F0               [24] 1841 	movx	@dptr,a
      000938 A3               [24] 1842 	inc	dptr
      000939 F0               [24] 1843 	movx	@dptr,a
      00093A A3               [24] 1844 	inc	dptr
      00093B F0               [24] 1845 	movx	@dptr,a
      00093C A3               [24] 1846 	inc	dptr
      00093D F0               [24] 1847 	movx	@dptr,a
                                   1848 ;	main.c:241: uint8_t is_first_run = 1;
      00093E 90 00 28         [24] 1849 	mov	dptr,#_main_is_first_run_10000_60
      000941 04               [12] 1850 	inc	a
      000942 F0               [24] 1851 	movx	@dptr,a
                                   1852 ;	main.c:242: uint8_t is_sleeping = 0;
      000943 90 00 29         [24] 1853 	mov	dptr,#_main_is_sleeping_10000_60
      000946 E4               [12] 1854 	clr	a
      000947 F0               [24] 1855 	movx	@dptr,a
                                   1856 ;	main.c:246: P5M1 |= MASK_DET_55; P5M0 &= ~MASK_DET_55;
      000948 43 C9 20         [24] 1857 	orl	_P5M1,#0x20
      00094B 53 CA DF         [24] 1858 	anl	_P5M0,#0xdf
                                   1859 ;	main.c:249: P3M1 |= (1 << 0); P3M0 &= ~(1 << 0);
      00094E 43 B1 01         [24] 1860 	orl	_P3M1,#0x01
      000951 53 B2 FE         [24] 1861 	anl	_P3M0,#0xfe
                                   1862 ;	main.c:252: P_SW2 = 0x80; CLKSEL = 0x00; P_SW2 = 0x00;
      000954 75 8E 80         [24] 1863 	mov	_P_SW2,#0x80
      000957 75 9D 00         [24] 1864 	mov	_CLKSEL,#0x00
      00095A 75 8E 00         [24] 1865 	mov	_P_SW2,#0x00
                                   1866 ;	main.c:253: AUXR |= 0x80;
      00095D 43 8E 80         [24] 1867 	orl	_AUXR,#0x80
                                   1868 ;	main.c:254: TMOD &= 0xF0; // Режим 0 (16-битный таймер)
      000960 53 89 F0         [24] 1869 	anl	_TMOD,#0xf0
                                   1870 ;	main.c:255: TR0 = 0; TF0 = 0;
                                   1871 ;	assignBit
      000963 C2 8C            [12] 1872 	clr	_TR0
                                   1873 ;	assignBit
      000965 C2 8D            [12] 1874 	clr	_TF0
                                   1875 ;	main.c:258: EA = 1;
                                   1876 ;	assignBit
      000967 D2 AF            [12] 1877 	setb	_EA
                                   1878 ;	main.c:260: SCL_HIGH(); SDA_HIGH(); Delay_ms(100);
      000969 12 01 1A         [24] 1879 	lcall	_SCL_HIGH
      00096C 12 01 2E         [24] 1880 	lcall	_SDA_HIGH
      00096F 90 00 64         [24] 1881 	mov	dptr,#0x0064
      000972 12 00 B0         [24] 1882 	lcall	_Delay_ms
                                   1883 ;	main.c:261: SSD1306_Init();
      000975 12 01 D5         [24] 1884 	lcall	_SSD1306_Init
                                   1885 ;	main.c:262: SSD1306_Clear();
      000978 12 02 89         [24] 1886 	lcall	_SSD1306_Clear
                                   1887 ;	main.c:264: while(1) {
      00097B                       1888 00142$:
                                   1889 ;	main.c:266: if (PIN_BUTTON == 0) {
      00097B 20 B0 49         [24] 1890 	jb	_PIN_BUTTON,00110$
                                   1891 ;	main.c:267: Delay_ms(40);
      00097E 90 00 28         [24] 1892 	mov	dptr,#0x0028
      000981 12 00 B0         [24] 1893 	lcall	_Delay_ms
                                   1894 ;	main.c:268: if (PIN_BUTTON == 0) {
      000984 20 B0 40         [24] 1895 	jb	_PIN_BUTTON,00110$
                                   1896 ;	main.c:269: while(PIN_BUTTON == 0) { Delay_ms(10); }
      000987                       1897 00101$:
      000987 20 B0 08         [24] 1898 	jb	_PIN_BUTTON,00103$
      00098A 90 00 0A         [24] 1899 	mov	dptr,#0x000a
      00098D 12 00 B0         [24] 1900 	lcall	_Delay_ms
      000990 80 F5            [24] 1901 	sjmp	00101$
      000992                       1902 00103$:
                                   1903 ;	main.c:270: Delay_ms(50);
      000992 90 00 32         [24] 1904 	mov	dptr,#0x0032
      000995 12 00 B0         [24] 1905 	lcall	_Delay_ms
                                   1906 ;	main.c:272: if (is_sleeping == 0) {
      000998 90 00 29         [24] 1907 	mov	dptr,#_main_is_sleeping_10000_60
      00099B E0               [24] 1908 	movx	a,@dptr
      00099C 70 0E            [24] 1909 	jnz	00105$
                                   1910 ;	main.c:273: is_sleeping = 1;
      00099E 90 00 29         [24] 1911 	mov	dptr,#_main_is_sleeping_10000_60
      0009A1 74 01            [12] 1912 	mov	a,#0x01
      0009A3 F0               [24] 1913 	movx	@dptr,a
                                   1914 ;	main.c:274: SSD1306_Command(0xAE); // Выключить экран
      0009A4 75 82 AE         [24] 1915 	mov	dpl, #0xae
      0009A7 12 01 B4         [24] 1916 	lcall	_SSD1306_Command
      0009AA 80 1B            [24] 1917 	sjmp	00110$
      0009AC                       1918 00105$:
                                   1919 ;	main.c:276: is_sleeping = 0;
      0009AC 90 00 29         [24] 1920 	mov	dptr,#_main_is_sleeping_10000_60
      0009AF E4               [12] 1921 	clr	a
      0009B0 F0               [24] 1922 	movx	@dptr,a
                                   1923 ;	main.c:277: SSD1306_Command(0xAF); // Включить экран
      0009B1 75 82 AF         [24] 1924 	mov	dpl, #0xaf
      0009B4 12 01 B4         [24] 1925 	lcall	_SSD1306_Command
                                   1926 ;	main.c:278: last_display_val = 0;
      0009B7 90 00 1F         [24] 1927 	mov	dptr,#_main_last_display_val_10000_60
      0009BA E4               [12] 1928 	clr	a
      0009BB F0               [24] 1929 	movx	@dptr,a
      0009BC A3               [24] 1930 	inc	dptr
      0009BD F0               [24] 1931 	movx	@dptr,a
      0009BE A3               [24] 1932 	inc	dptr
      0009BF F0               [24] 1933 	movx	@dptr,a
      0009C0 A3               [24] 1934 	inc	dptr
      0009C1 F0               [24] 1935 	movx	@dptr,a
                                   1936 ;	main.c:279: is_first_run = 1;
      0009C2 90 00 28         [24] 1937 	mov	dptr,#_main_is_first_run_10000_60
      0009C5 04               [12] 1938 	inc	a
      0009C6 F0               [24] 1939 	movx	@dptr,a
      0009C7                       1940 00110$:
                                   1941 ;	main.c:284: if (is_sleeping == 1) {
      0009C7 90 00 29         [24] 1942 	mov	dptr,#_main_is_sleeping_10000_60
      0009CA E0               [24] 1943 	movx	a,@dptr
      0009CB FF               [12] 1944 	mov	r7,a
      0009CC BF 01 10         [24] 1945 	cjne	r7,#0x01,00112$
                                   1946 ;	main.c:286: P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 0;
      0009CF 53 B1 FD         [24] 1947 	anl	_P3M1,#0xfd
      0009D2 43 B2 02         [24] 1948 	orl	_P3M0,#0x02
                                   1949 ;	assignBit
      0009D5 C2 B1            [12] 1950 	clr	_PIN_R1_10K
                                   1951 ;	main.c:287: Delay_ms(100);
      0009D7 90 00 64         [24] 1952 	mov	dptr,#0x0064
      0009DA 12 00 B0         [24] 1953 	lcall	_Delay_ms
                                   1954 ;	main.c:288: continue;
      0009DD 80 9C            [24] 1955 	sjmp	00142$
      0009DF                       1956 00112$:
                                   1957 ;	main.c:292: raw_ticks = Measure_Single(); // Делаем чистый замер времени заряда
      0009DF 12 08 A0         [24] 1958 	lcall	_Measure_Single
      0009E2 85 82 11         [24] 1959 	mov	_main_sloc0_1_0,dpl
      0009E5 85 83 12         [24] 1960 	mov	(_main_sloc0_1_0 + 1),dph
      0009E8 85 F0 13         [24] 1961 	mov	(_main_sloc0_1_0 + 2),b
      0009EB F5 14            [12] 1962 	mov	(_main_sloc0_1_0 + 3),a
                                   1963 ;	main.c:295: if (is_first_run || filtered_ticks < 100) {
      0009ED 90 00 28         [24] 1964 	mov	dptr,#_main_is_first_run_10000_60
      0009F0 E0               [24] 1965 	movx	a,@dptr
      0009F1 70 1D            [24] 1966 	jnz	00113$
      0009F3 90 00 23         [24] 1967 	mov	dptr,#_main_filtered_ticks_10000_60
      0009F6 E0               [24] 1968 	movx	a,@dptr
      0009F7 F8               [12] 1969 	mov	r0,a
      0009F8 A3               [24] 1970 	inc	dptr
      0009F9 E0               [24] 1971 	movx	a,@dptr
      0009FA F9               [12] 1972 	mov	r1,a
      0009FB A3               [24] 1973 	inc	dptr
      0009FC E0               [24] 1974 	movx	a,@dptr
      0009FD FA               [12] 1975 	mov	r2,a
      0009FE A3               [24] 1976 	inc	dptr
      0009FF E0               [24] 1977 	movx	a,@dptr
      000A00 FB               [12] 1978 	mov	r3,a
      000A01 C3               [12] 1979 	clr	c
      000A02 E8               [12] 1980 	mov	a,r0
      000A03 94 64            [12] 1981 	subb	a,#0x64
      000A05 E9               [12] 1982 	mov	a,r1
      000A06 94 00            [12] 1983 	subb	a,#0x00
      000A08 EA               [12] 1984 	mov	a,r2
      000A09 94 00            [12] 1985 	subb	a,#0x00
      000A0B EB               [12] 1986 	mov	a,r3
      000A0C 94 00            [12] 1987 	subb	a,#0x00
      000A0E 50 19            [24] 1988 	jnc	00114$
      000A10                       1989 00113$:
                                   1990 ;	main.c:296: filtered_ticks = raw_ticks;
      000A10 90 00 23         [24] 1991 	mov	dptr,#_main_filtered_ticks_10000_60
      000A13 E5 11            [12] 1992 	mov	a,_main_sloc0_1_0
      000A15 F0               [24] 1993 	movx	@dptr,a
      000A16 E5 12            [12] 1994 	mov	a,(_main_sloc0_1_0 + 1)
      000A18 A3               [24] 1995 	inc	dptr
      000A19 F0               [24] 1996 	movx	@dptr,a
      000A1A E5 13            [12] 1997 	mov	a,(_main_sloc0_1_0 + 2)
      000A1C A3               [24] 1998 	inc	dptr
      000A1D F0               [24] 1999 	movx	@dptr,a
      000A1E E5 14            [12] 2000 	mov	a,(_main_sloc0_1_0 + 3)
      000A20 A3               [24] 2001 	inc	dptr
      000A21 F0               [24] 2002 	movx	@dptr,a
                                   2003 ;	main.c:297: is_first_run = 0;
      000A22 90 00 28         [24] 2004 	mov	dptr,#_main_is_first_run_10000_60
      000A25 E4               [12] 2005 	clr	a
      000A26 F0               [24] 2006 	movx	@dptr,a
      000A27 80 5F            [24] 2007 	sjmp	00115$
      000A29                       2008 00114$:
                                   2009 ;	main.c:299: filtered_ticks = ((filtered_ticks >> 1) + (filtered_ticks >> 2)) + (raw_ticks >> 2);
      000A29 EB               [12] 2010 	mov	a,r3
      000A2A C3               [12] 2011 	clr	c
      000A2B 13               [12] 2012 	rrc	a
      000A2C FF               [12] 2013 	mov	r7,a
      000A2D EA               [12] 2014 	mov	a,r2
      000A2E 13               [12] 2015 	rrc	a
      000A2F FE               [12] 2016 	mov	r6,a
      000A30 E9               [12] 2017 	mov	a,r1
      000A31 13               [12] 2018 	rrc	a
      000A32 FD               [12] 2019 	mov	r5,a
      000A33 E8               [12] 2020 	mov	a,r0
      000A34 13               [12] 2021 	rrc	a
      000A35 FC               [12] 2022 	mov	r4,a
      000A36 EB               [12] 2023 	mov	a,r3
      000A37 C3               [12] 2024 	clr	c
      000A38 13               [12] 2025 	rrc	a
      000A39 FB               [12] 2026 	mov	r3,a
      000A3A EA               [12] 2027 	mov	a,r2
      000A3B 13               [12] 2028 	rrc	a
      000A3C FA               [12] 2029 	mov	r2,a
      000A3D E9               [12] 2030 	mov	a,r1
      000A3E 13               [12] 2031 	rrc	a
      000A3F F9               [12] 2032 	mov	r1,a
      000A40 E8               [12] 2033 	mov	a,r0
      000A41 13               [12] 2034 	rrc	a
      000A42 F8               [12] 2035 	mov	r0,a
      000A43 EB               [12] 2036 	mov	a,r3
      000A44 C3               [12] 2037 	clr	c
      000A45 13               [12] 2038 	rrc	a
      000A46 FB               [12] 2039 	mov	r3,a
      000A47 EA               [12] 2040 	mov	a,r2
      000A48 13               [12] 2041 	rrc	a
      000A49 FA               [12] 2042 	mov	r2,a
      000A4A E9               [12] 2043 	mov	a,r1
      000A4B 13               [12] 2044 	rrc	a
      000A4C F9               [12] 2045 	mov	r1,a
      000A4D E8               [12] 2046 	mov	a,r0
      000A4E 13               [12] 2047 	rrc	a
      000A4F 2C               [12] 2048 	add	a, r4
      000A50 FC               [12] 2049 	mov	r4,a
      000A51 E9               [12] 2050 	mov	a,r1
      000A52 3D               [12] 2051 	addc	a, r5
      000A53 FD               [12] 2052 	mov	r5,a
      000A54 EA               [12] 2053 	mov	a,r2
      000A55 3E               [12] 2054 	addc	a, r6
      000A56 FE               [12] 2055 	mov	r6,a
      000A57 EB               [12] 2056 	mov	a,r3
      000A58 3F               [12] 2057 	addc	a, r7
      000A59 FF               [12] 2058 	mov	r7,a
      000A5A E5 14            [12] 2059 	mov	a,(_main_sloc0_1_0 + 3)
      000A5C C3               [12] 2060 	clr	c
      000A5D 13               [12] 2061 	rrc	a
      000A5E FB               [12] 2062 	mov	r3,a
      000A5F E5 13            [12] 2063 	mov	a,(_main_sloc0_1_0 + 2)
      000A61 13               [12] 2064 	rrc	a
      000A62 FA               [12] 2065 	mov	r2,a
      000A63 E5 12            [12] 2066 	mov	a,(_main_sloc0_1_0 + 1)
      000A65 13               [12] 2067 	rrc	a
      000A66 F9               [12] 2068 	mov	r1,a
      000A67 E5 11            [12] 2069 	mov	a,_main_sloc0_1_0
      000A69 13               [12] 2070 	rrc	a
      000A6A F8               [12] 2071 	mov	r0,a
      000A6B EB               [12] 2072 	mov	a,r3
      000A6C C3               [12] 2073 	clr	c
      000A6D 13               [12] 2074 	rrc	a
      000A6E FB               [12] 2075 	mov	r3,a
      000A6F EA               [12] 2076 	mov	a,r2
      000A70 13               [12] 2077 	rrc	a
      000A71 FA               [12] 2078 	mov	r2,a
      000A72 E9               [12] 2079 	mov	a,r1
      000A73 13               [12] 2080 	rrc	a
      000A74 F9               [12] 2081 	mov	r1,a
      000A75 E8               [12] 2082 	mov	a,r0
      000A76 13               [12] 2083 	rrc	a
      000A77 90 00 23         [24] 2084 	mov	dptr,#_main_filtered_ticks_10000_60
      000A7A 2C               [12] 2085 	add	a, r4
      000A7B F0               [24] 2086 	movx	@dptr,a
      000A7C E9               [12] 2087 	mov	a,r1
      000A7D 3D               [12] 2088 	addc	a, r5
      000A7E A3               [24] 2089 	inc	dptr
      000A7F F0               [24] 2090 	movx	@dptr,a
      000A80 EA               [12] 2091 	mov	a,r2
      000A81 3E               [12] 2092 	addc	a, r6
      000A82 A3               [24] 2093 	inc	dptr
      000A83 F0               [24] 2094 	movx	@dptr,a
      000A84 EB               [12] 2095 	mov	a,r3
      000A85 3F               [12] 2096 	addc	a, r7
      000A86 A3               [24] 2097 	inc	dptr
      000A87 F0               [24] 2098 	movx	@dptr,a
      000A88                       2099 00115$:
                                   2100 ;	main.c:302: if (filtered_ticks > 43000) {
      000A88 90 00 23         [24] 2101 	mov	dptr,#_main_filtered_ticks_10000_60
      000A8B E0               [24] 2102 	movx	a,@dptr
      000A8C FC               [12] 2103 	mov	r4,a
      000A8D A3               [24] 2104 	inc	dptr
      000A8E E0               [24] 2105 	movx	a,@dptr
      000A8F FD               [12] 2106 	mov	r5,a
      000A90 A3               [24] 2107 	inc	dptr
      000A91 E0               [24] 2108 	movx	a,@dptr
      000A92 FE               [12] 2109 	mov	r6,a
      000A93 A3               [24] 2110 	inc	dptr
      000A94 E0               [24] 2111 	movx	a,@dptr
      000A95 FF               [12] 2112 	mov	r7,a
      000A96 C3               [12] 2113 	clr	c
      000A97 74 F8            [12] 2114 	mov	a,#0xf8
      000A99 9C               [12] 2115 	subb	a,r4
      000A9A 74 A7            [12] 2116 	mov	a,#0xa7
      000A9C 9D               [12] 2117 	subb	a,r5
      000A9D E4               [12] 2118 	clr	a
      000A9E 9E               [12] 2119 	subb	a,r6
      000A9F E4               [12] 2120 	clr	a
      000AA0 9F               [12] 2121 	subb	a,r7
      000AA1 40 03            [24] 2122 	jc	00271$
      000AA3 02 0B BC         [24] 2123 	ljmp	00134$
      000AA6                       2124 00271$:
                                   2125 ;	main.c:303: mode_uf = 1; // Режим "мкФ"
      000AA6 90 00 27         [24] 2126 	mov	dptr,#_main_mode_uf_10000_60
      000AA9 74 01            [12] 2127 	mov	a,#0x01
      000AAB F0               [24] 2128 	movx	@dptr,a
                                   2129 ;	main.c:308: final_calc = (filtered_ticks * 23) / 100000;
      000AAC 90 00 42         [24] 2130 	mov	dptr,#__mullong_PARM_2
      000AAF EC               [12] 2131 	mov	a,r4
      000AB0 F0               [24] 2132 	movx	@dptr,a
      000AB1 ED               [12] 2133 	mov	a,r5
      000AB2 A3               [24] 2134 	inc	dptr
      000AB3 F0               [24] 2135 	movx	@dptr,a
      000AB4 EE               [12] 2136 	mov	a,r6
      000AB5 A3               [24] 2137 	inc	dptr
      000AB6 F0               [24] 2138 	movx	@dptr,a
      000AB7 EF               [12] 2139 	mov	a,r7
      000AB8 A3               [24] 2140 	inc	dptr
      000AB9 F0               [24] 2141 	movx	@dptr,a
      000ABA 90 00 17         [24] 2142 	mov	dptr,#0x0017
      000ABD E4               [12] 2143 	clr	a
      000ABE F5 F0            [12] 2144 	mov	b,a
      000AC0 12 0F 7A         [24] 2145 	lcall	__mullong
      000AC3 A8 82            [24] 2146 	mov	r0, dpl
      000AC5 A9 83            [24] 2147 	mov	r1, dph
      000AC7 AA F0            [24] 2148 	mov	r2, b
      000AC9 FB               [12] 2149 	mov	r3, a
      000ACA 90 00 35         [24] 2150 	mov	dptr,#__divulong_PARM_2
      000ACD 74 A0            [12] 2151 	mov	a,#0xa0
      000ACF F0               [24] 2152 	movx	@dptr,a
      000AD0 74 86            [12] 2153 	mov	a,#0x86
      000AD2 A3               [24] 2154 	inc	dptr
      000AD3 F0               [24] 2155 	movx	@dptr,a
      000AD4 74 01            [12] 2156 	mov	a,#0x01
      000AD6 A3               [24] 2157 	inc	dptr
      000AD7 F0               [24] 2158 	movx	@dptr,a
      000AD8 E4               [12] 2159 	clr	a
      000AD9 A3               [24] 2160 	inc	dptr
      000ADA F0               [24] 2161 	movx	@dptr,a
      000ADB 88 82            [24] 2162 	mov	dpl, r0
      000ADD 89 83            [24] 2163 	mov	dph, r1
      000ADF 8A F0            [24] 2164 	mov	b, r2
      000AE1 EB               [12] 2165 	mov	a, r3
      000AE2 12 0E 86         [24] 2166 	lcall	__divulong
      000AE5 A8 82            [24] 2167 	mov	r0, dpl
      000AE7 A9 83            [24] 2168 	mov	r1, dph
      000AE9 AA F0            [24] 2169 	mov	r2, b
      000AEB FB               [12] 2170 	mov	r3, a
      000AEC 90 00 1B         [24] 2171 	mov	dptr,#_main_final_calc_10000_60
      000AEF E8               [12] 2172 	mov	a,r0
      000AF0 F0               [24] 2173 	movx	@dptr,a
      000AF1 E9               [12] 2174 	mov	a,r1
      000AF2 A3               [24] 2175 	inc	dptr
      000AF3 F0               [24] 2176 	movx	@dptr,a
      000AF4 EA               [12] 2177 	mov	a,r2
      000AF5 A3               [24] 2178 	inc	dptr
      000AF6 F0               [24] 2179 	movx	@dptr,a
      000AF7 EB               [12] 2180 	mov	a,r3
      000AF8 A3               [24] 2181 	inc	dptr
      000AF9 F0               [24] 2182 	movx	@dptr,a
                                   2183 ;	main.c:310: if (final_calc == 0) final_calc = 1;
      000AFA E8               [12] 2184 	mov	a,r0
      000AFB 49               [12] 2185 	orl	a,r1
      000AFC 4A               [12] 2186 	orl	a,r2
      000AFD 4B               [12] 2187 	orl	a,r3
      000AFE 70 0D            [24] 2188 	jnz	00118$
      000B00 90 00 1B         [24] 2189 	mov	dptr,#_main_final_calc_10000_60
      000B03 74 01            [12] 2190 	mov	a,#0x01
      000B05 F0               [24] 2191 	movx	@dptr,a
      000B06 E4               [12] 2192 	clr	a
      000B07 A3               [24] 2193 	inc	dptr
      000B08 F0               [24] 2194 	movx	@dptr,a
      000B09 A3               [24] 2195 	inc	dptr
      000B0A F0               [24] 2196 	movx	@dptr,a
      000B0B A3               [24] 2197 	inc	dptr
      000B0C F0               [24] 2198 	movx	@dptr,a
      000B0D                       2199 00118$:
                                   2200 ;	main.c:312: if (final_calc > last_display_val) {
      000B0D 90 00 1B         [24] 2201 	mov	dptr,#_main_final_calc_10000_60
      000B10 E0               [24] 2202 	movx	a,@dptr
      000B11 F5 15            [12] 2203 	mov	_main_sloc1_1_0,a
      000B13 A3               [24] 2204 	inc	dptr
      000B14 E0               [24] 2205 	movx	a,@dptr
      000B15 F5 16            [12] 2206 	mov	(_main_sloc1_1_0 + 1),a
      000B17 A3               [24] 2207 	inc	dptr
      000B18 E0               [24] 2208 	movx	a,@dptr
      000B19 F5 17            [12] 2209 	mov	(_main_sloc1_1_0 + 2),a
      000B1B A3               [24] 2210 	inc	dptr
      000B1C E0               [24] 2211 	movx	a,@dptr
      000B1D F5 18            [12] 2212 	mov	(_main_sloc1_1_0 + 3),a
      000B1F 90 00 1F         [24] 2213 	mov	dptr,#_main_last_display_val_10000_60
      000B22 E0               [24] 2214 	movx	a,@dptr
      000B23 F5 11            [12] 2215 	mov	_main_sloc0_1_0,a
      000B25 A3               [24] 2216 	inc	dptr
      000B26 E0               [24] 2217 	movx	a,@dptr
      000B27 F5 12            [12] 2218 	mov	(_main_sloc0_1_0 + 1),a
      000B29 A3               [24] 2219 	inc	dptr
      000B2A E0               [24] 2220 	movx	a,@dptr
      000B2B F5 13            [12] 2221 	mov	(_main_sloc0_1_0 + 2),a
      000B2D A3               [24] 2222 	inc	dptr
      000B2E E0               [24] 2223 	movx	a,@dptr
      000B2F F5 14            [12] 2224 	mov	(_main_sloc0_1_0 + 3),a
      000B31 C3               [12] 2225 	clr	c
      000B32 E5 11            [12] 2226 	mov	a,_main_sloc0_1_0
      000B34 95 15            [12] 2227 	subb	a,_main_sloc1_1_0
      000B36 E5 12            [12] 2228 	mov	a,(_main_sloc0_1_0 + 1)
      000B38 95 16            [12] 2229 	subb	a,(_main_sloc1_1_0 + 1)
      000B3A E5 13            [12] 2230 	mov	a,(_main_sloc0_1_0 + 2)
      000B3C 95 17            [12] 2231 	subb	a,(_main_sloc1_1_0 + 2)
      000B3E E5 14            [12] 2232 	mov	a,(_main_sloc0_1_0 + 3)
      000B40 95 18            [12] 2233 	subb	a,(_main_sloc1_1_0 + 3)
      000B42 50 3C            [24] 2234 	jnc	00124$
                                   2235 ;	main.c:313: if ((final_calc - last_display_val) < 1) final_calc = last_display_val;
      000B44 E5 15            [12] 2236 	mov	a,_main_sloc1_1_0
      000B46 C3               [12] 2237 	clr	c
      000B47 95 11            [12] 2238 	subb	a,_main_sloc0_1_0
      000B49 F8               [12] 2239 	mov	r0,a
      000B4A E5 16            [12] 2240 	mov	a,(_main_sloc1_1_0 + 1)
      000B4C 95 12            [12] 2241 	subb	a,(_main_sloc0_1_0 + 1)
      000B4E F9               [12] 2242 	mov	r1,a
      000B4F E5 17            [12] 2243 	mov	a,(_main_sloc1_1_0 + 2)
      000B51 95 13            [12] 2244 	subb	a,(_main_sloc0_1_0 + 2)
      000B53 FA               [12] 2245 	mov	r2,a
      000B54 E5 18            [12] 2246 	mov	a,(_main_sloc1_1_0 + 3)
      000B56 95 14            [12] 2247 	subb	a,(_main_sloc0_1_0 + 3)
      000B58 FB               [12] 2248 	mov	r3,a
      000B59 C3               [12] 2249 	clr	c
      000B5A E8               [12] 2250 	mov	a,r0
      000B5B 94 01            [12] 2251 	subb	a,#0x01
      000B5D E9               [12] 2252 	mov	a,r1
      000B5E 94 00            [12] 2253 	subb	a,#0x00
      000B60 EA               [12] 2254 	mov	a,r2
      000B61 94 00            [12] 2255 	subb	a,#0x00
      000B63 EB               [12] 2256 	mov	a,r3
      000B64 94 00            [12] 2257 	subb	a,#0x00
      000B66 40 03            [24] 2258 	jc	00274$
      000B68 02 0C 93         [24] 2259 	ljmp	00135$
      000B6B                       2260 00274$:
      000B6B 90 00 1B         [24] 2261 	mov	dptr,#_main_final_calc_10000_60
      000B6E E5 11            [12] 2262 	mov	a,_main_sloc0_1_0
      000B70 F0               [24] 2263 	movx	@dptr,a
      000B71 E5 12            [12] 2264 	mov	a,(_main_sloc0_1_0 + 1)
      000B73 A3               [24] 2265 	inc	dptr
      000B74 F0               [24] 2266 	movx	@dptr,a
      000B75 E5 13            [12] 2267 	mov	a,(_main_sloc0_1_0 + 2)
      000B77 A3               [24] 2268 	inc	dptr
      000B78 F0               [24] 2269 	movx	@dptr,a
      000B79 E5 14            [12] 2270 	mov	a,(_main_sloc0_1_0 + 3)
      000B7B A3               [24] 2271 	inc	dptr
      000B7C F0               [24] 2272 	movx	@dptr,a
      000B7D 02 0C 93         [24] 2273 	ljmp	00135$
      000B80                       2274 00124$:
                                   2275 ;	main.c:315: if ((last_display_val - final_calc) < 1) final_calc = last_display_val;
      000B80 E5 11            [12] 2276 	mov	a,_main_sloc0_1_0
      000B82 C3               [12] 2277 	clr	c
      000B83 95 15            [12] 2278 	subb	a,_main_sloc1_1_0
      000B85 F8               [12] 2279 	mov	r0,a
      000B86 E5 12            [12] 2280 	mov	a,(_main_sloc0_1_0 + 1)
      000B88 95 16            [12] 2281 	subb	a,(_main_sloc1_1_0 + 1)
      000B8A F9               [12] 2282 	mov	r1,a
      000B8B E5 13            [12] 2283 	mov	a,(_main_sloc0_1_0 + 2)
      000B8D 95 17            [12] 2284 	subb	a,(_main_sloc1_1_0 + 2)
      000B8F FA               [12] 2285 	mov	r2,a
      000B90 E5 14            [12] 2286 	mov	a,(_main_sloc0_1_0 + 3)
      000B92 95 18            [12] 2287 	subb	a,(_main_sloc1_1_0 + 3)
      000B94 FB               [12] 2288 	mov	r3,a
      000B95 C3               [12] 2289 	clr	c
      000B96 E8               [12] 2290 	mov	a,r0
      000B97 94 01            [12] 2291 	subb	a,#0x01
      000B99 E9               [12] 2292 	mov	a,r1
      000B9A 94 00            [12] 2293 	subb	a,#0x00
      000B9C EA               [12] 2294 	mov	a,r2
      000B9D 94 00            [12] 2295 	subb	a,#0x00
      000B9F EB               [12] 2296 	mov	a,r3
      000BA0 94 00            [12] 2297 	subb	a,#0x00
      000BA2 40 03            [24] 2298 	jc	00275$
      000BA4 02 0C 93         [24] 2299 	ljmp	00135$
      000BA7                       2300 00275$:
      000BA7 90 00 1B         [24] 2301 	mov	dptr,#_main_final_calc_10000_60
      000BAA E5 11            [12] 2302 	mov	a,_main_sloc0_1_0
      000BAC F0               [24] 2303 	movx	@dptr,a
      000BAD E5 12            [12] 2304 	mov	a,(_main_sloc0_1_0 + 1)
      000BAF A3               [24] 2305 	inc	dptr
      000BB0 F0               [24] 2306 	movx	@dptr,a
      000BB1 E5 13            [12] 2307 	mov	a,(_main_sloc0_1_0 + 2)
      000BB3 A3               [24] 2308 	inc	dptr
      000BB4 F0               [24] 2309 	movx	@dptr,a
      000BB5 E5 14            [12] 2310 	mov	a,(_main_sloc0_1_0 + 3)
      000BB7 A3               [24] 2311 	inc	dptr
      000BB8 F0               [24] 2312 	movx	@dptr,a
      000BB9 02 0C 93         [24] 2313 	ljmp	00135$
      000BBC                       2314 00134$:
                                   2315 ;	main.c:319: mode_uf = 0; // Режим "нФ"
      000BBC 90 00 27         [24] 2316 	mov	dptr,#_main_mode_uf_10000_60
      000BBF E4               [12] 2317 	clr	a
      000BC0 F0               [24] 2318 	movx	@dptr,a
                                   2319 ;	main.c:320: is_first_run = 1;
      000BC1 90 00 28         [24] 2320 	mov	dptr,#_main_is_first_run_10000_60
      000BC4 04               [12] 2321 	inc	a
      000BC5 F0               [24] 2322 	movx	@dptr,a
                                   2323 ;	main.c:323: final_calc = (filtered_ticks * 23) / 100;
      000BC6 90 00 42         [24] 2324 	mov	dptr,#__mullong_PARM_2
      000BC9 EC               [12] 2325 	mov	a,r4
      000BCA F0               [24] 2326 	movx	@dptr,a
      000BCB ED               [12] 2327 	mov	a,r5
      000BCC A3               [24] 2328 	inc	dptr
      000BCD F0               [24] 2329 	movx	@dptr,a
      000BCE EE               [12] 2330 	mov	a,r6
      000BCF A3               [24] 2331 	inc	dptr
      000BD0 F0               [24] 2332 	movx	@dptr,a
      000BD1 EF               [12] 2333 	mov	a,r7
      000BD2 A3               [24] 2334 	inc	dptr
      000BD3 F0               [24] 2335 	movx	@dptr,a
      000BD4 90 00 17         [24] 2336 	mov	dptr,#0x0017
      000BD7 E4               [12] 2337 	clr	a
      000BD8 F5 F0            [12] 2338 	mov	b,a
      000BDA 12 0F 7A         [24] 2339 	lcall	__mullong
      000BDD AC 82            [24] 2340 	mov	r4, dpl
      000BDF AD 83            [24] 2341 	mov	r5, dph
      000BE1 AE F0            [24] 2342 	mov	r6, b
      000BE3 FF               [12] 2343 	mov	r7, a
      000BE4 90 00 35         [24] 2344 	mov	dptr,#__divulong_PARM_2
      000BE7 74 64            [12] 2345 	mov	a,#0x64
      000BE9 F0               [24] 2346 	movx	@dptr,a
      000BEA E4               [12] 2347 	clr	a
      000BEB A3               [24] 2348 	inc	dptr
      000BEC F0               [24] 2349 	movx	@dptr,a
      000BED A3               [24] 2350 	inc	dptr
      000BEE F0               [24] 2351 	movx	@dptr,a
      000BEF A3               [24] 2352 	inc	dptr
      000BF0 F0               [24] 2353 	movx	@dptr,a
      000BF1 8C 82            [24] 2354 	mov	dpl, r4
      000BF3 8D 83            [24] 2355 	mov	dph, r5
      000BF5 8E F0            [24] 2356 	mov	b, r6
      000BF7 EF               [12] 2357 	mov	a, r7
      000BF8 12 0E 86         [24] 2358 	lcall	__divulong
      000BFB 85 82 15         [24] 2359 	mov	_main_sloc1_1_0,dpl
      000BFE 85 83 16         [24] 2360 	mov	(_main_sloc1_1_0 + 1),dph
      000C01 85 F0 17         [24] 2361 	mov	(_main_sloc1_1_0 + 2),b
      000C04 F5 18            [12] 2362 	mov	(_main_sloc1_1_0 + 3),a
      000C06 90 00 1B         [24] 2363 	mov	dptr,#_main_final_calc_10000_60
      000C09 E5 15            [12] 2364 	mov	a,_main_sloc1_1_0
      000C0B F0               [24] 2365 	movx	@dptr,a
      000C0C E5 16            [12] 2366 	mov	a,(_main_sloc1_1_0 + 1)
      000C0E A3               [24] 2367 	inc	dptr
      000C0F F0               [24] 2368 	movx	@dptr,a
      000C10 E5 17            [12] 2369 	mov	a,(_main_sloc1_1_0 + 2)
      000C12 A3               [24] 2370 	inc	dptr
      000C13 F0               [24] 2371 	movx	@dptr,a
      000C14 E5 18            [12] 2372 	mov	a,(_main_sloc1_1_0 + 3)
      000C16 A3               [24] 2373 	inc	dptr
      000C17 F0               [24] 2374 	movx	@dptr,a
                                   2375 ;	main.c:325: if (final_calc > last_display_val) {
      000C18 90 00 1F         [24] 2376 	mov	dptr,#_main_last_display_val_10000_60
      000C1B E0               [24] 2377 	movx	a,@dptr
      000C1C F8               [12] 2378 	mov	r0,a
      000C1D A3               [24] 2379 	inc	dptr
      000C1E E0               [24] 2380 	movx	a,@dptr
      000C1F F9               [12] 2381 	mov	r1,a
      000C20 A3               [24] 2382 	inc	dptr
      000C21 E0               [24] 2383 	movx	a,@dptr
      000C22 FA               [12] 2384 	mov	r2,a
      000C23 A3               [24] 2385 	inc	dptr
      000C24 E0               [24] 2386 	movx	a,@dptr
      000C25 FB               [12] 2387 	mov	r3,a
      000C26 C3               [12] 2388 	clr	c
      000C27 E8               [12] 2389 	mov	a,r0
      000C28 95 15            [12] 2390 	subb	a,_main_sloc1_1_0
      000C2A E9               [12] 2391 	mov	a,r1
      000C2B 95 16            [12] 2392 	subb	a,(_main_sloc1_1_0 + 1)
      000C2D EA               [12] 2393 	mov	a,r2
      000C2E 95 17            [12] 2394 	subb	a,(_main_sloc1_1_0 + 2)
      000C30 EB               [12] 2395 	mov	a,r3
      000C31 95 18            [12] 2396 	subb	a,(_main_sloc1_1_0 + 3)
      000C33 50 30            [24] 2397 	jnc	00131$
                                   2398 ;	main.c:326: if ((final_calc - last_display_val) < 2) final_calc = last_display_val;
      000C35 E5 15            [12] 2399 	mov	a,_main_sloc1_1_0
      000C37 C3               [12] 2400 	clr	c
      000C38 98               [12] 2401 	subb	a,r0
      000C39 FC               [12] 2402 	mov	r4,a
      000C3A E5 16            [12] 2403 	mov	a,(_main_sloc1_1_0 + 1)
      000C3C 99               [12] 2404 	subb	a,r1
      000C3D FD               [12] 2405 	mov	r5,a
      000C3E E5 17            [12] 2406 	mov	a,(_main_sloc1_1_0 + 2)
      000C40 9A               [12] 2407 	subb	a,r2
      000C41 FE               [12] 2408 	mov	r6,a
      000C42 E5 18            [12] 2409 	mov	a,(_main_sloc1_1_0 + 3)
      000C44 9B               [12] 2410 	subb	a,r3
      000C45 FF               [12] 2411 	mov	r7,a
      000C46 C3               [12] 2412 	clr	c
      000C47 EC               [12] 2413 	mov	a,r4
      000C48 94 02            [12] 2414 	subb	a,#0x02
      000C4A ED               [12] 2415 	mov	a,r5
      000C4B 94 00            [12] 2416 	subb	a,#0x00
      000C4D EE               [12] 2417 	mov	a,r6
      000C4E 94 00            [12] 2418 	subb	a,#0x00
      000C50 EF               [12] 2419 	mov	a,r7
      000C51 94 00            [12] 2420 	subb	a,#0x00
      000C53 50 3E            [24] 2421 	jnc	00135$
      000C55 90 00 1B         [24] 2422 	mov	dptr,#_main_final_calc_10000_60
      000C58 E8               [12] 2423 	mov	a,r0
      000C59 F0               [24] 2424 	movx	@dptr,a
      000C5A E9               [12] 2425 	mov	a,r1
      000C5B A3               [24] 2426 	inc	dptr
      000C5C F0               [24] 2427 	movx	@dptr,a
      000C5D EA               [12] 2428 	mov	a,r2
      000C5E A3               [24] 2429 	inc	dptr
      000C5F F0               [24] 2430 	movx	@dptr,a
      000C60 EB               [12] 2431 	mov	a,r3
      000C61 A3               [24] 2432 	inc	dptr
      000C62 F0               [24] 2433 	movx	@dptr,a
      000C63 80 2E            [24] 2434 	sjmp	00135$
      000C65                       2435 00131$:
                                   2436 ;	main.c:328: if ((last_display_val - final_calc) < 2) final_calc = last_display_val;
      000C65 E8               [12] 2437 	mov	a,r0
      000C66 C3               [12] 2438 	clr	c
      000C67 95 15            [12] 2439 	subb	a,_main_sloc1_1_0
      000C69 FC               [12] 2440 	mov	r4,a
      000C6A E9               [12] 2441 	mov	a,r1
      000C6B 95 16            [12] 2442 	subb	a,(_main_sloc1_1_0 + 1)
      000C6D FD               [12] 2443 	mov	r5,a
      000C6E EA               [12] 2444 	mov	a,r2
      000C6F 95 17            [12] 2445 	subb	a,(_main_sloc1_1_0 + 2)
      000C71 FE               [12] 2446 	mov	r6,a
      000C72 EB               [12] 2447 	mov	a,r3
      000C73 95 18            [12] 2448 	subb	a,(_main_sloc1_1_0 + 3)
      000C75 FF               [12] 2449 	mov	r7,a
      000C76 C3               [12] 2450 	clr	c
      000C77 EC               [12] 2451 	mov	a,r4
      000C78 94 02            [12] 2452 	subb	a,#0x02
      000C7A ED               [12] 2453 	mov	a,r5
      000C7B 94 00            [12] 2454 	subb	a,#0x00
      000C7D EE               [12] 2455 	mov	a,r6
      000C7E 94 00            [12] 2456 	subb	a,#0x00
      000C80 EF               [12] 2457 	mov	a,r7
      000C81 94 00            [12] 2458 	subb	a,#0x00
      000C83 50 0E            [24] 2459 	jnc	00135$
      000C85 90 00 1B         [24] 2460 	mov	dptr,#_main_final_calc_10000_60
      000C88 E8               [12] 2461 	mov	a,r0
      000C89 F0               [24] 2462 	movx	@dptr,a
      000C8A E9               [12] 2463 	mov	a,r1
      000C8B A3               [24] 2464 	inc	dptr
      000C8C F0               [24] 2465 	movx	@dptr,a
      000C8D EA               [12] 2466 	mov	a,r2
      000C8E A3               [24] 2467 	inc	dptr
      000C8F F0               [24] 2468 	movx	@dptr,a
      000C90 EB               [12] 2469 	mov	a,r3
      000C91 A3               [24] 2470 	inc	dptr
      000C92 F0               [24] 2471 	movx	@dptr,a
      000C93                       2472 00135$:
                                   2473 ;	main.c:333: if (final_calc != last_display_val) {
      000C93 90 00 1B         [24] 2474 	mov	dptr,#_main_final_calc_10000_60
      000C96 E0               [24] 2475 	movx	a,@dptr
      000C97 FC               [12] 2476 	mov	r4,a
      000C98 A3               [24] 2477 	inc	dptr
      000C99 E0               [24] 2478 	movx	a,@dptr
      000C9A FD               [12] 2479 	mov	r5,a
      000C9B A3               [24] 2480 	inc	dptr
      000C9C E0               [24] 2481 	movx	a,@dptr
      000C9D FE               [12] 2482 	mov	r6,a
      000C9E A3               [24] 2483 	inc	dptr
      000C9F E0               [24] 2484 	movx	a,@dptr
      000CA0 FF               [12] 2485 	mov	r7,a
      000CA1 90 00 1F         [24] 2486 	mov	dptr,#_main_last_display_val_10000_60
      000CA4 E0               [24] 2487 	movx	a,@dptr
      000CA5 F8               [12] 2488 	mov	r0,a
      000CA6 A3               [24] 2489 	inc	dptr
      000CA7 E0               [24] 2490 	movx	a,@dptr
      000CA8 F9               [12] 2491 	mov	r1,a
      000CA9 A3               [24] 2492 	inc	dptr
      000CAA E0               [24] 2493 	movx	a,@dptr
      000CAB FA               [12] 2494 	mov	r2,a
      000CAC A3               [24] 2495 	inc	dptr
      000CAD E0               [24] 2496 	movx	a,@dptr
      000CAE FB               [12] 2497 	mov	r3,a
      000CAF EC               [12] 2498 	mov	a,r4
      000CB0 B5 00 0E         [24] 2499 	cjne	a,ar0,00279$
      000CB3 ED               [12] 2500 	mov	a,r5
      000CB4 B5 01 0A         [24] 2501 	cjne	a,ar1,00279$
      000CB7 EE               [12] 2502 	mov	a,r6
      000CB8 B5 02 06         [24] 2503 	cjne	a,ar2,00279$
      000CBB EF               [12] 2504 	mov	a,r7
      000CBC B5 03 02         [24] 2505 	cjne	a,ar3,00279$
      000CBF 80 42            [24] 2506 	sjmp	00137$
      000CC1                       2507 00279$:
                                   2508 ;	main.c:334: SSD1306_DisplayResult(3, 16, final_calc, mode_uf);
      000CC1 90 00 27         [24] 2509 	mov	dptr,#_main_mode_uf_10000_60
      000CC4 E0               [24] 2510 	movx	a,@dptr
      000CC5 FB               [12] 2511 	mov	r3,a
      000CC6 90 00 13         [24] 2512 	mov	dptr,#_SSD1306_DisplayResult_PARM_2
      000CC9 74 10            [12] 2513 	mov	a,#0x10
      000CCB F0               [24] 2514 	movx	@dptr,a
      000CCC 90 00 14         [24] 2515 	mov	dptr,#_SSD1306_DisplayResult_PARM_3
      000CCF EC               [12] 2516 	mov	a,r4
      000CD0 F0               [24] 2517 	movx	@dptr,a
      000CD1 ED               [12] 2518 	mov	a,r5
      000CD2 A3               [24] 2519 	inc	dptr
      000CD3 F0               [24] 2520 	movx	@dptr,a
      000CD4 EE               [12] 2521 	mov	a,r6
      000CD5 A3               [24] 2522 	inc	dptr
      000CD6 F0               [24] 2523 	movx	@dptr,a
      000CD7 EF               [12] 2524 	mov	a,r7
      000CD8 A3               [24] 2525 	inc	dptr
      000CD9 F0               [24] 2526 	movx	@dptr,a
      000CDA 90 00 18         [24] 2527 	mov	dptr,#_SSD1306_DisplayResult_PARM_4
      000CDD EB               [12] 2528 	mov	a,r3
      000CDE F0               [24] 2529 	movx	@dptr,a
      000CDF 75 82 03         [24] 2530 	mov	dpl, #0x03
      000CE2 C0 07            [24] 2531 	push	ar7
      000CE4 C0 06            [24] 2532 	push	ar6
      000CE6 C0 05            [24] 2533 	push	ar5
      000CE8 C0 04            [24] 2534 	push	ar4
      000CEA 12 04 50         [24] 2535 	lcall	_SSD1306_DisplayResult
      000CED D0 04            [24] 2536 	pop	ar4
      000CEF D0 05            [24] 2537 	pop	ar5
      000CF1 D0 06            [24] 2538 	pop	ar6
      000CF3 D0 07            [24] 2539 	pop	ar7
                                   2540 ;	main.c:335: last_display_val = final_calc;
      000CF5 90 00 1F         [24] 2541 	mov	dptr,#_main_last_display_val_10000_60
      000CF8 EC               [12] 2542 	mov	a,r4
      000CF9 F0               [24] 2543 	movx	@dptr,a
      000CFA ED               [12] 2544 	mov	a,r5
      000CFB A3               [24] 2545 	inc	dptr
      000CFC F0               [24] 2546 	movx	@dptr,a
      000CFD EE               [12] 2547 	mov	a,r6
      000CFE A3               [24] 2548 	inc	dptr
      000CFF F0               [24] 2549 	movx	@dptr,a
      000D00 EF               [12] 2550 	mov	a,r7
      000D01 A3               [24] 2551 	inc	dptr
      000D02 F0               [24] 2552 	movx	@dptr,a
      000D03                       2553 00137$:
                                   2554 ;	main.c:340: P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 0;
      000D03 53 B1 FD         [24] 2555 	anl	_P3M1,#0xfd
      000D06 43 B2 02         [24] 2556 	orl	_P3M0,#0x02
                                   2557 ;	assignBit
      000D09 C2 B1            [12] 2558 	clr	_PIN_R1_10K
                                   2559 ;	main.c:344: for(discharge = 0; discharge < 30; discharge++) {
      000D0B 90 00 2A         [24] 2560 	mov	dptr,#_main_discharge_10000_60
      000D0E E4               [12] 2561 	clr	a
      000D0F F0               [24] 2562 	movx	@dptr,a
      000D10 A3               [24] 2563 	inc	dptr
      000D11 F0               [24] 2564 	movx	@dptr,a
      000D12                       2565 00145$:
      000D12 90 00 2A         [24] 2566 	mov	dptr,#_main_discharge_10000_60
      000D15 E0               [24] 2567 	movx	a,@dptr
      000D16 FE               [12] 2568 	mov	r6,a
      000D17 A3               [24] 2569 	inc	dptr
      000D18 E0               [24] 2570 	movx	a,@dptr
      000D19 FF               [12] 2571 	mov	r7,a
      000D1A C3               [12] 2572 	clr	c
      000D1B EE               [12] 2573 	mov	a,r6
      000D1C 94 1E            [12] 2574 	subb	a,#0x1e
      000D1E EF               [12] 2575 	mov	a,r7
      000D1F 94 00            [12] 2576 	subb	a,#0x00
      000D21 40 03            [24] 2577 	jc	00280$
      000D23 02 09 7B         [24] 2578 	ljmp	00142$
      000D26                       2579 00280$:
                                   2580 ;	main.c:345: Delay_ms(10);
      000D26 90 00 0A         [24] 2581 	mov	dptr,#0x000a
      000D29 12 00 B0         [24] 2582 	lcall	_Delay_ms
                                   2583 ;	main.c:346: if (PIN_BUTTON == 0) break; // Если во время паузы нажали кнопку — мгновенно прерываем её
      000D2C 20 B0 03         [24] 2584 	jb	_PIN_BUTTON,00281$
      000D2F 02 09 7B         [24] 2585 	ljmp	00142$
      000D32                       2586 00281$:
                                   2587 ;	main.c:344: for(discharge = 0; discharge < 30; discharge++) {
      000D32 90 00 2A         [24] 2588 	mov	dptr,#_main_discharge_10000_60
      000D35 E0               [24] 2589 	movx	a,@dptr
      000D36 FE               [12] 2590 	mov	r6,a
      000D37 A3               [24] 2591 	inc	dptr
      000D38 E0               [24] 2592 	movx	a,@dptr
      000D39 FF               [12] 2593 	mov	r7,a
      000D3A 90 00 2A         [24] 2594 	mov	dptr,#_main_discharge_10000_60
      000D3D 74 01            [12] 2595 	mov	a,#0x01
      000D3F 2E               [12] 2596 	add	a, r6
      000D40 F0               [24] 2597 	movx	@dptr,a
      000D41 E4               [12] 2598 	clr	a
      000D42 3F               [12] 2599 	addc	a, r7
      000D43 A3               [24] 2600 	inc	dptr
      000D44 F0               [24] 2601 	movx	@dptr,a
                                   2602 ;	main.c:349: }
      000D45 80 CB            [24] 2603 	sjmp	00145$
                                   2604 	.area CSEG    (CODE)
                                   2605 	.area CONST   (CODE)
                                   2606 	.area CONST   (CODE)
      001006                       2607 _Font_8x8:
      001006 3E                    2608 	.db #0x3e	; 62
      001007 51                    2609 	.db #0x51	; 81	'Q'
      001008 49                    2610 	.db #0x49	; 73	'I'
      001009 45                    2611 	.db #0x45	; 69	'E'
      00100A 3E                    2612 	.db #0x3e	; 62
      00100B 00                    2613 	.db #0x00	; 0
      00100C 00                    2614 	.db #0x00	; 0
      00100D 00                    2615 	.db #0x00	; 0
      00100E 00                    2616 	.db #0x00	; 0
      00100F 42                    2617 	.db #0x42	; 66	'B'
      001010 7F                    2618 	.db #0x7f	; 127
      001011 40                    2619 	.db #0x40	; 64
      001012 00                    2620 	.db #0x00	; 0
      001013 00                    2621 	.db #0x00	; 0
      001014 00                    2622 	.db #0x00	; 0
      001015 00                    2623 	.db #0x00	; 0
      001016 42                    2624 	.db #0x42	; 66	'B'
      001017 61                    2625 	.db #0x61	; 97	'a'
      001018 51                    2626 	.db #0x51	; 81	'Q'
      001019 49                    2627 	.db #0x49	; 73	'I'
      00101A 46                    2628 	.db #0x46	; 70	'F'
      00101B 00                    2629 	.db #0x00	; 0
      00101C 00                    2630 	.db #0x00	; 0
      00101D 00                    2631 	.db #0x00	; 0
      00101E 21                    2632 	.db #0x21	; 33
      00101F 41                    2633 	.db #0x41	; 65	'A'
      001020 45                    2634 	.db #0x45	; 69	'E'
      001021 4B                    2635 	.db #0x4b	; 75	'K'
      001022 31                    2636 	.db #0x31	; 49	'1'
      001023 00                    2637 	.db #0x00	; 0
      001024 00                    2638 	.db #0x00	; 0
      001025 00                    2639 	.db #0x00	; 0
      001026 18                    2640 	.db #0x18	; 24
      001027 14                    2641 	.db #0x14	; 20
      001028 12                    2642 	.db #0x12	; 18
      001029 7F                    2643 	.db #0x7f	; 127
      00102A 10                    2644 	.db #0x10	; 16
      00102B 00                    2645 	.db #0x00	; 0
      00102C 00                    2646 	.db #0x00	; 0
      00102D 00                    2647 	.db #0x00	; 0
      00102E 27                    2648 	.db #0x27	; 39
      00102F 45                    2649 	.db #0x45	; 69	'E'
      001030 45                    2650 	.db #0x45	; 69	'E'
      001031 45                    2651 	.db #0x45	; 69	'E'
      001032 39                    2652 	.db #0x39	; 57	'9'
      001033 00                    2653 	.db #0x00	; 0
      001034 00                    2654 	.db #0x00	; 0
      001035 00                    2655 	.db #0x00	; 0
      001036 3C                    2656 	.db #0x3c	; 60
      001037 4A                    2657 	.db #0x4a	; 74	'J'
      001038 49                    2658 	.db #0x49	; 73	'I'
      001039 49                    2659 	.db #0x49	; 73	'I'
      00103A 30                    2660 	.db #0x30	; 48	'0'
      00103B 00                    2661 	.db #0x00	; 0
      00103C 00                    2662 	.db #0x00	; 0
      00103D 00                    2663 	.db #0x00	; 0
      00103E 01                    2664 	.db #0x01	; 1
      00103F 71                    2665 	.db #0x71	; 113	'q'
      001040 09                    2666 	.db #0x09	; 9
      001041 05                    2667 	.db #0x05	; 5
      001042 03                    2668 	.db #0x03	; 3
      001043 00                    2669 	.db #0x00	; 0
      001044 00                    2670 	.db #0x00	; 0
      001045 00                    2671 	.db #0x00	; 0
      001046 36                    2672 	.db #0x36	; 54	'6'
      001047 49                    2673 	.db #0x49	; 73	'I'
      001048 49                    2674 	.db #0x49	; 73	'I'
      001049 49                    2675 	.db #0x49	; 73	'I'
      00104A 36                    2676 	.db #0x36	; 54	'6'
      00104B 00                    2677 	.db #0x00	; 0
      00104C 00                    2678 	.db #0x00	; 0
      00104D 00                    2679 	.db #0x00	; 0
      00104E 06                    2680 	.db #0x06	; 6
      00104F 49                    2681 	.db #0x49	; 73	'I'
      001050 49                    2682 	.db #0x49	; 73	'I'
      001051 29                    2683 	.db #0x29	; 41
      001052 1E                    2684 	.db #0x1e	; 30
      001053 00                    2685 	.db #0x00	; 0
      001054 00                    2686 	.db #0x00	; 0
      001055 00                    2687 	.db #0x00	; 0
      001056 08                    2688 	.db #0x08	; 8
      001057 08                    2689 	.db #0x08	; 8
      001058 08                    2690 	.db #0x08	; 8
      001059 08                    2691 	.db #0x08	; 8
      00105A 08                    2692 	.db #0x08	; 8
      00105B 00                    2693 	.db #0x00	; 0
      00105C 00                    2694 	.db #0x00	; 0
      00105D 00                    2695 	.db #0x00	; 0
      00105E 00                    2696 	.db #0x00	; 0
      00105F 00                    2697 	.db #0x00	; 0
      001060 00                    2698 	.db #0x00	; 0
      001061 00                    2699 	.db #0x00	; 0
      001062 00                    2700 	.db #0x00	; 0
      001063 00                    2701 	.db #0x00	; 0
      001064 00                    2702 	.db #0x00	; 0
      001065 00                    2703 	.db #0x00	; 0
      001066 00                    2704 	.db #0x00	; 0
      001067 60                    2705 	.db #0x60	; 96
      001068 60                    2706 	.db #0x60	; 96
      001069 00                    2707 	.db #0x00	; 0
      00106A 00                    2708 	.db #0x00	; 0
      00106B 00                    2709 	.db #0x00	; 0
      00106C 00                    2710 	.db #0x00	; 0
      00106D 00                    2711 	.db #0x00	; 0
      00106E 00                    2712 	.db #0x00	; 0
      00106F 36                    2713 	.db #0x36	; 54	'6'
      001070 36                    2714 	.db #0x36	; 54	'6'
      001071 00                    2715 	.db #0x00	; 0
      001072 00                    2716 	.db #0x00	; 0
      001073 00                    2717 	.db #0x00	; 0
      001074 00                    2718 	.db #0x00	; 0
      001075 00                    2719 	.db #0x00	; 0
      001076 06                    2720 	.db #0x06	; 6
      001077 09                    2721 	.db #0x09	; 9
      001078 09                    2722 	.db #0x09	; 9
      001079 06                    2723 	.db #0x06	; 6
      00107A 00                    2724 	.db #0x00	; 0
      00107B 00                    2725 	.db #0x00	; 0
      00107C 00                    2726 	.db #0x00	; 0
      00107D 00                    2727 	.db #0x00	; 0
      00107E 14                    2728 	.db #0x14	; 20
      00107F 14                    2729 	.db #0x14	; 20
      001080 14                    2730 	.db #0x14	; 20
      001081 14                    2731 	.db #0x14	; 20
      001082 14                    2732 	.db #0x14	; 20
      001083 00                    2733 	.db #0x00	; 0
      001084 00                    2734 	.db #0x00	; 0
      001085 00                    2735 	.db #0x00	; 0
      001086 7E                    2736 	.db #0x7e	; 126
      001087 11                    2737 	.db #0x11	; 17
      001088 11                    2738 	.db #0x11	; 17
      001089 11                    2739 	.db #0x11	; 17
      00108A 7E                    2740 	.db #0x7e	; 126
      00108B 00                    2741 	.db #0x00	; 0
      00108C 00                    2742 	.db #0x00	; 0
      00108D 00                    2743 	.db #0x00	; 0
      00108E 7F                    2744 	.db #0x7f	; 127
      00108F 49                    2745 	.db #0x49	; 73	'I'
      001090 49                    2746 	.db #0x49	; 73	'I'
      001091 49                    2747 	.db #0x49	; 73	'I'
      001092 36                    2748 	.db #0x36	; 54	'6'
      001093 00                    2749 	.db #0x00	; 0
      001094 00                    2750 	.db #0x00	; 0
      001095 00                    2751 	.db #0x00	; 0
      001096 3E                    2752 	.db #0x3e	; 62
      001097 41                    2753 	.db #0x41	; 65	'A'
      001098 41                    2754 	.db #0x41	; 65	'A'
      001099 41                    2755 	.db #0x41	; 65	'A'
      00109A 22                    2756 	.db #0x22	; 34
      00109B 00                    2757 	.db #0x00	; 0
      00109C 00                    2758 	.db #0x00	; 0
      00109D 00                    2759 	.db #0x00	; 0
      00109E 7F                    2760 	.db #0x7f	; 127
      00109F 41                    2761 	.db #0x41	; 65	'A'
      0010A0 41                    2762 	.db #0x41	; 65	'A'
      0010A1 22                    2763 	.db #0x22	; 34
      0010A2 1C                    2764 	.db #0x1c	; 28
      0010A3 00                    2765 	.db #0x00	; 0
      0010A4 00                    2766 	.db #0x00	; 0
      0010A5 00                    2767 	.db #0x00	; 0
      0010A6 7F                    2768 	.db #0x7f	; 127
      0010A7 49                    2769 	.db #0x49	; 73	'I'
      0010A8 49                    2770 	.db #0x49	; 73	'I'
      0010A9 49                    2771 	.db #0x49	; 73	'I'
      0010AA 41                    2772 	.db #0x41	; 65	'A'
      0010AB 00                    2773 	.db #0x00	; 0
      0010AC 00                    2774 	.db #0x00	; 0
      0010AD 00                    2775 	.db #0x00	; 0
      0010AE 7F                    2776 	.db #0x7f	; 127
      0010AF 09                    2777 	.db #0x09	; 9
      0010B0 09                    2778 	.db #0x09	; 9
      0010B1 01                    2779 	.db #0x01	; 1
      0010B2 01                    2780 	.db #0x01	; 1
      0010B3 00                    2781 	.db #0x00	; 0
      0010B4 00                    2782 	.db #0x00	; 0
      0010B5 00                    2783 	.db #0x00	; 0
      0010B6 3E                    2784 	.db #0x3e	; 62
      0010B7 41                    2785 	.db #0x41	; 65	'A'
      0010B8 49                    2786 	.db #0x49	; 73	'I'
      0010B9 49                    2787 	.db #0x49	; 73	'I'
      0010BA 7A                    2788 	.db #0x7a	; 122	'z'
      0010BB 00                    2789 	.db #0x00	; 0
      0010BC 00                    2790 	.db #0x00	; 0
      0010BD 00                    2791 	.db #0x00	; 0
      0010BE 7F                    2792 	.db #0x7f	; 127
      0010BF 08                    2793 	.db #0x08	; 8
      0010C0 08                    2794 	.db #0x08	; 8
      0010C1 08                    2795 	.db #0x08	; 8
      0010C2 7F                    2796 	.db #0x7f	; 127
      0010C3 00                    2797 	.db #0x00	; 0
      0010C4 00                    2798 	.db #0x00	; 0
      0010C5 00                    2799 	.db #0x00	; 0
      0010C6 00                    2800 	.db #0x00	; 0
      0010C7 41                    2801 	.db #0x41	; 65	'A'
      0010C8 7F                    2802 	.db #0x7f	; 127
      0010C9 41                    2803 	.db #0x41	; 65	'A'
      0010CA 00                    2804 	.db #0x00	; 0
      0010CB 00                    2805 	.db #0x00	; 0
      0010CC 00                    2806 	.db #0x00	; 0
      0010CD 00                    2807 	.db #0x00	; 0
      0010CE 20                    2808 	.db #0x20	; 32
      0010CF 40                    2809 	.db #0x40	; 64
      0010D0 41                    2810 	.db #0x41	; 65	'A'
      0010D1 3F                    2811 	.db #0x3f	; 63
      0010D2 01                    2812 	.db #0x01	; 1
      0010D3 00                    2813 	.db #0x00	; 0
      0010D4 00                    2814 	.db #0x00	; 0
      0010D5 00                    2815 	.db #0x00	; 0
      0010D6 7F                    2816 	.db #0x7f	; 127
      0010D7 08                    2817 	.db #0x08	; 8
      0010D8 14                    2818 	.db #0x14	; 20
      0010D9 22                    2819 	.db #0x22	; 34
      0010DA 41                    2820 	.db #0x41	; 65	'A'
      0010DB 00                    2821 	.db #0x00	; 0
      0010DC 00                    2822 	.db #0x00	; 0
      0010DD 00                    2823 	.db #0x00	; 0
      0010DE 7F                    2824 	.db #0x7f	; 127
      0010DF 40                    2825 	.db #0x40	; 64
      0010E0 40                    2826 	.db #0x40	; 64
      0010E1 40                    2827 	.db #0x40	; 64
      0010E2 40                    2828 	.db #0x40	; 64
      0010E3 00                    2829 	.db #0x00	; 0
      0010E4 00                    2830 	.db #0x00	; 0
      0010E5 00                    2831 	.db #0x00	; 0
      0010E6 7F                    2832 	.db #0x7f	; 127
      0010E7 02                    2833 	.db #0x02	; 2
      0010E8 0C                    2834 	.db #0x0c	; 12
      0010E9 02                    2835 	.db #0x02	; 2
      0010EA 7F                    2836 	.db #0x7f	; 127
      0010EB 00                    2837 	.db #0x00	; 0
      0010EC 00                    2838 	.db #0x00	; 0
      0010ED 00                    2839 	.db #0x00	; 0
      0010EE 7F                    2840 	.db #0x7f	; 127
      0010EF 04                    2841 	.db #0x04	; 4
      0010F0 08                    2842 	.db #0x08	; 8
      0010F1 10                    2843 	.db #0x10	; 16
      0010F2 7F                    2844 	.db #0x7f	; 127
      0010F3 00                    2845 	.db #0x00	; 0
      0010F4 00                    2846 	.db #0x00	; 0
      0010F5 00                    2847 	.db #0x00	; 0
      0010F6 3E                    2848 	.db #0x3e	; 62
      0010F7 41                    2849 	.db #0x41	; 65	'A'
      0010F8 41                    2850 	.db #0x41	; 65	'A'
      0010F9 41                    2851 	.db #0x41	; 65	'A'
      0010FA 3E                    2852 	.db #0x3e	; 62
      0010FB 00                    2853 	.db #0x00	; 0
      0010FC 00                    2854 	.db #0x00	; 0
      0010FD 00                    2855 	.db #0x00	; 0
      0010FE 7F                    2856 	.db #0x7f	; 127
      0010FF 09                    2857 	.db #0x09	; 9
      001100 09                    2858 	.db #0x09	; 9
      001101 09                    2859 	.db #0x09	; 9
      001102 06                    2860 	.db #0x06	; 6
      001103 00                    2861 	.db #0x00	; 0
      001104 00                    2862 	.db #0x00	; 0
      001105 00                    2863 	.db #0x00	; 0
      001106 3E                    2864 	.db #0x3e	; 62
      001107 41                    2865 	.db #0x41	; 65	'A'
      001108 51                    2866 	.db #0x51	; 81	'Q'
      001109 21                    2867 	.db #0x21	; 33
      00110A 5E                    2868 	.db #0x5e	; 94
      00110B 00                    2869 	.db #0x00	; 0
      00110C 00                    2870 	.db #0x00	; 0
      00110D 00                    2871 	.db #0x00	; 0
      00110E 7F                    2872 	.db #0x7f	; 127
      00110F 09                    2873 	.db #0x09	; 9
      001110 19                    2874 	.db #0x19	; 25
      001111 29                    2875 	.db #0x29	; 41
      001112 46                    2876 	.db #0x46	; 70	'F'
      001113 00                    2877 	.db #0x00	; 0
      001114 00                    2878 	.db #0x00	; 0
      001115 00                    2879 	.db #0x00	; 0
      001116 46                    2880 	.db #0x46	; 70	'F'
      001117 49                    2881 	.db #0x49	; 73	'I'
      001118 49                    2882 	.db #0x49	; 73	'I'
      001119 49                    2883 	.db #0x49	; 73	'I'
      00111A 31                    2884 	.db #0x31	; 49	'1'
      00111B 00                    2885 	.db #0x00	; 0
      00111C 00                    2886 	.db #0x00	; 0
      00111D 00                    2887 	.db #0x00	; 0
      00111E 01                    2888 	.db #0x01	; 1
      00111F 01                    2889 	.db #0x01	; 1
      001120 7F                    2890 	.db #0x7f	; 127
      001121 01                    2891 	.db #0x01	; 1
      001122 01                    2892 	.db #0x01	; 1
      001123 00                    2893 	.db #0x00	; 0
      001124 00                    2894 	.db #0x00	; 0
      001125 00                    2895 	.db #0x00	; 0
      001126 3F                    2896 	.db #0x3f	; 63
      001127 40                    2897 	.db #0x40	; 64
      001128 40                    2898 	.db #0x40	; 64
      001129 40                    2899 	.db #0x40	; 64
      00112A 3F                    2900 	.db #0x3f	; 63
      00112B 00                    2901 	.db #0x00	; 0
      00112C 00                    2902 	.db #0x00	; 0
      00112D 00                    2903 	.db #0x00	; 0
      00112E 1F                    2904 	.db #0x1f	; 31
      00112F 20                    2905 	.db #0x20	; 32
      001130 40                    2906 	.db #0x40	; 64
      001131 20                    2907 	.db #0x20	; 32
      001132 1F                    2908 	.db #0x1f	; 31
      001133 00                    2909 	.db #0x00	; 0
      001134 00                    2910 	.db #0x00	; 0
      001135 00                    2911 	.db #0x00	; 0
      001136 7F                    2912 	.db #0x7f	; 127
      001137 20                    2913 	.db #0x20	; 32
      001138 18                    2914 	.db #0x18	; 24
      001139 20                    2915 	.db #0x20	; 32
      00113A 7F                    2916 	.db #0x7f	; 127
      00113B 00                    2917 	.db #0x00	; 0
      00113C 00                    2918 	.db #0x00	; 0
      00113D 00                    2919 	.db #0x00	; 0
      00113E 63                    2920 	.db #0x63	; 99	'c'
      00113F 14                    2921 	.db #0x14	; 20
      001140 08                    2922 	.db #0x08	; 8
      001141 14                    2923 	.db #0x14	; 20
      001142 63                    2924 	.db #0x63	; 99	'c'
      001143 00                    2925 	.db #0x00	; 0
      001144 00                    2926 	.db #0x00	; 0
      001145 00                    2927 	.db #0x00	; 0
      001146 07                    2928 	.db #0x07	; 7
      001147 08                    2929 	.db #0x08	; 8
      001148 70                    2930 	.db #0x70	; 112	'p'
      001149 08                    2931 	.db #0x08	; 8
      00114A 07                    2932 	.db #0x07	; 7
      00114B 00                    2933 	.db #0x00	; 0
      00114C 00                    2934 	.db #0x00	; 0
      00114D 00                    2935 	.db #0x00	; 0
      00114E 61                    2936 	.db #0x61	; 97	'a'
      00114F 51                    2937 	.db #0x51	; 81	'Q'
      001150 49                    2938 	.db #0x49	; 73	'I'
      001151 45                    2939 	.db #0x45	; 69	'E'
      001152 43                    2940 	.db #0x43	; 67	'C'
      001153 00                    2941 	.db #0x00	; 0
      001154 00                    2942 	.db #0x00	; 0
      001155 00                    2943 	.db #0x00	; 0
                                   2944 	.area CSEG    (CODE)
                                   2945 	.area CONST   (CODE)
      001156                       2946 ___str_0:
      001156 43 58 3A 20           2947 	.ascii "CX: "
      00115A 00                    2948 	.db 0x00
                                   2949 	.area CSEG    (CODE)
                                   2950 	.area CONST   (CODE)
      00115B                       2951 ___str_1:
      00115B 20 20 30 2E 30 20 4E  2952 	.ascii "  0.0 NF"
             46
      001163 00                    2953 	.db 0x00
                                   2954 	.area CSEG    (CODE)
                                   2955 	.area CONST   (CODE)
      001164                       2956 ___str_2:
      001164 20 4E 46              2957 	.ascii " NF"
      001167 00                    2958 	.db 0x00
                                   2959 	.area CSEG    (CODE)
                                   2960 	.area CONST   (CODE)
      001168                       2961 ___str_3:
      001168 20 55 46              2962 	.ascii " UF"
      00116B 00                    2963 	.db 0x00
                                   2964 	.area CSEG    (CODE)
                                   2965 	.area XINIT   (CODE)
      00116C                       2966 __xinit__timer0_overflows:
      00116C 00 00                 2967 	.byte #0x00, #0x00	; 0
                                   2968 	.area CABS    (ABS,CODE)
