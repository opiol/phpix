#ifndef __CONTROL_H__
#define __CONTROL_H__

#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>
#include <string.h>

#define ADDR_GLOBAL_CONFIG	0x40000000
#define ADDR_LOCAL_CONFIG	0x42000000
#define ADDR_DATA			0x44000000
#define ADDR_CONTROL		0x46000000

#define PAGES_TO_OPEN		4

//		    Control Struct - direct map to BRAM
//  +===================================================+
//	| ADDRESS	| BITS  | NAME	|	COMMENT				|
//	|===========|=======|=======|=======================|
//  |			| 31:4  |		|	Reserved			|
//	|	X"000"	|    3	|  DN	|	R	Done			|
//	|			|    2	|  BSY	|	R	Busy			|
//	|			|    1	|  INI	|	W	Init			|
//	|			|    0	|  ST	|	W	Start			|
//  |-----------|-------|-------|-----------------------|
//	|	X"004"	| 31:0	|  SHP	| RW Shutter Period(CLKs)
//  |-----------|-------|-------|-----------------------|
//	|	X"008"	| 31:0	|  PHC	| RW Chip Count (8 per scale)
//	|-----------|-------|-------|-----------------------|
//	|			| 31:8  |		|	Reserved			|
//  |	X"00C"  |  7:0  |  LD	| RW GPIO Leds			|
//	|-----------|-------|-------|-----------------------|
//	|	X"010"	| 31:0  |  PRE	| RW Prescaler			|
//  +===================================================+

/**
 * FSM Control Structure
 * Coresponds directly to mapped BRAM
 */
struct Control{
	union{
		struct{
			uint32_t ST:1;		/**< WO Start Bit */
			uint32_t INIT:1;	/**< WO Optional Init after power-up */
			uint32_t BSY:1;		/**< RO Busy - operation in progress*/
			uint32_t DN:1;		/**< RO Done - operation finished - not implemented*/
			uint32_t SEL:1;		/**< RW Select Direct IO SPI pin manipulation, without fsm*/
			uint32_t reserved:27;
		};
		uint32_t CR;	/**< WORD access to Control/Status Register*/
	};
	uint32_t SHP;		/**< Shutter period in CLKs (after prescaler)*/
	uint32_t PHC;		/**< PhPix Chips count. 8 chips per scale. Sets starting address for BRAM*/
	uint32_t GPIO;		/**< Debug signals. GPIO 7:0 mapped to LEDs(pitaya)*/
	uint32_t PRE;		/**< Prescaler. Fout = Fin/(PRE + 1).*/
	uint32_t DIRECT_IO;
};


struct Global_config{
	uint32_t magic0; /**< lsb in memory is last transmitted */
	uint32_t magic1;
	uint32_t magic2;
	uint32_t magic3; /**< msb in memory is first transmitted*/
};

struct Local_config{
	union{
		struct{
			uint16_t TDAC:5;
			uint16_t MODE:2;
			uint16_t CH_EN:1;
			uint16_t GAIN:1;
			uint16_t INJECT:1;
			uint16_t FDAC:5;
			uint16_t OUT_EN:1; /**<Analog out, default off*/
		};
		uint16_t REG; /**access to whole register as byte*/
	};
};
/**
 * global.magic3 & (1 << 31)  ==> first bit on bus out
 * channel[0] & (1 << 0) ==> last bit on the bus
 */
struct Phpix{
	struct Global_config global ;
	struct Local_config channel[32];
};
/**
 * datasheet(6.1):
 *  The first incoming bit to the chip is the most significant bit of the global configuration register (103th bit)
 *   and the last incoming bit is the least significant bit of the local configuration register (0th bit)
 *   of the first channel (0th channel).
 */



#endif
