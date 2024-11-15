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
#include "xbd_85a6_csc_0_v_csc.h"

extern XBd_85a6_csc_0_v_csc_Config XBd_85a6_csc_0_v_csc_ConfigTable[];

XBd_85a6_csc_0_v_csc_Config *XBd_85a6_csc_0_v_csc_LookupConfig(u16 DeviceId) {
	XBd_85a6_csc_0_v_csc_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBD_85A6_CSC_0_V_CSC_NUM_INSTANCES; Index++) {
		if (XBd_85a6_csc_0_v_csc_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBd_85a6_csc_0_v_csc_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBd_85a6_csc_0_v_csc_Initialize(XBd_85a6_csc_0_v_csc *InstancePtr, u16 DeviceId) {
	XBd_85a6_csc_0_v_csc_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBd_85a6_csc_0_v_csc_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBd_85a6_csc_0_v_csc_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

