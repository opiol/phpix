#include <SDL2/SDL.h>
#include <stdlib.h>
#include <SDL2/SDL_ttf.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>

#define PIXSIZE 25
#define FONTH   25
#define SCREEN_WIDTH   (16*PIXSIZE)
#define SCREEN_HEIGHT  (16*PIXSIZE) + ((MENU_ITEMS+2)* FONTH) + 5
#define SCREEN_LAST_LINE (16*PIXSIZE) + ((MENU_ITEMS+1)* FONTH)

#define FONT1_PATH "/usr/share/fonts/truetype/freefont/FreeMono.ttf"
#define FONT2_PATH "/usr/share/fonts/truetype/freefont/FreeMonoBold.ttf"

uint16_t img_data[512];

char ip[32] = "127.0.0.1";
struct sockaddr_in addr = {0};

enum ItemState {
    ItemStateNormal,
    ItemStateEditing
};

#define MENU_ITEMS 6
struct menuitem {
    char name[64];
    uint64_t value;
    char tooltip[64];
};

struct menu_s {
    struct menuitem item[MENU_ITEMS];
    int boldpos;
    enum ItemState state;
};

struct menu_s menu ={
    .item = {
        { "IP          " , (uint64_t)(ip), "Target address"},
        { "Prescaler   " , 25, "FCLK0(50MHz) prescaler"},
        { "Bits to Send" , 616, "bits in one transfer"},
        { "HW decode   " , 1, "decode in fabric"},
        { "Shutter     " , 10000, "shutter duration [CLK's]"},
        { "CFG reload  " , 0, "update configuration (ssh)"}
    },
    .boldpos=0,
    .state = ItemStateNormal
};

typedef struct {
	SDL_Renderer *renderer;
	SDL_Window *window;
} App;

App app;
TTF_Font *font1;
TTF_Font *font2;

char textval[64] = {0};
int textval_pos = 0;

int net_initialized  = 0;
int sock;

int init_net(void)
{
    net_initialized = 0;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(8079);
    addr.sin_addr.s_addr = inet_addr((char*)menu.item[0].value);
    //addr.sin_addr.s_addr = inet_addr("127.0.0.1");

    sock = socket (AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (sock == -1) {
        perror("Socket creation error");
        return EXIT_FAILURE;
    }
    if (connect(sock, (struct sockaddr*) &addr, sizeof(addr)) == -1) {
        perror("Connection error");
        close(sock);
        return EXIT_FAILURE;
    }
    net_initialized = 1;

}
void initSDL(void)
{
	int rendererFlags, windowFlags;

	rendererFlags = SDL_RENDERER_ACCELERATED;

	windowFlags = 0;

	if (SDL_Init(SDL_INIT_VIDEO) < 0)
	{
		printf("Couldn't initialize SDL: %s\n", SDL_GetError());
		exit(1);
	}

	app.window = SDL_CreateWindow("Phpix 0.1", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, windowFlags);

	if (!app.window)
	{
		printf("Failed to open %d x %d window: %s\n", SCREEN_WIDTH, SCREEN_HEIGHT, SDL_GetError());
		exit(1);
	}

	SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "linear");

	app.renderer = SDL_CreateRenderer(app.window, -1, rendererFlags);

	if (!app.renderer)
	{
		printf("Failed to create renderer: %s\n", SDL_GetError());
		exit(1);
	}
    
    TTF_Init();
    font1 = TTF_OpenFont(FONT1_PATH, FONTH);
    if (font1 == NULL) {
        fprintf(stderr, "error: font not found\n");
        exit(EXIT_FAILURE);
    }

    font2 = TTF_OpenFont(FONT2_PATH, FONTH);
    if (font2 == NULL) {
        fprintf(stderr, "error: font not found\n");
        exit(EXIT_FAILURE);
    }
}

void doInput(void)
{
    char serverstr[64];
	SDL_Event event;
	while (SDL_PollEvent(&event))
	{
		switch (event.type)
		{
			case SDL_QUIT:
				exit(0);
				break;

            case SDL_TEXTINPUT:
                textval[textval_pos++] = *event.text.text;
                break;

            case SDL_KEYDOWN:
                switch (event.key.keysym.sym) {
                    case SDLK_q:
                        if (ItemStateEditing == menu.state) break;
                        exit(0);

                    case SDLK_UP: 
                    case SDLK_k:
                        if (ItemStateEditing == menu.state) break;
                        menu.boldpos == 0 ? menu.boldpos = MENU_ITEMS -1 : menu.boldpos--; break;
                    
                    case SDLK_j:
                    case SDLK_DOWN:
                        if (ItemStateEditing == menu.state) break;
                        menu.boldpos == MENU_ITEMS-1 ? menu.boldpos=0 : menu.boldpos++; break;

                    case SDLK_ESCAPE:
                        menu.state = ItemStateNormal;
                        SDL_StopTextInput();
                        memset(textval, 0, sizeof(textval));
                        textval_pos = 0;
                        break;

                    case SDLK_RETURN:
                        if ( ItemStateNormal == menu.state) {
                            /* start editing */
                            menu.state = ItemStateEditing;
                            textval_pos = 0;
                            memset(textval, 0, sizeof(textval));
                            SDL_StartTextInput();
                            break;
                        }
                        if ( ItemStateEditing == menu.state) {
                            /* user entered new value, store it */
                            menu.state = ItemStateNormal;
                            SDL_StopTextInput();
                            if (menu.boldpos == 0) {
                                strcpy((char*)menu.item[0].value, (char*)textval);
                                textval_pos = 0;
                                memset(textval, 0, sizeof(textval));
                                init_net();
                                break;
                            }


                            /* enable HEX data input */
                            if (textval[0] == '0' && textval[1] == 'x'){
                                menu.item[menu.boldpos].value = strtol(textval,NULL,16);
                            } else {
                                menu.item[menu.boldpos].value = strtol(textval,NULL,10);
                            }
                            textval_pos = 0;
                            memset(textval, 0, sizeof(textval));
                            
                            /* write everything to server */
                            if (net_initialized) {
                                sprintf(serverstr,"%d:%u\n", menu.boldpos, (uint32_t)menu.item[menu.boldpos].value);
                                write(sock, serverstr, strlen(serverstr));
                            };

                            break;
                        }
                        break;

                    case SDLK_SPACE:
                        break;
                }
                break;

			default:
				break;
		}
	}
}

