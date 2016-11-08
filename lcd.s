	.file	"lcd.c"
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
	.type	toggle_e, @function
toggle_e:
.LFB7:
	.file 1 "lcd.c"
	.loc 1 102 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 103 0
	sbi 43-32,6
.LVL0:
.LBB30:
.LBB31:
	.file 2 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h"
	.loc 2 246 0
	 ldi r24,lo8(5)
    1:dec r24
    brne 1b
	nop
.LBE31:
.LBE30:
	.loc 1 105 0
	cbi 43-32,6
/* epilogue start */
	.loc 1 106 0
	ret
	.cfi_endproc
.LFE7:
	.size	toggle_e, .-toggle_e
	.type	lcd_write, @function
lcd_write:
.LFB8:
	.loc 1 119 0
	.cfi_startproc
.LVL1:
	push r17
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __tmp_reg__
.LCFI3:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI4:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 123 0
	tst r22
	breq .L3
	.loc 1 124 0
	sbi 43-32,4
	rjmp .L4
.L3:
	.loc 1 126 0
	cbi 43-32,4
.L4:
	.loc 1 128 0
	cbi 43-32,5
	.loc 1 134 0
	in r25,42-32
	ori r25,lo8(15)
	out 42-32,r25
	.loc 1 137 0
	in r17,43-32
	andi r17,lo8(-16)
.LVL2:
	.loc 1 138 0
	mov r25,r24
	swap r25
	andi r25,lo8(15)
	or r25,r17
	out 43-32,r25
	.loc 1 139 0
	std Y+1,r24
	call toggle_e
.LVL3:
	.loc 1 142 0
	ldd r24,Y+1
	andi r24,lo8(15)
	or r24,r17
	out 43-32,r24
	.loc 1 143 0
	call toggle_e
	.loc 1 146 0
	ori r17,lo8(15)
.LVL4:
	out 43-32,r17
/* epilogue start */
	.loc 1 184 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	ret
	.cfi_endproc
.LFE8:
	.size	lcd_write, .-lcd_write
	.type	lcd_read.constprop.0, @function
lcd_read.constprop.0:
.LFB22:
	.loc 1 199 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL5:
	.loc 1 207 0
	cbi 43-32,4
	.loc 1 208 0
	sbi 43-32,5
	.loc 1 213 0
	in r24,42-32
	andi r24,lo8(-16)
	out 42-32,r24
	.loc 1 215 0
	sbi 43-32,6
.LVL6:
.LBB32:
.LBB33:
	.loc 2 246 0
	 ldi r24,lo8(5)
    1:dec r24
    brne 1b
	nop
.LBE33:
.LBE32:
	.loc 1 217 0
	in r24,41-32
.LVL7:
	.loc 1 218 0
	cbi 43-32,6
.LVL8:
.LBB34:
.LBB35:
	.loc 2 246 0
	 ldi r25,lo8(5)
    1:dec r25
    brne 1b
	nop
.LBE35:
.LBE34:
	.loc 1 222 0
	sbi 43-32,6
.LVL9:
.LBB36:
.LBB37:
	.loc 2 246 0
	 ldi r25,lo8(5)
    1:dec r25
    brne 1b
	nop
.LBE37:
.LBE36:
	.loc 1 224 0
	in r25,41-32
	andi r25,lo8(15)
	.loc 1 217 0
	swap r24
.LVL10:
	andi r24,lo8(-16)
.LVL11:
	.loc 1 225 0
	cbi 43-32,6
	.loc 1 257 0
	or r24,r25
.LVL12:
/* epilogue start */
	ret
	.cfi_endproc
.LFE22:
	.size	lcd_read.constprop.0, .-lcd_read.constprop.0
	.type	lcd_waitbusy, @function
lcd_waitbusy:
.LFB10:
	.loc 1 270 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L7:
	.loc 1 274 0 discriminator 1
	call lcd_read.constprop.0
.LVL13:
	sbrc r24,7
	rjmp .L7
.LVL14:
.LBB38:
.LBB39:
	.loc 2 246 0
	 ldi r24,lo8(21)
    1:dec r24
    brne 1b
.LVL15:
	nop
.LBE39:
.LBE38:
	.loc 1 280 0
	call lcd_read.constprop.0
/* epilogue start */
	.loc 1 282 0
	ret
	.cfi_endproc
