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
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32L0x1 Reference Manual, page 167 (RCC)
--|   STM32L0x1 Reference Manual, page 216 (GPIO)
--|
--|----------------------------------------------------------------------------|
*/

#ifndef GPIO_H_INCLUDED
#define GPIO_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    GPIO_Init

Function Description:
    Perform initialization of the GPIO pins.

Parameters:
    None

Returns:
    None

Assumptions/Limitations:
    Assumed that this will be called before using any of the GPIO pins.
------------------------------------------------------------------------------*/
void GPIO_Init(void);

#endif
