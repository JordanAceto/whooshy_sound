/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   LFO.h provides the types and interface for creating and using Low 
--|   Frequency Oscillators.
--|
--|   The LFOs are created using the technique of Direct Digital Synthesis.
--|
--|   Triangle, Sine, Square, and Random waveshapes are simultaneously available,
--|   as well as a crossfaded output. The crossfade output takes in a control
--|   signal for fade position, which scans through the above waveshapers. The
--|   scan order is Triangle -> Sine -> Square -> Random. This order means that 
--|   as the user advances the scan position control from low to high, the LFO
--|   wave morphs from smooth triangle, to puffy triangle, to sine, to puffy 
--|   sine, to square, to a random sample-and-hold-like signal.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|      https://en.wikipedia.org/wiki/Numerically-controlled_oscillator
--|      https://en.wikipedia.org/wiki/Linear_interpolation
--|      https://www.digikey.com/en/articles/techzone/2019/mar/the-basics-of-direct-digital-synthesizers-ddss
--|----------------------------------------------------------------------------|
*/

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "LFO.h"
#include "lookup_tables.h"

/*
--|----------------------------------------------------------------------------|
--| PRIVATE DEFINES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: ACCUMULATOR_BIT_WIDTH
--| DESCRIPTION: bit width of the phase accumulator.
--| TYPE: uint32_t
*/
#define ACCUMULATOR_BIT_WIDTH (32u)

/*
--| NAME: NUM_INDEX_BITS_IN_ACCUMULATOR
--| DESCRIPTION: the number of index bits the phase accumulator.
--| TYPE: uint32_t
*/
#define NUM_INDEX_BITS_IN_ACCUMULATOR (10u)

/*
--| NAME: NUM_FRACTIONAL_BITS_IN_ACCUMULATOR
--| DESCRIPTION: the number of fractional bits the phase accumulator.
--| TYPE: uint32_t
*/
#define NUM_FRACTIONAL_BITS_IN_ACCUMULATOR (ACCUMULATOR_BIT_WIDTH - NUM_INDEX_BITS_IN_ACCUMULATOR)

/*
--| NAME: ACCUMULATOR_FULL_SCALE
--| DESCRIPTION: the maximum value of the phase accumulator.
--| TYPE: uint64_t (to avoid truncation)
*/
#define ACCUMULATOR_FULL_SCALE (((uint64_t)1u << ACCUMULATOR_BIT_WIDTH) - 1u)

/*
--| NAME: ACCUMULATOR_HALF_SCALE
--| DESCRIPTION: the phase accumulator half scale value.
--| TYPE: uint
*/
#define ACCUMULATOR_HALF_SCALE (ACCUMULATOR_FULL_SCALE >> 1u)

/*
--| NAME: ACCUMULATOR_QUARTER_SCALE
--| DESCRIPTION: the phase accumulator quarter scale value.
--| TYPE: uint
*/
#define ACCUMULATOR_QUARTER_SCALE (ACCUMULATOR_HALF_SCALE >> 1u)

/*
--| NAME: ACCUMULATOR_FRACTION_MASK
--| DESCRIPTION: a mask to isolate the fractional part of the accumulator.
--| TYPE: uint32_t
*/
#define ACCUMULATOR_FRACTION_MASK ~((1u << NUM_FRACTIONAL_BITS_IN_ACCUMULATOR) - 1u)

/*
--| NAME: SINE_LOOK_UP_TABLE_SIZE
--| DESCRIPTION: the size of the sine wave look up table.
--| TYPE: uint32_t
*/
#define SINE_LOOK_UP_TABLE_SIZE (1u << NUM_INDEX_BITS_IN_ACCUMULATOR)

/*
--|----------------------------------------------------------------------------|
--| PRIVATE HELPER FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    Calculate_Tuning_Word

Function Description:
    Calculate the phase accumulator tuning word for the LFO
    
Parameters:
    * p_LFO: pointer to the given LFO.

Returns:
    None. Modifies the data held by p_LFO.

Assumptions/Limitations:
    None
------------------------------------------------------------------------------*/
static void Calculate_Tuning_Word(LFO_t * p_LFO);

/*------------------------------------------------------------------------------
Function Name:
    Caclulate_LFO_Waveshapes

Function Description:
    Calculate the values of the LFO waveshapers.

Parameters:
    * p_LFO: pointer to the given LFO.

Returns:
    None. Modifies the data held by p_LFO.

Assumptions/Limitations:
    None.
------------------------------------------------------------------------------*/
static void Caclulate_LFO_Waveshapes(LFO_t * p_LFO);

