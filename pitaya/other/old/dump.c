#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>

#define WORDS 2*1024
#define ADDRESS 0x43c00000

int test( uint32_t address, uint32_t mem_words, int print)
{
	int fd;
	uint32_t * ptr;
	uint32_t * ptr2;
	uint32_t i;
	uint32_t err = 0;

	size_t pgsize = 4 * sysconf(_SC_PAGESIZE);

	if( (fd = open("/dev/mem", O_RDWR)) < 0) {
		perror("open");
		return -1;
	}
	
	ptr = mmap(NULL ,pgsize , PROT_READ|PROT_WRITE, MAP_SHARED, fd, address);	
	if( NULL == ptr){
		perror("mmap");
		return -2;
	}

	/* skip 1st address */
	ptr2 = ptr;
//	ptr2++;

	for(i = 0; i < mem_words; i++)
		printf("%5d: %5X\n",i,ptr2[i]);

	return err;
}

int main(int argc, char *argv[])
{
	int err;

	printf("press <ENTER>");
	getchar();

	err = test(ADDRESS, WORDS, 0);

	return EXIT_SUCCESS;
}
