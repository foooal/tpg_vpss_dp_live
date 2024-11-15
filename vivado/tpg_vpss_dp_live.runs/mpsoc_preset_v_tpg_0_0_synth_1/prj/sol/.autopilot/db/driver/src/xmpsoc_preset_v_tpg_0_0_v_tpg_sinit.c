// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmpsoc_preset_v_tpg_0_0_v_tpg.h"

extern XMpsoc_preset_v_tpg_0_0_v_tpg_Config XMpsoc_preset_v_tpg_0_0_v_tpg_ConfigTable[];

XMpsoc_preset_v_tpg_0_0_v_tpg_Config *XMpsoc_preset_v_tpg_0_0_v_tpg_LookupConfig(u16 DeviceId) {
	XMpsoc_preset_v_tpg_0_0_v_tpg_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMPSOC_PRESET_V_TPG_0_0_V_TPG_NUM_INSTANCES; Index++) {
		if (XMpsoc_preset_v_tpg_0_0_v_tpg_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMpsoc_preset_v_tpg_0_0_v_tpg_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMpsoc_preset_v_tpg_0_0_v_tpg_Initialize(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u16 DeviceId) {
	XMpsoc_preset_v_tpg_0_0_v_tpg_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMpsoc_preset_v_tpg_0_0_v_tpg_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMpsoc_preset_v_tpg_0_0_v_tpg_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