/*------------------------------------------------------------------------------
Function Name:
    get_sin

Function Description:
    Get the value of the sine wave based on the given phase accumulator value.

Parameters:
    phase_accumulator: the value of the phase accumulator to convert to a sine.

Returns:
    uint16_t: the current sample of the sine wave.

Assumptions/Limitations:
    None.
------------------------------------------------------------------------------*/
static uint16_t get_sin(uint32_t phase_accumulator);

/*------------------------------------------------------------------------------
Function Name:
    get_tri

Function Description:
    Get the value of the triangle wave based on the given phase accumulator value.

Parameters:
    phase_accumulator: the value of the phase accumulator to convert to a triangle.

Returns:
    uint16_t: the current sample of the triangle wave.

Assumptions/Limitations:
    None.
------------------------------------------------------------------------------*/
static uint16_t get_tri(uint32_t phase_accumulator);

/*------------------------------------------------------------------------------
Function Name:
    get_square

Function Description:
    Get the value of the square wave based on the given phase accumulator value.

Parameters:
    phase_accumulator: the value of the phase accumulator to convert to a square.

Returns:
    uint16_t: the current sample of the square wave.

Assumptions/Limitations:
    None.
------------------------------------------------------------------------------*/
static uint16_t get_square(uint32_t phase_accumulator);

/*------------------------------------------------------------------------------
Function Name:
    get_random

Function Description:
    Get the value of the random wave based on the given phase accumulator value.

Parameters:
    phase_accumulator: the value of the phase accumulator to convert to a random
    sample.

Returns:
    uint16_t: the current sample of the random wave.

Assumptions/Limitations:
    None.
------------------------------------------------------------------------------*/
static uint16_t get_random(uint32_t phase_accumulator);

/*------------------------------------------------------------------------------
Function Name:
    crossfade

Function Description:
    Crossfade between the wave values in the given array.

Parameters:
    arr_of_waves: the array of waveshapes to crossfade between.
    num_waves: the number of waves in the array.
    xfade: the crossfade setting, low values will result in the first wave in 
    the array, high values will result in the last thing in the array being 
    returned.

Returns:
    uint16_t: the crossfaded value of the given waves.

Assumptions/Limitations:
    Assumes that arr_of_waves is at least num_waves long.
------------------------------------------------------------------------------*/
static uint16_t crossfade(uint16_t *arr_of_waves, uint16_t num_waves, uint16_t xfade);

/*------------------------------------------------------------------------------
Funciton Name:
    Linear_Interpolation

Function Description:
    Linearly interpolate two points where y1 is the current point in the LUT, 
    y2 is the next point in the LUT, and the fraction is composed of the lower  
    NUM_FRACTIONAL_BITS_IN_ACCUMULATOR bits in the accumulator and represents 
    how far you are in the x direction between y1 and y2.
    
Parameters:
    y1: the current point in the LUT
    y2: the next point in the LUT
    fraction: the lower NUM_FRACTIONAL_BITS_IN_ACCUMULATOR bits in the 
        accumulator. represents how far you are in the x direction between 
        y1 and y2.
    
Returns:
    uint16_t: the linearly interpolated value between y1 and y2.

Assumptions/Limitations:
    None.
------------------------------------------------------------------------------*/
static uint16_t Linear_Interpolation(uint16_t y1, uint16_t y2, uint32_t fraction);

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void LFO_Initialize(LFO_t * p_LFO, uint32_t sample_rate)
{
    p_LFO->input[LFO_INPUT_TYPE_FREQ_mHz]   = LFO_FREQ_mHz_DEFAULT_VALUE;
    p_LFO->input[LFO_INPUT_TYPE_WAVE_SCAN] = LFO_WAVE_SHAPE_DEFAULT_VALUE;

    for (int i = 0; i < NUM_LFO_WAVE_TYPES; i++)
    {
        p_LFO->output[i] = LFO_OUTPUT_HALF_SCALE;
    }

    p_LFO->sample_rate = sample_rate;
}

void LFO_Tick(LFO_t * p_LFO)
{
    p_LFO->phase_accumulator += p_LFO->tuning_word;
    Caclulate_LFO_Waveshapes(p_LFO);
}

void LFO_set_input(LFO_t * p_LFO, LFO_input_t input_type, uint16_t value)
{
    p_LFO->input[input_type] = value;

    // update the tuning word if you changed the frequency
    if (input_type == LFO_INPUT_TYPE_FREQ_mHz)
    {
        Calculate_Tuning_Word(p_LFO);
    }
}

