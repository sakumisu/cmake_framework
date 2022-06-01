#include "board.h"
#include "component1.h"
#include "uart.h"

void uart_init()
{
    board_init();
    component1_init();
    printf("uart_init\r\n");
}