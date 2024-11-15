// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMPSOC_PRESET_V_TPG_0_0_V_TPG_H
#define XMPSOC_PRESET_V_TPG_0_0_V_TPG_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmpsoc_preset_v_tpg_0_0_v_tpg_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress;
} XMpsoc_preset_v_tpg_0_0_v_tpg_Config;
#endif

typedef struct {
    u64 Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress;
    u32 IsReady;
} XMpsoc_preset_v_tpg_0_0_v_tpg;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMpsoc_preset_v_tpg_0_0_v_tpg_Initialize(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u16 DeviceId);
XMpsoc_preset_v_tpg_0_0_v_tpg_Config* XMpsoc_preset_v_tpg_0_0_v_tpg_LookupConfig(u16 DeviceId);
int XMpsoc_preset_v_tpg_0_0_v_tpg_CfgInitialize(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, XMpsoc_preset_v_tpg_0_0_v_tpg_Config *ConfigPtr);
#else
int XMpsoc_preset_v_tpg_0_0_v_tpg_Initialize(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, const char* InstanceName);
int XMpsoc_preset_v_tpg_0_0_v_tpg_Release(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
#endif

void XMpsoc_preset_v_tpg_0_0_v_tpg_Start(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_IsDone(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_IsIdle(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_IsReady(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_EnableAutoRestart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_DisableAutoRestart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_height(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_height(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_width(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_width(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_bckgndId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_bckgndId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ovrlayId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ovrlayId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_maskId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_maskId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_motionSpeed(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_motionSpeed(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_colorFormat(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_colorFormat(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_crossHairX(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_crossHairX(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_crossHairY(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_crossHairY(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ZplateHorContStart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ZplateHorContStart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ZplateHorContDelta(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ZplateHorContDelta(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ZplateVerContStart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ZplateVerContStart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ZplateVerContDelta(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ZplateVerContDelta(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_boxSize(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_boxSize(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_boxColorR(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_boxColorR(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_boxColorG(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_boxColorG(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_boxColorB(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_boxColorB(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_dpDynamicRange(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_dpDynamicRange(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_dpYUVCoef(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_dpYUVCoef(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_field_id(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_field_id(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_bck_motion_en(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_bck_motion_en(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);

void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptGlobalEnable(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptGlobalDisable(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptEnable(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask);
void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptDisable(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask);
void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptClear(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptGetEnabled(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);
u32 XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptGetStatus(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
