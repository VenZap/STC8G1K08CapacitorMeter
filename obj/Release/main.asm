;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-large
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Font_8x8
	.globl _main
	.globl _Measure_Single
	.globl _Timer0_ISR
	.globl _SSD1306_DisplayResult
	.globl _SSD1306_PrintString
	.globl _SSD1306_WriteChar
	.globl _SSD1306_SetCursor
	.globl _SSD1306_Clear
	.globl _SSD1306_Init
	.globl _SSD1306_Command
	.globl _I2C_Write_Byte
	.globl _I2C_Stop
	.globl _I2C_Start
	.globl _SDA_LOW
	.globl _SDA_HIGH
	.globl _SCL_LOW
	.globl _SCL_HIGH
	.globl _I2C_Delay
	.globl _Delay_ms
	.globl _PIN_BUTTON
	.globl _PIN_R1_10K
	.globl _ET0
	.globl _EA
	.globl _TF0
	.globl _TR0
	.globl _IE
	.globl _AUXR
	.globl _TH0
	.globl _TL0
	.globl _TCON
	.globl _TMOD
	.globl _CLKSEL
	.globl _P_SW2
	.globl _P5M0
	.globl _P5M1
	.globl _P5
	.globl _P4
	.globl _P3M0
	.globl _P3M1
	.globl _P3
	.globl _P2
	.globl _P1M0
	.globl _P1M1
	.globl _P1
	.globl _P0
	.globl _timer0_overflows
	.globl _SSD1306_DisplayResult_PARM_4
	.globl _SSD1306_DisplayResult_PARM_3
	.globl _SSD1306_DisplayResult_PARM_2
	.globl _SSD1306_PrintString_PARM_3
	.globl _SSD1306_PrintString_PARM_2
	.globl _SSD1306_WriteChar_PARM_3
	.globl _SSD1306_WriteChar_PARM_2
	.globl _SSD1306_SetCursor_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_P1	=	0x0090
_P1M1	=	0x0093
_P1M0	=	0x0094
_P2	=	0x00a0
_P3	=	0x00b0
_P3M1	=	0x00b1
_P3M0	=	0x00b2
_P4	=	0x00c0
_P5	=	0x00c8
_P5M1	=	0x00c9
_P5M0	=	0x00ca
_P_SW2	=	0x008e
_CLKSEL	=	0x009d
_TMOD	=	0x0089
_TCON	=	0x0088
_TL0	=	0x008a
_TH0	=	0x008c
_AUXR	=	0x008e
_IE	=	0x00a8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_TR0	=	0x008c
_TF0	=	0x008d
_EA	=	0x00af
_ET0	=	0x00a9
_PIN_R1_10K	=	0x00b1
_PIN_BUTTON	=	0x00b0
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_SSD1306_DisplayResult_sloc0_1_0:
	.ds 1
_SSD1306_DisplayResult_sloc1_1_0:
	.ds 4
_SSD1306_DisplayResult_sloc2_1_0:
	.ds 4
_main_sloc0_1_0:
	.ds 4
_main_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_Delay_ms_ms_10000_1:
	.ds 2
_Delay_ms_i_10000_2:
	.ds 2
_I2C_Delay_i_10000_5:
	.ds 1
_I2C_Write_Byte_dat_10000_18:
	.ds 1
_SSD1306_Command_cmd_10000_24:
	.ds 1
_SSD1306_SetCursor_PARM_2:
	.ds 1
_SSD1306_SetCursor_page_10000_34:
	.ds 1
_SSD1306_WriteChar_PARM_2:
	.ds 1
_SSD1306_WriteChar_PARM_3:
	.ds 1
_SSD1306_WriteChar_page_10000_36:
	.ds 1
_SSD1306_WriteChar_idx_10000_37:
	.ds 1
_SSD1306_PrintString_PARM_2:
	.ds 1
_SSD1306_PrintString_PARM_3:
	.ds 3
_SSD1306_PrintString_page_10000_42:
	.ds 1
_SSD1306_DisplayResult_PARM_2:
	.ds 1
_SSD1306_DisplayResult_PARM_3:
	.ds 4
_SSD1306_DisplayResult_PARM_4:
	.ds 1
_SSD1306_DisplayResult_page_10000_45:
	.ds 1
_Measure_Single_stable_counter_10000_53:
	.ds 1
_main_final_calc_10000_60:
	.ds 4
_main_last_display_val_10000_60:
	.ds 4
_main_filtered_ticks_10000_60:
	.ds 4
_main_mode_uf_10000_60:
	.ds 1
_main_is_first_run_10000_60:
	.ds 1
_main_is_sleeping_10000_60:
	.ds 1
_main_discharge_10000_60:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_timer0_overflows::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Timer0_ISR
; restartable atomic support routines
	.ds	2
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_ms'
;------------------------------------------------------------
;ms            Allocated with name '_Delay_ms_ms_10000_1'
;i             Allocated with name '_Delay_ms_i_10000_2'
;------------------------------------------------------------
;	main.c:78: void Delay_ms(unsigned int ms) { volatile unsigned int i; while(ms--) { i = 600; while(i--); } }
;	-----------------------------------------
;	 function Delay_ms
;	-----------------------------------------
_Delay_ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_Delay_ms_ms_10000_1
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Delay_ms_ms_10000_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00104$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00134$
	dec	r7
00134$:
	mov	dptr,#_Delay_ms_ms_10000_1
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r5
	jz	00113$
	mov	dptr,#_Delay_ms_i_10000_2
	mov	a,#0x58
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
00101$:
	mov	dptr,#_Delay_ms_i_10000_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,#0xff
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_Delay_ms_i_10000_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r5
	jz	00104$
	sjmp	00101$
00113$:
	mov	dptr,#_Delay_ms_ms_10000_1
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Delay'
;------------------------------------------------------------
;i             Allocated with name '_I2C_Delay_i_10000_5'
;------------------------------------------------------------
;	main.c:79: void I2C_Delay(void) { volatile unsigned char i = 25; while(i--); }
;	-----------------------------------------
;	 function I2C_Delay
;	-----------------------------------------
_I2C_Delay:
	mov	dptr,#_I2C_Delay_i_10000_5
	mov	a,#0x19
	movx	@dptr,a
