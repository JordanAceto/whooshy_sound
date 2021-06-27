/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   DMA.h provides the interface for initializing the Direct Memory Access
--|   controller.
--|
--|   The DMA controller delivers ADC readings to a buffer in the background.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32F334xx Reference Manual, page 241
--|
--|----------------------------------------------------------------------------|
*/

#ifndef DMA_H_INCLUDED
#define DMA_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    DMA_Init

Function Description:
    Perform initialization of DMA.

Parameters:
    None

Returns:
    None

Assumptions/Limitations:
    Assumed that this will be called before using DMA.
------------------------------------------------------------------------------*/
void DMA_Init(void);

#endif