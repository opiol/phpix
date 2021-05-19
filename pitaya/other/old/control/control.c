#include "control.h"
#include <stdbool.h>

/* direct IO bit map */

#define CS		(1 << 0)
#define SCK		(1 << 1)
#define MOSI	(1 << 2)
#define MISO	(1 << 3)
#define LONG_WAIT	do{usleep(10);}while(0)
#define WAIT		do{usleep(1);}while(0)
#define BUS ctl->DIRECT_IO

uint32_t get_global_config(uint32_t index)
{
	static uint32_t data[4];
	data[3] = 0b00000000000000000000000010010000;
	data[2] = 0b00011000000011000000001101100011;
	data[1] = 0b00011101100101001100111000100000;
	data[0] = 0b00011111110011010111011100010110;
	if (index > 103)
	{
		printf("\nindex out of range: %d\nreturning false\n", index);
		return false;
	}

	int addr = index % 32;
	
	return (data[addr] && ( 1 << (index - addr * 32)));
}

int main(int argc, char** argv)
{
	int fd;
	size_t pgsize = PAGES_TO_OPEN * sysconf(_SC_PAGESIZE); /* open only multiples of whole page*/

	if( (fd = open("/dev/mem", O_RDWR)) < 0){
		perror("Unable to open memory");
		return EXIT_FAILURE;
	}

	/* map Control structure to BRAM
	 * If using only one instance, does not need static alocation of RAM
	 * */
	struct Control * ctl  = (struct Control *) mmap(NULL, pgsize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, ADDR_CONTROL);
	if(NULL == ctl){
		perror("Unable to map CONTROL");
		return EXIT_FAILURE;
	}

	uint32_t * bram_global = mmap(NULL, pgsize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, ADDR_GLOBAL_CONFIG);
	if(NULL == bram_global){
		perror("unable to map GLOBAL");
		return EXIT_FAILURE;
	}

	uint32_t * bram_local = mmap(NULL, pgsize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, ADDR_LOCAL_CONFIG);
	if(NULL == bram_local){
		perror("unable to map LOCAL");
		return EXIT_FAILURE;
	}

	uint32_t * bram_data = mmap(NULL, pgsize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, ADDR_DATA);
	if(NULL == bram_local){
		perror("unable to map DATA");
		return EXIT_FAILURE;
	}


	for (int i =0; i < 8; i++){
		bram_global[i*4+3] = 0b00000000000000000000000010010000;
		bram_global[i*4+2] = 0b00011000000011000000001101100011;
		bram_global[i*4+1] = 0b00011101100101001100111000100000;
		bram_global[i*4+0] = 0b00011111110011010111011100010110;
	}
	printf("\n\n\n\n\n");
	printf("\nglobal3: %08X\n",bram_global[3]);
	printf("global2: %08X\n",bram_global[2]);
	printf("global1: %08X\n",bram_global[1]);
	printf("global0: %08X\n",bram_global[0]);

	for (int i =0; i < 16*8; i++){
		bram_local[i] = 0b10011110011111001001111001111100;
	}
	
	printf("local 1 local 0: %08X\n",bram_local[0]);

	ctl->PHC = 0x8;
	ctl->PRE = 0x7C; /* Fout = 1meg */
	ctl->SHP = 10000u; /*10ms @ 1MHz*/

	printf("\ninitializing with AA\n");
	
	
	for(int i = 0;i < 105; i++){
		printf("\n bit: %8X",get_global_config(i));
	}

//	for(int i = 0;i < 1024;i+=4){
//		printf("%04d: %08X %08X %08X %08X\n",i,bram_data[i], bram_data[i+1],bram_data[i+2],bram_data[i+3]);
//	}
	printf("using direct IO access\n");
	
	//set mux to direct IO(4th bit in CR reg)
	ctl->CR = (1 << 4);
	BUS = SCK | CS | MOSI;
	LONG_WAIT;

	BUS = SCK | MOSI;
	WAIT;
	// all outs to high
	for (int l = 0; l < 10; l++)
	{
		/* shoult toggle IO */
		BUS = MOSI;
		WAIT;
		BUS = MOSI | SCK;
		WAIT;
	}

	BUS = 0UL;
	LONG_WAIT;
	/* set mux to default, FSM output */
	ctl->CR = 0; 
	//ctl->INI = 1; // Doesn't work, onli 32b access for now!
	
#if 0
	printf("\n -------------INIT -------------------------\n");
	ctl->CR = 0x2; // WORD write
	ctl->GPIO = 0xaa;
	usleep(100000);
	ctl-> GPIO = 0;
	
	printf("\n -------------   RUN 1 -------------------------\n");
	ctl->PHC = 0x0000000a;
	ctl->CR = 0x1; // WORD write
	ctl->GPIO = 0xaa;
	usleep(100000);
	ctl-> GPIO = 0;
	printf("\n");
	for(int i = 0;i < 1024;i+=4){
		printf("%04d: %08X %08X %08X %08X\n",i,bram_data[i], bram_data[i+1],bram_data[i+2],bram_data[i+3]);
	}
#endif
	printf("\n");

	return 0;
}
