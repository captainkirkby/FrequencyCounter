	.file	"freq_counter.c"
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
	.data
.LC0:
	.string	"%lu."
.LC1:
	.string	"%03lu Hz\n"
.LC2:
	.string	"%lu\n"
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB7:
	.file 1 "freq_counter.c"
	.loc 1 21 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,lo8(-(-272))
	sbci r29,hi8(-(-272))
.LCFI2:
	.cfi_def_cfa 28, 276
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 272 */
/* stack size = 274 */
.L__stack_usage = 274
	.loc 1 22 0
	cbi 36-32,2
	.loc 1 23 0
	sbi 37-32,2
	.loc 1 26 0
	ldi r24,lo8(12)
	call lcd_init
.LVL0:
	.loc 1 47 0
	in r24,35-32
	.loc 1 48 0
/* #APP */
 ;  48 "freq_counter.c" 1
	cli
 ;  0 "" 2
	.loc 1 35 0
/* #NOAPP */
	clr r6
	clr r7
	.loc 1 20 0
	movw r24,r28
	subi r24,lo8(-(267))
	sbci r25,hi8(-(267))
	subi r28,lo8(-267)
	sbci r29,hi8(-267)
	std Y+1,r25
	st Y,r24
	subi r28,lo8(267)
	sbci r29,hi8(267)
.LBB2:
	.loc 1 82 0
	movw r16,r28
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
.LVL1:
.L7:
.LBE2:
	.loc 1 52 0
	clr r8
	clr r9
	movw r10,r8
	.loc 1 55 0
	rjmp .L2
.LVL2:
.L3:
	.loc 1 56 0
	sec
	adc r8,__zero_reg__
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
.LVL3:
.L2:
	.loc 1 55 0 discriminator 1
	sbic 35-32,2
	rjmp .L3
	.loc 1 55 0 is_stmt 0 discriminator 2
	ldi r25,lo8(1000)
	cp r8,r25
	ldi r25,hi8(1000)
	cpc r9,r25
	ldi r25,hlo8(1000)
	cpc r10,r25
	ldi r25,hhi8(1000)
	cpc r11,r25
	brlo .L3
	.loc 1 61 0 is_stmt 1
	movw r30,r6
	lsl r30
	rol r31
	lsl r30
	rol r31
	ldi r26,lo8(67)
	ldi r27,hi8(67)
	add r26,r28
	adc r27,r29
	add r30,r26
	adc r31,r27
	st Z,r8
	std Z+1,r9
	std Z+2,r10
	std Z+3,r11
	.loc 1 62 0
	movw r24,r6
	adiw r24,1
	ldi r22,lo8(50)
	ldi r23,hi8(50)
	call __udivmodhi4
	movw r6,r24
.LVL4:
	.loc 1 64 0
	cpi r24,49
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L8
	movw r30,r28
	subi r30,lo8(-(67))
	sbci r31,hi8(-(67))
	.loc 1 20 0
	clr r12
	clr r13
	movw r14,r12
.LVL5:
.L5:
.LBB3:
	.loc 1 69 0 discriminator 2
	ld r24,Z+
	ld r25,Z+
	ld r26,Z+
	ld r27,Z+
	add r12,r24
	adc r13,r25
	adc r14,r26
	adc r15,r27
.LVL6:
	.loc 1 68 0 discriminator 2
	subi r28,lo8(-267)
	sbci r29,hi8(-267)
	ld r24,Y
	ldd r25,Y+1
	subi r28,lo8(267)
	sbci r29,hi8(267)
	cp r30,r24
	cpc r31,r25
	brne .L5
