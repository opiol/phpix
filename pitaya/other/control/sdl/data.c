#include "data.h"
#include <string.h>
#include <stdio.h>
#include <stdbool.h>

int data_print_img(uint32_t * phpix_data )
{
    uint16_t * ptr = (uint16_t*)phpix_data;

    for (int i = 0; i < 8; i++){
        for(int j=0; j< 32; j++){
            printf("%04d ",*ptr++ & 0x1fff);
        }
        printf("\n");
    }
 
    return 0;
}
int data_print_mem_layout(uint8_t * phpix_data, size_t bits_to_print )
{
    uint32_t * ptr = (uint32_t*)phpix_data;

    int size = 1+ bits_to_print/32;
    
    while(size--)
        printf("%5d| 0x%08X :  %08x\r\n",size,size*4, ptr[size]);
 
    return 0;
}

int data_load_from_file(char * path, uint8_t * phpix_data, size_t bits_to_read)
{
    if ( !path || !phpix_data )
        return -1;

    FILE * fr = fopen(path, "r");
    if ( !fr ) {
        perror("onable to open config file");
        return -2;
    }

    /* only process full bytes */
    if ( bits_to_read % 8 ) return -4;
    memset(phpix_data, 0, bits_to_read/8);

    int c;
    bool skip_line = false;
    uint32_t valid_bits_counter = 0;

    while ( EOF != ( c = fgetc(fr))) {
        
        /* comment handling, # starts comment, newline ands it */
        if ( '#' == c) {
            skip_line = true;
            continue;
        }
        if ( '\n' == c) {
            skip_line = false;
            continue;
        }

        /* if skip line is seat, eat char and repeat */
        if (skip_line) continue;

        /* only zeros and ones are valid */
        if ( c == '0' ) {
            /* assume bytes are initialized to zero, dont write anything */
             if ( valid_bits_counter++ >= bits_to_read) return -3;
        }

        if (c == '1' ) {
            /* create bit mask to be or-ed onto current byte /
             * 3 lowest bit of counter specifies bit position, rest specifies 
             * index of uint_8's
             */
            uint8_t mask = (1 << (valid_bits_counter & 0x00000007) );
            phpix_data[valid_bits_counter >> 3] |= mask;
            if (valid_bits_counter++ >= bits_to_read) return -3;
        }
    }

    return valid_bits_counter;
}
