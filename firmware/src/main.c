
#include "lookup_tables.h"

int main(void)
{
    int i = 0;

    while (1)
    {
        volatile int j = SINE_LUT[i];
        i++;
    }

    return 0;
}