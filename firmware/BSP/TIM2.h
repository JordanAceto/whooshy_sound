/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   TIM2.h provides the interface for initializing TIM2 to act as
--|   a periodic stopwatch and checking for timeouts.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32L0x1 Reference Manual, page 494 (Basic Timers)
--|
--|----------------------------------------------------------------------------|
*/

#ifndef TIM2_H_INCLUDED
#define TIM2_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include <stdbool.h>

/*
--|----------------------------------------------------------------------------|
--| PUBLIC DEFINES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: TIM2_FREQUENCY_Hz
--| DESCRIPTION: the frequency of timer 2, in Hertz
--| TYPE: uint
*/
#define TIM2_FREQUENCY_Hz (5000u)

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

/*------------------------------------------------------------------------------
Function Name:
    TIM2_get_timeout

Function Description:
    Check if the periodic timer has timed out.

Parameters:
    None

Returns:
    true if the timer has timed out, else false. This will be true once per 
    period as determined by the timer frequency.

Assumptions/Limitations:
    Assumed that the timer has been initializes as a periodic counter.
------------------------------------------------------------------------------*/
bool TIM2_get_timeout(void);

#endif