00101$:
	mov	dptr,#_I2C_Delay_i_10000_5
	movx	a,@dptr
	mov	r7,a
	dec	a
	movx	@dptr,a
	mov	a,r7
	jnz	00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCL_HIGH'
;------------------------------------------------------------
;	main.c:82: void SCL_HIGH(void) { P3M1 &= ~(1 << SCL_BIT); P3M0 &= ~(1 << SCL_BIT); P3 |= (1 << SCL_BIT); }
;	-----------------------------------------
;	 function SCL_HIGH
;	-----------------------------------------
_SCL_HIGH:
	anl	_P3M1,#0xfb
	anl	_P3M0,#0xfb
	orl	_P3,#0x04
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SCL_LOW'
;------------------------------------------------------------
;	main.c:83: void SCL_LOW(void)  { P3M1 |= (1 << SCL_BIT);  P3M0 |= (1 << SCL_BIT);  P3 &= ~(1 << SCL_BIT); }
;	-----------------------------------------
;	 function SCL_LOW
;	-----------------------------------------
_SCL_LOW:
	orl	_P3M1,#0x04
	orl	_P3M0,#0x04
	anl	_P3,#0xfb
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SDA_HIGH'
;------------------------------------------------------------
;	main.c:84: void SDA_HIGH(void) { P3M1 &= ~(1 << SDA_BIT); P3M0 &= ~(1 << SDA_BIT); P3 |= (1 << SDA_BIT); }
;	-----------------------------------------
;	 function SDA_HIGH
;	-----------------------------------------
_SDA_HIGH:
	anl	_P3M1,#0xf7
	anl	_P3M0,#0xf7
	orl	_P3,#0x08
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SDA_LOW'
;------------------------------------------------------------
;	main.c:85: void SDA_LOW(void)  { P3M1 |= (1 << SDA_BIT);  P3M0 |= (1 << SDA_BIT);  P3 &= ~(1 << SDA_BIT); }
;	-----------------------------------------
;	 function SDA_LOW
;	-----------------------------------------
_SDA_LOW:
	orl	_P3M1,#0x08
	orl	_P3M0,#0x08
	anl	_P3,#0xf7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Start'
;------------------------------------------------------------
;	main.c:88: void I2C_Start(void) { SDA_HIGH(); SCL_HIGH(); I2C_Delay(); SDA_LOW(); I2C_Delay(); SCL_LOW(); I2C_Delay(); }
;	-----------------------------------------
;	 function I2C_Start
;	-----------------------------------------
_I2C_Start:
	lcall	_SDA_HIGH
	lcall	_SCL_HIGH
	lcall	_I2C_Delay
	lcall	_SDA_LOW
	lcall	_I2C_Delay
	lcall	_SCL_LOW
	ljmp	_I2C_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Stop'
;------------------------------------------------------------
;	main.c:89: void I2C_Stop(void)  { SDA_LOW(); SCL_HIGH(); I2C_Delay(); SDA_HIGH(); I2C_Delay(); }
;	-----------------------------------------
;	 function I2C_Stop
;	-----------------------------------------
_I2C_Stop:
	lcall	_SDA_LOW
	lcall	_SCL_HIGH
	lcall	_I2C_Delay
	lcall	_SDA_HIGH
	ljmp	_I2C_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Write_Byte'
