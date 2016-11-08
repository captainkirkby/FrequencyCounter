	.file	"test_lcd.c"
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
.global	wait_until_key_pressed
	.type	wait_until_key_pressed, @function
wait_until_key_pressed:
.LFB7:
	.file 1 "test_lcd.c"
	.loc 1 34 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
	.loc 1 38 0 discriminator 1
	in r25,35-32
.LVL0:
.LBB4:
.LBB5:
	.file 2 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h"
	.loc 2 164 0 discriminator 1
	 ldi r30,lo8(19999)
    ldi r31,hi8(19999)
    1:sbiw r30,1
    brne 1b
	rjmp .
	nop
.LBE5:
.LBE4:
	.loc 1 40 0 discriminator 1
	in r24,35-32
.LVL1:
	.loc 1 41 0 discriminator 1
	and r24,r25
.LVL2:
	.loc 1 42 0 discriminator 1
	sbrc r24,2
	rjmp .L2
.L4:
	.loc 1 44 0 discriminator 1
	sbis 35-32,2
	rjmp .L4
/* epilogue start */
	.loc 1 45 0
	ret
	.cfi_endproc
.LFE7:
	.size	wait_until_key_pressed, .-wait_until_key_pressed
	.data
.LC0:
	.string	"LCD Test Line 1\n"
.LC1:
	.string	"Line 2"
.LC2:
	.string	"CurOn"
.LC3:
	.string	"Copyright: "
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB8:
	.loc 1 49 0
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
	sbiw r28,7
.LCFI2:
	.cfi_def_cfa 28, 11
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
/* stack size = 9 */
.L__stack_usage = 9
.LVL3:
	.loc 1 55 0
	cbi 36-32,2
	.loc 1 56 0
	sbi 37-32,2
	.loc 1 60 0
	ldi r24,lo8(12)
	call lcd_init
.L9:
	.loc 1 68 0
	call lcd_clrscr
	.loc 1 71 0
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call lcd_puts
	.loc 1 74 0
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call lcd_puts
	.loc 1 77 0
	ldi r24,lo8(7)
	ldi r22,lo8(1)
	call lcd_gotoxy
	.loc 1 80 0
	ldi r24,lo8(58)
	call lcd_putc
	.loc 1 83 0
	call wait_until_key_pressed
	.loc 1 91 0
	ldi r24,lo8(14)
	call lcd_command
	.loc 1 94 0
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	call lcd_puts
	.loc 1 97 0
	call wait_until_key_pressed
	.loc 1 104 0
	call lcd_clrscr
	.loc 1 107 0
	ldi r24,lo8(__c.1698)
	ldi r25,hi8(__c.1698)
	call lcd_puts_p
	.loc 1 108 0
	ldi r24,lo8(__c.1700)
	ldi r25,hi8(__c.1700)
	call lcd_puts_p
	.loc 1 111 0
	ldi r24,lo8(24)
	call lcd_command
	.loc 1 114 0
	call wait_until_key_pressed
	.loc 1 117 0
	ldi r24,lo8(12)
	call lcd_command
	.loc 1 124 0
	call lcd_clrscr
	.loc 1 127 0
	ldi r24,lo8(134)
	ldi r25,hi8(134)
	movw r22,r28
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
	ldi r20,lo8(10)
	ldi r21,hi8(10)
	call itoa
	.loc 1 130 0
	movw r24,r28
	adiw r24,1
	call lcd_puts
	.loc 1 133 0
	call wait_until_key_pressed
	.loc 1 140 0
	call lcd_clrscr
	.loc 1 142 0
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	call lcd_puts
	.loc 1 148 0
	ldi r24,lo8(64)
	call lcd_command
.LVL4:
	ldi r16,lo8(0)
	ldi r17,hi8(0)
.LVL5:
.L8:
.LBB6:
	.loc 1 151 0 discriminator 2
	movw r30,r16
	subi r30,lo8(-(copyRightChar))
	sbci r31,hi8(-(copyRightChar))
/* #APP */
 ;  151 "test_lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL6:
/* #NOAPP */
.LBE6:
	call lcd_data
.LVL7:
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
.LVL8:
	.loc 1 149 0 discriminator 2
	cpi r16,16
	cpc r17,__zero_reg__
	brne .L8
	.loc 1 156 0
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call lcd_gotoxy
	.loc 1 159 0
	ldi r24,lo8(0)
	call lcd_putc
	.loc 1 160 0
	ldi r24,lo8(1)
	call lcd_putc
	.loc 1 164 0
	call wait_until_key_pressed
	.loc 1 166 0
	rjmp .L9
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.progmem.data,"a",@progbits
	.type	__c.1698, @object
	.size	__c.1698, 34
