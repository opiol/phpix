#include <stdio.h>
#include <netdb.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/select.h>

#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>
#include <math.h>
#include <malloc.h>
#include <time.h>
#include <string.h>

#define PORT 8079
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
    uint32_t shutter;
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

/* delay specifies display framerate */
struct timeval timeout = {
    .tv_sec = 0,
    .tv_usec = 250000
};

uint16_t data[256];
char data_str[256 * 6];

void get_data(int init)
{   
    for (int i=0 ; i < 256; i++) {
        data[i] = (i + init) & 0x1fff;
    }
}

void encode_data(void)
{
    data_str[0] = '\0';
    char tmpstr[16];

    for (int i = 0; i < 256 ; i++) {
        sprintf(tmpstr, "%d ",data[i]);
        strcat(data_str, tmpstr);
    };
    strcat(data_str, "\n");
}

int connfd;

#define RXBUF_SIZE 512
char rxbuf[RXBUF_SIZE] = {0};


int main(int argc, char **argv)
{
/************ AXI *******************/
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

    memcpy((uint8_t*)cfgmem, buf_scale, SCALE_SIZE_BYTES);

/************************************************************/

	int sockfd, len;
	struct sockaddr_in servaddr, cli;
    
    ctl->clkdiv = 25;
    ctl->bits_to_send = SCALE_SIZE_BITS;
    ctl->options = 7;
    ctl-> shutter = 1000;
    ctl->config = 1;
while(1){
	sockfd = socket(AF_INET, SOCK_STREAM, 0);
	if (sockfd == -1) {
		printf("socket creation failed...\n");
		exit(0);
	}
	else
		printf("Socket successfully created..\n");
	
    
    bzero(&servaddr, sizeof(servaddr));

	servaddr.sin_family = AF_INET;
	servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
	servaddr.sin_port = htons(PORT);

	if ((bind(sockfd, (struct sockaddr *)&servaddr, sizeof(servaddr))) != 0) {
		printf("socket bind failed...\n");
		exit(0);
	}
	else
		printf("Socket successfully binded..\n");


	if ((listen(sockfd, 5)) != 0) {
		printf("Listen failed...\n");
		exit(0);
	}
	else
		printf("Server listening..\n");
	len = sizeof(cli);

	// Accept the data packet from client and verification
	connfd = accept(sockfd, (struct sockaddr*)&cli, &len);
	if (connfd < 0) {
		printf("server acccept failed...\n");
		exit(0);
	}
	else
		printf("server acccept the client...\n");

    fd_set rfds;

    int i;
    uint32_t position, value;
    while(1){

        FD_ZERO(&rfds);
        FD_SET(connfd, &rfds);
        timeout.tv_usec = 20000;
        /* manually trigger */
        
        int retval = select(connfd+1, &rfds, NULL, NULL, &timeout);
        if (-1 == retval) {
            perror("sel");
            break;
        }

        //get_data(i++);
        memcpy(data, datmem, 256*16);
        encode_data();
        
        if (FD_ISSET(connfd, &rfds)) {
          int a =  read(connfd, rxbuf, RXBUF_SIZE);
          if (0 == a) {
              printf("disconnect\n");
              break; /*socked closed */  
            };
              //printf("%s\n",rxbuf);
              sscanf(rxbuf,"%d:%u",&position, &value);
              printf("pos:%d val:%u\n",position,value);
              switch(position) {
                  case 1: ctl->clkdiv = value; break;
                  case 2: ctl->bits_to_send = value; break;
                  case 4: ctl->shutter = value; break;
                  case 3: 
                          if (value) {
                              /*  freerun | Decode | rxalign */
                              ctl->options = 7;
                          } else {
                              ctl->options = 5;
                          };
                            break;
                 case 5:

                            if (CHIP_SIZE_BITS != data_load_from_file("cfginv.bb", buf_chip, CHIP_SIZE_BITS)) {
                                perror ("Bad cfg file format / size mismatch");
                                break;
                            };
                            for (int i = 0; i < 8; i++) {
                                memcpy(&buf_scale[i*CHIP_SIZE_BYTES], buf_chip, CHIP_SIZE_BYTES);
                            };
                            memcpy((uint8_t*)cfgmem, buf_scale, SCALE_SIZE_BYTES);
                            break;
                 default:
                            break;

              }
        };

        ssize_t n = write( connfd, data_str, strlen(data_str));
        if (n != strlen(data_str)){
            printf("not all data sent\n");
        };

        
    }      

	close(sockfd);
}
}
