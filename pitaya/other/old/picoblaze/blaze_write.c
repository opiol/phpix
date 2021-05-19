#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>
#include <malloc.h>

#define WORDS 1024
#define ADDRESS 0x46000000

uint32_t data[WORDS] = {0};

int test( uint32_t address, uint32_t mem_words, int print)
{
	int fd;
	uint32_t * ptr;
	uint32_t * ptr2;
	uint32_t i;
	uint32_t err = 0;

	size_t pgsize = 8 * sysconf(_SC_PAGESIZE);

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
	//ptr2++;

	for(i = 0; i < mem_words; i++)
	{
		ptr2[i] = data[i];
		printf("%X ",data[i]);
	}

	return err;
}

int main(int argc, char *argv[])
{
	int err;
	char * line_ptr = NULL;
	size_t num = 16;
	uint32_t number;

	printf("press <ENTER>");
	getchar();

	line_ptr = (char*)malloc(num*sizeof(char));

	FILE * fr = fopen("main.mem","r");
	if(!fr)
		EXIT_FAILURE;

	/* skip first line */
	getline(&line_ptr, &num, fr);

	for(int i =0 ; i < WORDS; i++)
	{
		getline(&line_ptr,&num,fr);
		sscanf(line_ptr,"%X",&number);
		data[i] = number;
	}
	err = test(ADDRESS, WORDS, 0);

	return EXIT_SUCCESS;
}
