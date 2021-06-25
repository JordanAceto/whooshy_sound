/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   ADC.c provides the implementation for initializing the ADC.
--|   
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32L0x1 Reference Manual, page 167 (RCC)
--|   STM32L0x1 Reference Manual, page 278 (ADC)
--|
--|----------------------------------------------------------------------------|
*/

#ifndef ADC_H_INCLUDED
#define ADC_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    ADC_Init

Function Description:
    Perform initialization of the ADC.

Parameters:
    None

Returns:
    None

Assumptions/Limitations:
    Assumed that this will be called before using the ADC.
------------------------------------------------------------------------------*/
void ADC_Init(void);

#endif
