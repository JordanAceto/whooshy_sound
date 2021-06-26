/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   trapezoid_generator.h provides an interface for generating trapezoids
--|   from linear input signals.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|
--|----------------------------------------------------------------------------|
*/

#ifndef LIB_TRAPEZOID_GENERATOR_H_INCLUDED
#define LIB_TRAPEZOID_GENERATOR_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include <stdint.h>

/*
--|----------------------------------------------------------------------------|
--| PUBLIC DEFINES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: TRAPEZOID_FULL_SCALE
--| DESCRIPTION: the full scale value of the trapezoids
--| TYPE: uint
*/
#define TRAPEZOID_FULL_SCALE (0xFFFFu)

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    get_trapezoid

Function Description:
    Turn the linear input into a trapezoid with the given width, center, and slope

Parameters:
    input: the unisigned 16 bit input.
    width: the width of the desired trapezoid
    center: the center of the desired trapezoid
    slope: the slope if the desired trapezoid

Returns:
    The input transformed into a trapezoid with the given characteristics.

Assumptions/Limitations:
    None
------------------------------------------------------------------------------*/
uint16_t get_trapezoid(uint16_t input, uint16_t width, uint16_t center, uint16_t slope);

#endif
