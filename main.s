	.file	"main.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	initInputs
	.type	initInputs, @function
initInputs:
.LFB9:
	.file 1 "main.c"
	.loc 1 99 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 101 0
	cbi 42-32,2
	.loc 1 104 0
	sbi 42-32,3
/* epilogue start */
	.loc 1 105 0
	ret
	.cfi_endproc
.LFE9:
	.size	initInputs, .-initInputs
.global	initINT0
	.type	initINT0, @function
initINT0:
.LFB10:
	.loc 1 107 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 109 0
	ldi r30,lo8(105)
	ldi r31,hi8(105)
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	.loc 1 110 0
	ld r24,Z
	andi r24,lo8(-2)
	st Z,r24
	.loc 1 113 0
	sbi 61-32,0
/* epilogue start */
	.loc 1 114 0
	ret
	.cfi_endproc
.LFE10:
	.size	initINT0, .-initINT0
.global	initTimer
	.type	initTimer, @function
initTimer:
.LFB11:
	.loc 1 116 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 118 0
	ldi r30,lo8(129)
	ldi r31,hi8(129)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 119 0
	ld r24,Z
	andi r24,lo8(-5)
	st Z,r24
	.loc 1 122 0
	ldi r30,lo8(111)
	ldi r31,hi8(111)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
/* epilogue start */
	.loc 1 123 0
	ret
	.cfi_endproc
.LFE11:
	.size	initTimer, .-initTimer
.global	init
	.type	init, @function
init:
.LFB8:
	.loc 1 87 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 88 0
	call initInputs
	.loc 1 89 0
	call initINT0
	.loc 1 90 0
	call initTimer
	.loc 1 91 0
	ldi r24,lo8(103)
	ldi r25,hi8(103)
	call uart_init
	.loc 1 95 0
	sts displayMuxCount+1,__zero_reg__
	sts displayMuxCount,__zero_reg__
	.loc 1 96 0
/* #APP */
 ;  96 "main.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
	.loc 1 97 0
/* #NOAPP */
	ret
	.cfi_endproc
.LFE8:
	.size	init, .-init
	.data
.LC0:
	.string	"%lu."
.LC1:
	.string	"%03lu GPH\n"
	.text
.global	loop
	.type	loop, @function
loop:
.LFB12:
	.loc 1 131 0
	.cfi_startproc
	push r2
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 2, -2
	push r3
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
.LCFI14:
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
.LCFI15:
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
.LCFI16:
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
.LCFI17:
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
	.loc 1 138 0
	lds r24,state
	cpi r24,lo8(2)
	breq .+2
	rjmp .L6
	.loc 1 140 0
	lds r12,cyclesElapsed
	lds r13,cyclesElapsed+1
	lds r14,cyclesElapsed+2
	lds r15,cyclesElapsed+3
.LVL0:
	.loc 1 144 0
	call uart_getc
	ldi r18,hi8(256)
	cpi r24,lo8(256)
	cpc r25,r18
	brne .+2
	rjmp .L8
	.loc 1 140 0
	movw r2,r12
	movw r4,r14
	ldi r18,lo8(0)
	ldi r19,lo8(-96)
	ldi r20,lo8(-84)
	ldi r21,lo8(-71)
	ldi r22,lo8(3)
	ldi r23,lo8(0)
	ldi r24,lo8(0)
	ldi r25,lo8(0)
	movw r10,r12
	movw r12,r4
.LVL1:
	clr r14
	clr r15
	ldi r16,lo8(0)
	ldi r17,lo8(0)
	call __udivdi3
	.loc 1 142 0
	movw r22,r18
	movw r24,r20
	call __floatunsisf
	ldi r18,lo8(0x40c37cee)
	ldi r19,hi8(0x40c37cee)
	ldi r20,hlo8(0x40c37cee)
	ldi r21,hhi8(0x40c37cee)
	call __mulsf3
	ldi r18,lo8(0x390637bd)
	ldi r19,hi8(0x390637bd)
	ldi r20,hlo8(0x390637bd)
	ldi r21,hhi8(0x390637bd)
	call __addsf3
	call __fixunssfsi
	mov r21,r24
	mov r20,r25
.LVL2:
.LBB2:
	.loc 1 148 0
	in r24,__SP_L__
	in r25,__SP_H__
