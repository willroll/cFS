#ifndef BFT_VOTER_H
#define BFT_VOTER_H

#include <stdint.h>
#include <stdbool.h>

#define BFT_MAX_SENSORS 4
#define BFT_FALLBACK_VALUE 0xFFFF

/*@
  requires \valid_read(sensor_values + (0 .. BFT_MAX_SENSORS - 1));
  
  assigns \nothing;
  
  behavior has_majority:
    assumes 
      (\exists integer i; 0 <= i < BFT_MAX_SENSORS &&
        (\exists integer j, k; 0 <= j < BFT_MAX_SENSORS && 0 <= k < BFT_MAX_SENSORS &&
          i != j && j != k && i != k &&
          sensor_values[i] == sensor_values[j] && sensor_values[j] == sensor_values[k]));
    ensures \result != BFT_FALLBACK_VALUE;

  behavior no_majority:
    assumes 
      (\forall integer i; 0 <= i < BFT_MAX_SENSORS ==>
        (\forall integer j, k; 0 <= j < BFT_MAX_SENSORS && 0 <= k < BFT_MAX_SENSORS ==>
          (i != j && j != k && i != k) ==>
          !(sensor_values[i] == sensor_values[j] && sensor_values[j] == sensor_values[k])));
    ensures \result == BFT_FALLBACK_VALUE;

  complete behaviors;
  disjoint behaviors;
*/
uint16_t BFT_Vote(const uint16_t sensor_values[BFT_MAX_SENSORS]);

#endif /* BFT_VOTER_H */
