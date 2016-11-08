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
	.string	"%d."
.LC1:
	.string	"%02d Hz\n"
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB7:
	.file 1 "freq_counter.c"
	.loc 1 17 0
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
	subi r28,lo8(-(-70))
	sbci r29,hi8(-(-70))
.LCFI2:
	.cfi_def_cfa 28, 74
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 70 */
/* stack size = 72 */
.L__stack_usage = 72
	.loc 1 18 0
	cbi 36-32,2
	.loc 1 19 0
	sbi 37-32,2
	.loc 1 22 0
	ldi r24,lo8(12)
	call lcd_init
.LVL0:
	.loc 1 44 0
	in r24,35-32
	.loc 1 45 0
/* #APP */
 ;  45 "freq_counter.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBB2:
	.loc 1 79 0
	ldi r24,lo8(2000000)
	mov r4,r24
	ldi r24,hi8(2000000)
	mov r5,r24
	ldi r24,hlo8(2000000)
	mov r6,r24
	mov r7,__zero_reg__
	.loc 1 83 0
	ldi r25,lo8(34)
	mov r2,r25
	mov r3,__zero_reg__
	add r2,r28
	adc r3,r29
	.loc 1 85 0
	movw r16,r28
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
.LVL1:
.L7:
	.loc 1 49 0
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	movw r22,r20
	.loc 1 52 0
	rjmp .L2
.LVL2:
.L3:
	.loc 1 53 0
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	sbci r22,hlo8(-(1))
	sbci r23,hhi8(-(1))
.LVL3:
.L2:
	.loc 1 52 0 discriminator 1
	sbic 35-32,2
	rjmp .L3
	.loc 1 52 0 is_stmt 0 discriminator 2
	cpi r20,lo8(1000)
	ldi r18,hi8(1000)
	cpc r21,r18
	ldi r18,hlo8(1000)
	cpc r22,r18
	ldi r18,hhi8(1000)
	cpc r23,r18
	brlo .L3
	.loc 1 52 0
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	movw r26,r24
	rjmp .L4
.LVL4:
.L5:
	.loc 1 61 0 is_stmt 1
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.LVL5:
.L4:
	.loc 1 60 0 discriminator 1
	sbis 35-32,2
	rjmp .L5
	.loc 1 60 0 is_stmt 0 discriminator 2
	cpi r24,lo8(1000)
	ldi r18,hi8(1000)
	cpc r25,r18
	ldi r18,hlo8(1000)
	cpc r26,r18
	ldi r18,hhi8(1000)
	cpc r27,r18
	brlo .L5
	.loc 1 64 0 is_stmt 1
	movw r12,r24
	movw r14,r26
	add r12,r20
	adc r13,r21
	adc r14,r22
	adc r15,r23
.LVL6:
	.loc 1 79 0
	movw r24,r6
	movw r22,r4
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	movw r8,r18
	movw r10,r20
	ldi r18,lo8(100)
	ldi r19,hi8(100)
	ldi r20,hlo8(100)
	ldi r21,hhi8(100)
	call __mulsi3
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	.loc 1 82 0
	adiw r28,67-63
	std Y+63,r18
	sbiw r28,67-63
	adiw r28,68-63
	std Y+63,r19
	sbiw r28,68-63
	adiw r28,69-63
	std Y+63,r20
	sbiw r28,69-63
	adiw r28,70-63
	std Y+63,r21
	sbiw r28,70-63
	call lcd_clrscr
	.loc 1 83 0
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
	st X,r3
	st -X,r2
	sbiw r26,1
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	std Z+3,r25
	std Z+2,r24
	std Z+4,r8
	std Z+5,r9
	std Z+6,r10
	std Z+7,r11
	.cfi_escape 0x2e,0x8
	call sprintf
	.loc 1 84 0
	in r26,__SP_L__
	in r27,__SP_H__
	adiw r26,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r27
	out __SREG__,__tmp_reg__
	out __SP_L__,r26
	movw r24,r2
	.cfi_escape 0x2e,0
	call lcd_puts
	.loc 1 85 0
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
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	std Z+3,r25
	std Z+2,r24
	adiw r28,67-63
	ldd r18,Y+63
	sbiw r28,67-63
	std Z+4,r18
	adiw r28,68-63
	ldd r19,Y+63
	sbiw r28,68-63
	std Z+5,r19
	adiw r28,69-63
	ldd r20,Y+63
	sbiw r28,69-63
	std Z+6,r20
	adiw r28,70-63
	ldd r21,Y+63
	sbiw r28,70-63
	std Z+7,r21
	.cfi_escape 0x2e,0x8
	call sprintf
	.loc 1 86 0
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
.LVL7:
.L6:
	.loc 1 95 0 discriminator 1
	sbis 35-32,2
	rjmp .L6
	rjmp .L7
.LBE2:
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h"
	.file 3 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x181
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF21
	.byte	0x1
	.long	.LASF22
	.long	.LASF23
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
	.long	.LASF24
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.long	0x30
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.long	0x14c
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x1b
	.long	0x62
	.long	.LLST1
	.uleb128 0x7
	.long	.LASF10
	.byte	0x1
	.byte	0x1c
	.long	0x62
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x1f
	.long	0x14c
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x20
	.long	0x57
	.long	.LLST2
	.uleb128 0x8
	.string	"avg"
	.byte	0x1
	.byte	0x21
	.long	0x62
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x22
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x1
	.byte	0x25
	.long	0x15c
	.byte	0x2
	.byte	0x8c
	.sleb128 34
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x26
	.long	0x15c
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x29
	.long	0x62
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x2a
	.long	0x62
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.byte	0x2c
	.long	0x45
	.uleb128 0xb
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xc
	.byte	0x1
	.long	.LASF25
	.byte	0x3
	.byte	0
	.byte	0x1
	.long	0x30
	.byte	0x1
	.uleb128 0xd
	.long	0x173
	.uleb128 0xd
	.long	0x179
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x62
	.long	0x15c
	.uleb128 0x10
	.long	0x29
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	0x16c
	.long	0x16c
	.uleb128 0x10
	.long	0x29
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF20
	.uleb128 0x11
	.byte	0x2
	.long	0x16c
	.uleb128 0x11
	.byte	0x2
	.long	0x17f
	.uleb128 0x12
	.long	0x16c
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.sleb128 74
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL4
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL6
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL7
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
	.long	.LVL7
	.long	.LFE7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
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
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"freqInt"
.LASF18:
	.string	"freqFrac"
.LASF14:
	.string	"avgNdx"
.LASF12:
	.string	"counter"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF13:
	.string	"soFarNdx"
.LASF21:
	.string	"GNU C 4.6.2"
.LASF22:
	.string	"freq_counter.c"
.LASF24:
	.string	"main"
.LASF16:
	.string	"fraccountStr"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF19:
	.string	"lastState"
.LASF10:
	.string	"intermediateCounterValue"
.LASF8:
	.string	"long long int"
.LASF11:
	.string	"soFar"
.LASF23:
	.string	"/Users/Dylan/Downloads/lcdlibrary"
.LASF5:
	.string	"uint16_t"
.LASF6:
	.string	"uint32_t"
.LASF1:
	.string	"long int"
.LASF20:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"intCountStr"
.LASF25:
	.string	"sprintf"