.LVL3:
	sbiw r24,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r2,__SP_L__
	in r3,__SP_H__
.LVL4:
	sec
	adc r2,__zero_reg__
	adc r3,__zero_reg__
	ldi r28,lo8(displayString)
	ldi r29,hi8(displayString)
	in r26,__SP_L__
	in r27,__SP_H__
	adiw r26,1+1
	st X,r29
	st -X,r28
	sbiw r26,1
	ldi r18,lo8(.LC0)
	ldi r19,hi8(.LC0)
	movw r30,r2
	std Z+3,r19
	std Z+2,r18
	.loc 1 146 0
	mov r24,r21
	mov r25,r20
.LVL5:
	ldi r18,lo8(1000)
	ldi r19,hi8(1000)
	ldi r20,hlo8(1000)
	ldi r21,hhi8(1000)
	call __udivmodsi4
.LVL6:
	movw r12,r22
	movw r14,r24
	.loc 1 148 0
	movw r26,r2
	adiw r26,4
	st X+,r18
	st X+,r19
	st X+,r20
	st X,r21
	sbiw r26,4+3
	call sprintf
	.loc 1 149 0
	in r30,__SP_L__
	in r31,__SP_H__
	adiw r30,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r31
	out __SREG__,__tmp_reg__
	out __SP_L__,r30
	movw r24,r28
	call uart_puts
	.loc 1 150 0
	movw r30,r28
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne .-6
	sbiw r30,1
	sub r30,r28
	sbc r31,r29
	lds r24,charsPrinted
	add r24,r30
	sts charsPrinted,r24
	.loc 1 151 0
	in r24,__SP_L__
	in r25,__SP_H__
	sbiw r24,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	in r30,__SP_L__
	in r31,__SP_H__
	adiw r30,1
	in r26,__SP_L__
	in r27,__SP_H__
	adiw r26,1+1
	st X,r29
	st -X,r28
	sbiw r26,1
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	std Z+3,r25
	std Z+2,r24
	std Z+4,r12
	std Z+5,r13
	std Z+6,r14
	std Z+7,r15
	call sprintf
	.loc 1 152 0
	in r30,__SP_L__
	in r31,__SP_H__
	adiw r30,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r31
	out __SREG__,__tmp_reg__
	out __SP_L__,r30
	movw r24,r28
	call uart_puts
	.loc 1 153 0
	ld __tmp_reg__,Y+
	tst __tmp_reg__
	brne .-6
	sbiw r28,1
	subi r28,lo8(displayString)
	sbci r29,hi8(displayString)
	lds r24,charsPrinted
	add r24,r28
	sts charsPrinted,r24
	rjmp .L8
.L6:
.LBE2:
	.loc 1 188 0
	lds r24,state
.LVL7:
	rjmp .L7
.LVL8:
.L8:
	.loc 1 185 0
	ldi r24,lo8(0)
.L7:
.LVL9:
	.loc 1 191 0
	sts state,r24
/* epilogue start */
	.loc 1 192 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.cfi_endproc
.LFE12:
	.size	loop, .-loop
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB7:
	.loc 1 79 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 80 0
	call init
.L10:
	.loc 1 83 0 discriminator 1
	call loop
	rjmp .L10
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.text
.global	__vector_13
	.type	__vector_13, @function
__vector_13:
.LFB13:
	.loc 1 199 0
	.cfi_startproc
	push r1
.LCFI18:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI19:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
.LCFI20:
	.cfi_def_cfa_offset 5
	.cfi_offset 24, -4
	push r25
.LCFI21:
	.cfi_def_cfa_offset 6
	.cfi_offset 25, -5
	push r26
.LCFI22:
	.cfi_def_cfa_offset 7
	.cfi_offset 26, -6
	push r27
.LCFI23:
	.cfi_def_cfa_offset 8
	.cfi_offset 27, -7
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 200 0
	lds r24,overflows
	lds r25,overflows+1
	lds r26,overflows+2
	lds r27,overflows+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts overflows,r24
	sts overflows+1,r25
	sts overflows+2,r26
	sts overflows+3,r27
	.loc 1 202 0
	lds r24,displayMuxCount
	lds r25,displayMuxCount+1
	cpi r24,244
	cpc r25,__zero_reg__
	brlo .L12
	.loc 1 202 0 is_stmt 0 discriminator 1
	lds r24,displayMuxCount
	lds r25,displayMuxCount+1
	rjmp .L13
