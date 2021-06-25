/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   SPI1.c provides the implementation for initializing and using SPI1.
--|  
--|----------------------------------------------------------------------------|
--| REFERENCES:
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

void SPI1_Init(void)
{
    RCC->APB2ENR |= RCC_APB2ENR_SPI1EN;

    // make sure GPIO port A is enabled
    RCC->IOPENR |= RCC_IOPENR_IOPAEN;

    // set data frame formal to 16 bits
    SPI1->CR1 |= SPI_CR1_DFF;

    // SS output enabled in master mode
    SPI1->CR2 |= SPI_CR2_SSOE;

    // prescaler = divide by 8
    SPI1->CR1 |= SPI_CR1_BR_1;

    // set SPI3 to master mode
    SPI1->CR1 |= SPI_CR1_MSTR;

    // enable SPI1
    SPI1->CR1 |= SPI_CR1_SPE;

}

void SPI1_Transmit(uint32_t value)
{
    __disable_irq();

    // chip select low
    GPIOA->BSRR = GPIO_BSRR_BR_4;

    // write the value to the data register
    SPI1->DR = value;

    while (!(SPI1->SR & SPI_SR_TXE))
    {
        // wait for TX buffer to be empty
    }

    while (SPI1->SR & SPI_SR_BSY)
    {
        // wait for transmission to complete
    }

    // chip select high
    GPIOA->BSRR = GPIO_BSRR_BS_4;

    __enable_irq();
}