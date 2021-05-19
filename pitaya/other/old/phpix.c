#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>
#include <math.h>
#include <malloc.h>
#include <time.h>
#include <string.h>

#define BUFSIZE 2048
#define RUN_MASK 0x00000002
#define RST_MASK 0x00000001

uint32_t data[BUFSIZE] = {0};
uint32_t return_data[BUFSIZE] = {0};
/* 32 16-bit channel on 1 chip, total 8 chips*/
uint16_t ordered_data[32*8] = {0};
uint16_t bit_reversed_data[32*8] = {0};
uint32_t data_count = 0;

void combine_bytes(uint32_t * src, uint16_t * dst, int src_len)
{
	int i = 0;
	int j = 0;
	uint32_t tmp;
	for(; i <= src_len; i += 2,j++){
		dst[j] = (src[i]  & 0xff) | ((src[i+1] & 0xff) << 8);
	}
}

void reorder_bits(uint16_t *src, uint16_t* dst, int len)
{
	for(int k = 0; k < len; k++){
		dst[k] = 0;
		/*reverse bits*/
		for(int i = 0; i < 16; i++){
			if( src[k] & (1 << i)){
				dst[k] |= (1 << (15-i));
			}
		}
	}
}

int write_single( uint32_t address, uint32_t value)
{
	int fd;
	uint32_t * ptr;
	uint32_t err = 0;
	size_t pgsize = 4096;

	if( (fd = open("/dev/mem", O_RDWR | O_SYNC )) < 0) {
		perror("open");
		return  1;
	}
	
	ptr = mmap(NULL ,pgsize , PROT_READ|PROT_WRITE, MAP_SHARED, fd,address);	
	if( NULL == ptr){
		perror("mmap");
		return 2;
	}

		*ptr = value;

	munmap((void*)address, pgsize);
	return err;
}
int write_data( uint32_t data_address, uint32_t data_count)
{
	int fd;
	uint32_t * ptr;
	uint32_t err = 0;
	size_t pgsize = 4 * BUFSIZE;

	if( (fd = open("/dev/mem", O_RDWR | O_SYNC )) < 0) {
		perror("open");
		return  1;
	}
	
	ptr = mmap(NULL ,pgsize , PROT_READ|PROT_WRITE, MAP_SHARED, fd, data_address);	
	if( NULL == ptr){
		perror("mmap");
		return 2;
	}


	for(int i = 0; i < data_count; i++){
		ptr[i] = data[i];
	}

	munmap((void*)data_address, pgsize);
	return err;
}



int read_data( uint32_t data_address, uint32_t * return_data)
{
	int fd;
	uint32_t * ptr;
	uint32_t err = 0;

	size_t pgsize = 4 * BUFSIZE;

	if( (fd = open("/dev/mem", O_RDWR | O_SYNC )) < 0) {
		perror("open");
		return 4;
	}
	
	ptr = mmap(NULL ,pgsize , PROT_READ|PROT_WRITE, MAP_SHARED, fd, data_address);	
	if( NULL == ptr){
		perror("mmap");
		return 8;
	}

	for(int i = 0; i < BUFSIZE; i++){
		return_data[i] = ptr[i];
	}

	munmap((void*)data_address, pgsize);
	return err;
}

void print_data( uint32_t* dataptr, uint32_t len)
{

	for( int i=0; i < len; ){
		printf("0x%04X: ",i);
		printf("%02x %02x %02x %02x",dataptr[i++], dataptr[i++],dataptr[i++],dataptr[i++]);
		printf(" %02x %02x %02x %02x",dataptr[i++],dataptr[i++],dataptr[i++],dataptr[i++]);
		printf(" %02x %02x %02x %02x",dataptr[i++],dataptr[i++],dataptr[i++],dataptr[i++]);
		printf(" %02x %02x %02x %02x\n",dataptr[i++],dataptr[i++],dataptr[i++],dataptr[i++]);
		}
}

