#include "bft_voter.h"

uint16_t BFT_Vote(const uint16_t sensor_values[BFT_MAX_SENSORS])
{
    /* We are looking for a strict majority: at least 3 out of 4 sensors must agree. */
    /* Because BFT_MAX_SENSORS is exactly 4, we can unroll the loop for absolute provability and constant time execution. */
    
    uint16_t v0 = sensor_values[0];
    uint16_t v1 = sensor_values[1];
    uint16_t v2 = sensor_values[2];
    uint16_t v3 = sensor_values[3];

    if (v0 == v1 && v1 == v2) {
        return v0;
    }
    if (v0 == v1 && v1 == v3) {
        return v0;
    }
    if (v0 == v2 && v2 == v3) {
        return v0;
    }
    if (v1 == v2 && v2 == v3) {
        return v1;
    }

    return BFT_FALLBACK_VALUE;
}