.L12:
	.loc 1 202 0 discriminator 2
	lds r24,displayMuxCount
	lds r25,displayMuxCount+1
	adiw r24,1
.L13:
	.loc 1 202 0 discriminator 3
	sts displayMuxCount+1,r25
	sts displayMuxCount,r24
/* epilogue start */
	.loc 1 203 0 is_stmt 1 discriminator 3
	pop r27
	pop r26
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE13:
	.size	__vector_13, .-__vector_13
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
.LFB14:
	.loc 1 206 0
	.cfi_startproc
	push r1
.LCFI24:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI25:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r20
.LCFI26:
	.cfi_def_cfa_offset 5
	.cfi_offset 20, -4
	push r21
.LCFI27:
	.cfi_def_cfa_offset 6
	.cfi_offset 21, -5
	push r22
.LCFI28:
	.cfi_def_cfa_offset 7
	.cfi_offset 22, -6
	push r23
.LCFI29:
	.cfi_def_cfa_offset 8
	.cfi_offset 23, -7
	push r24
.LCFI30:
	.cfi_def_cfa_offset 9
	.cfi_offset 24, -8
	push r25
.LCFI31:
	.cfi_def_cfa_offset 10
	.cfi_offset 25, -9
	push r26
.LCFI32:
	.cfi_def_cfa_offset 11
	.cfi_offset 26, -10
	push r27
.LCFI33:
	.cfi_def_cfa_offset 12
	.cfi_offset 27, -11
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	.loc 1 209 0
	lds r25,state
	tst r25
	brne .L15
	.loc 1 212 0
	sts 132+1,__zero_reg__
	sts 132,__zero_reg__
	.loc 1 214 0
	sts overflows,__zero_reg__
	sts overflows+1,__zero_reg__
	sts overflows+2,__zero_reg__
	sts overflows+3,__zero_reg__
	.loc 1 216 0
	sbi 54-32,0
.LVL10:
	.loc 1 221 0
	in r24,43-32
	ldi r25,lo8(8)
	eor r24,r25
	out 43-32,r24
	.loc 1 218 0
	ldi r24,lo8(1)
	rjmp .L16
.LVL11:
.L15:
	.loc 1 223 0
	lds r25,state
	cpi r25,lo8(1)
	brne .L17
	.loc 1 224 0
	lds r20,132
	lds r21,132+1
	lds r24,overflows
	lds r25,overflows+1
	lds r26,overflows+2
	lds r27,overflows+3
	movw r26,r24
	clr r25
	clr r24
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	sts cyclesElapsed,r24
	sts cyclesElapsed+1,r25
	sts cyclesElapsed+2,r26
	sts cyclesElapsed+3,r27
.LVL12:
	.loc 1 229 0
	in r24,43-32
	ldi r25,lo8(8)
	eor r24,r25
	out 43-32,r24
	.loc 1 226 0
	ldi r24,lo8(2)
	rjmp .L16
.LVL13:
.L17:
	.loc 1 231 0
	lds r25,state
	cpi r25,lo8(2)
	breq .L16
	.loc 1 236 0
	ldi r24,lo8(0)
.L16:
.LVL14:
	.loc 1 239 0
	sts state,r24
/* epilogue start */
	.loc 1 242 0
	pop r27
	pop r26
	pop r25
	pop r24
.LVL15:
	pop r23
	pop r22
	pop r21
	pop r20
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE14:
	.size	__vector_1, .-__vector_1
	.comm charsPrinted,1,1
	.comm displayString,50,1
	.comm state,1,1
	.comm cyclesElapsed,4,1
	.comm overflows,4,1
	.comm displayMuxCount,2,1