void print_data16( uint16_t* dataptr, uint32_t len)
{

	for( int i=0; i < len; ){
		printf("0x%04X: ",i);
		printf(" %04x %04x %04x %04x",dataptr[i++],dataptr[i++],dataptr[i++],dataptr[i++]);
		printf(" %04x %04x %04x %04x\n",dataptr[i++],dataptr[i++],dataptr[i++],dataptr[i++]);
		}
}

int main(int argc, char *argv[])
{
	int err;
	int opt;

	uint32_t data_address = 0;
	uint32_t gpio_address = 0;
	uint32_t verbose = 0;
	char filename[32] = {0};

	while ((opt = getopt(argc, argv, "ha:g:f:v")) != -1) {
		switch (opt) {
			case 'h':
				fprintf(stdout, "Usage %s [-a] address_hex [-g] gpio_address [-f] filename [-v verbose]",
						argv[0]);
				exit(EXIT_SUCCESS);
			case 'a':
				sscanf(optarg,"0x%x",&data_address);
			case 'g':
				sscanf(optarg,"0x%x",&gpio_address);
			case 'f':
				strncpy(filename,optarg,32);
				break;
			case 'v':
				verbose = 1;
				break;
			default:
				fprintf(stderr, "Usage %s [-a] address_hex [-g] gpio_address [-f] filename [-v verbose]",
						argv[0]);
				exit(EXIT_FAILURE);
		}
	}

	FILE * fr = fopen(filename,"r");
	if( fr == NULL){
		fprintf(stderr,"wrong filename: %s",filename);
		exit(EXIT_FAILURE);
	}


	if(verbose)
		printf("\n data_address: 0x%X\n gpio address: 0x%X\nfilename:%s\n",
				data_address,gpio_address,filename);
	
	int linebuf_size = 32;
	char * linebuf = (char*)malloc(sizeof(char)*linebuf_size);

	/* discard 2 first lines */
	getline( &linebuf, &linebuf_size, fr);
	if(verbose)
		printf("discarding string:%s\n",linebuf);

	getline( &linebuf, &linebuf_size, fr);
	if(verbose)
		printf("discarding string:%s\n",linebuf);

	for( int i = 0; i < BUFSIZE; i++){
		getline(&linebuf, &linebuf_size, fr);
		
		/* ';' on signe line = EOF */
		if(linebuf[0] == ';')
			break;

		sscanf( linebuf,"%x", &data[i]);
		data_count++;

		/* ';' on end of the line */
		if( strstr( linebuf,";"))
		   break;	
	}

	/* check for too long file*/
	if( data_count >= BUFSIZE){
		fprintf(stderr,"data too long\n");
		exit(EXIT_FAILURE);
	}

	if(verbose){
		printf("data count:%d\n**********************************\nInitializing mmemory\n",data_count);
		print_data(data, data_count);
	}

	err =  write_data( data_address, data_count);
	err += read_data( data_address, return_data);
/*	
	printf("\n*****************************************************\n");
	printf("printing 2048 Bytes from address 000:\n");
	print_data(&return_data[0], 2048);

	printf("\n*****************************************************\n");
	printf("BEFORE: printing 64 Bytes from address 616:\n");
	print_data(&return_data[616], 64);
*/
	printf("\n Start phpix...");
	/* start fsm, 1 clk@25mhz is enough */
	write_single(gpio_address, RUN_MASK);
	//usleep(1);
	write_single(gpio_address, 0x00000000);

	/* wait 10 ms for result*/
	usleep(100000);

	/* read all 2k of memory */
	read_data(data_address, return_data);

	/* data from sensor from address 616. wrong bit order*/
	printf("\nAFTER: printing 64*8 Bytes from address 616:\n");
	print_data(&return_data[616], 64*8);

	
	combine_bytes( &return_data[616], ordered_data,64*8);
	printf("\n***********************\n byte swapped, 16bit:\n");
	print_data16(ordered_data,32*8);

	reorder_bits( ordered_data, bit_reversed_data,32*8);
	return EXIT_SUCCESS;
}
