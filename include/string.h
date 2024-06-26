#ifndef __STRING_H__
#define __STRING_H__

#include "stddef.h"

int isspace(int c);
int isdigit(int c);
int atoi(const char *);
void *memmove(void *dst, const void *src, size_t n);
void *memcpy(void *dst, const void *src, size_t n);
void *memset(void *dest, int c, size_t n);
int strcmp(const char *l, const char *r);
size_t strlen(const char *);
size_t strnlen(const char *s, size_t n);
char *stpncpy(char *restrict d, const char *restrict s, size_t n);
int strncmp(const char *_l, const char *_r, size_t n);
char *basename(char *s);

#endif // __STRING_H__
