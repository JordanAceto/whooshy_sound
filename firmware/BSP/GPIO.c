/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   GPIO.h provides the interface for initializing the GPIO pins.
--|
--|   PA0 is an analog input mapped to the rate CV input.
--|   PA1 is an analog input mapped to the shape CV input.
--|   PA2 is an analog input mapped to the level CV input.
--|
--|   PA4 is SPI1 NSS DAC chip select.
--|   PA5 is SPI1 SCK.
--|   PA7 is SPI1 MOSI
--|
--|   PA13 is SYS SWDIO
--|   PA14 is SYS SWCLK
--|
--|   PA6 is temporarily set as a general purpose output for debugging
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32L0x1 Reference Manual, page 167 (RCC)
--|   STM32L0x1 Reference Manual, page 216 (GPIO)
--|
--|----------------------------------------------------------------------------|
*/

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "stm32l031xx.h"

/*
--|----------------------------------------------------------------------------|
--| PRIVATE DEFINES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: GPIO_MODER_INIT_CONSTANT 
--| DESCRIPTION: initializations constant for GPIOA MODER register
--| Sets all GPIO pins to their desired functions
--| TYPE: uint32_t
*/
#define GPIO_MODER_INIT_CONSTANT (0xEBFF99FFu)

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void GPIO_Init(void)
{
    // enable clock control for GPIO port A
    RCC->IOPENR |= RCC_IOPENR_IOPAEN;

    // set the pinmodes
    GPIOA->MODER = GPIO_MODER_INIT_CONSTANT;

    // drive the SPI CS pin high
    GPIOA->BSRR = GPIO_BSRR_BS_4;
}
