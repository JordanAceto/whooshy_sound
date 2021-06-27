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

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "trapezoid_generator.h"

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

uint16_t get_trapezoid(uint16_t input, uint16_t width, uint16_t center, uint16_t slope)
{
    // signed values of larger type than the inputs are intentional
    const int32_t plateau_start = center - (width >> 1);
    const int32_t plateau_end   = center + (width >> 1);

    int32_t output = 0u;

    if (input < plateau_start)
    {
        output = slope * (input - plateau_start) + TRAPEZOID_FULL_SCALE;
    }
    else if (plateau_end <= input)
    {
        output = slope * (plateau_end - input) + TRAPEZOID_FULL_SCALE;
    }
    else // the input is within the bounds of the plateau
    {
        output = TRAPEZOID_FULL_SCALE;
    }

    // clamp the output of the trapezoid between zero and full scale
    if (output < 0)
    {
        output = 0;
    }

    if (TRAPEZOID_FULL_SCALE < (uint32_t)output)
    {
        output = TRAPEZOID_FULL_SCALE;
    }

    return (uint16_t)output;
}