.Letext0:
	.file 2 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h"
	.file 3 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2d2
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF33
	.byte	0x1
	.long	.LASF34
	.long	.LASF35
	.long	0
	.long	0
	.long	.Ldebug_ranges0+0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x2
	.byte	0x7a
	.long	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
	.byte	0x7c
	.long	0x29
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x7e
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.long	0x9d
	.uleb128 0x6
	.long	.LASF10
	.sleb128 0
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1
	.uleb128 0x6
	.long	.LASF12
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x30
	.long	0x82
	.uleb128 0x7
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.uleb128 0x7
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.uleb128 0x7
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.uleb128 0x7
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.uleb128 0x8
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST0
	.long	0x18d
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x84
	.long	0x9d
	.long	.LLST1
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x85
	.long	0x62
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0x86
	.long	0x62
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0x87
	.long	0x62
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x88
	.long	0x62
	.uleb128 0xb
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xc
	.byte	0x1
	.long	.LASF36
	.byte	0x3
	.byte	0
	.byte	0x1
	.long	0x30
	.byte	0x1
	.long	0x177
	.uleb128 0xd
	.long	0x18d
	.uleb128 0xd
	.long	0x19a
	.uleb128 0xe
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF37
	.byte	0x3
	.byte	0
	.byte	0x1
	.long	0x29
	.byte	0x1
	.uleb128 0xd
	.long	0x19a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.long	0x193
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF22
	.uleb128 0x10
	.byte	0x2
	.long	0x1a0
	.uleb128 0x11
	.long	0x193
	.uleb128 0x12
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	0x30
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.uleb128 0x13
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST2
	.uleb128 0x8
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST3
	.long	0x1fc
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0xcf
	.long	0x9d
	.long	.LLST4
	.byte	0
	.uleb128 0x14
	.long	.LASF27
	.byte	0x1
	.byte	0x38
	.long	0x209
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	0x57
	.uleb128 0x14
	.long	.LASF28
	.byte	0x1
	.byte	0x39
	.long	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	0x62
	.uleb128 0x14
	.long	.LASF29
	.byte	0x1
	.byte	0x3a
	.long	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.byte	0x3b
	.long	0x23a
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x16
	.long	0x193
	.long	0x24f
	.uleb128 0x17
	.long	0x29
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.long	.LASF31
	.byte	0x1
	.byte	0x3e
	.long	0x23f
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	.LASF32
	.byte	0x1
	.byte	0x3f
	.long	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.byte	0x38
	.long	0x209
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	displayMuxCount
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.byte	0x39
	.long	0x21b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	overflows
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.byte	0x3a
	.long	0x21b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cyclesElapsed
	.uleb128 0x18
	.long	.LASF30
	.byte	0x1
	.byte	0x3b
	.long	0x23a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	state
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.byte	0x3e
	.long	0x23f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	displayString
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.byte	0x3f
	.long	0x45
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	charsPrinted
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB12
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI17
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	0
	.long	0
.LLST1:
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LFE12
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LFB13
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI23
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST3:
	.long	.LFB14
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI33
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x68
	.long	.LVL15
	.long	.LFE14
	.word	0x5
	.byte	0x3
	.long	state
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"integerPart"
.LASF26:
	.string	"nextState"
.LASF15:
	.string	"initINT0"
.LASF30:
	.string	"state"
.LASF10:
	.string	"WAITING"
.LASF31:
	.string	"displayString"
.LASF17:
	.string	"init"
.LASF14:
	.string	"initInputs"
.LASF24:
	.string	"loop"
.LASF23:
	.string	"__vector_13"
.LASF37:
	.string	"strlen"
.LASF3:
	.string	"unsigned char"
.LASF28:
	.string	"overflows"
.LASF19:
	.string	"milliGPH"
.LASF7:
	.string	"long unsigned int"
.LASF16:
	.string	"initTimer"
.LASF13:
	.string	"State"
.LASF33:
	.string	"GNU C 4.6.2"
.LASF21:
	.string	"fractionalPart"
.LASF38:
	.string	"main"
.LASF18:
	.string	"millihertz"
.LASF27:
	.string	"displayMuxCount"
.LASF12:
	.string	"DISPLAYING"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"charsPrinted"
.LASF29:
	.string	"cyclesElapsed"
.LASF9:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF11:
	.string	"COUNTING"
.LASF35:
	.string	"/Users/Dylan/Developer/flowMeterFrequencyCounter"
.LASF8:
	.string	"long long int"
.LASF34:
	.string	"main.c"
.LASF22:
	.string	"char"
.LASF25:
	.string	"__vector_1"
.LASF5:
	.string	"uint16_t"
.LASF6:
	.string	"uint32_t"
.LASF1:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF36:
	.string	"sprintf"
