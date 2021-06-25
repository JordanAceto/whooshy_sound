/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   RCC.h provides the interface for initializing the Reset and Clock
--|   Control registers.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32L0x1 Reference Manual, page 167 (RCC)
--|   STM32L0x1 Reference Manual, page 59 (FLASH)
--|   STM32L0x1 datasheet, page 23 (clock management)
--|
--|----------------------------------------------------------------------------|
*/

#ifndef RCC_H_INCLUDED
#define RCC_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    RCC_Init

Function Description:
    Perform initialization of the Reset and Clock Control registers.

Parameters:
    None

Returns:
    None

Assumptions/Limitations:
    Assumed that this will be called before branching to the main application.
------------------------------------------------------------------------------*/
void RCC_Init(void);

#endif
