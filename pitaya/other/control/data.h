#ifndef __DATA_H__
#define __DATA_H__

#include <stdint.h>
#include <stddef.h>
/*
 * loads configuration from text file. Most signifficant bit
 * is located first. Each bit is specified by ASCII char 0 or 1.
 * lines starting with '#' are comments.
 * Config file should have length of one chip config(616b).
 * */
int data_load_from_file(char * path, uint8_t * phpix_data, size_t bits_to_read);

int data_print_img(uint32_t * phpix_data );
int data_print_mem_layout(uint8_t * phpix_data, size_t bits_to_print );
#endif