.LFE10:
	.size	lcd_waitbusy, .-lcd_waitbusy
.global	lcd_command
	.type	lcd_command, @function
lcd_command:
.LFB12:
	.loc 1 339 0
	.cfi_startproc
.LVL16:
	push r28
.LCFI5:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 340 0
	call lcd_waitbusy
.LVL17:
	.loc 1 341 0
	mov r24,r28
	ldi r22,lo8(0)
	call lcd_write
/* epilogue start */
	.loc 1 342 0
	pop r28
.LVL18:
	ret
	.cfi_endproc
.LFE12:
	.size	lcd_command, .-lcd_command
.global	lcd_data
	.type	lcd_data, @function
lcd_data:
.LFB13:
	.loc 1 351 0
	.cfi_startproc
.LVL19:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 352 0
	call lcd_waitbusy
.LVL20:
	.loc 1 353 0
	mov r24,r28
	ldi r22,lo8(1)
	call lcd_write
/* epilogue start */
	.loc 1 354 0
	pop r28
.LVL21:
	ret
	.cfi_endproc
.LFE13:
	.size	lcd_data, .-lcd_data
.global	lcd_gotoxy
	.type	lcd_gotoxy, @function
lcd_gotoxy:
.LFB14:
	.loc 1 365 0
	.cfi_startproc
.LVL22:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 376 0
	tst r22
	brne .L12
	.loc 1 377 0
	subi r24,lo8(-(-128))
.LVL23:
	rjmp .L16
.LVL24:
.L12:
	.loc 1 378 0
	cpi r22,lo8(1)
	brne .L14
	.loc 1 379 0
	subi r24,lo8(-(-64))
.LVL25:
	rjmp .L16
.LVL26:
.L14:
	.loc 1 380 0
	cpi r22,lo8(2)
	brne .L15
	.loc 1 381 0
	subi r24,lo8(-(-108))
.LVL27:
	rjmp .L16
.LVL28:
.L15:
	.loc 1 383 0
	subi r24,lo8(-(-44))
.LVL29:
.L16:
	call lcd_command
.LVL30:
	ret
	.cfi_endproc
.LFE14:
	.size	lcd_gotoxy, .-lcd_gotoxy
.global	lcd_getxy
	.type	lcd_getxy, @function
lcd_getxy:
.LFB15:
	.loc 1 392 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 393 0
	call lcd_waitbusy
	.loc 1 394 0
	ldi r25,lo8(0)
/* epilogue start */
	ret
	.cfi_endproc
.LFE15:
	.size	lcd_getxy, .-lcd_getxy
.global	lcd_clrscr
	.type	lcd_clrscr, @function
lcd_clrscr:
.LFB16:
	.loc 1 401 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 402 0
	ldi r24,lo8(1)
	call lcd_command
/* epilogue start */
	.loc 1 403 0
	ret
	.cfi_endproc
.LFE16:
	.size	lcd_clrscr, .-lcd_clrscr
.global	lcd_home
	.type	lcd_home, @function
lcd_home:
.LFB17:
	.loc 1 410 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 411 0
	ldi r24,lo8(2)
	call lcd_command
/* epilogue start */
	.loc 1 412 0
	ret
	.cfi_endproc
.LFE17:
	.size	lcd_home, .-lcd_home
.global	lcd_putc
	.type	lcd_putc, @function
lcd_putc:
.LFB18:
	.loc 1 421 0
	.cfi_startproc
.LVL31:
	push r28
.LCFI7:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 425 0
	call lcd_waitbusy
.LVL32:
	.loc 1 426 0
	cpi r28,lo8(10)
	brne .L21
.LVL33:
.LBB40:
.LBB41:
	.loc 1 314 0
	cpi r24,lo8(20)
	brlo .L24
	.loc 1 316 0
	mov r25,r24
	subi r25,lo8(-(-64))
	cpi r25,lo8(20)
	brlo .L25
	.loc 1 318 0
	subi r24,lo8(-(-20))
.LVL34:
	cpi r24,lo8(44)
	brsh .L26
	.loc 1 319 0
	ldi r24,lo8(84)
	rjmp .L22
.LVL35:
.L24:
	.loc 1 315 0
	ldi r24,lo8(64)
.LVL36:
	rjmp .L22
.LVL37:
.L25:
	.loc 1 317 0
	ldi r24,lo8(20)
.LVL38:
	rjmp .L22
