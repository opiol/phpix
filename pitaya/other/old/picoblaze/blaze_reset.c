#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>

#define ADDRESS 0x41200000

int set_reset( uint32_t address, uint32_t state)
{
	int fd;
	uint32_t * ptr;
	uint32_t err = 0;

	size_t pgsize =  sysconf(_SC_PAGESIZE);

	if( (fd = open("/dev/mem", O_RDWR)) < 0) {
		perror("open");
		return -1;
	}
	
	ptr = mmap(NULL ,pgsize , PROT_READ|PROT_WRITE, MAP_SHARED, fd, address);	
	if( NULL == ptr){
		perror("mmap");
		return -2;
	}

	*ptr = state;

	munmap((void*)address, pgsize);

	return err;
}

int main(int argc, char *argv[])
{

	uint32_t option;

	option = (uint32_t)argv[1][0] - '0';

	set_reset(ADDRESS, option);


	return EXIT_SUCCESS;
}
