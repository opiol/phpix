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

#include "data.h"

#define REG_BASE_CFG 0x40000000
#define REG_BASE_DAT 0x42000000
#define REG_BASE_CTL 0x44000000

#define CHIP_SIZE_BITS  616
#define CHIP_SIZE_BYTES CHIP_SIZE_BITS / 8

#define SCALE_SIZE_BITS     CHIP_SIZE_BITS * 8
#define SCALE_SIZE_BYTES    SCALE_SIZE_BITS / 8
struct control{
    uint32_t clkdiv;
    uint32_t bits_to_send;
    uint32_t config;
    uint32_t options;
};

void map(uint32_t phys, size_t size, uint32_t ** mapped)
{
    int fd;

    if ( (fd = open("/dev/mem", O_RDWR | O_SYNC)) < 0) {
        perror("mem open err");
        exit(EXIT_FAILURE);
    }

    uint32_t * ptr;
    if ( (ptr = mmap(NULL, size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, phys)) == NULL) {
        perror("mmap err");
        exit(EXIT_FAILURE);
    }

    *mapped = ptr;
}
 
void clrscr()
{
    printf("\033[2J\033[1;1H");
}
void disp(uint8_t * buf_scale)
{
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 32; j++) {
            /* skip global config - 13B */
            printf("%X",buf_scale[13 + i*CHIP_SIZE_BYTES + j]);
        }
        printf("\n");
    }
    printf("\n");
}
int main(int argc, char *argv[])
{
    uint32_t * cfgmem;
    uint32_t * datmem;
    struct control *ctl = NULL;
    uint8_t buf_chip[2*CHIP_SIZE_BYTES-1] = {0};

    (void) argc;
    (void) argv;
    
    map(REG_BASE_CFG, 8192, &cfgmem);
    map(REG_BASE_DAT, 8192, &datmem);
    map(REG_BASE_CTL, 8192, (uint32_t**)(&ctl));
    
    if (CHIP_SIZE_BITS != data_load_from_file("cfginv.bb", buf_chip, CHIP_SIZE_BITS)) {
        perror ("Bad cfg file format / size mismatch");
        exit (EXIT_FAILURE);
    };

    /* now we have config for single chip.
     * enxt we have to copy it over full scale an put in cfgmem 
     */

    uint8_t buf_scale[SCALE_SIZE_BYTES] = {0};

    for (int i = 0; i < 8; i++) {
        memcpy(&buf_scale[i*CHIP_SIZE_BYTES], buf_chip, CHIP_SIZE_BYTES);
    };

    //clrscr();
    //printf("\n reading from bram:\n");
    /* copy to BRAM */
    memcpy((uint8_t*)cfgmem, buf_scale, SCALE_SIZE_BYTES);
//    data_print_mem_layout(cfgmem, SCALE_SIZE_BITS);

    printf("\n\npres any key to read from chip...\n");
    getchar();
    //clrscr();


    
    ctl->clkdiv = 25;
    ctl->bits_to_send = SCALE_SIZE_BITS;
    ctl->options = 3;
    /* start transmission, automatically cleared by fsm */
 while(1)
 {
     clrscr();
    ctl->config = 1;
    usleep(100000);
    data_print_img(datmem);
}
    return EXIT_SUCCESS;
}