void prepareScene(void)
{
    static uint8_t cnt;

    cnt++;
    SDL_Color textColor = {96, 128, 255, 0};
	
    SDL_SetRenderDrawColor(app.renderer, 68, 71, 76, 255);
	
    SDL_Surface *surface;
    SDL_Texture *texture;

    SDL_RenderClear(app.renderer);
    SDL_Rect r;
    r.w = PIXSIZE;
    r.h = PIXSIZE;

    for (int i = 0; i < 16; i++ ) {
        for (int j = 0; j < 16; j++) {
            r.x = i*PIXSIZE;
            r.y = j*PIXSIZE;
            if (net_initialized) {
                //SDL_SetRenderDrawColor( app.renderer,img_data[i*16+j],0,0, 255 );
                SDL_SetRenderDrawColor( app.renderer,
                         img_data[i*16+j] & 0xff,
                         (img_data[i*16+j] >>4) & 0xff,
                        0, 255 );
            }else {
                SDL_SetRenderDrawColor( app.renderer, cnt-i*2, 255-cnt+j*2, 2*i+2*j, 255 );
            }
            SDL_RenderFillRect( app.renderer, &r );
        }
    }

    
    /* print menu */
    for (int i = 0; i < MENU_ITEMS; i++) {
        char string[128];

        if (0 == i) {
            sprintf(string, "%s: %s", menu.item[i].name, (char*)menu.item[i].value);
        } else {
            sprintf(string, "%s: %u", menu.item[i].name, (uint32_t)menu.item[i].value);
        }
        surface = TTF_RenderText_Solid( menu.boldpos == i ? font2 : font1, string, textColor);
        texture = SDL_CreateTextureFromSurface(app.renderer, surface);
        SDL_Rect textr;
        textr.x = 2;
        textr.y = 16*PIXSIZE + i*FONTH;
        textr.w = surface->w;
        textr.h = surface->h;
        SDL_FreeSurface(surface);
        SDL_RenderCopy(app.renderer, texture, NULL, &textr);
        SDL_DestroyTexture(texture);
    };
    /* print status bar */
    r.x =0;
    r.y = SCREEN_LAST_LINE;
    r.h = SCREEN_HEIGHT - SCREEN_LAST_LINE;
    r.w = SCREEN_WIDTH;
    SDL_SetRenderDrawColor( app.renderer, 0,0,0, 255 );
    SDL_RenderFillRect( app.renderer, &r );

    /* print tooltip */
    if (ItemStateNormal ==menu.state ) {
        surface = TTF_RenderText_Solid( font1, menu.item[menu.boldpos].tooltip, textColor);
    } else {
        char string[128];
        sprintf(string, "new val: %s", textval);
        surface = TTF_RenderText_Solid( font1, string, textColor);
    }
    texture = SDL_CreateTextureFromSurface(app.renderer, surface);
    SDL_Rect textr;
    textr.x = 2;
    textr.y = SCREEN_LAST_LINE;
    textr.w = surface->w;
    textr.h = surface->h;
    SDL_FreeSurface(surface);
    SDL_RenderCopy(app.renderer, texture, NULL, &textr);
    SDL_DestroyTexture(texture);

 
}

void presentScene(void)
{
	SDL_RenderPresent(app.renderer);
}


char ascii_buf[256*6*5] = {0};

void net_recv(void) {
    char c;
    int bufptr = 0;

    while( -1 != read(sock, &ascii_buf[bufptr], 1)) {
        
        if (ascii_buf[bufptr] == '\n') break;
        bufptr++;        
    }

}

/* from one big string extract pixel values */
void parse_data(void) {
    /*separator */
    const char s[2] = " ";
    int i = 0;

    char *token = strtok(ascii_buf, s);

    while (token != NULL) {
        img_data[i++] = atoi(token);
        token = strtok(NULL,s);
    };
}



int main(int argc, char *argv[])
{
	memset(&app, 0, sizeof(App));

	initSDL();
    //init_net();
	//atexit(cleanup);

	while (1)
	{
        /* auto clear flags */
        menu.item[5].value = 0;

		prepareScene();

		doInput();

		presentScene();

        if (net_initialized) {
            net_recv();
            parse_data();
        } else {
		    SDL_Delay(16);
        }
	}

	return 0;
}
