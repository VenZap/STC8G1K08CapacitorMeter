;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Font_8x8
	.globl _main
	.globl _Measure_Single
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
	.globl _PIN_R3_1K
	.globl _PIN_R1_10K
	.globl _TF0
	.globl _TR0
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_TR0	=	0x008c
_TF0	=	0x008d
_PIN_R1_10K	=	0x00b1
_PIN_R3_1K	=	0x00c4
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
_main_sloc2_1_0:
	.ds 1
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
_Measure_Single_use_1k_10000_50:
	.ds 1
_Measure_Single_discharge_10000_51:
	.ds 2
_main_final_calc_10000_59:
	.ds 4
_main_last_display_val_10000_59:
	.ds 4
_main_filtered_ticks_10000_59:
	.ds 4
_main_mode_uf_10000_59:
	.ds 1
_main_is_first_run_10000_59:
	.ds 1
_main_is_sleeping_10000_59:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;ms                        Allocated with name '_Delay_ms_ms_10000_1'
;i                         Allocated with name '_Delay_ms_i_10000_2'
;------------------------------------------------------------
;	main.c:72: void Delay_ms(unsigned int ms) { volatile unsigned int i; while(ms--) { i = 600; while(i--); } }
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
;i                         Allocated with name '_I2C_Delay_i_10000_5'
;------------------------------------------------------------
;	main.c:73: void I2C_Delay(void) { volatile unsigned char i = 25; while(i--); }
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
;	main.c:76: void SCL_HIGH(void) { P3M1 &= ~(1 << SCL_BIT); P3M0 &= ~(1 << SCL_BIT); P3 |= (1 << SCL_BIT); }
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
;	main.c:77: void SCL_LOW(void)  { P3M1 |= (1 << SCL_BIT);  P3M0 |= (1 << SCL_BIT);  P3 &= ~(1 << SCL_BIT); }
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
;	main.c:78: void SDA_HIGH(void) { P3M1 &= ~(1 << SDA_BIT); P3M0 &= ~(1 << SDA_BIT); P3 |= (1 << SDA_BIT); }
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
;	main.c:79: void SDA_LOW(void)  { P3M1 |= (1 << SDA_BIT);  P3M0 |= (1 << SDA_BIT);  P3 &= ~(1 << SDA_BIT); }
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
;	main.c:82: void I2C_Start(void) { SDA_HIGH(); SCL_HIGH(); I2C_Delay(); SDA_LOW(); I2C_Delay(); SCL_LOW(); I2C_Delay(); }
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
;	main.c:83: void I2C_Stop(void)  { SDA_LOW(); SCL_HIGH(); I2C_Delay(); SDA_HIGH(); I2C_Delay(); }
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
;dat                       Allocated with name '_I2C_Write_Byte_dat_10000_18'
;i                         Allocated with name '_I2C_Write_Byte_i_10000_19'
;------------------------------------------------------------
;	main.c:85: void I2C_Write_Byte(unsigned char dat) {
;	-----------------------------------------
;	 function I2C_Write_Byte
;	-----------------------------------------
_I2C_Write_Byte:
	mov	a,dpl
	mov	dptr,#_I2C_Write_Byte_dat_10000_18
	movx	@dptr,a
;	main.c:87: for(i = 0; i < 8; i++) {
	mov	r7,#0x00
00105$:
;	main.c:88: if(dat & 0x80) { SDA_HIGH(); } else { SDA_LOW(); }
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
;	main.c:89: I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW();
	push	ar7
	lcall	_I2C_Delay
	lcall	_SCL_HIGH
	lcall	_I2C_Delay
	lcall	_SCL_LOW
	pop	ar7
;	main.c:90: dat <<= 1;
	mov	dptr,#_I2C_Write_Byte_dat_10000_18
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	main.c:87: for(i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00129$
00129$:
	jc	00105$
;	main.c:92: SDA_HIGH(); I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW(); I2C_Delay();
	lcall	_SDA_HIGH
	lcall	_I2C_Delay
	lcall	_SCL_HIGH
	lcall	_I2C_Delay
	lcall	_SCL_LOW
;	main.c:93: }
	ljmp	_I2C_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_Command'
;------------------------------------------------------------
;cmd                       Allocated with name '_SSD1306_Command_cmd_10000_24'
;------------------------------------------------------------
;	main.c:95: void SSD1306_Command(unsigned char cmd) { I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x00); I2C_Write_Byte(cmd); I2C_Stop(); }
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
;	main.c:97: void SSD1306_Init(void) {
;	-----------------------------------------
;	 function SSD1306_Init
;	-----------------------------------------
_SSD1306_Init:
;	main.c:98: Delay_ms(250);
	mov	dptr,#0x00fa
	lcall	_Delay_ms
;	main.c:99: SSD1306_Command(0xAE); SSD1306_Command(0x20); SSD1306_Command(0x02);
	mov	dpl, #0xae
	lcall	_SSD1306_Command
	mov	dpl, #0x20
	lcall	_SSD1306_Command
	mov	dpl, #0x02
	lcall	_SSD1306_Command
;	main.c:100: SSD1306_Command(0xB0); SSD1306_Command(0x00); SSD1306_Command(0x10);
	mov	dpl, #0xb0
	lcall	_SSD1306_Command
	mov	dpl, #0x00
	lcall	_SSD1306_Command
	mov	dpl, #0x10
	lcall	_SSD1306_Command
;	main.c:101: SSD1306_Command(0x40); SSD1306_Command(0x81); SSD1306_Command(0x7F);
	mov	dpl, #0x40
	lcall	_SSD1306_Command
	mov	dpl, #0x81
	lcall	_SSD1306_Command
	mov	dpl, #0x7f
	lcall	_SSD1306_Command
;	main.c:102: SSD1306_Command(0xA1); SSD1306_Command(0xC8); SSD1306_Command(0xA6);
	mov	dpl, #0xa1
	lcall	_SSD1306_Command
	mov	dpl, #0xc8
	lcall	_SSD1306_Command
	mov	dpl, #0xa6
	lcall	_SSD1306_Command
;	main.c:103: SSD1306_Command(0xA8); SSD1306_Command(0x3F); SSD1306_Command(0xD3); SSD1306_Command(0x00);
	mov	dpl, #0xa8
	lcall	_SSD1306_Command
	mov	dpl, #0x3f
	lcall	_SSD1306_Command
	mov	dpl, #0xd3
	lcall	_SSD1306_Command
	mov	dpl, #0x00
	lcall	_SSD1306_Command
;	main.c:104: SSD1306_Command(0xD5); SSD1306_Command(0x80); SSD1306_Command(0xD9); SSD1306_Command(0x22);
	mov	dpl, #0xd5
	lcall	_SSD1306_Command
	mov	dpl, #0x80
	lcall	_SSD1306_Command
	mov	dpl, #0xd9
	lcall	_SSD1306_Command
	mov	dpl, #0x22
	lcall	_SSD1306_Command
;	main.c:105: SSD1306_Command(0xDA); SSD1306_Command(0x12); SSD1306_Command(0xDB); SSD1306_Command(0x20);
	mov	dpl, #0xda
	lcall	_SSD1306_Command
	mov	dpl, #0x12
	lcall	_SSD1306_Command
	mov	dpl, #0xdb
	lcall	_SSD1306_Command
	mov	dpl, #0x20
	lcall	_SSD1306_Command
;	main.c:106: SSD1306_Command(0x8D); SSD1306_Command(0x14); SSD1306_Command(0xA4); SSD1306_Command(0xAF);
	mov	dpl, #0x8d
	lcall	_SSD1306_Command
	mov	dpl, #0x14
	lcall	_SSD1306_Command
	mov	dpl, #0xa4
	lcall	_SSD1306_Command
	mov	dpl, #0xaf
	lcall	_SSD1306_Command
;	main.c:107: Delay_ms(150);
	mov	dptr,#0x0096
;	main.c:108: }
	ljmp	_Delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_Clear'
;------------------------------------------------------------
;m                         Allocated with name '_SSD1306_Clear_m_10000_29'
;n                         Allocated with name '_SSD1306_Clear_n_10000_29'
;------------------------------------------------------------
;	main.c:110: void SSD1306_Clear(void) {
;	-----------------------------------------
;	 function SSD1306_Clear
;	-----------------------------------------
_SSD1306_Clear:
;	main.c:112: for(m = 0; m < 8; m++) {
	mov	r7,#0x00
00105$:
;	main.c:113: SSD1306_Command(0xB0 + m); SSD1306_Command(0x00); SSD1306_Command(0x10);
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
;	main.c:114: I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
	lcall	_I2C_Start
	mov	dpl, #0x78
	lcall	_I2C_Write_Byte
	mov	dpl, #0x40
	lcall	_I2C_Write_Byte
	pop	ar7
;	main.c:115: for(n = 0; n < 128; n++) { I2C_Write_Byte(0x00); }
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
;	main.c:116: I2C_Stop();
	push	ar7
	lcall	_I2C_Stop
	pop	ar7
;	main.c:112: for(m = 0; m < 8; m++) {
	inc	r7
	cjne	r7,#0x08,00131$
00131$:
	jc	00105$
;	main.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_SetCursor'
;------------------------------------------------------------
;x                         Allocated with name '_SSD1306_SetCursor_PARM_2'
;page                      Allocated with name '_SSD1306_SetCursor_page_10000_34'
;------------------------------------------------------------
;	main.c:120: void SSD1306_SetCursor(uint8_t page, uint8_t x) {
;	-----------------------------------------
;	 function SSD1306_SetCursor
;	-----------------------------------------
_SSD1306_SetCursor:
	mov	a,dpl
	mov	dptr,#_SSD1306_SetCursor_page_10000_34
	movx	@dptr,a
;	main.c:121: SSD1306_Command(0xB0 + page);
	movx	a,@dptr
	add	a,#0xb0
	mov	dpl,a
	lcall	_SSD1306_Command
;	main.c:122: SSD1306_Command(((x & 0xF0) >> 4) | 0x10);
	mov	dptr,#_SSD1306_SetCursor_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	anl	ar5,#0xf0
	clr	a
	swap	a
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
;	main.c:123: SSD1306_Command(x & 0x0F);
	anl	ar7,#0x0f
	mov	dpl, r7
;	main.c:124: }
	ljmp	_SSD1306_Command
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_WriteChar'
;------------------------------------------------------------
;x                         Allocated with name '_SSD1306_WriteChar_PARM_2'
;c                         Allocated with name '_SSD1306_WriteChar_PARM_3'
;page                      Allocated with name '_SSD1306_WriteChar_page_10000_36'
;i                         Allocated with name '_SSD1306_WriteChar_i_10000_37'
;idx                       Allocated with name '_SSD1306_WriteChar_idx_10000_37'
;------------------------------------------------------------
;	main.c:126: void SSD1306_WriteChar(uint8_t page, uint8_t x, unsigned char c) {
;	-----------------------------------------
;	 function SSD1306_WriteChar
;	-----------------------------------------
_SSD1306_WriteChar:
	mov	a,dpl
	mov	dptr,#_SSD1306_WriteChar_page_10000_36
	movx	@dptr,a
;	main.c:128: if (c >= '0' && c <= '9') idx = c - '0';
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
	ljmp	00129$
00128$:
;	main.c:129: else if (c == '-') idx = 10;
	cjne	r7,#0x2d,00125$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0a
	movx	@dptr,a
	ljmp	00129$
00125$:
;	main.c:130: else if (c == ' ') idx = 11;
	cjne	r7,#0x20,00122$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0b
	movx	@dptr,a
	ljmp	00129$
00122$:
;	main.c:131: else if (c == '.') idx = 12;
	cjne	r7,#0x2e,00119$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0c
	movx	@dptr,a
	sjmp	00129$
00119$:
;	main.c:132: else if (c == ':') idx = 13;
	cjne	r7,#0x3a,00116$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0d
	movx	@dptr,a
	sjmp	00129$
00116$:
;	main.c:133: else if (c == '*') idx = 14;
	cjne	r7,#0x2a,00113$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0e
	movx	@dptr,a
	sjmp	00129$
00113$:
;	main.c:134: else if (c == '=') idx = 15;
	cjne	r7,#0x3d,00110$
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0f
	movx	@dptr,a
	sjmp	00129$
00110$:
;	main.c:135: else if (c >= 'A' && c <= 'Z') { idx = c - 'A' + 16; }
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
;	main.c:136: else if (c >= 'a' && c <= 'z') { idx = c - 'a' + 16; }
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
;	main.c:137: else idx = 11;
	mov	dptr,#_SSD1306_WriteChar_idx_10000_37
	mov	a,#0x0b
	movx	@dptr,a
00129$:
;	main.c:139: SSD1306_SetCursor(page, x);
	mov	dptr,#_SSD1306_WriteChar_page_10000_36
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SSD1306_WriteChar_PARM_2
	movx	a,@dptr
	mov	dptr,#_SSD1306_SetCursor_PARM_2
	movx	@dptr,a
	mov	dpl, r7
	lcall	_SSD1306_SetCursor
;	main.c:140: I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
	lcall	_I2C_Start
	mov	dpl, #0x78
	lcall	_I2C_Write_Byte
	mov	dpl, #0x40
	lcall	_I2C_Write_Byte
;	main.c:141: for(i = 0; i < 8; i++) { I2C_Write_Byte(Font_8x8[idx][i]); }
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
;	main.c:142: I2C_Stop();
;	main.c:143: }
	ljmp	_I2C_Stop
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_PrintString'
;------------------------------------------------------------
;x                         Allocated with name '_SSD1306_PrintString_PARM_2'
;str                       Allocated with name '_SSD1306_PrintString_PARM_3'
;page                      Allocated with name '_SSD1306_PrintString_page_10000_42'
;------------------------------------------------------------
;	main.c:145: void SSD1306_PrintString(uint8_t page, uint8_t x, char *str) {
;	-----------------------------------------
;	 function SSD1306_PrintString
;	-----------------------------------------
_SSD1306_PrintString:
	mov	a,dpl
	mov	dptr,#_SSD1306_PrintString_page_10000_42
	movx	@dptr,a
;	main.c:146: while (*str) { SSD1306_WriteChar(page, x, (unsigned char)*str); x += 8; str++; }
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
;	main.c:147: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_DisplayResult'
;------------------------------------------------------------
;sloc0                     Allocated with name '_SSD1306_DisplayResult_sloc0_1_0'
;sloc1                     Allocated with name '_SSD1306_DisplayResult_sloc1_1_0'
;sloc2                     Allocated with name '_SSD1306_DisplayResult_sloc2_1_0'
;x                         Allocated with name '_SSD1306_DisplayResult_PARM_2'
;val                       Allocated with name '_SSD1306_DisplayResult_PARM_3'
;is_microfarads            Allocated with name '_SSD1306_DisplayResult_PARM_4'
;page                      Allocated with name '_SSD1306_DisplayResult_page_10000_45'
;------------------------------------------------------------
;	main.c:149: void SSD1306_DisplayResult(uint8_t page, uint8_t x, uint32_t val, uint8_t is_microfarads) {
;	-----------------------------------------
;	 function SSD1306_DisplayResult
;	-----------------------------------------
_SSD1306_DisplayResult:
	mov	a,dpl
	mov	dptr,#_SSD1306_DisplayResult_page_10000_45
	movx	@dptr,a
;	main.c:150: SSD1306_PrintString(page, x, "CX: ");
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
;	main.c:151: x += 32;
	mov	dptr,#_SSD1306_DisplayResult_PARM_2
	mov	a,#0x20
	add	a, r6
	movx	@dptr,a
;	main.c:153: if (!is_microfarads) {
	mov	dptr,#_SSD1306_DisplayResult_PARM_4
	movx	a,@dptr
	jz	00120$
	ljmp	00104$
00120$:
;	main.c:154: if (val <= 139) {
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
;	main.c:155: SSD1306_PrintString(page, x, "  0.0 NF");
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
;	main.c:156: return;
	ljmp	_SSD1306_PrintString
00102$:
;	main.c:158: val -= 139;
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
;	main.c:160: SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
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
;	main.c:161: SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
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
;	main.c:162: SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
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
;	main.c:163: SSD1306_WriteChar(page, x, '.');                       x += 8;
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
;	main.c:164: SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
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
;	main.c:165: SSD1306_PrintString(page, x, " NF");
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
;	main.c:168: SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
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
;	main.c:169: SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
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
;	main.c:170: SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
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
;	main.c:171: SSD1306_WriteChar(page, x, '.');                       x += 8;
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
;	main.c:172: SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
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
;	main.c:173: SSD1306_PrintString(page, x, " UF");
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
;	main.c:175: }
	ljmp	_SSD1306_PrintString
;------------------------------------------------------------
;Allocation info for local variables in function 'Measure_Single'
;------------------------------------------------------------
;use_1k                    Allocated with name '_Measure_Single_use_1k_10000_50'
;cycles                    Allocated with name '_Measure_Single_cycles_10000_51'
;max_limit                 Allocated with name '_Measure_Single_max_limit_10000_51'
;discharge                 Allocated with name '_Measure_Single_discharge_10000_51'
;------------------------------------------------------------
;	main.c:177: uint32_t Measure_Single(uint8_t use_1k) {
;	-----------------------------------------
;	 function Measure_Single
;	-----------------------------------------
_Measure_Single:
	mov	a,dpl
	mov	dptr,#_Measure_Single_use_1k_10000_50
	movx	@dptr,a
;	main.c:179: uint32_t max_limit = use_1k ? 80000000 : 3000000;
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00117$
	mov	r3,#0x00
	mov	r4,#0xb4
	mov	r5,#0xc4
	mov	r6,#0x04
	sjmp	00118$
00117$:
	mov	r3,#0xc0
	mov	r4,#0xc6
	mov	r5,#0x2d
	mov	r6,#0x00
00118$:
;	main.c:182: P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 0;
	anl	_P3M1,#0xfd
	orl	_P3M0,#0x02
;	assignBit
	clr	_PIN_R1_10K
;	main.c:183: P5M1 &= ~MASK_R3_1K; P5M0 |= MASK_R3_1K; PIN_R3_1K = 0;
	anl	_P5M1,#0xef
	orl	_P5M0,#0x10
;	assignBit
	clr	_PIN_R3_1K
;	main.c:185: for(discharge = 0; discharge < 30000; discharge++) { __asm__("nop"); }
	mov	dptr,#_Measure_Single_discharge_10000_51
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00113$:
	mov	dptr,#_Measure_Single_discharge_10000_51
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,#0x30
	mov	a,r2
	subb	a,#0x75
	jnc	00101$
	nop
	mov	dptr,#_Measure_Single_discharge_10000_51
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_Measure_Single_discharge_10000_51
	mov	a,#0x01
	add	a, r1
	movx	@dptr,a
	clr	a
	addc	a, r2
	inc	dptr
	movx	@dptr,a
	sjmp	00113$
00101$:
;	main.c:187: TH0 = 0x00; TL0 = 0x00; TF0 = 0;
	mov	_TH0,#0x00
	mov	_TL0,#0x00
;	assignBit
	clr	_TF0
;	main.c:189: if (use_1k) {
	mov	a,r7
	jz	00103$
;	main.c:190: P3M1 |= 0x02; P3M0 &= ~0x02;
	orl	_P3M1,#0x02
	anl	_P3M0,#0xfd
;	main.c:191: P5M1 &= ~MASK_R3_1K; P5M0 |= MASK_R3_1K; PIN_R3_1K = 1;
	anl	_P5M1,#0xef
	orl	_P5M0,#0x10
;	assignBit
	setb	_PIN_R3_1K
	sjmp	00104$
00103$:
;	main.c:193: P5M1 |= MASK_R3_1K; P5M0 &= ~MASK_R3_1K;
	orl	_P5M1,#0x10
	anl	_P5M0,#0xef
;	main.c:194: P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 1;
	anl	_P3M1,#0xfd
	orl	_P3M0,#0x02
;	assignBit
	setb	_PIN_R1_10K
00104$:
;	main.c:197: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:198: while (!(P5 & MASK_DET_55)) {
	mov	ar7,r3
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
	mov	a,_P5
	jb	acc.5,00111$
;	main.c:199: if (TF0) {
;	main.c:200: TF0 = 0;
;	assignBit
	jbc	_TF0,00166$
	sjmp	00109$
00166$:
;	main.c:201: cycles += 65536;
	mov	a,#0x01
	add	a, r2
	mov	r2,a
	clr	a
	addc	a, r3
	mov	r3,a
;	main.c:202: if (cycles > max_limit) break;
	clr	c
	mov	a,r7
	subb	a,r0
	mov	a,r4
	subb	a,r1
	mov	a,r5
	subb	a,r2
	mov	a,r6
	subb	a,r3
	jnc	00109$
00111$:
;	main.c:205: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:206: cycles += ((uint16_t)TH0 << 8) | TL0;
	mov	r7,_TH0
	mov	r6,#0x00
	mov	r4,_TL0
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,r6
	add	a, r0
	mov	r0,a
	mov	a,r7
	addc	a, r1
	mov	r1,a
	mov	a,r5
	addc	a, r2
	mov	r2,a
	mov	a,r4
	addc	a, r3
	mov	r3,a
;	main.c:208: PIN_R1_10K = 0;
;	assignBit
	clr	_PIN_R1_10K
;	main.c:209: PIN_R3_1K = 0;
;	assignBit
	clr	_PIN_R3_1K
;	main.c:211: return cycles;
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
;	main.c:212: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;raw_ticks                 Allocated with name '_main_raw_ticks_10000_59'
;final_calc                Allocated with name '_main_final_calc_10000_59'
;last_display_val          Allocated with name '_main_last_display_val_10000_59'
;filtered_ticks            Allocated with name '_main_filtered_ticks_10000_59'
;mode_uf                   Allocated with name '_main_mode_uf_10000_59'
;is_first_run              Allocated with name '_main_is_first_run_10000_59'
;is_sleeping               Allocated with name '_main_is_sleeping_10000_59'
;------------------------------------------------------------
;	main.c:215: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:218: uint32_t last_display_val = 0;
	mov	dptr,#_main_last_display_val_10000_59
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:219: float filtered_ticks = 0.0f;
	mov	dptr,#_main_filtered_ticks_10000_59
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:221: uint8_t is_first_run = 1;
	mov	dptr,#_main_is_first_run_10000_59
	inc	a
	movx	@dptr,a
;	main.c:222: uint8_t is_sleeping = 0; //программный флаг сна
	mov	dptr,#_main_is_sleeping_10000_59
	clr	a
	movx	@dptr,a
;	main.c:225: P5M1 |= MASK_DET_55; P5M0 &= ~MASK_DET_55;
	orl	_P5M1,#0x20
	anl	_P5M0,#0xdf
;	main.c:228: P3M1 |= (1 << 0); P3M0 &= ~(1 << 0);
	orl	_P3M1,#0x01
	anl	_P3M0,#0xfe
;	main.c:230: P_SW2 = 0x80; CLKSEL = 0x00; P_SW2 = 0x00;
	mov	_P_SW2,#0x80
	mov	_CLKSEL,#0x00
	mov	_P_SW2,#0x00
;	main.c:231: AUXR |= 0x80; TMOD &= 0xF0; TR0 = 0; TF0 = 0;
	orl	_AUXR,#0x80
	anl	_TMOD,#0xf0
;	assignBit
	clr	_TR0
;	assignBit
	clr	_TF0
;	main.c:233: SCL_HIGH(); SDA_HIGH(); Delay_ms(100);
	lcall	_SCL_HIGH
	lcall	_SDA_HIGH
	mov	dptr,#0x0064
	lcall	_Delay_ms
;	main.c:234: SSD1306_Init();
	lcall	_SSD1306_Init
;	main.c:235: SSD1306_Clear();
	lcall	_SSD1306_Clear
;	main.c:237: while(1) {
00146$:
;	main.c:239: if (PIN_BUTTON == 0) {
	jb	_PIN_BUTTON,00110$
;	main.c:240: Delay_ms(50); // Надежный антидребезг нажатия
	mov	dptr,#0x0032
	lcall	_Delay_ms
;	main.c:241: if (PIN_BUTTON == 0) {
	jb	_PIN_BUTTON,00110$
;	main.c:244: while(PIN_BUTTON == 0) {
00101$:
	jb	_PIN_BUTTON,00103$
;	main.c:245: Delay_ms(10);
	mov	dptr,#0x000a
	lcall	_Delay_ms
	sjmp	00101$
00103$:
;	main.c:247: Delay_ms(100); // Антидребезг на размыкание контактов
	mov	dptr,#0x0064
	lcall	_Delay_ms
;	main.c:250: if (is_sleeping == 0) {
	mov	dptr,#_main_is_sleeping_10000_59
	movx	a,@dptr
	jnz	00105$
;	main.c:251: is_sleeping = 1;
	mov	dptr,#_main_is_sleeping_10000_59
	mov	a,#0x01
	movx	@dptr,a
;	main.c:252: SSD1306_Command(0xAE); // Просто выключаем экран
	mov	dpl, #0xae
	lcall	_SSD1306_Command
	sjmp	00110$
00105$:
;	main.c:254: is_sleeping = 0;
	mov	dptr,#_main_is_sleeping_10000_59
	clr	a
	movx	@dptr,a
;	main.c:255: SSD1306_Command(0xAF); // Просто включаем экран
	mov	dpl, #0xaf
	lcall	_SSD1306_Command
;	main.c:256: last_display_val = 0;  // Сброс, чтобы сразу обновить экран актуальным замером
	mov	dptr,#_main_last_display_val_10000_59
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:257: is_first_run = 1;
	mov	dptr,#_main_is_first_run_10000_59
	inc	a
	movx	@dptr,a
00110$:
;	main.c:263: if (is_sleeping == 1) {
	mov	dptr,#_main_is_sleeping_10000_59
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00112$
;	main.c:264: Delay_ms(100);
	mov	dptr,#0x0064
	lcall	_Delay_ms
;	main.c:265: continue; // Прыгаем обратно в начало while(1) только опрашивать кнопку
	sjmp	00146$
00112$:
;	main.c:270: raw_ticks = Measure_Single(0);
	mov	dpl, #0x00
	lcall	_Measure_Single
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
;	main.c:272: if (raw_ticks > 55000) {
	clr	c
	mov	a,#0xd8
	subb	a,r4
	mov	a,#0xd6
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00270$
	ljmp	00141$
00270$:
;	main.c:273: mode_uf = 1;
	mov	dptr,#_main_mode_uf_10000_59
	mov	a,#0x01
	movx	@dptr,a
;	main.c:274: raw_ticks = Measure_Single(1);
	mov	dpl, #0x01
	lcall	_Measure_Single
	mov	_main_sloc1_1_0,dpl
	mov	(_main_sloc1_1_0 + 1),dph
	mov	(_main_sloc1_1_0 + 2),b
	mov	(_main_sloc1_1_0 + 3),a
;	main.c:276: if (is_first_run || filtered_ticks < 1000.0f) {
	mov	dptr,#_main_is_first_run_10000_59
	movx	a,@dptr
	jnz	00113$
	mov	dptr,#_main_filtered_ticks_10000_59
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
	clr	a
	push	acc
	push	acc
	mov	a,#0x7a
	push	acc
	mov	a,#0x44
	push	acc
	mov	dpl, _main_sloc0_1_0
	mov	dph, (_main_sloc0_1_0 + 1)
	mov	b, (_main_sloc0_1_0 + 2)
	mov	a, (_main_sloc0_1_0 + 3)
	lcall	___fslt
	mov	r3, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00114$
00113$:
;	main.c:277: filtered_ticks = (float)raw_ticks;
	mov	dpl, _main_sloc1_1_0
	mov	dph, (_main_sloc1_1_0 + 1)
	mov	b, (_main_sloc1_1_0 + 2)
	mov	a, (_main_sloc1_1_0 + 3)
	lcall	___ulong2fs
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	dptr,#_main_filtered_ticks_10000_59
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
;	main.c:278: is_first_run = 0;
	mov	dptr,#_main_is_first_run_10000_59
	clr	a
	movx	@dptr,a
	ljmp	00115$
00114$:
;	main.c:280: filtered_ticks = filtered_ticks + 0.25f * ((float)raw_ticks - filtered_ticks);
	mov	dpl, _main_sloc1_1_0
	mov	dph, (_main_sloc1_1_0 + 1)
	mov	b, (_main_sloc1_1_0 + 2)
	mov	a, (_main_sloc1_1_0 + 3)
	lcall	___ulong2fs
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	(_main_sloc0_1_0 + 2)
	push	(_main_sloc0_1_0 + 3)
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	___fssub
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x0000
	mov	b, #0x80
	mov	a, #0x3e
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl, _main_sloc0_1_0
	mov	dph, (_main_sloc0_1_0 + 1)
	mov	b, (_main_sloc0_1_0 + 2)
	mov	a, (_main_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_main_filtered_ticks_10000_59
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
00115$:
;	main.c:284: if (filtered_ticks < 650000.0f) {
	mov	dptr,#_main_filtered_ticks_10000_59
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
	clr	a
	push	acc
	mov	a,#0xb1
	push	acc
	mov	a,#0x1e
	push	acc
	mov	a,#0x49
	push	acc
	mov	dpl, _main_sloc1_1_0
	mov	dph, (_main_sloc1_1_0 + 1)
	mov	b, (_main_sloc1_1_0 + 2)
	mov	a, (_main_sloc1_1_0 + 3)
	lcall	___fslt
	mov	r3, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00122$
;	main.c:285: final_calc = (uint32_t)(filtered_ticks * 0.0000059f); // Скорректировано под 10 мкФ
	push	_main_sloc1_1_0
	push	(_main_sloc1_1_0 + 1)
	push	(_main_sloc1_1_0 + 2)
	push	(_main_sloc1_1_0 + 3)
	mov	dptr,#0xf89d
	mov	b, #0xc5
	mov	a, #0x36
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	___fs2ulong
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	dptr,#_main_final_calc_10000_59
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
	ljmp	00123$
00122$:
;	main.c:287: else if (filtered_ticks >= 650000.0f && filtered_ticks < 2000000.0f) {
	clr	a
	push	acc
	mov	a,#0xb1
	push	acc
	mov	a,#0x1e
	push	acc
	mov	a,#0x49
	push	acc
	mov	dpl, _main_sloc1_1_0
	mov	dph, (_main_sloc1_1_0 + 1)
	mov	b, (_main_sloc1_1_0 + 2)
	mov	a, (_main_sloc1_1_0 + 3)
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a, dpl
	add	a,#0xff
	mov	_main_sloc2_1_0,c
	jc	00118$
	clr	a
	push	acc
	mov	a,#0x24
	push	acc
	mov	a,#0xf4
	push	acc
	mov	a,#0x49
	push	acc
	mov	dpl, _main_sloc1_1_0
	mov	dph, (_main_sloc1_1_0 + 1)
	mov	b, (_main_sloc1_1_0 + 2)
	mov	a, (_main_sloc1_1_0 + 3)
	lcall	___fslt
	mov	r3, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00118$
;	main.c:288: final_calc = (uint32_t)(filtered_ticks * 0.0001996f);
	push	_main_sloc1_1_0
	push	(_main_sloc1_1_0 + 1)
	push	(_main_sloc1_1_0 + 2)
	push	(_main_sloc1_1_0 + 3)
	mov	dptr,#0x4bb8
	mov	b, #0x51
	mov	a, #0x39
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	___fs2ulong
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	dptr,#_main_final_calc_10000_59
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
	sjmp	00123$
00118$:
;	main.c:291: final_calc = (uint32_t)(filtered_ticks * 0.0003050f);
	mov	dptr,#_main_filtered_ticks_10000_59
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0xe868
	mov	b, #0x9f
	mov	a, #0x39
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	___fs2ulong
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	dptr,#_main_final_calc_10000_59
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
00123$:
;	main.c:294: if (final_calc == 0) final_calc = 1;
	mov	dptr,#_main_final_calc_10000_59
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00125$
	mov	dptr,#_main_final_calc_10000_59
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00125$:
;	main.c:296: if (final_calc > last_display_val) {
	mov	dptr,#_main_final_calc_10000_59
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
	mov	dptr,#_main_last_display_val_10000_59
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
	clr	c
	mov	a,_main_sloc1_1_0
	subb	a,_main_sloc0_1_0
	mov	a,(_main_sloc1_1_0 + 1)
	subb	a,(_main_sloc0_1_0 + 1)
	mov	a,(_main_sloc1_1_0 + 2)
	subb	a,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc1_1_0 + 3)
	subb	a,(_main_sloc0_1_0 + 3)
	jnc	00131$
;	main.c:297: if ((final_calc - last_display_val) < 2) final_calc = last_display_val;
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
	subb	a,#0x02
	mov	a,r1
	subb	a,#0x00
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jc	00278$
	ljmp	00142$
00278$:
	mov	dptr,#_main_final_calc_10000_59
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
	ljmp	00142$
00131$:
;	main.c:299: if ((last_display_val - final_calc) < 2) final_calc = last_display_val;
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
	subb	a,#0x02
	mov	a,r1
	subb	a,#0x00
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jc	00279$
	ljmp	00142$
00279$:
	mov	dptr,#_main_final_calc_10000_59
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
	ljmp	00142$
00141$:
;	main.c:303: mode_uf = 0;
	mov	dptr,#_main_mode_uf_10000_59
	clr	a
	movx	@dptr,a
;	main.c:304: is_first_run = 1;
	mov	dptr,#_main_is_first_run_10000_59
	inc	a
	movx	@dptr,a
;	main.c:306: final_calc = (uint32_t)((float)raw_ticks * 0.18823f);
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___ulong2fs
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xbf5d
	mov	b, #0x40
	mov	a, #0x3e
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fs2ulong
	mov	_main_sloc1_1_0,dpl
	mov	(_main_sloc1_1_0 + 1),dph
	mov	(_main_sloc1_1_0 + 2),b
	mov	(_main_sloc1_1_0 + 3),a
	mov	dptr,#_main_final_calc_10000_59
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
;	main.c:308: if (final_calc > last_display_val) {
	mov	dptr,#_main_last_display_val_10000_59
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
	jnc	00138$
;	main.c:309: if ((final_calc - last_display_val) < 12) final_calc = last_display_val;
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
	subb	a,#0x0c
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00142$
	mov	dptr,#_main_final_calc_10000_59
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
	sjmp	00142$
00138$:
;	main.c:311: if ((last_display_val - final_calc) < 12) final_calc = last_display_val;
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
	subb	a,#0x0c
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00142$
	mov	dptr,#_main_final_calc_10000_59
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
00142$:
;	main.c:315: if (final_calc != last_display_val) {
	mov	dptr,#_main_final_calc_10000_59
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
	mov	dptr,#_main_last_display_val_10000_59
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
	cjne	a,ar0,00283$
	mov	a,r5
	cjne	a,ar1,00283$
	mov	a,r6
	cjne	a,ar2,00283$
	mov	a,r7
	cjne	a,ar3,00283$
	sjmp	00144$
00283$:
;	main.c:316: SSD1306_DisplayResult(3, 16, final_calc, mode_uf);
	mov	dptr,#_main_mode_uf_10000_59
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
;	main.c:317: last_display_val = final_calc;
	mov	dptr,#_main_last_display_val_10000_59
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
00144$:
;	main.c:320: Delay_ms(300);
	mov	dptr,#0x012c
	lcall	_Delay_ms
;	main.c:322: }
	ljmp	00146$
	.area CSEG    (CODE)
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
	.area CABS    (ABS,CODE)