.L26:
	.loc 1 321 0
	ldi r24,lo8(0)
.LVL39:
.L22:
	.loc 1 324 0
	subi r24,lo8(-(-128))
.LVL40:
	call lcd_command
.LVL41:
	rjmp .L20
.LVL42:
.L21:
.LBE41:
.LBE40:
	.loc 1 456 0
	mov r24,r28
.LVL43:
	ldi r22,lo8(1)
	call lcd_write
.L20:
/* epilogue start */
	.loc 1 459 0
	pop r28
.LVL44:
	ret
	.cfi_endproc
.LFE18:
	.size	lcd_putc, .-lcd_putc
.global	lcd_puts
	.type	lcd_puts, @function
lcd_puts:
.LFB19:
	.loc 1 469 0
	.cfi_startproc
.LVL45:
	push r28
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 472 0
	rjmp .L28
.LVL46:
.L29:
	.loc 1 473 0
	call lcd_putc
.LVL47:
.L28:
	.loc 1 472 0 discriminator 1
	ld r24,Y+
.LVL48:
	tst r24
	brne .L29
/* epilogue start */
	.loc 1 476 0
	pop r29
	pop r28
.LVL49:
	ret
	.cfi_endproc
.LFE19:
	.size	lcd_puts, .-lcd_puts
.global	lcd_puts_p
	.type	lcd_puts_p, @function
lcd_puts_p:
.LFB20:
	.loc 1 486 0
	.cfi_startproc
.LVL50:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 489 0
	rjmp .L31
.LVL51:
.L32:
	.loc 1 490 0
	call lcd_putc
.LVL52:
.L31:
.LBB42:
	.loc 1 489 0 discriminator 1
	movw r30,r28
.LVL53:
	adiw r28,1
.LVL54:
/* #APP */
 ;  489 "lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL55:
/* #NOAPP */
.LBE42:
	tst r24
	brne .L32
/* epilogue start */
	.loc 1 493 0
	pop r29
	pop r28
.LVL56:
	ret
	.cfi_endproc
.LFE20:
	.size	lcd_puts_p, .-lcd_puts_p
.global	lcd_init
	.type	lcd_init, @function
lcd_init:
.LFB21:
	.loc 1 505 0
	.cfi_startproc
.LVL57:
	push r28
.LCFI12:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 517 0
	in r24,42-32
.LVL58:
	ori r24,lo8(127)
	out 42-32,r24
.LVL59:
.LBB43:
.LBB44:
	.loc 2 246 0
	 ldi r24,lo8(-1537)
    ldi r25,hi8(-1537)
    1:sbiw r24,1
    brne 1b
	rjmp .
	nop
.LBE44:
.LBE43:
	.loc 1 542 0
	sbi 43-32,1
	.loc 1 543 0
	sbi 43-32,0
	.loc 1 544 0
	call toggle_e
.LVL60:
.LBB45:
.LBB46:
	.loc 2 246 0
	 ldi r24,lo8(19999)
    ldi r25,hi8(19999)
    1:sbiw r24,1
    brne 1b
	rjmp .
	nop
.LBE46:
.LBE45:
	.loc 1 548 0
	call toggle_e
.LVL61:
.LBB47:
.LBB48:
	.loc 2 246 0
	 ldi r24,lo8(255)
    ldi r25,hi8(255)
    1:sbiw r24,1
    brne 1b
	rjmp .
	nop
.LBE48:
.LBE47:
	.loc 1 552 0
	call toggle_e
.LVL62:
.LBB49:
.LBB50:
	.loc 2 246 0
	 ldi r24,lo8(255)
    ldi r25,hi8(255)
    1:sbiw r24,1
    brne 1b
	rjmp .
	nop
.LBE50:
.LBE49:
	.loc 1 556 0
	cbi 43-32,0
	.loc 1 557 0
	call toggle_e
.LVL63:
.LBB51:
.LBB52:
	.loc 2 246 0
	 ldi r24,lo8(255)
    ldi r25,hi8(255)
    1:sbiw r24,1
    brne 1b
	rjmp .
	nop
.LBE52:
.LBE51:
	.loc 1 585 0
	ldi r24,lo8(40)
	call lcd_command
	.loc 1 587 0
	ldi r24,lo8(8)
	call lcd_command
	.loc 1 588 0
	call lcd_clrscr
	.loc 1 589 0
	ldi r24,lo8(6)
	call lcd_command
	.loc 1 590 0
	mov r24,r28
	call lcd_command
