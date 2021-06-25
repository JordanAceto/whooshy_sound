/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   SysTick.h provides types and interfaces for the Core SysTick Timer,
--|   as well as various scheduling and time based functionality.
--|   
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   PM0223 programmers manual page 95
--|
--|----------------------------------------------------------------------------|
*/

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "stm32l031xx.h"
#include "SysTick.h"

/*
--|----------------------------------------------------------------------------|
--| PRIVATE DEFINES
--|----------------------------------------------------------------------------|
*/

/* None */

/*
--|----------------------------------------------------------------------------|
--| PRIVATE TYPES
--|----------------------------------------------------------------------------|
*/

/* None */

/*
--|----------------------------------------------------------------------------|
--| PRIVATE CONSTANTS
--|----------------------------------------------------------------------------|
*/

/* None */

/*
--|----------------------------------------------------------------------------|
--| PRIVATE VARIABLES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: SystemCoreClockFreq 
--| DESCRIPTION: the frequency of the system code clock.
--| TYPE: uint32_t
*/
const uint32_t SystemCoreClockFreq = (uint32_t)32E6;

/*
--| NAME: mSec_since_reset 
--| DESCRIPTION: the number of milliseconds since the last power on/reset.
--| TYPE: uint32_t
*/
static volatile uint32_t mSec_since_reset = 0u;

/*
--|----------------------------------------------------------------------------|
--| PRIVATE HELPER FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    SysTick_Handler

Function Description:
    Interrupt routine for periodic Systick interrupts. Simply increments the
    mSec_since_reset variable.

Parameters:
    None

Returns:
    None

Assumptions/Limitations:
    Called automatically, do not call this function.
------------------------------------------------------------------------------*/
void SysTick_Handler(void);

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void SysTick_Init(void)
{
    // set the load register such that the SysTick fires at 1kHz
    const uint32_t load_val = (SystemCoreClockFreq / 1000u) - 1u;
    SysTick->LOAD = load_val;

    // reset the SysTick current value
    SysTick->VAL = 0u;

    const uint32_t systick_ctrl_init = SysTick_CTRL_CLKSOURCE_Msk | // clocksource = processor clock
                                       SysTick_CTRL_TICKINT_Msk   | // enable SysTick exception requests
                                       SysTick_CTRL_ENABLE_Msk;     // enable the counter

    SysTick->CTRL |= systick_ctrl_init;
}

void SysTick_Delay_mSec(uint32_t mSec)
{
    const uint32_t start_time = SysTick_Get_mSec();

    while ((SysTick_Get_mSec() - start_time) <= mSec)
    {
        // wait
    }
}

uint32_t SysTick_Get_mSec(void)
{
    return mSec_since_reset;
}

void SysTick_Start_Timeout_Timer(SysTick_Timeout_Timer_t * p_timer)
{
    p_timer->timeout_start_mSec = SysTick_Get_mSec();
}

bool SysTick_Poll_One_Shot_Timer(SysTick_Timeout_Timer_t * p_timer)
{
    return (SysTick_Get_mSec() - p_timer->timeout_start_mSec) >= p_timer->timeout_period_mSec;
}

bool SysTick_Poll_Periodic_Timer(SysTick_Timeout_Timer_t * p_timer)
{
    bool timeout_occured = SysTick_Poll_One_Shot_Timer(p_timer);

    if (timeout_occured) 
    {
        // reset the timer
        p_timer->timeout_start_mSec = SysTick_Get_mSec();
    }

    return timeout_occured;
}

/*
--|----------------------------------------------------------------------------|
--| PRIVATE HELPER FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void SysTick_Handler(void)
{
    mSec_since_reset++;
}