.LVL7:
	.loc 1 76 0
	ldi r22,lo8(49950000)
	ldi r23,hi8(49950000)
	ldi r24,hlo8(49950000)
	ldi r25,hhi8(49950000)
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	movw r2,r18
	movw r4,r20
	ldi r18,lo8(1000)
	ldi r19,hi8(1000)
	ldi r20,hlo8(1000)
	ldi r21,hhi8(1000)
	call __mulsi3
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	.loc 1 79 0
	subi r28,lo8(-269)
	sbci r29,hi8(-269)
	st Y,r18
	subi r28,lo8(269)
	sbci r29,hi8(269)
	subi r28,lo8(-270)
	sbci r29,hi8(-270)
	st Y,r19
	subi r28,lo8(270)
	sbci r29,hi8(270)
	subi r28,lo8(-271)
	sbci r29,hi8(-271)
	st Y,r20
	subi r28,lo8(271)
	sbci r29,hi8(271)
	subi r28,lo8(-272)
	sbci r29,hi8(-272)
	st Y,r21
	subi r28,lo8(272)
	sbci r29,hi8(272)
	call lcd_clrscr
	.loc 1 80 0
	in r26,__SP_L__
	in r27,__SP_H__
	sbiw r26,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r27
	out __SREG__,__tmp_reg__
	out __SP_L__,r26
	in r30,__SP_L__
	in r31,__SP_H__
	adiw r30,1
	ldi r24,lo8(34)
	ldi r25,hi8(34)
	add r24,r28
	adc r25,r29
	adiw r26,1+1
	st X,r25
	st -X,r24
	sbiw r26,1
	ldi r26,lo8(.LC0)
	ldi r27,hi8(.LC0)
	std Z+3,r27
	std Z+2,r26
	std Z+4,r2
	std Z+5,r3
	std Z+6,r4
	std Z+7,r5
	.cfi_escape 0x2e,0x8
	call sprintf
	.loc 1 81 0
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	movw r24,r28
	adiw r24,34
	.cfi_escape 0x2e,0
	call lcd_puts
	.loc 1 82 0
	in r26,__SP_L__
	in r27,__SP_H__
	sbiw r26,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r27
	out __SREG__,__tmp_reg__
	out __SP_L__,r26
	in r30,__SP_L__
	in r31,__SP_H__
	adiw r30,1
	adiw r26,1+1
	st X,r17
	st -X,r16
	sbiw r26,1
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	std Z+3,r25
	std Z+2,r24
	subi r28,lo8(-269)
	sbci r29,hi8(-269)
	ld r18,Y
	subi r28,lo8(269)
	sbci r29,hi8(269)
	std Z+4,r18
	subi r28,lo8(-270)
	sbci r29,hi8(-270)
	ld r19,Y
	subi r28,lo8(270)
	sbci r29,hi8(270)
	std Z+5,r19
	subi r28,lo8(-271)
	sbci r29,hi8(-271)
	ld r20,Y
	subi r28,lo8(271)
	sbci r29,hi8(271)
	std Z+6,r20
	subi r28,lo8(-272)
	sbci r29,hi8(-272)
	ld r21,Y
	subi r28,lo8(272)
	sbci r29,hi8(272)
	std Z+7,r21
	.cfi_escape 0x2e,0x8
	call sprintf
	.loc 1 83 0
	in r26,__SP_L__
	in r27,__SP_H__
	adiw r26,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r27
	out __SREG__,__tmp_reg__
	out __SP_L__,r26
	movw r24,r16
	.cfi_escape 0x2e,0
	call lcd_puts
	.loc 1 84 0
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
	st X,r17
	st -X,r16
	sbiw r26,1
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	std Z+3,r25
	std Z+2,r24
	std Z+4,r8
	std Z+5,r9
	std Z+6,r10
	std Z+7,r11
	.cfi_escape 0x2e,0x8
	call sprintf
	.loc 1 85 0
	in r26,__SP_L__
	in r27,__SP_H__
	adiw r26,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r27
	out __SREG__,__tmp_reg__
	out __SP_L__,r26
	movw r24,r16
	.cfi_escape 0x2e,0
	call lcd_puts
	.loc 1 86 0
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
	st X,r17
	st -X,r16
	sbiw r26,1
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	std Z+3,r25
	std Z+2,r24
	std Z+4,r12
	std Z+5,r13
	std Z+6,r14
	std Z+7,r15
	.cfi_escape 0x2e,0x8
	call sprintf
	.loc 1 87 0
	in r26,__SP_L__
	in r27,__SP_H__
	adiw r26,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r27
	out __SREG__,__tmp_reg__
	out __SP_L__,r26
	movw r24,r16
	.cfi_escape 0x2e,0
	call lcd_puts
.LVL8:
.L8:
.LBE3:
	.loc 1 97 0 discriminator 1
	sbis 35-32,2
	rjmp .L8
	rjmp .L7
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h"
	.file 3 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF20
	.byte	0x1
	.long	.LASF21
	.long	.LASF22
	.long	0
	.long	0
	.long	.Ldebug_ranges0+0x18
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
	.long	.LASF23
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.long	0x30
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.long	0x148
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x1f
	.long	0x62
	.long	.LLST1
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x22
	.long	0x148
	.byte	0x3
	.byte	0x8c
	.sleb128 67
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x23
	.long	0x57
	.long	.LLST2
	.uleb128 0x8
	.string	"avg"
	.byte	0x1
	.byte	0x24
	.long	0x62
	.long	.LLST3
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x25
	.long	0x57
	.long	.LLST4
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x28
	.long	0x158
	.byte	0x2
	.byte	0x8c
	.sleb128 34
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x29
	.long	0x158
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x2c
	.long	0x62
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x2d
	.long	0x62
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x2f
	.long	0x45
	.uleb128 0xa
	.long	.Ldebug_ranges0+0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF24
	.byte	0x3
	.byte	0
	.byte	0x1
	.long	0x30
	.byte	0x1
	.uleb128 0xc
	.long	0x16f
	.uleb128 0xc
	.long	0x175
	.uleb128 0xd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x62
	.long	0x158
	.uleb128 0xf
	.long	0x29
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.long	0x168
	.long	0x168
	.uleb128 0xf
	.long	0x29
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF19
	.uleb128 0x10
	.byte	0x2
	.long	0x168
	.uleb128 0x10
	.byte	0x2
	.long	0x17b
	.uleb128 0x11
	.long	0x168
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB7
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
	.long	.LFE7
	.word	0x3
	.byte	0x8c
	.sleb128 276
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL8
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL4
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL5
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LFE7
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL8
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB3
	.long	.LBE3
	.long	0
	.long	0
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"freqInt"
.LASF17:
	.string	"freqFrac"
.LASF13:
	.string	"avgNdx"
.LASF10:
	.string	"counter"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF12:
	.string	"soFarNdx"
.LASF20:
	.string	"GNU C 4.6.2"
.LASF21:
	.string	"freq_counter.c"
.LASF23:
	.string	"main"
.LASF15:
	.string	"fraccountStr"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF18:
	.string	"lastState"
.LASF8:
	.string	"long long int"
.LASF11:
	.string	"soFar"
.LASF22:
	.string	"/Users/Dylan/Downloads/lcdlibrary"
.LASF5:
	.string	"uint16_t"
.LASF6:
	.string	"uint32_t"
.LASF1:
	.string	"long int"
.LASF19:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"intCountStr"
.LASF24:
	.string	"sprintf"
