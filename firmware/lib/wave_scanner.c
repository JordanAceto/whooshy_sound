/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   wave_scanner.h provides the interface for using the wave scanner to 
--|   crossfade between input signals.
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

#include "LFO.h"
#include "trapezoid_generator.h"
#include "wave_scanner.h"

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

uint16_t wave_scanner_xfade(uint16_t *wave, uint16_t num_waves, uint16_t xfade)
{
    const uint16_t NUM_SEGMENTS = (num_waves * 2u) - 1;
    const uint16_t TRAP_WIDTH = TRAPEZOID_FULL_SCALE / NUM_SEGMENTS;
    const uint16_t TRAP_SLOPE = NUM_SEGMENTS;

    uint16_t retval = 0u;

    for (int i = 0; i < num_waves; i++)
    {
        const uint16_t center_i = (TRAP_WIDTH / 2u) + (i * TRAP_WIDTH * 2);
        retval += wave[i] * get_trapezoid(xfade, TRAP_WIDTH, center_i, TRAP_SLOPE) / TRAPEZOID_FULL_SCALE;
    }

    return retval;
}
