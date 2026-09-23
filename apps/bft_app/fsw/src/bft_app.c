#include "bft_app.h"
#include "bft_voter.h"

static CFE_SB_PipeId_t BFT_CommandPipe;

/* Global state for the 4 redundant sensors */
static uint16_t current_sensor_values[BFT_MAX_SENSORS] = {0, 0, 0, 0};

void BFT_AppMain(void)
{
    int32 status;
    uint32 RunStatus = CFE_ES_RunStatus_APP_RUN;
    CFE_SB_Buffer_t *SBBufPtr;

    CFE_ES_RegisterApp();

    status = CFE_EVS_Register(NULL, 0, CFE_EVS_EventFilter_BINARY);
    if (status != CFE_SUCCESS) {
        CFE_ES_WriteToSysLog("BFT_App: Error Registering Events, RC = 0x%08lX\n", (unsigned long)status);
        RunStatus = CFE_ES_RunStatus_APP_ERROR;
    }

    status = CFE_SB_CreatePipe(&BFT_CommandPipe, BFT_APP_PIPE_DEPTH, BFT_APP_PIPE_NAME);
    if (status != CFE_SUCCESS) {
        CFE_EVS_SendEvent(BFT_APP_ERR_EID, CFE_EVS_EventType_ERROR, "Error Creating Pipe, RC = 0x%08lX", (unsigned long)status);
        RunStatus = CFE_ES_RunStatus_APP_ERROR;
    }

    CFE_SB_Subscribe(CFE_SB_ValueToMsgId(BFT_SENSOR_A_MID), BFT_CommandPipe);
    CFE_SB_Subscribe(CFE_SB_ValueToMsgId(BFT_SENSOR_B_MID), BFT_CommandPipe);
    CFE_SB_Subscribe(CFE_SB_ValueToMsgId(BFT_SENSOR_C_MID), BFT_CommandPipe);
    CFE_SB_Subscribe(CFE_SB_ValueToMsgId(BFT_SENSOR_D_MID), BFT_CommandPipe);

    CFE_EVS_SendEvent(BFT_APP_INIT_INF_EID, CFE_EVS_EventType_INFORMATION, "BFT App Initialized. Waiting for 4 sensor streams.");

    while (CFE_ES_RunLoop(&RunStatus) == true)
    {
        status = CFE_SB_ReceiveBuffer(&SBBufPtr, BFT_CommandPipe, CFE_SB_PEND_FOREVER);
        if (status == CFE_SUCCESS)
        {
            CFE_SB_MsgId_t MsgId = CFE_SB_GetMsgId(SBBufPtr);
            BFT_SensorPkt_t *pkt = (BFT_SensorPkt_t *)SBBufPtr;
            
            if (CFE_SB_MsgIdToValue(MsgId) == BFT_SENSOR_A_MID) current_sensor_values[0] = pkt->sensor_value;
            else if (CFE_SB_MsgIdToValue(MsgId) == BFT_SENSOR_B_MID) current_sensor_values[1] = pkt->sensor_value;
            else if (CFE_SB_MsgIdToValue(MsgId) == BFT_SENSOR_C_MID) current_sensor_values[2] = pkt->sensor_value;
            else if (CFE_SB_MsgIdToValue(MsgId) == BFT_SENSOR_D_MID) current_sensor_values[3] = pkt->sensor_value;

            /* After each read, attempt a vote (in a real system, we'd wait for synchronization) */
            uint16_t consensus = BFT_Vote(current_sensor_values);
            
            if (consensus == BFT_FALLBACK_VALUE) {
                /* Byzantine fault or major sensor failure detected, taking safe fallback */
            } else {
                /* Publish consensus */
            }
        }
    }

    CFE_ES_ExitApp(RunStatus);
}