uint16_t LFO_get_output(LFO_t * p_LFO, LFO_wave_t wave_type)
{
    return p_LFO->output[wave_type];
}

/*
--|----------------------------------------------------------------------------|
--| PRIVATE HELPER FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void Calculate_Tuning_Word(LFO_t * p_LFO)
{
    // In DDS, the tuning word M = (2^N * f_out)/(f_c), where N is the number of
    // bits in the accumulator, f_out is the desired output frequency, and f_c
    // is the sample rate.

    // Since the LFO frequency is measured in milli Hertz, this becomes 
    // M = (2^N * f_out_mHz)/(f_c * 1000)

    // The tuning word M is calculated in stages to avoid overflowing a uint32.

    // Note that the MAX_ACCUMULATOR value is actually equal to 2^N - 1, but this 
    // off-by-one does not meaningfully impact the calculation.

    const uint32_t two_to_the_N = ACCUMULATOR_FULL_SCALE;
    const uint32_t f_c          = p_LFO->sample_rate;
    const uint32_t f_out_mHz    = p_LFO->input[LFO_INPUT_TYPE_FREQ_mHz];
    const uint32_t mSec_per_sec = 1000u;

    uint32_t M = two_to_the_N / f_c;
    M         /= mSec_per_sec;
    M         *= f_out_mHz;

    p_LFO->tuning_word = M;
}

void Caclulate_LFO_Waveshapes(LFO_t * p_LFO)
{
    p_LFO->output[LFO_WAVE_TRIANGLE] = get_tri(p_LFO->phase_accumulator);
    p_LFO->output[LFO_WAVE_SINE]     = get_sin(p_LFO->phase_accumulator);
    p_LFO->output[LFO_WAVE_SQUARE]   = get_square(p_LFO->phase_accumulator);
    p_LFO->output[LFO_WAVE_RANDOM]   = get_random(p_LFO->phase_accumulator);

    // crossfade between the four actual waveshapes
    p_LFO->output[LFO_WAVE_CROSSFADED] = crossfade(p_LFO->output, 4u, p_LFO->input[LFO_INPUT_TYPE_WAVE_SCAN]);
}

static uint16_t get_sin(uint32_t phase_accumulator)
{
    // the current LUT index
    const uint16_t LUT_index = phase_accumulator >> NUM_FRACTIONAL_BITS_IN_ACCUMULATOR;

    // the next LUT index for interpolation, clamps at the max index to avoid bad behavior
    const uint16_t next_idx = (LUT_index + 1u) % SINE_LOOK_UP_TABLE_SIZE;

    // the fractional part of the phase accumulator, used in interpolation
    const uint32_t accumulator_fraction = phase_accumulator & ACCUMULATOR_FRACTION_MASK;

    return Linear_Interpolation(SINE_LUT[LUT_index], SINE_LUT[next_idx], accumulator_fraction);
}

static uint16_t get_tri(uint32_t phase_accumulator)
{
    // keep the triangle in-phase with the sine
    const uint32_t phase_shifted_accum = phase_accumulator + ACCUMULATOR_QUARTER_SCALE;

    if (phase_shifted_accum < ACCUMULATOR_HALF_SCALE)
    {
        return phase_shifted_accum >> (ACCUMULATOR_BIT_WIDTH - LFO_OUTPUT_NUM_BITS - 1u);
    }
    else
    {
        return (ACCUMULATOR_FULL_SCALE - phase_shifted_accum) >> (ACCUMULATOR_BIT_WIDTH - LFO_OUTPUT_NUM_BITS - 1u);
    }
}

static uint16_t get_square(uint32_t phase_accumulator)
{
    return phase_accumulator < ACCUMULATOR_HALF_SCALE ? LFO_OUTPUT_FULL_SCALE : 0u;
}

static uint16_t get_random(uint32_t phase_accumulator)
{
    // TODO: implement the random waveshaper
    return 0u;
}


static uint16_t crossfade(uint16_t *arr_of_waves, uint16_t num_waves, uint16_t xfade)
{
    // TODO: implement the crossfader
    return 0u;
}

uint16_t Linear_Interpolation(uint16_t y1, uint16_t y2, uint32_t fraction)
{
    // TODO: fix me
    return y1;
    // const uint32_t delta_y = y2 - y1;
    // const uint32_t fractional_part = (fraction * delta_y) >> NUM_FRACTIONAL_BITS_IN_ACCUMULATOR;
    // return y1 + fractional_part;
}
