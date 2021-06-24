/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   system_init.c provides the implementation for system initialization.
--|
--|   The SystemInit function is called from the assembly startup routine prior
--|   to branching to the main application function.
--|
--|   In the SystemInit function the various system clock and harware peripheral
--|   init functions are called to initialize the system.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   None
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
--| PRIVATE DEFINES
--|----------------------------------------------------------------------------|
*/

/*
--|----------------------------------------------------------------------------|
--| PUBLIC VARIABLES
--|----------------------------------------------------------------------------|
*/

/*
--|----------------------------------------------------------------------------|
--| PRIVATE FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    SystemInit

Function Description:
    Perform system initialization by starting the system clock and initializing
    the various stm32 peripherals.

Parameters:
    None

Returns:
    None

Assumptions/Limitations:
    Assumed that this will be called by the assembly startup routine before
    branching to main. Do not manually call this function.
------------------------------------------------------------------------------*/
void SystemInit(void);

/*
--|----------------------------------------------------------------------------|
--| PRIVATE FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void SystemInit(void)
{
    __disable_irq();



    __enable_irq();
}
