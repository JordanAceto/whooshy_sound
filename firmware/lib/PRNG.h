/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   PRNG.h provides the interface for using the Psuedo Random Number Generator.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.43.3639
--|
--|----------------------------------------------------------------------------|
*/

#ifndef LIB_PRNG_H_INCLUDED
#define LIB_PRNG_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include <stdint.h>

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    PRNG_next_rand

Function Description:
    Get the next random unsigned integer from the PRNG.

Parameters:
    None

Returns:
    The next unsigned integer psuedo random number.

Assumptions/Limitations:
    None
------------------------------------------------------------------------------*/
uint16_t PRNG_next_rand(void);

#endif
