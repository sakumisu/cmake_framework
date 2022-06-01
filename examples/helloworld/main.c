#include "board.h"
#include "component1.h"
#include "component2.h"
#include "component3.h"
#include "uart.h"
#include "spi.h"

void main(void)
{
    board_init();
    component1_init();
    component2_init();
    component3_init();
    uart_init();
    spi_init();
}