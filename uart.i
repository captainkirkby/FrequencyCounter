# 1 "uart.c"
# 1 "/Users/Dylan/Developer/flowMeterFrequencyCounter//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "uart.c"
# 39 "uart.c"
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 1 3
# 97 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/sfr_defs.h" 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/inttypes.h" 1 3
# 37 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/inttypes.h" 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/include/stdint.h" 1 3 4


# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 1 3 4
# 121 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 4 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/include/stdint.h" 2 3 4
# 38 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/inttypes.h" 2 3
# 77 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/sfr_defs.h" 2 3
# 98 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3
# 142 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/iom328p.h" 1 3
# 143 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3
# 611 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/portpins.h" 1 3
# 612 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3

# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/common.h" 1 3
# 614 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3

# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/version.h" 1 3
# 616 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3


# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/fuse.h" 1 3
# 239 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 619 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3


# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/lock.h" 1 3
# 622 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/io.h" 2 3
# 40 "uart.c" 2
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/interrupt.h" 1 3
# 41 "uart.c" 2
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 1 3
# 87 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/include/stddef.h" 1 3 4
# 212 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 88 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 2 3
# 1110 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const void *, int __val, size_t);
extern void *memcpy_P(void *, const void *, size_t);
extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const char *);
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const char *);
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const char *, size_t );
extern size_t strlcpy_P (char *, const char *, size_t );
extern size_t __strlen_P(const char *) __attribute__((__const__));
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const char *, size_t);
extern char *strncpy_P(char *, const char *, size_t);
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const char * __delim);
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const char * __delim);
extern char *strtok_rP(char *__s, const char * __delim, char **__last);

extern size_t strlen_PF (uint_farptr_t src) __attribute__((__const__));
extern size_t strnlen_PF (uint_farptr_t src, size_t len) __attribute__((__const__));
extern void *memcpy_PF (void *dest, uint_farptr_t src, size_t len);
extern char *strcpy_PF (char *dest, uint_farptr_t src);
extern char *strncpy_PF (char *dest, uint_farptr_t src, size_t len);
extern char *strcat_PF (char *dest, uint_farptr_t src);
extern size_t strlcat_PF (char *dst, uint_farptr_t src, size_t siz);
extern char *strncat_PF (char *dest, uint_farptr_t src, size_t len);
extern int strcmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern int strcasecmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncasecmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern char *strstr_PF (const char *s1, uint_farptr_t s2);
extern size_t strlcpy_PF (char *dst, uint_farptr_t src, size_t siz);
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));


__attribute__((__always_inline__)) static inline size_t strlen_P(const char * s);
static inline size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 42 "uart.c" 2
# 1 "uart.h" 1
# 119 "uart.h"
extern void uart_init(unsigned int baudrate);
# 146 "uart.h"
extern unsigned int uart_getc(void);







extern void uart_putc(unsigned char data);
# 167 "uart.h"
extern void uart_puts(const char *s );
# 181 "uart.h"
extern void uart_puts_p(const char *s );
# 191 "uart.h"
extern void uart1_init(unsigned int baudrate);

extern unsigned int uart1_getc(void);

extern void uart1_putc(unsigned char data);

extern void uart1_puts(const char *s );

extern void uart1_puts_p(const char *s );
# 43 "uart.c" 2
# 342 "uart.c"
static volatile unsigned char UART_TxBuf[32];
static volatile unsigned char UART_RxBuf[32];
static volatile unsigned char UART_TxHead;
static volatile unsigned char UART_TxTail;
static volatile unsigned char UART_RxHead;
static volatile unsigned char UART_RxTail;
static volatile unsigned char UART_LastRxError;
# 362 "uart.c"
void __vector_18 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_18 (void)




{
    unsigned char tmphead;
    unsigned char data;
    unsigned char usr;
    unsigned char lastRxError;



    usr = (*(volatile uint8_t *)(0xC0));
    data = (*(volatile uint8_t *)(0xC6));





    lastRxError = usr & ((1 << (4))|(1 << (3))|(1 << (2)) );







    tmphead = ( UART_RxHead + 1) & ( 32 - 1);

    if ( tmphead == UART_RxTail ) {

        lastRxError = 0x0200 >> 8;
    }else{

        UART_RxHead = tmphead;

        UART_RxBuf[tmphead] = data;
    }
    UART_LastRxError |= lastRxError;
}


void __vector_19 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_19 (void)




{
    unsigned char tmptail;


    if ( UART_TxHead != UART_TxTail) {

        tmptail = (UART_TxTail + 1) & ( 32 - 1);
        UART_TxTail = tmptail;

        (*(volatile uint8_t *)(0xC6)) = UART_TxBuf[tmptail];
    }else{

        (*(volatile uint8_t *)(0xC1)) &= ~(1 << (5));
    }
}
# 433 "uart.c"
void uart_init(unsigned int baudrate)
{
    UART_TxHead = 0;
    UART_TxTail = 0;
    UART_RxHead = 0;
    UART_RxTail = 0;
# 458 "uart.c"
    if ( baudrate & 0x8000 )
    {

        (*(volatile uint8_t *)(0xC0)) = (1<<1);

    }

    (*(volatile uint8_t *)(0xC5)) = (unsigned char)((baudrate>>8)&0x80) ;

    (*(volatile uint8_t *)(0xC4)) = (unsigned char) (baudrate&0x00FF);


    (*(volatile uint8_t *)(0xC1)) = (1 << (7))|(1<<4)|(1<<3);






    (*(volatile uint8_t *)(0xC2)) = (1<<2)|(1<<1);



}
# 490 "uart.c"
unsigned int uart_getc(void)
{
    unsigned char tmptail;
    unsigned char data;
    unsigned char lastRxError;


    if ( UART_RxHead == UART_RxTail ) {
        return 0x0100;
    }


    tmptail = (UART_RxTail + 1) & ( 32 - 1);


    data = UART_RxBuf[tmptail];
    lastRxError = UART_LastRxError;


    UART_RxTail = tmptail;

    UART_LastRxError = 0;
    return (lastRxError << 8) + data;

}
# 523 "uart.c"
void uart_putc(unsigned char data)
{
    unsigned char tmphead;


    tmphead = (UART_TxHead + 1) & ( 32 - 1);

    while ( tmphead == UART_TxTail ){
        ;
    }

    UART_TxBuf[tmphead] = data;
    UART_TxHead = tmphead;


    (*(volatile uint8_t *)(0xC1)) |= (1 << (5));

}
# 549 "uart.c"
void uart_puts(const char *s )
{
    while (*s)
      uart_putc(*s++);

}
# 563 "uart.c"
void uart_puts_p(const char *progmem_s )
{
    register char c;

    while ( (c = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(progmem_s++)); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }))) )
      uart_putc(c);

}
