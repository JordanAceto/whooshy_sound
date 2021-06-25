/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   SPI1.h provides the interface for initializing and using SPI1.
--|   
--| 
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|
--|----------------------------------------------------------------------------|
*/

#ifndef SPI1_H_INCLUDED
#define SPI1_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "stm32l031xx.h"

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    SPI1_Init

Function Description:
    Perform initialization of SPI1.

Parameters:
    None

Returns:
    None

Assumptions/Limitations:
    Assumed that this will be called before using SPI1.
------------------------------------------------------------------------------*/
void SPI1_Init(void);

/*------------------------------------------------------------------------------
Function Name:
    SPI1_Transmit

Function Description:
    Transmit data via SPI1

Parameters:
    value: the value to transmit

Returns:
    None

Assumptions/Limitations:
    Assumed that SPI1 has been initialized.
------------------------------------------------------------------------------*/
void SPI1_Transmit(uint32_t value);

#endif