__c.1698:
	.string	"Line 1 longer than 14 characters\n"
	.type	__c.1700, @object
	.size	__c.1700, 33
__c.1700:
	.string	"Line 2 longer than 14 characters"
	.type	copyRightChar, @object
	.size	copyRightChar, 16
copyRightChar:
	.byte	7
	.byte	8
	.byte	19
	.byte	20
	.byte	20
	.byte	19
	.byte	8
	.byte	7
	.byte	0
	.byte	16
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	16
	.byte	0
	.text
.Letext0:
	.file 3 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ee
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
	.byte	0x3
	.byte	0x7a
	.long	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x3
	.byte	0x7c
	.long	0x29
	.uleb128 0x4
	.long	.LASF6
	.byte	0x3
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
	.long	.LASF24
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0xcc
	.uleb128 0x6
	.long	.LASF25
	.byte	0x2
	.byte	0x8e
	.long	0xcc
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.byte	0x90
	.long	0x57
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0x91
	.long	0xcc
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.byte	0x95
	.long	0x62
	.uleb128 0x8
	.byte	0x1
	.long	.LASF26
	.byte	0x2
	.byte	0x96
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x6d
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0xa
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x147
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0x23
	.long	0x50
	.long	.LLST0
	.uleb128 0xb
	.long	.LASF15
	.byte	0x1
	.byte	0x23
	.long	0x50
	.long	.LLST1
	.uleb128 0xc
	.long	0x82
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0x27
	.uleb128 0xd
	.long	0x8f
	.byte	0x4
	.long	0x40a00000
	.uleb128 0xe
	.long	.LBB5
	.long	.LBE5
	.uleb128 0xf
	.long	0x9a
	.uleb128 0x10
	.long	0xa5
	.byte	0x4
	.long	0x479c4000
	.uleb128 0x11
	.long	0xb0
	.long	0x13880
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x30
	.long	.LFB8
	.long	.LFE8
	.long	.LLST2
	.long	0x1b4
	.uleb128 0x13
	.long	.LASF16
	.byte	0x1
	.byte	0x32
	.long	0x1b4
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x14
	.string	"num"
	.byte	0x1
	.byte	0x33
	.long	0x30
	.byte	0x86
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x34
	.long	0x50
	.long	.LLST3
	.uleb128 0xe
	.long	.LBB6
	.long	.LBE6
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x97
	.long	0x57
	.long	.LLST4
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x97
	.long	0x45
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x1c4
	.long	0x1c4
	.uleb128 0x17
	.long	0x29
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF19
	.uleb128 0x16
	.long	0x50
	.long	0x1db
	.uleb128 0x17
	.long	0x29
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.long	.LASF20
	.byte	0x1
	.byte	0x14
	.long	0x1ec
	.byte	0x5
	.byte	0x3
	.long	copyRightChar
	.uleb128 0x18
	.long	0x1cb
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x69
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x89
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL2
	.long	.LFE7
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LFB8
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
	.long	.LFE8
	.word	0x2
	.byte	0x8c
	.sleb128 11
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL8
	.word	0x9
	.byte	0x80
	.sleb128 0
	.byte	0x3
	.long	copyRightChar
	.byte	0x22
	.byte	0x9f
	.long	.LVL8
	.long	.LFE8
	.word	0x9
	.byte	0x80
	.sleb128 0
	.byte	0x3
	.long	copyRightChar-1
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL7-1
	.word	0x1
	.byte	0x68
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB8
	.long	.LFE8
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"wait_until_key_pressed"
.LASF20:
	.string	"copyRightChar"
.LASF22:
	.string	"test_lcd.c"
.LASF17:
	.string	"__addr16"
.LASF26:
	.string	"__builtin_avr_delay_cycles"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF24:
	.string	"_delay_ms"
.LASF21:
	.string	"GNU C 4.6.2"
.LASF13:
	.string	"double"
.LASF11:
	.string	"__tmp"
.LASF28:
	.string	"main"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF18:
	.string	"__result"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"temp2"
.LASF23:
	.string	"/Users/Dylan/Downloads/lcdlibrary"
.LASF14:
	.string	"temp1"
.LASF12:
	.string	"__ticks_dc"
.LASF16:
	.string	"buffer"
.LASF5:
	.string	"uint16_t"
.LASF10:
	.string	"__ticks"
.LASF6:
	.string	"uint32_t"
.LASF1:
	.string	"long int"
.LASF19:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"__ms"
