#ifndef __LFSR_H__
#define __LFSR_H__

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

void create_lfsr_lut(uint16_t * empty_list_8192);
int lfsr_decode(uint16_t value, uint16_t * lut);
#endif