/* epilogue start */
	.loc 1 592 0
	pop r28
.LVL64:
	ret
	.cfi_endproc
.LFE21:
	.size	lcd_init, .-lcd_init
.Letext0:
	.file 3 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x636
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF35
	.byte	0x1
	.long	.LASF36
	.long	.LASF37
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x7a
	.long	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x7c
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
	.byte	0x7e
	.long	0x69
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
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.byte	0x1
	.byte	0x3
	.long	0xc8
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0xe0
	.long	0xc8
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.byte	0xe2
	.long	0x2c
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0xe3
	.long	0xc8
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.byte	0xe7
	.long	0x5e
	.uleb128 0x8
	.byte	0x1
	.long	.LASF38
	.byte	0x2
	.byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x69
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0xa
	.long	.LASF15
	.byte	0x1
	.word	0x121
	.byte	0x1
	.byte	0x3
	.long	0xf6
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.word	0x121
	.long	0x2c
	.uleb128 0xc
	.long	.LASF17
	.byte	0x1
	.word	0x123
	.long	0x2c
	.byte	0
	.uleb128 0xd
	.long	.LASF39
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	0x2c
	.byte	0x1
	.long	0x11d
	.uleb128 0xe
	.string	"rs"
	.byte	0x1
	.byte	0xc7
	.long	0x2c
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0xc9
	.long	0x2c
	.byte	0
	.uleb128 0xf
	.long	.LASF19
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x16f
	.uleb128 0x10
	.long	0x7e
	.long	.LBB30
	.long	.LBE30
	.byte	0x1
	.byte	0x68
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x3f800000
	.uleb128 0x12
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x41800000
	.uleb128 0x15
	.long	0xac
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF20
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.long	0x1b4
	.uleb128 0x17
	.long	.LASF18
	.byte	0x1
	.byte	0x76
	.long	0x2c
	.long	.LLST1
	.uleb128 0x18
	.string	"rs"
	.byte	0x1
	.byte	0x76
	.long	0x2c
	.long	.LLST2
	.uleb128 0x19
	.long	.LASF21
	.byte	0x1
	.byte	0x78
	.long	0x37
	.long	.LLST3
	.byte	0
	.uleb128 0x1a
	.long	0xf6
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x28c
	.uleb128 0x1b
	.long	0x111
	.long	.LLST4
	.uleb128 0x1c
	.long	0x107
	.byte	0
	.uleb128 0x1d
	.long	0x7e
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.byte	0xd8
	.long	0x215
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x3f800000
	.uleb128 0x12
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x41800000
	.uleb128 0x15
	.long	0xac
	.byte	0x10
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x7e
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.byte	0xdc
	.long	0x252
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x3f800000
	.uleb128 0x12
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x41800000
	.uleb128 0x15
	.long	0xac
	.byte	0x10
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x7e
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.byte	0xdf
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x3f800000
	.uleb128 0x12
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x15
	.long	0xac
	.byte	0x10
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x41800000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.word	0x10c
	.byte	0x1
	.long	0x2c
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x2f2
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.word	0x10f
	.long	0x2c
	.long	.LLST5
	.uleb128 0x20
	.long	0x7e
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.word	0x115
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x40800000
	.uleb128 0x12
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x42800000
	.uleb128 0x15
	.long	0xac
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.word	0x152
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST6
	.long	0x31d
	.uleb128 0x22
	.string	"cmd"
	.byte	0x1
	.word	0x152
	.long	0x2c
	.long	.LLST7
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.word	0x15e
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.long	0x348
	.uleb128 0x23
	.long	.LASF18
	.byte	0x1
	.word	0x15e
	.long	0x2c
	.long	.LLST9
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.word	0x16c
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x37f
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.word	0x16c
	.long	0x2c
	.long	.LLST10
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.word	0x16c
	.long	0x2c
	.long	.LLST11
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.word	0x187
	.byte	0x1
	.long	0x3e
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.uleb128 0x26
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.word	0x190
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.uleb128 0x26
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.word	0x199
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.uleb128 0x21
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.word	0x1a4
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST12
	.long	0x42b
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.word	0x1a4
	.long	0x42b
	.long	.LLST13
	.uleb128 0x1f
	.string	"pos"
	.byte	0x1
	.word	0x1a6
	.long	0x2c
	.long	.LLST14
	.uleb128 0x20
	.long	0xcf
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.word	0x1ac
	.uleb128 0x27
	.long	0xdd
	.long	.LLST15
	.uleb128 0x12
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x1b
	.long	0xe9
	.long	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF28
	.uleb128 0x21
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.word	0x1d3
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST17
	.long	0x469
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.word	0x1d3
	.long	0x469
	.long	.LLST18
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.word	0x1d6
	.long	0x42b
	.long	.LLST19
	.byte	0
	.uleb128 0x28
	.byte	0x2
	.long	0x46f
	.uleb128 0x29
	.long	0x42b
	.uleb128 0x21
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.word	0x1e4
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST20
	.long	0x4d7
	.uleb128 0x23
	.long	.LASF31
	.byte	0x1
	.word	0x1e4
	.long	0x469
	.long	.LLST21
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.word	0x1e7
	.long	0x42b
	.long	.LLST22
	.uleb128 0x12
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.word	0x1e9
	.long	0x45
	.long	.LLST23
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.word	0x1e9
	.long	0x2c
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.word	0x1f8
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST25
	.uleb128 0x23
	.long	.LASF34
	.byte	0x1
	.word	0x1f8
	.long	0x2c
	.long	.LLST26
	.uleb128 0x2c
	.long	0x7e
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.word	0x21b
	.long	0x53e
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x467a0000
	.uleb128 0x12
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x487a0000
	.uleb128 0x2d
	.long	0xac
	.long	0x3e800
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x7e
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x221
	.long	0x57f
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x459c4000
	.uleb128 0x12
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x479c4000
	.uleb128 0x2d
	.long	0xac
	.long	0x13880
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x7e
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.word	0x225
	.long	0x5be
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x42800000
	.uleb128 0x12
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x44800000
	.uleb128 0x2e
	.long	0xac
	.word	0x400
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x7e
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x229
	.long	0x5fd
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x42800000
	.uleb128 0x12
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x44800000
	.uleb128 0x2e
	.long	0xac
	.word	0x400
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x7e
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x22e
	.uleb128 0x11
	.long	0x8b
	.byte	0x4
	.long	0x42800000
	.uleb128 0x12
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x13
	.long	0x96
	.uleb128 0x14
	.long	0xa1
	.byte	0x4
	.long	0x44800000
	.uleb128 0x2e
	.long	0xac
	.word	0x400
	.byte	0
	.byte	0
	.byte	0
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
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x4
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2c
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB8-.Ltext0
	.long	.LCFI0-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1-.Ltext0
	.long	.LCFI2-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4-.Ltext0
	.long	.LFE8-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL1-.Ltext0
	.long	.LVL3-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL1-.Ltext0
	.long	.LVL3-1-.Ltext0
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST3:
	.long	.LVL2-.Ltext0
	.long	.LVL4-.Ltext0
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST4:
	.long	.LVL7-.Ltext0
	.long	.LVL10-.Ltext0
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x6
	.byte	0x89
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL12-.Ltext0
	.long	.LFE22-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LVL13-.Ltext0
	.long	.LVL15-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST6:
	.long	.LFB12-.Ltext0
	.long	.LCFI5-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI5-.Ltext0
	.long	.LFE12-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST7:
	.long	.LVL16-.Ltext0
	.long	.LVL17-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL17-1-.Ltext0
	.long	.LVL18-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST8:
	.long	.LFB13-.Ltext0
	.long	.LCFI6-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6-.Ltext0
	.long	.LFE13-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST9:
	.long	.LVL19-.Ltext0
	.long	.LVL20-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL20-1-.Ltext0
	.long	.LVL21-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST10:
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL23-.Ltext0
	.long	.LVL24-.Ltext0
	.word	0x4
	.byte	0x88
	.sleb128 -128
	.byte	0x9f
	.long	.LVL24-.Ltext0
	.long	.LVL25-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL25-.Ltext0
	.long	.LVL26-.Ltext0
	.word	0x4
	.byte	0x88
	.sleb128 64
	.byte	0x9f
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x4
	.byte	0x88
	.sleb128 108
	.byte	0x9f
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST11:
	.long	.LVL22-.Ltext0
	.long	.LVL30-1-.Ltext0
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST12:
	.long	.LFB18-.Ltext0
	.long	.LCFI7-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI7-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST13:
	.long	.LVL31-.Ltext0
	.long	.LVL32-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL32-1-.Ltext0
	.long	.LVL44-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST14:
	.long	.LVL32-.Ltext0
	.long	.LVL34-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.word	0x4
	.byte	0x89
	.sleb128 64
	.byte	0x9f
	.long	.LVL35-.Ltext0
	.long	.LVL36-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL37-.Ltext0
	.long	.LVL38-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL38-.Ltext0
	.long	.LVL39-.Ltext0
	.word	0x4
	.byte	0x89
	.sleb128 64
	.byte	0x9f
	.long	.LVL42-.Ltext0
	.long	.LVL43-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST15:
	.long	.LVL33-.Ltext0
	.long	.LVL34-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.word	0x4
	.byte	0x89
	.sleb128 64
	.byte	0x9f
	.long	.LVL35-.Ltext0
	.long	.LVL36-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL37-.Ltext0
	.long	.LVL38-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL38-.Ltext0
	.long	.LVL39-.Ltext0
	.word	0x4
	.byte	0x89
	.sleb128 64
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL39-.Ltext0
	.long	.LVL40-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL40-.Ltext0
	.long	.LVL41-1-.Ltext0
	.word	0x4
	.byte	0x88
	.sleb128 -128
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LFB19-.Ltext0
	.long	.LCFI8-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST18:
	.long	.LVL45-.Ltext0
	.long	.LVL46-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46-.Ltext0
	.long	.LVL49-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL46-.Ltext0
	.long	.LVL47-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL48-.Ltext0
	.long	.LVL49-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 -1
	.long	.LVL49-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST20:
	.long	.LFB20-.Ltext0
	.long	.LCFI10-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST21:
	.long	.LVL50-.Ltext0
	.long	.LVL51-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL51-.Ltext0
	.long	.LVL56-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST22:
	.long	.LVL51-.Ltext0
	.long	.LVL52-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL55-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST23:
	.long	.LVL51-.Ltext0
	.long	.LVL52-1-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52-1-.Ltext0
	.long	.LVL52-.Ltext0
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL53-.Ltext0
	.long	.LVL54-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LFB21-.Ltext0
	.long	.LCFI12-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI12-.Ltext0
	.long	.LFE21-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST26:
	.long	.LVL57-.Ltext0
	.long	.LVL58-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL58-.Ltext0
	.long	.LVL64-.Ltext0
	.word	0x1
	.byte	0x6c
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
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"addressCounter"
.LASF29:
	.string	"lcd_puts"
