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

#ifndef LIB_WAVE_SCANNER_H_INCLUDED
#define LIB_WAVE_SCANNER_H_INCLUDED

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
    wave_scanner_xfade

Function Description:
    Crossfade between the wave values in the given array.

Parameters:
    wave: the array of waveshapes to crossfade between.
    num_waves: the number of waves in the array.
    xfade: the crossfade setting, low values will result in the first wave in 
    the array, high values will result in the last thing in the array being 
    returned.

Returns:
    uint16_t: the crossfaded value of the given waves.

Assumptions/Limitations:
    Assumes that arr_of_waves is at least num_waves long.
------------------------------------------------------------------------------*/
uint16_t wave_scanner_xfade(uint16_t *wave, uint16_t num_waves, uint16_t xfade);

#endif
