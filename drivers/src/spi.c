#include "board.h"
#include "component1.h"
#include "spi.h"

void spi_init()
{
    board_init();
    component1_init();
    printf("spi_init\r\n");
}