/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   TIM2.h provides the interface for initializing TIM3.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32L0x1 Reference Manual, page 371 (General Purpose Timers)
--|
--|----------------------------------------------------------------------------|
*/

#ifndef TIM2_H_INCLUDED
#define TIM2_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    TIM2_Init

Function Description:
    Perform initialization of TIM2.

Parameters:
    None

Returns:
    None

Assumptions/Limitations:
    Assumed that this will be called before using TIM2.
------------------------------------------------------------------------------*/
void TIM2_Init(void);

#endif
