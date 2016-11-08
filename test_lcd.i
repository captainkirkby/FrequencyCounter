# 1 "test_lcd.c"
# 1 "/Users/Dylan/Downloads/lcdlibrary//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "test_lcd.c"
# 10 "test_lcd.c"
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 1 3
# 47 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/include/stddef.h" 1 3 4
# 212 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 324 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 2 3
# 68 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 106 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 120 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 143 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 175 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 208 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 242 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 254 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 266 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 278 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 290 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 338 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 364 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 406 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *itoa(int __val, char *__s, int __radix);
# 434 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *ltoa(long int __val, char *__s, int __radix);
# 460 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *utoa(unsigned int __val, char *__s, int __radix);
# 486 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *ultoa(unsigned long int __val, char *__s, int __radix);
# 504 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 563 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 580 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 11 "test_lcd.c" 2
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
# 12 "test_lcd.c" 2
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 1 3
# 87 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/avr/pgmspace.h" 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/include/stddef.h" 1 3 4
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
# 13 "test_lcd.c" 2
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 1 3
# 43 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay_basic.h" 1 3
# 40 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 44 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 2 3
# 1 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 1 3
# 127 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));





extern double cbrt(double __x) __attribute__((__const__));
# 194 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 376 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 439 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 453 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 45 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 2 3
# 84 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 uint16_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((16000000UL) / 1e3) * __ms;
# 161 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
}
# 223 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 uint8_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((16000000UL) / 1e6) * __us;
# 243 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 261 "/usr/local/CrossPack-AVR-20130212/lib/gcc/avr/4.6.2/../../../../avr/include/util/delay.h" 3
}
# 14 "test_lcd.c" 2
# 1 "lcd.h" 1
# 292 "lcd.h"
extern void lcd_init(uint8_t dispAttr);






extern void lcd_clrscr(void);






extern void lcd_home(void);
# 316 "lcd.h"
extern void lcd_gotoxy(uint8_t x, uint8_t y);







extern void lcd_putc(char c);







extern void lcd_puts(const char *s);
# 341 "lcd.h"
extern void lcd_puts_p(const char *progmem_s);







extern void lcd_command(uint8_t cmd);
# 359 "lcd.h"
extern void lcd_data(uint8_t data);
# 15 "test_lcd.c" 2





static const __attribute__((__progmem__)) unsigned char copyRightChar[] =
{
 0x07, 0x08, 0x13, 0x14, 0x14, 0x13, 0x08, 0x07,
 0x00, 0x10, 0x08, 0x08, 0x08, 0x08, 0x10, 0x00
};





void wait_until_key_pressed(void);


void wait_until_key_pressed(void)
{
    unsigned char temp1, temp2;

    do {
        temp1 = (*(volatile uint8_t *)((0x03) + 0x20));
        _delay_ms(5);
        temp2 = (*(volatile uint8_t *)((0x03) + 0x20));
        temp1 = (temp1 & temp2);
    } while ( temp1 & (1 << (2)) );

    do { } while ((!((*(volatile uint8_t *)(((uint16_t) &((*(volatile uint8_t *)((0x03) + 0x20)))))) & (1 << (2)))));
}


int main(void)
{
    char buffer[7];
    int num=134;
    unsigned char i;


    (*(volatile uint8_t *)((0x04) + 0x20)) &=~ (1 << 2);
    (*(volatile uint8_t *)((0x05) + 0x20)) |= (1 << 2);



    lcd_init(0x0C);

    for (;;) {





        lcd_clrscr();


        lcd_puts("LCD Test Line 1\n");


        lcd_puts("Line 2");


        lcd_gotoxy(7,1);


        lcd_putc(':');


        wait_until_key_pressed();







        lcd_command(0x0E);


        lcd_puts( "CurOn");


        wait_until_key_pressed();






        lcd_clrscr();


        lcd_puts_p((__extension__({static const char __c[] __attribute__((__progmem__)) = ("Line 1 longer than 14 characters\n"); &__c[0];})));
        lcd_puts_p((__extension__({static const char __c[] __attribute__((__progmem__)) = ("Line 2 longer than 14 characters"); &__c[0];})));


        lcd_command(0x18);


        wait_until_key_pressed();


        lcd_command(0x0C);






        lcd_clrscr();


        itoa( num , buffer, 10);


        lcd_puts(buffer);


        wait_until_key_pressed();






       lcd_clrscr();

       lcd_puts("Copyright: ");





       lcd_command((1 << (6)));
       for(i=0; i<16; i++)
       {
           lcd_data((__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&copyRightChar[i])); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; })));
       }



       lcd_gotoxy(0,1);


       lcd_putc(0);
       lcd_putc(1);



       wait_until_key_pressed();

    }
}
