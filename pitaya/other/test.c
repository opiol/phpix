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

int main(void)
{
	int fd;
	uint32_t * ptr;
    uint32_t * ptr2;
	uint32_t err = 0;

    const uint32_t address = 0x44000000;
    const uint32_t address2 =  0x40000000;
	/* 1 word is always accessed as 32 bit */

	size_t pgsize = 4 * 1024;

	if( (fd = open("/dev/mem", O_RDWR | O_SYNC )) < 0) {
		perror("open");
		return -1;
	}
	
	ptr = mmap(NULL ,pgsize , PROT_READ|PROT_WRITE, MAP_SHARED, fd, address2);	
	if( NULL == ptr){
		perror("mmap");
		return -2;
	}

    ptr[0] = 0x87654321;
    ptr[1] = 0xafedcba9;
    ptr[2] = 0xdeadbabe;



    /*
	if( (fd = open("/dev/mem", O_RDWR | O_SYNC )) < 0) {
		perror("open");
		return -1;
	}
	*/
	ptr2 = mmap(NULL ,pgsize , PROT_READ|PROT_WRITE, MAP_SHARED, fd, address);	
	if( NULL == ptr2){
		perror("mmap");
		return -2;
	}

    ptr2[0] = 25;
    ptr2[1] = 96;
    ptr2[2] = 1;


    printf("%x %x %x\n",ptr[0],ptr[1],ptr[2]);
	return err;
}

