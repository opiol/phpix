#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>
#include <math.h>
#include <malloc.h>
#include <time.h>

/* 
 * compile with -lm flag*/

int test( uint32_t address, uint32_t mem_words, uint32_t mask)
{
	int fd;
	uint32_t * ptr;
	uint32_t i, test_var;
	uint32_t err = 0;

	srand(time(NULL));
	/* 1 word is always accessed as 32 bit */

	size_t pgsize = 4 * mem_words;

	if( (fd = open("/dev/mem", O_RDWR | O_SYNC )) < 0) {
		perror("open");
		return -1;
	}
	
	ptr = mmap(NULL ,pgsize , PROT_READ|PROT_WRITE, MAP_SHARED, fd, address);	
	if( NULL == ptr){
		perror("mmap");
		return -2;
	}

	uint32_t * backup_mem = malloc(mem_words * sizeof(uint32_t));

	for(i = 0; i < mem_words; i++){
		test_var = rand() & mask;
//		printf("write: %4d  %x\n",i,test_var);
		ptr[i] = test_var;
		backup_mem[i] = test_var;
	}

	for(i = 0; i < mem_words; i++){
//		printf("read: %4d  %x     bak:%x\n",i, ptr[i],backup_mem[i]);
		if( (ptr[i] & mask) != (backup_mem[i] & mask) ){
//			printf("-----------ERROR-----\n");
			err++;
		}
	}

	munmap((void*)address, pgsize);
	free(backup_mem);
	return err;
}

/*
 * usage test -a <address> -d <depth> -n <bits>
 */
int main(int argc, char *argv[])
{
	int err;
	int opt;

	uint32_t address = 0;
	uint32_t depth = 0;
	uint32_t mask = 0;
	uint32_t verbose = 0;


	while ((opt = getopt(argc, argv, "ha:d:n:v")) != -1) {
		switch (opt) {
			case 'h':
				fprintf(stdout, "Usage %s [-a] address_hex [-d] depth [-n] data_bits [-v verbose]",
						argv[0]);
				exit(EXIT_SUCCESS);
			case 'a':
				sscanf(optarg,"0x%x",&address);
				break;
			case 'd':
				depth = atoi(optarg);
				break;
			case 'n':
				mask = pow(2, atoi(optarg)) -1;
				break;
			case 'v':
				verbose = 1;
				break;
			default:
				fprintf(stderr, "Usage %s [-a] address_hex [-d] depth [-n] data_bits [-v]",
						argv[0]);
				exit(EXIT_FAILURE);
		}
	}


	if(verbose)
		printf("\naddress: 0x%X \ndepth   : %d \nmask   : %X \n",
				address, depth, mask);

	if( !address || !depth || !mask){
		fprintf(stderr, "parameters	error\n");
		exit(EXIT_FAILURE);
	}

	err = test(address, depth, mask);
	
	if(verbose)
		printf("\nTEST %s\n",err ? "FAILED" : "PASSED!");

	printf("%d\n",err);

	return EXIT_SUCCESS;
}
