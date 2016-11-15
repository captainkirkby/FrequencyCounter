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
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB7:
	.file 1 "freq_counter.c"
	.loc 1 20 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 21 0
	cbi 36-32,2
	.loc 1 22 0
	sbi 37-32,2
	.loc 1 24 0
	sbi 36-32,3
	.loc 1 27 0
	ldi r24,lo8(12)
	call lcd_init
.LVL0:
	.loc 1 52 0
	in r24,35-32
	.loc 1 53 0
/* #APP */
 ;  53 "freq_counter.c" 1
	cli
 ;  0 "" 2
.LVL1:
/* #NOAPP */
.L8:
	.loc 1 59 0
	sbi 37-32,3
	.loc 1 57 0
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	movw r26,r24
	.loc 1 62 0
	rjmp .L2
.LVL2:
.L3:
	.loc 1 63 0
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.LVL3:
.L2:
	.loc 1 62 0 discriminator 1
	sbic 35-32,2
	rjmp .L3
	.loc 1 62 0 is_stmt 0 discriminator 2
	cpi r24,lo8(1000)
	ldi r18,hi8(1000)
	cpc r25,r18
	ldi r18,hlo8(1000)
	cpc r26,r18
	ldi r18,hhi8(1000)
	cpc r27,r18
	brlo .L3
	.loc 1 62 0
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	movw r26,r24
.LVL4:
	rjmp .L4
.LVL5:
.L5:
	.loc 1 71 0 is_stmt 1
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.LVL6:
.L4:
	.loc 1 70 0 discriminator 1
	sbis 35-32,2
	rjmp .L5
	.loc 1 70 0 is_stmt 0 discriminator 2
	cpi r24,lo8(1000)
	ldi r18,hi8(1000)
	cpc r25,r18
	ldi r18,hlo8(1000)
	cpc r26,r18
	ldi r18,hhi8(1000)
	cpc r27,r18
	brlo .L5
	.loc 1 74 0 is_stmt 1
	cbi 37-32,3
.LVL7:
.L6:
	.loc 1 105 0 discriminator 1
	sbic 35-32,2
	rjmp .L6
.L9:
	.loc 1 116 0 discriminator 1
	sbis 35-32,2
	rjmp .L9
	rjmp .L8
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x155
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF22
	.byte	0x1
	.long	.LASF23
	.long	.LASF24
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
	.long	.LASF25
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.long	0x30
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x131
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x20
	.long	0x62
	.long	.LLST0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x1
	.byte	0x21
	.long	0x62
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x24
	.long	0x131
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x25
	.long	0x57
	.long	.LLST1
	.uleb128 0x8
	.string	"avg"
	.byte	0x1
	.byte	0x26
	.long	0x62
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x27
	.long	0x57
	.byte	0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x2a
	.long	0x30
	.long	.LLST1
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x2d
	.long	0x141
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x2e
	.long	0x141
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x31
	.long	0x62
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.byte	0x32
	.long	0x62
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x34
	.long	0x45
	.byte	0
	.uleb128 0xa
	.long	0x62
	.long	0x141
	.uleb128 0xb
	.long	0x29
	.byte	0x63
	.byte	0
	.uleb128 0xa
	.long	0x151
	.long	0x151
	.uleb128 0xb
	.long	0x29
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF21
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
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL4
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
	.long	.LVL5
	.long	.LVL7
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
	.long	0
	.long	0
.LLST1:
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
.LASF15:
	.string	"lcdWrite"
.LASF18:
	.string	"freqInt"
.LASF19:
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
.LASF22:
	.string	"GNU C 4.6.2"
.LASF23:
	.string	"freq_counter.c"
.LASF25:
	.string	"main"
.LASF17:
	.string	"fraccountStr"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF20:
	.string	"lastState"
.LASF10:
	.string	"intermediateCounterValue"
.LASF8:
	.string	"long long int"
.LASF11:
	.string	"soFar"
.LASF24:
	.string	"/Users/Dylan/Downloads/lcdlibrary"
.LASF5:
	.string	"uint16_t"
.LASF6:
	.string	"uint32_t"
.LASF1:
	.string	"long int"
.LASF21:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF16:
	.string	"intCountStr"
