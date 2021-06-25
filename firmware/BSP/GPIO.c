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
--| PUBLIC FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void GPIO_Init(void)
{
    // enable clock control for GPIO port A
    RCC->IOPENR |= RCC_IOPENR_IOPAEN;

    const uint32_t gpio_moder_init = (GPIO_MODER_MODE0_0 | GPIO_MODER_MODE0_1) | // pin 0 analog
                                     (GPIO_MODER_MODE1_0 | GPIO_MODER_MODE1_1) | // pin 1 analog
                                     (GPIO_MODER_MODE2_0 | GPIO_MODER_MODE2_1) | // pin 2 analog
                                     (GPIO_MODER_MODE4_1) |                      // pin 4 alt (SPI NSS)
                                     (GPIO_MODER_MODE5_1) |                      // pin 5 alt (SPI SCK)
                                     (GPIO_MODER_MODE7_1);                       // pin 7 alt (SPI MOSI)

    // set the pinmodes
    GPIOA->MODER |= gpio_moder_init;

    // set temporary debug pin PA6 to output
    GPIOA->MODER &= ~GPIO_MODER_MODE6_Msk;
    GPIOA->MODER |= GPIO_MODER_MODE6_0;
}