.LASF22:
	.string	"lcd_command"
.LASF25:
	.string	"lcd_clrscr"
.LASF20:
	.string	"lcd_write"
.LASF16:
	.string	"__us"
.LASF38:
	.string	"__builtin_avr_delay_cycles"
.LASF18:
	.string	"data"
.LASF19:
	.string	"toggle_e"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"lcd_gotoxy"
.LASF7:
	.string	"long unsigned int"
.LASF42:
	.string	"lcd_init"
.LASF35:
	.string	"GNU C 4.6.2"
.LASF23:
	.string	"lcd_data"
.LASF13:
	.string	"double"
.LASF11:
	.string	"__tmp"
.LASF26:
	.string	"lcd_home"
.LASF15:
	.string	"lcd_newline"
.LASF4:
	.string	"unsigned int"
.LASF14:
	.string	"_delay_us"
.LASF9:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF34:
	.string	"dispAttr"
.LASF32:
	.string	"__addr16"
.LASF33:
	.string	"__result"
.LASF41:
	.string	"lcd_getxy"
.LASF8:
	.string	"long long int"
.LASF30:
	.string	"lcd_puts_p"
.LASF37:
	.string	"/Users/Dylan/Downloads/lcdlibrary"
.LASF12:
	.string	"__ticks_dc"
.LASF39:
	.string	"lcd_read"
.LASF31:
	.string	"progmem_s"
.LASF3:
	.string	"uint16_t"
.LASF10:
	.string	"__ticks"
.LASF6:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF28:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF27:
	.string	"lcd_putc"
.LASF40:
	.string	"lcd_waitbusy"
.LASF36:
	.string	"lcd.c"
.LASF21:
	.string	"dataBits"
