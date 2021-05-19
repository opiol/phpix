#include "lfsr.h"

void create_lfsr_lut(uint16_t * empty_list_8192)
{
	uint16_t lfsr = 0x1fff; // 13 bit lfsr counter
	uint16_t tmp;

	for( int i = 0; i < 8192; i++){

		empty_list_8192[i] = lfsr | 0xe000; // phpix format, 3 msb always ones

	tmp = lfsr ^ (lfsr << 3); //xor 9th a 12th
	tmp = tmp >> 12;
	tmp = tmp & 0x0001;

	lfsr = lfsr << 1;
	lfsr = lfsr | tmp;
	lfsr = lfsr & 0x1fff; //counter operates as 13 bit
	};
}

int lfsr_decode(uint16_t value, uint16_t * lut)
{
	int i;

	for(i = 0; i < 8192; i++){
		if(value == lut[i] )
			return i;
	}
	/* not found */
	return -1;
}
