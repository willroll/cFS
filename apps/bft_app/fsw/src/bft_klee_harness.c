#include <klee/klee.h>
#include "bft_voter.h"
#include <stdint.h>

int main() {
    uint16_t v0, v1, v2, v3;
    
    // Tell KLEE to track each sensor value as a distinct symbolic variable
    klee_make_symbolic(&v0, sizeof(v0), "v0");
    klee_make_symbolic(&v1, sizeof(v1), "v1");
    klee_make_symbolic(&v2, sizeof(v2), "v2");
    klee_make_symbolic(&v3, sizeof(v3), "v3");
    
    uint16_t sensor_values[4] = {v0, v1, v2, v3};
    
    // Call the function under test
    uint16_t result = BFT_Vote(sensor_values);
    
    return 0;
}
