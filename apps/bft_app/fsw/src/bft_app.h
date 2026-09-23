#ifndef BFT_APP_H
#define BFT_APP_H

#include "cfe.h"
#include "cfe_error.h"
#include "cfe_evs.h"
#include "cfe_sb.h"
#include "cfe_es.h"

#define BFT_APP_PIPE_NAME "BFT_APP_PIPE"
#define BFT_APP_PIPE_DEPTH 32

/* Event IDs */
#define BFT_APP_INIT_INF_EID 1
#define BFT_APP_ERR_EID      2

/* Message IDs - in a real app, these would be in a global msgids.h */
#define BFT_SENSOR_A_MID 0x1A00
#define BFT_SENSOR_B_MID 0x1A01
#define BFT_SENSOR_C_MID 0x1A02
#define BFT_SENSOR_D_MID 0x1A03

/* Telemetry packet structure */
typedef struct {
    uint8_t TlmHeader[CFE_MSG_TLM_HDR_SZ];
    uint16_t sensor_value;
} BFT_SensorPkt_t;

/* App entry point */
void BFT_AppMain(void);

#endif /* BFT_APP_H */