;------------------------------------------------------------
;dat           Allocated with name '_I2C_Write_Byte_dat_10000_18'
;i             Allocated with name '_I2C_Write_Byte_i_10000_19'
;------------------------------------------------------------
;	main.c:91: void I2C_Write_Byte(unsigned char dat) {
;	-----------------------------------------
;	 function I2C_Write_Byte
;	-----------------------------------------
_I2C_Write_Byte:
	mov	a,dpl
	mov	dptr,#_I2C_Write_Byte_dat_10000_18
	movx	@dptr,a
;	main.c:93: for(i = 0; i < 8; i++) {
	mov	r7,#0x00
00105$:
;	main.c:94: if(dat & 0x80) { SDA_HIGH(); } else { SDA_LOW(); }
	mov	dptr,#_I2C_Write_Byte_dat_10000_18
	movx	a,@dptr
	jnb	acc.7,00102$
	push	ar7
	lcall	_SDA_HIGH
	pop	ar7
	sjmp	00103$
00102$:
	push	ar7
	lcall	_SDA_LOW
	pop	ar7
00103$:
;	main.c:95: I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW();
	push	ar7
	lcall	_I2C_Delay
	lcall	_SCL_HIGH
	lcall	_I2C_Delay
	lcall	_SCL_LOW
	pop	ar7
;	main.c:96: dat <<= 1;
	mov	dptr,#_I2C_Write_Byte_dat_10000_18
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	main.c:93: for(i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00129$
00129$:
	jc	00105$
;	main.c:98: SDA_HIGH(); I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW(); I2C_Delay();
	lcall	_SDA_HIGH
	lcall	_I2C_Delay
	lcall	_SCL_HIGH
	lcall	_I2C_Delay
	lcall	_SCL_LOW
;	main.c:99: }
	ljmp	_I2C_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_Command'
;------------------------------------------------------------
;cmd           Allocated with name '_SSD1306_Command_cmd_10000_24'
;------------------------------------------------------------
;	main.c:101: void SSD1306_Command(unsigned char cmd) { I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x00); I2C_Write_Byte(cmd); I2C_Stop(); }
;	-----------------------------------------
;	 function SSD1306_Command
;	-----------------------------------------
_SSD1306_Command:
	mov	a,dpl
	mov	dptr,#_SSD1306_Command_cmd_10000_24
	movx	@dptr,a
	lcall	_I2C_Start
	mov	dpl, #0x78
	lcall	_I2C_Write_Byte
	mov	dpl, #0x00
	lcall	_I2C_Write_Byte
	mov	dptr,#_SSD1306_Command_cmd_10000_24
	movx	a,@dptr
	mov	dpl,a
	lcall	_I2C_Write_Byte
	ljmp	_I2C_Stop
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_Init'
;------------------------------------------------------------
;	main.c:103: void SSD1306_Init(void) {
;	-----------------------------------------
;	 function SSD1306_Init
;	-----------------------------------------
_SSD1306_Init:
;	main.c:104: Delay_ms(250);
	mov	dptr,#0x00fa
	lcall	_Delay_ms
;	main.c:105: SSD1306_Command(0xAE); SSD1306_Command(0x20); SSD1306_Command(0x02);
	mov	dpl, #0xae
	lcall	_SSD1306_Command
	mov	dpl, #0x20
	lcall	_SSD1306_Command
	mov	dpl, #0x02
	lcall	_SSD1306_Command
;	main.c:106: SSD1306_Command(0xB0); SSD1306_Command(0x00); SSD1306_Command(0x10);
	mov	dpl, #0xb0
	lcall	_SSD1306_Command
	mov	dpl, #0x00
	lcall	_SSD1306_Command
	mov	dpl, #0x10
	lcall	_SSD1306_Command
;	main.c:107: SSD1306_Command(0x40); SSD1306_Command(0x81); SSD1306_Command(0x7F);
	mov	dpl, #0x40
	lcall	_SSD1306_Command
	mov	dpl, #0x81
	lcall	_SSD1306_Command
	mov	dpl, #0x7f
	lcall	_SSD1306_Command
;	main.c:108: SSD1306_Command(0xA1); SSD1306_Command(0xC8); SSD1306_Command(0xA6);
	mov	dpl, #0xa1
	lcall	_SSD1306_Command
	mov	dpl, #0xc8
	lcall	_SSD1306_Command
	mov	dpl, #0xa6
	lcall	_SSD1306_Command
;	main.c:109: SSD1306_Command(0xA8); SSD1306_Command(0x3F); SSD1306_Command(0xD3); SSD1306_Command(0x00);
	mov	dpl, #0xa8
	lcall	_SSD1306_Command
	mov	dpl, #0x3f
	lcall	_SSD1306_Command
	mov	dpl, #0xd3
	lcall	_SSD1306_Command
	mov	dpl, #0x00
	lcall	_SSD1306_Command
;	main.c:110: SSD1306_Command(0xD5); SSD1306_Command(0x80); SSD1306_Command(0xD9); SSD1306_Command(0x22);
	mov	dpl, #0xd5
	lcall	_SSD1306_Command
	mov	dpl, #0x80
	lcall	_SSD1306_Command
	mov	dpl, #0xd9
	lcall	_SSD1306_Command
	mov	dpl, #0x22
	lcall	_SSD1306_Command
;	main.c:111: SSD1306_Command(0xDA); SSD1306_Command(0x12); SSD1306_Command(0xDB); SSD1306_Command(0x20);
	mov	dpl, #0xda
	lcall	_SSD1306_Command
	mov	dpl, #0x12
	lcall	_SSD1306_Command
	mov	dpl, #0xdb
	lcall	_SSD1306_Command
	mov	dpl, #0x20
	lcall	_SSD1306_Command
;	main.c:112: SSD1306_Command(0x8D); SSD1306_Command(0x14); SSD1306_Command(0xA4); SSD1306_Command(0xAF);
	mov	dpl, #0x8d
	lcall	_SSD1306_Command
	mov	dpl, #0x14
	lcall	_SSD1306_Command
	mov	dpl, #0xa4
	lcall	_SSD1306_Command
	mov	dpl, #0xaf
	lcall	_SSD1306_Command
;	main.c:113: Delay_ms(150);
	mov	dptr,#0x0096
;	main.c:114: }
	ljmp	_Delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_Clear'
;------------------------------------------------------------
;m             Allocated with name '_SSD1306_Clear_m_10000_29'
;n             Allocated with name '_SSD1306_Clear_n_10000_29'
;------------------------------------------------------------
;	main.c:116: void SSD1306_Clear(void) {
;	-----------------------------------------
;	 function SSD1306_Clear
;	-----------------------------------------
_SSD1306_Clear:
;	main.c:118: for(m = 0; m < 8; m++) {
	mov	r7,#0x00
00105$:
;	main.c:119: SSD1306_Command(0xB0 + m); SSD1306_Command(0x00); SSD1306_Command(0x10);
	mov	ar6,r7
	mov	a,#0xb0
	add	a, r6
	mov	dpl,a
	push	ar7
	lcall	_SSD1306_Command
	mov	dpl, #0x00
	lcall	_SSD1306_Command
	mov	dpl, #0x10
	lcall	_SSD1306_Command
;	main.c:120: I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
	lcall	_I2C_Start
	mov	dpl, #0x78
	lcall	_I2C_Write_Byte
	mov	dpl, #0x40
	lcall	_I2C_Write_Byte
	pop	ar7
;	main.c:121: for(n = 0; n < 128; n++) { I2C_Write_Byte(0x00); }
	mov	r6,#0x00
00103$:
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_I2C_Write_Byte
	pop	ar6
	pop	ar7
	inc	r6
	cjne	r6,#0x80,00129$
00129$:
	jc	00103$
;	main.c:122: I2C_Stop();
	push	ar7
	lcall	_I2C_Stop
	pop	ar7
;	main.c:118: for(m = 0; m < 8; m++) {
	inc	r7
	cjne	r7,#0x08,00131$
00131$:
	jc	00105$
;	main.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_SetCursor'
;------------------------------------------------------------
;x             Allocated with name '_SSD1306_SetCursor_PARM_2'
;page          Allocated with name '_SSD1306_SetCursor_page_10000_34'
;------------------------------------------------------------
;	main.c:126: void SSD1306_SetCursor(uint8_t page, uint8_t x) {
;	-----------------------------------------
;	 function SSD1306_SetCursor
;	-----------------------------------------
_SSD1306_SetCursor:
	mov	a,dpl
	mov	dptr,#_SSD1306_SetCursor_page_10000_34
	movx	@dptr,a
;	main.c:127: SSD1306_Command(0xB0 + page);
	movx	a,@dptr
	add	a,#0xb0
	mov	dpl,a
	lcall	_SSD1306_Command
;	main.c:128: SSD1306_Command(((x & 0xF0) >> 4) | 0x10);
	mov	dptr,#_SSD1306_SetCursor_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	anl	ar5,#0xf0
	clr	a
	xch	a,r5
	swap	a
	anl	a,#0x0f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x0f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	jnb	acc.3,00103$
	orl	a,#0xfffffff0
00103$:
	orl	ar5,#0x10
	mov	dpl, r5
	push	ar7
	lcall	_SSD1306_Command
	pop	ar7
;	main.c:129: SSD1306_Command(x & 0x0F);
	anl	ar7,#0x0f
	mov	dpl, r7
;	main.c:130: }
	ljmp	_SSD1306_Command
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_WriteChar'
;------------------------------------------------------------
;x             Allocated with name '_SSD1306_WriteChar_PARM_2'
;c             Allocated with name '_SSD1306_WriteChar_PARM_3'
;page          Allocated with name '_SSD1306_WriteChar_page_10000_36'
;i             Allocated with name '_SSD1306_WriteChar_i_10000_37'
;idx           Allocated with name '_SSD1306_WriteChar_idx_10000_37'
;------------------------------------------------------------
;	main.c:132: void SSD1306_WriteChar(uint8_t page, uint8_t x, unsigned char c) {
;	-----------------------------------------
;	 function SSD1306_WriteChar
;	-----------------------------------------
_SSD1306_WriteChar:
	mov	a,dpl
	mov	dptr,#_SSD1306_WriteChar_page_10000_36
	movx	@dptr,a
;	main.c:134: if (c >= '0' && c <= '9') idx = c - '0';
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00221$
00221$:
	jc	00128$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00128$
	mov	ar6,r7
	mov	a,r6
	add	a,#0xd0
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	movx	@dptr,a
	sjmp	00129$
00128$:
;	main.c:135: else if (c == '-') idx = 10;
	cjne	r7,#0x2d,00125$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0a
	movx	@dptr,a
	sjmp	00129$
00125$:
;	main.c:136: else if (c == ' ') idx = 11;
	cjne	r7,#0x20,00122$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0b
	movx	@dptr,a
	sjmp	00129$
00122$:
;	main.c:137: else if (c == '.') idx = 12;
	cjne	r7,#0x2e,00119$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0c
	movx	@dptr,a
	sjmp	00129$
00119$:
;	main.c:138: else if (c == ':') idx = 13;
	cjne	r7,#0x3a,00116$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0d
	movx	@dptr,a
	sjmp	00129$
00116$:
;	main.c:139: else if (c == '*') idx = 14;
	cjne	r7,#0x2a,00113$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0e
	movx	@dptr,a
	sjmp	00129$
00113$:
;	main.c:140: else if (c == '=') idx = 15;
	cjne	r7,#0x3d,00110$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0f
	movx	@dptr,a
	sjmp	00129$
00110$:
;	main.c:141: else if (c >= 'A' && c <= 'Z') { idx = c - 'A' + 16; }
	cjne	r7,#0x41,00236$
00236$:
	jc	00106$
	mov	a,r7
	add	a,#0xff - 0x5a
	jc	00106$
	mov	ar6,r7
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0xcf
	add	a, r6
	movx	@dptr,a
	sjmp	00129$
00106$:
;	main.c:142: else if (c >= 'a' && c <= 'z') { idx = c - 'a' + 16; }
	cjne	r7,#0x61,00239$
00239$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x7a
	jc	00102$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0xaf
	add	a, r7
	movx	@dptr,a
	sjmp	00129$
00102$:
;	main.c:143: else idx = 11;
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0b
	movx	@dptr,a
00129$:
;	main.c:145: SSD1306_SetCursor(page, x);
	mov	dptr,#_SSD1306_WriteChar_page_10000_36
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	movx	a,@dptr
	mov	dptr,#_SSD1306_SetCursor_PARM_2
	movx	@dptr,a
	mov	dpl, r7
	lcall	_SSD1306_SetCursor
;	main.c:146: I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
	lcall	_I2C_Start
	mov	dpl, #0x78
	lcall	_I2C_Write_Byte
	mov	dpl, #0x40
	lcall	_I2C_Write_Byte
;	main.c:147: for(i = 0; i < 8; i++) { I2C_Write_Byte(Font_8x8[idx][i]); }
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	movx	a,@dptr
	mov	b,#0x08
	mul	ab
	add	a, #_Font_8x8
	mov	r6,a
	mov	a,#(_Font_8x8 >> 8)
	addc	a, b
	mov	r7,a
	mov	r5,#0x00
00132$:
	mov	a,r5
	add	a, r6
	mov	dpl,a
	clr	a
	addc	a, r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_I2C_Write_Byte
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
	cjne	r5,#0x08,00242$
00242$:
	jc	00132$
;	main.c:148: I2C_Stop();
;	main.c:149: }
	ljmp	_I2C_Stop
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_PrintString'
;------------------------------------------------------------
;x             Allocated with name '_SSD1306_PrintString_PARM_2'
;str           Allocated with name '_SSD1306_PrintString_PARM_3'
;page          Allocated with name '_SSD1306_PrintString_page_10000_42'
;------------------------------------------------------------
;	main.c:151: void SSD1306_PrintString(uint8_t page, uint8_t x, char *str) {
;	-----------------------------------------
;	 function SSD1306_PrintString
;	-----------------------------------------
_SSD1306_PrintString:
	mov	a,dpl
	mov	dptr,#_SSD1306_PrintString_page_10000_42
	movx	@dptr,a
;	main.c:152: while (*str) { SSD1306_WriteChar(page, x, (unsigned char)*str); x += 8; str++; }
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SSD1306_PrintString_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00101$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jz	00104$
	mov	dptr,#_SSD1306_PrintString_PARM_2
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	lcall	_SSD1306_WriteChar
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_SSD1306_PrintString_PARM_2
	mov	a,#0x08
	add	a, r2
	movx	@dptr,a
	inc	r4
	cjne	r4,#0x00,00101$
	inc	r5
	sjmp	00101$
00104$:
;	main.c:153: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_DisplayResult'
;------------------------------------------------------------
;sloc0         Allocated with name '_SSD1306_DisplayResult_sloc0_1_0'
;sloc1         Allocated with name '_SSD1306_DisplayResult_sloc1_1_0'
;sloc2         Allocated with name '_SSD1306_DisplayResult_sloc2_1_0'
;x             Allocated with name '_SSD1306_DisplayResult_PARM_2'
;val           Allocated with name '_SSD1306_DisplayResult_PARM_3'
;is_microfarads Allocated with name '_SSD1306_DisplayResult_PARM_4'
;page          Allocated with name '_SSD1306_DisplayResult_page_10000_45'
;------------------------------------------------------------
;	main.c:155: void SSD1306_DisplayResult(uint8_t page, uint8_t x, uint32_t val, uint8_t is_microfarads) {
;	-----------------------------------------
;	 function SSD1306_DisplayResult
;	-----------------------------------------
_SSD1306_DisplayResult:
	mov	a,dpl
	mov	dptr,#_SSD1306_DisplayResult_page_10000_45
	movx	@dptr,a
;	main.c:156: SSD1306_PrintString(page, x, "CX: ");
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_SSD1306_PrintString_PARM_2
	movx	@dptr,a
	mov	dptr,#_SSD1306_PrintString_PARM_3
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_SSD1306_PrintString
	pop	ar6
	pop	ar7
;	main.c:157: x += 32;
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x20
	add	a, r6
	movx	@dptr,a
;	main.c:159: if (!is_microfarads) {
	mov	dptr,#_SSD1306_DisplayResult_PARM_4
	movx	a,@dptr
	jz	00120$
	ljmp	00104$
00120$:
;	main.c:160: if (val <= 139) {
	mov	dptr,#_SSD1306_DisplayResult_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x8b
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00102$
;	main.c:161: SSD1306_PrintString(page, x, "  0.0 NF");
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	movx	a,@dptr
	mov	dptr,#_SSD1306_PrintString_PARM_2
	movx	@dptr,a
	mov	dptr,#_SSD1306_PrintString_PARM_3
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl, r7
;	main.c:162: return;
	ljmp	_SSD1306_PrintString
00102$:
;	main.c:164: val -= 139;
	mov	a,r3
	add	a,#0x75
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	dptr,#_SSD1306_DisplayResult_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:166: SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	movx	a,@dptr
	mov	_SSD1306_DisplayResult_sloc0_1_0,a
	mov	dptr,#_SSD1306_DisplayResult_PARM_3
	movx	a,@dptr
	mov	_SSD1306_DisplayResult_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_SSD1306_DisplayResult_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_SSD1306_DisplayResult_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_SSD1306_DisplayResult_sloc1_1_0 + 3),a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0xe8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
	push	ar7
	lcall	__divulong
	mov	r0, dpl
	mov	r1, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r0
	mov	dph, r1
	mov	b, r5
	mov	a, r6
	lcall	__modulong
	mov	r3, dpl
	pop	ar7
	mov	a,#0x30
	add	a, r3
	mov	r3,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	mov	a,_SSD1306_DisplayResult_sloc0_1_0
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	lcall	_SSD1306_WriteChar
	pop	ar7
	mov	r6,_SSD1306_DisplayResult_sloc0_1_0
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:167: SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
	push	ar7
	push	ar6
	lcall	__divulong
	mov	r2, dpl
	mov	r3, dph
	mov	r4, b
	mov	r5, a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	lcall	__modulong
	mov	r2, dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r2
	mov	r2,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_SSD1306_WriteChar
	pop	ar6
	pop	ar7
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:168: SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
	push	ar7
	push	ar6
	lcall	__divulong
	mov	r2, dpl
	mov	r3, dph
	mov	r4, b
	mov	r5, a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	lcall	__modulong
	mov	r2, dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r2
	mov	r2,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_SSD1306_WriteChar
	pop	ar6
	pop	ar7
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:169: SSD1306_WriteChar(page, x, '.');                       x += 8;
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,#0x2e
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_SSD1306_WriteChar
	pop	ar6
	pop	ar7
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:170: SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _SSD1306_DisplayResult_sloc1_1_0
	mov	dph, (_SSD1306_DisplayResult_sloc1_1_0 + 1)
	mov	b, (_SSD1306_DisplayResult_sloc1_1_0 + 2)
	mov	a, (_SSD1306_DisplayResult_sloc1_1_0 + 3)
	push	ar7
	push	ar6
	lcall	__modulong
	mov	r2, dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r2
	mov	r2,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_SSD1306_WriteChar
	pop	ar6
	pop	ar7
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:171: SSD1306_PrintString(page, x, " NF");
	movx	a,@dptr
	mov	dptr,#_SSD1306_PrintString_PARM_2
	movx	@dptr,a
	mov	dptr,#_SSD1306_PrintString_PARM_3
	mov	a,#___str_2
	movx	@dptr,a
	mov	a,#(___str_2 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl, r7
	ljmp	_SSD1306_PrintString
00104$:
;	main.c:174: SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	movx	a,@dptr
	mov	_SSD1306_DisplayResult_sloc1_1_0,a
	mov	dptr,#_SSD1306_DisplayResult_PARM_3
	movx	a,@dptr
	mov	_SSD1306_DisplayResult_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_SSD1306_DisplayResult_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_SSD1306_DisplayResult_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_SSD1306_DisplayResult_sloc2_1_0 + 3),a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0xe8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
	push	ar7
	lcall	__divulong
	mov	r0, dpl
	mov	r1, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r0
	mov	dph, r1
	mov	b, r5
	mov	a, r6
	lcall	__modulong
	mov	r3, dpl
	pop	ar7
	mov	a,#0x30
	add	a, r3
	mov	r3,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	mov	a,_SSD1306_DisplayResult_sloc1_1_0
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	lcall	_SSD1306_WriteChar
	pop	ar7
	mov	r6,_SSD1306_DisplayResult_sloc1_1_0
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:175: SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
	push	ar7
	push	ar6
	lcall	__divulong
	mov	r2, dpl
	mov	r3, dph
	mov	r4, b
	mov	r5, a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	lcall	__modulong
	mov	r2, dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r2
	mov	r2,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_SSD1306_WriteChar
	pop	ar6
	pop	ar7
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:176: SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
	push	ar7
	push	ar6
	lcall	__divulong
	mov	r2, dpl
	mov	r3, dph
	mov	r4, b
	mov	r5, a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	lcall	__modulong
	mov	r2, dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r2
	mov	r2,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_SSD1306_WriteChar
	pop	ar6
	pop	ar7
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:177: SSD1306_WriteChar(page, x, '.');                       x += 8;
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,#0x2e
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_SSD1306_WriteChar
	pop	ar6
	pop	ar7
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:178: SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _SSD1306_DisplayResult_sloc2_1_0
	mov	dph, (_SSD1306_DisplayResult_sloc2_1_0 + 1)
	mov	b, (_SSD1306_DisplayResult_sloc2_1_0 + 2)
	mov	a, (_SSD1306_DisplayResult_sloc2_1_0 + 3)
	push	ar7
	push	ar6
	lcall	__modulong
	mov	r2, dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r2
	mov	r2,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_SSD1306_WriteChar_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_SSD1306_WriteChar
	pop	ar6
	pop	ar7
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x08
	add	a, r6
	movx	@dptr,a
;	main.c:179: SSD1306_PrintString(page, x, " UF");
	movx	a,@dptr
	mov	dptr,#_SSD1306_PrintString_PARM_2
	movx	@dptr,a
	mov	dptr,#_SSD1306_PrintString_PARM_3
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl, r7
;	main.c:181: }
	ljmp	_SSD1306_PrintString
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	main.c:185: void Timer0_ISR(void) __interrupt (1) {
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	main.c:186: timer0_overflows++;
	mov	dptr,#_timer0_overflows
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_timer0_overflows
	mov	a,#0x01
	add	a, r6
	movx	@dptr,a
	clr	a
	addc	a, r7
	inc	dptr
	movx	@dptr,a
;	main.c:187: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Measure_Single'
;------------------------------------------------------------
;total_ticks   Allocated with name '_Measure_Single_total_ticks_10000_53'
;stable_counter Allocated with name '_Measure_Single_stable_counter_10000_53'
;------------------------------------------------------------
;	main.c:190: uint32_t Measure_Single(void) {
;	-----------------------------------------
;	 function Measure_Single
;	-----------------------------------------
_Measure_Single:
;	main.c:192: uint8_t stable_counter = 0;
	mov	dptr,#_Measure_Single_stable_counter_10000_53
	clr	a
	movx	@dptr,a
;	main.c:195: TH0 = 0x00;
	mov	_TH0,a
;	main.c:196: TL0 = 0x00;
	mov	_TL0,a
;	main.c:197: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:198: timer0_overflows = 0;
	mov	dptr,#_timer0_overflows
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:201: ET0 = 1;
;	assignBit
	setb	_ET0
;	main.c:204: P3M1 &= ~0x02; P3M0 |= 0x02;
	anl	_P3M1,#0xfd
	orl	_P3M0,#0x02
;	main.c:205: PIN_R1_10K = 1;
;	assignBit
	setb	_PIN_R1_10K
;	main.c:207: TR0 = 1; // Стартуем Таймер 0
;	assignBit
	setb	_TR0
;	main.c:210: while (1) {
00109$:
;	main.c:211: if (P5 & MASK_DET_55) {
	mov	a,_P5
	jnb	acc.5,00104$
;	main.c:212: stable_counter++;
	mov	dptr,#_Measure_Single_stable_counter_10000_53
	movx	a,@dptr
	add	a, #0x01
	movx	@dptr,a
;	main.c:213: if (stable_counter > 10) {
	movx	a,@dptr
	add	a,#0xff - 0x0a
	jnc	00105$
;	main.c:214: break; // Успешно зарядился
	sjmp	00110$
00104$:
;	main.c:217: stable_counter = 0;
	mov	dptr,#_Measure_Single_stable_counter_10000_53
	clr	a
	movx	@dptr,a
00105$:
;	main.c:221: if (timer0_overflows > 1700) {
	mov	dptr,#_timer0_overflows
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0xa4
	subb	a,r6
	mov	a,#0x06
	subb	a,r7
	jnc	00109$
;	main.c:222: break;
00110$:
;	main.c:225: TR0 = 0;  // Стоп Таймер 0
;	assignBit
	clr	_TR0
;	main.c:226: ET0 = 0;  // Выключаем прерывание таймера, чтобы не мешало основной программе
;	assignBit
	clr	_ET0
;	main.c:229: total_ticks = ((uint32_t)timer0_overflows << 16) | ((uint16_t)TH0 << 8) | TL0;
	mov	dptr,#_timer0_overflows
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar6,r4
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r3,_TH0
	mov	r2,#0x00
	mov	ar0,r2
	mov	ar1,r3
	mov	r3,#0x00
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	r0,_TL0
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
;	main.c:231: return total_ticks;
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	main.c:232: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;sloc1         Allocated with name '_main_sloc1_1_0'
;raw_ticks     Allocated with name '_main_raw_ticks_10000_60'
;final_calc    Allocated with name '_main_final_calc_10000_60'
;last_display_val Allocated with name '_main_last_display_val_10000_60'
;filtered_ticks Allocated with name '_main_filtered_ticks_10000_60'
;mode_uf       Allocated with name '_main_mode_uf_10000_60'
;is_first_run  Allocated with name '_main_is_first_run_10000_60'
;is_sleeping   Allocated with name '_main_is_sleeping_10000_60'
;discharge     Allocated with name '_main_discharge_10000_60'
;------------------------------------------------------------
;	main.c:235: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:238: uint32_t last_display_val = 0;
	mov	dptr,#_main_last_display_val_10000_60
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:239: uint32_t filtered_ticks = 0;
	mov	dptr,#_main_filtered_ticks_10000_60
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:241: uint8_t is_first_run = 1;
	mov	dptr,#_main_is_first_run_10000_60
	inc	a
	movx	@dptr,a
;	main.c:242: uint8_t is_sleeping = 0;
	mov	dptr,#_main_is_sleeping_10000_60
	clr	a
	movx	@dptr,a
;	main.c:246: P5M1 |= MASK_DET_55; P5M0 &= ~MASK_DET_55;
	orl	_P5M1,#0x20
	anl	_P5M0,#0xdf
;	main.c:249: P3M1 |= (1 << 0); P3M0 &= ~(1 << 0);
	orl	_P3M1,#0x01
	anl	_P3M0,#0xfe
;	main.c:252: P_SW2 = 0x80; CLKSEL = 0x00; P_SW2 = 0x00;
	mov	_P_SW2,#0x80
	mov	_CLKSEL,#0x00
	mov	_P_SW2,#0x00
;	main.c:253: AUXR |= 0x80;
	orl	_AUXR,#0x80
;	main.c:254: TMOD &= 0xF0; // Режим 0 (16-битный таймер)
	anl	_TMOD,#0xf0
;	main.c:255: TR0 = 0; TF0 = 0;
;	assignBit
	clr	_TR0
;	assignBit
	clr	_TF0
;	main.c:258: EA = 1;
;	assignBit
	setb	_EA
;	main.c:260: SCL_HIGH(); SDA_HIGH(); Delay_ms(100);
	lcall	_SCL_HIGH
	lcall	_SDA_HIGH
	mov	dptr,#0x0064
	lcall	_Delay_ms
;	main.c:261: SSD1306_Init();
	lcall	_SSD1306_Init
;	main.c:262: SSD1306_Clear();
	lcall	_SSD1306_Clear
;	main.c:264: while(1) {
00142$:
;	main.c:266: if (PIN_BUTTON == 0) {
	jb	_PIN_BUTTON,00110$
;	main.c:267: Delay_ms(40);
	mov	dptr,#0x0028
	lcall	_Delay_ms
;	main.c:268: if (PIN_BUTTON == 0) {
	jb	_PIN_BUTTON,00110$
;	main.c:269: while(PIN_BUTTON == 0) { Delay_ms(10); }
00101$:
	jb	_PIN_BUTTON,00103$
	mov	dptr,#0x000a
	lcall	_Delay_ms
	sjmp	00101$
00103$:
;	main.c:270: Delay_ms(50);
	mov	dptr,#0x0032
	lcall	_Delay_ms
;	main.c:272: if (is_sleeping == 0) {
	mov	dptr,#_main_is_sleeping_10000_60
	movx	a,@dptr
	jnz	00105$
;	main.c:273: is_sleeping = 1;
	mov	dptr,#_main_is_sleeping_10000_60
	mov	a,#0x01
	movx	@dptr,a
;	main.c:274: SSD1306_Command(0xAE); // Выключить экран
	mov	dpl, #0xae
	lcall	_SSD1306_Command
	sjmp	00110$
00105$:
;	main.c:276: is_sleeping = 0;
	mov	dptr,#_main_is_sleeping_10000_60
	clr	a
	movx	@dptr,a
;	main.c:277: SSD1306_Command(0xAF); // Включить экран
	mov	dpl, #0xaf
	lcall	_SSD1306_Command
;	main.c:278: last_display_val = 0;
	mov	dptr,#_main_last_display_val_10000_60
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:279: is_first_run = 1;
	mov	dptr,#_main_is_first_run_10000_60
	inc	a
	movx	@dptr,a
00110$:
;	main.c:284: if (is_sleeping == 1) {
	mov	dptr,#_main_is_sleeping_10000_60
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00112$
;	main.c:286: P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 0;
	anl	_P3M1,#0xfd
	orl	_P3M0,#0x02
;	assignBit
	clr	_PIN_R1_10K
;	main.c:287: Delay_ms(100);
	mov	dptr,#0x0064
	lcall	_Delay_ms
;	main.c:288: continue;
	sjmp	00142$
00112$:
;	main.c:292: raw_ticks = Measure_Single(); // Делаем чистый замер времени заряда
	lcall	_Measure_Single
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
;	main.c:295: if (is_first_run || filtered_ticks < 100) {
	mov	dptr,#_main_is_first_run_10000_60
	movx	a,@dptr
	jnz	00113$
	mov	dptr,#_main_filtered_ticks_10000_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,#0x64
	mov	a,r1
	subb	a,#0x00
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jnc	00114$
00113$:
;	main.c:296: filtered_ticks = raw_ticks;
	mov	dptr,#_main_filtered_ticks_10000_60
	mov	a,_main_sloc0_1_0
	movx	@dptr,a
	mov	a,(_main_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_main_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_main_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	main.c:297: is_first_run = 0;
	mov	dptr,#_main_is_first_run_10000_60
	clr	a
	movx	@dptr,a
	sjmp	00115$
00114$:
;	main.c:299: filtered_ticks = ((filtered_ticks >> 1) + (filtered_ticks >> 2)) + (raw_ticks >> 2);
	mov	a,r3
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r2
	rrc	a
	mov	r6,a
	mov	a,r1
	rrc	a
	mov	r5,a
	mov	a,r0
	rrc	a
	mov	r4,a
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	add	a, r4
	mov	r4,a
	mov	a,r1
	addc	a, r5
	mov	r5,a
	mov	a,r2
	addc	a, r6
	mov	r6,a
	mov	a,r3
	addc	a, r7
	mov	r7,a
	mov	a,(_main_sloc0_1_0 + 3)
	clr	c
	rrc	a
	mov	r3,a
	mov	a,(_main_sloc0_1_0 + 2)
	rrc	a
	mov	r2,a
	mov	a,(_main_sloc0_1_0 + 1)
	rrc	a
	mov	r1,a
	mov	a,_main_sloc0_1_0
	rrc	a
	mov	r0,a
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	dptr,#_main_filtered_ticks_10000_60
	add	a, r4
	movx	@dptr,a
	mov	a,r1
	addc	a, r5
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a, r6
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a, r7
	inc	dptr
	movx	@dptr,a
00115$:
;	main.c:302: if (filtered_ticks > 43000) {
	mov	dptr,#_main_filtered_ticks_10000_60
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0xf8
	subb	a,r4
	mov	a,#0xa7
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00271$
	ljmp	00134$
00271$:
;	main.c:303: mode_uf = 1; // Режим "мкФ"
	mov	dptr,#_main_mode_uf_10000_60
	mov	a,#0x01
	movx	@dptr,a
;	main.c:308: final_calc = (filtered_ticks * 23) / 100000;
	mov	dptr,#__mullong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0017
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0xa0
	movx	@dptr,a
	mov	a,#0x86
	inc	dptr
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	__divulong
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	dptr,#_main_final_calc_10000_60
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:310: if (final_calc == 0) final_calc = 1;
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	jnz	00118$
	mov	dptr,#_main_final_calc_10000_60
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00118$:
;	main.c:312: if (final_calc > last_display_val) {
	mov	dptr,#_main_final_calc_10000_60
	movx	a,@dptr
	mov	_main_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc1_1_0 + 3),a
	mov	dptr,#_main_last_display_val_10000_60
	movx	a,@dptr
	mov	_main_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc0_1_0 + 3),a
	clr	c
	mov	a,_main_sloc0_1_0
	subb	a,_main_sloc1_1_0
	mov	a,(_main_sloc0_1_0 + 1)
	subb	a,(_main_sloc1_1_0 + 1)
	mov	a,(_main_sloc0_1_0 + 2)
	subb	a,(_main_sloc1_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	subb	a,(_main_sloc1_1_0 + 3)
	jnc	00124$
;	main.c:313: if ((final_calc - last_display_val) < 1) final_calc = last_display_val;
	mov	a,_main_sloc1_1_0
	clr	c
	subb	a,_main_sloc0_1_0
	mov	r0,a
	mov	a,(_main_sloc1_1_0 + 1)
	subb	a,(_main_sloc0_1_0 + 1)
	mov	r1,a
	mov	a,(_main_sloc1_1_0 + 2)
	subb	a,(_main_sloc0_1_0 + 2)
	mov	r2,a
	mov	a,(_main_sloc1_1_0 + 3)
	subb	a,(_main_sloc0_1_0 + 3)
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,#0x01
	mov	a,r1
	subb	a,#0x00
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jc	00274$
	ljmp	00135$
00274$:
	mov	dptr,#_main_final_calc_10000_60
	mov	a,_main_sloc0_1_0
	movx	@dptr,a
	mov	a,(_main_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_main_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_main_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	ljmp	00135$
00124$:
;	main.c:315: if ((last_display_val - final_calc) < 1) final_calc = last_display_val;
	mov	a,_main_sloc0_1_0
	clr	c
	subb	a,_main_sloc1_1_0
	mov	r0,a
	mov	a,(_main_sloc0_1_0 + 1)
	subb	a,(_main_sloc1_1_0 + 1)
	mov	r1,a
	mov	a,(_main_sloc0_1_0 + 2)
	subb	a,(_main_sloc1_1_0 + 2)
	mov	r2,a
	mov	a,(_main_sloc0_1_0 + 3)
	subb	a,(_main_sloc1_1_0 + 3)
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,#0x01
	mov	a,r1
	subb	a,#0x00
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jc	00275$
	ljmp	00135$
00275$:
	mov	dptr,#_main_final_calc_10000_60
	mov	a,_main_sloc0_1_0
	movx	@dptr,a
	mov	a,(_main_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_main_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_main_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	ljmp	00135$
00134$:
;	main.c:319: mode_uf = 0; // Режим "нФ"
	mov	dptr,#_main_mode_uf_10000_60
	clr	a
	movx	@dptr,a
;	main.c:320: is_first_run = 1;
	mov	dptr,#_main_is_first_run_10000_60
	inc	a
	movx	@dptr,a
;	main.c:323: final_calc = (filtered_ticks * 23) / 100;
	mov	dptr,#__mullong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0017
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divulong
	mov	_main_sloc1_1_0,dpl
	mov	(_main_sloc1_1_0 + 1),dph
	mov	(_main_sloc1_1_0 + 2),b
	mov	(_main_sloc1_1_0 + 3),a
	mov	dptr,#_main_final_calc_10000_60
	mov	a,_main_sloc1_1_0
	movx	@dptr,a
	mov	a,(_main_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_main_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_main_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	main.c:325: if (final_calc > last_display_val) {
	mov	dptr,#_main_last_display_val_10000_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,_main_sloc1_1_0
	mov	a,r1
	subb	a,(_main_sloc1_1_0 + 1)
	mov	a,r2
	subb	a,(_main_sloc1_1_0 + 2)
	mov	a,r3
	subb	a,(_main_sloc1_1_0 + 3)
	jnc	00131$
;	main.c:326: if ((final_calc - last_display_val) < 2) final_calc = last_display_val;
	mov	a,_main_sloc1_1_0
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,(_main_sloc1_1_0 + 1)
	subb	a,r1
	mov	r5,a
	mov	a,(_main_sloc1_1_0 + 2)
	subb	a,r2
	mov	r6,a
	mov	a,(_main_sloc1_1_0 + 3)
	subb	a,r3
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00135$
	mov	dptr,#_main_final_calc_10000_60
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00135$
00131$:
;	main.c:328: if ((last_display_val - final_calc) < 2) final_calc = last_display_val;
	mov	a,r0
	clr	c
	subb	a,_main_sloc1_1_0
	mov	r4,a
	mov	a,r1
	subb	a,(_main_sloc1_1_0 + 1)
	mov	r5,a
	mov	a,r2
	subb	a,(_main_sloc1_1_0 + 2)
	mov	r6,a
	mov	a,r3
	subb	a,(_main_sloc1_1_0 + 3)
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00135$
	mov	dptr,#_main_final_calc_10000_60
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00135$:
;	main.c:333: if (final_calc != last_display_val) {
	mov	dptr,#_main_final_calc_10000_60
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_last_display_val_10000_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar0,00279$
	mov	a,r5
	cjne	a,ar1,00279$
	mov	a,r6
	cjne	a,ar2,00279$
	mov	a,r7
	cjne	a,ar3,00279$
	sjmp	00137$
00279$:
;	main.c:334: SSD1306_DisplayResult(3, 16, final_calc, mode_uf);
	mov	dptr,#_main_mode_uf_10000_60
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#_SSD1306_DisplayResult_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_SSD1306_DisplayResult_PARM_4
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x03
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SSD1306_DisplayResult
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:335: last_display_val = final_calc;
	mov	dptr,#_main_last_display_val_10000_60
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00137$:
;	main.c:340: P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 0;
	anl	_P3M1,#0xfd
	orl	_P3M0,#0x02
;	assignBit
	clr	_PIN_R1_10K
;	main.c:344: for(discharge = 0; discharge < 30; discharge++) {
	mov	dptr,#_main_discharge_10000_60
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00145$:
	mov	dptr,#_main_discharge_10000_60
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x1e
	mov	a,r7
	subb	a,#0x00
	jc	00280$
	ljmp	00142$
00280$:
;	main.c:345: Delay_ms(10);
	mov	dptr,#0x000a
	lcall	_Delay_ms
;	main.c:346: if (PIN_BUTTON == 0) break; // Если во время паузы нажали кнопку — мгновенно прерываем её
	jb	_PIN_BUTTON,00281$
	ljmp	00142$
00281$:
;	main.c:344: for(discharge = 0; discharge < 30; discharge++) {
	mov	dptr,#_main_discharge_10000_60
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_discharge_10000_60
	mov	a,#0x01
	add	a, r6
	movx	@dptr,a
	clr	a
	addc	a, r7
	inc	dptr
	movx	@dptr,a
;	main.c:349: }
	sjmp	00145$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
_Font_8x8:
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x4b	; 75	'K'
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x7a	; 122	'z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x70	; 112	'p'
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "CX: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "  0.0 NF"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii " NF"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii " UF"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__timer0_overflows:
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
