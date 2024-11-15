// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmpsoc_preset_v_tpg_0_0_v_tpg.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMpsoc_preset_v_tpg_0_0_v_tpg_CfgInitialize(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, XMpsoc_preset_v_tpg_0_0_v_tpg_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress = ConfigPtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMpsoc_preset_v_tpg_0_0_v_tpg_Start(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_IsDone(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_IsIdle(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_IsReady(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_EnableAutoRestart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_DisableAutoRestart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_AP_CTRL, 0);
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_height(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_height(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_width(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_width(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_bckgndId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BCKGNDID_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_bckgndId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BCKGNDID_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ovrlayId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_OVRLAYID_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ovrlayId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_OVRLAYID_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_maskId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_MASKID_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_maskId(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_MASKID_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_motionSpeed(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_MOTIONSPEED_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_motionSpeed(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_MOTIONSPEED_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_colorFormat(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_COLORFORMAT_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_colorFormat(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_COLORFORMAT_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_crossHairX(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_CROSSHAIRX_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_crossHairX(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_CROSSHAIRX_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_crossHairY(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_CROSSHAIRY_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_crossHairY(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_CROSSHAIRY_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ZplateHorContStart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTSTART_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ZplateHorContStart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTSTART_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ZplateHorContDelta(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTDELTA_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ZplateHorContDelta(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTDELTA_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ZplateVerContStart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTSTART_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ZplateVerContStart(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTSTART_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_ZplateVerContDelta(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTDELTA_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_ZplateVerContDelta(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTDELTA_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_boxSize(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BOXSIZE_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_boxSize(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BOXSIZE_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_boxColorR(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BOXCOLORR_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_boxColorR(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BOXCOLORR_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_boxColorG(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BOXCOLORG_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_boxColorG(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BOXCOLORG_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_boxColorB(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BOXCOLORB_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_boxColorB(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BOXCOLORB_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_dpDynamicRange(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_DPDYNAMICRANGE_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_dpDynamicRange(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_DPDYNAMICRANGE_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_dpYUVCoef(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_DPYUVCOEF_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_dpYUVCoef(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_DPYUVCOEF_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_field_id(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_FIELD_ID_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_field_id(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_FIELD_ID_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_Set_bck_motion_en(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BCK_MOTION_EN_DATA, Data);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_Get_bck_motion_en(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_BCK_MOTION_EN_DATA);
    return Data;
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptGlobalEnable(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_GIE, 1);
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptGlobalDisable(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_GIE, 0);
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptEnable(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_IER);
    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_IER, Register | Mask);
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptDisable(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_IER);
    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptClear(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMpsoc_preset_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ISR, Mask);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptGetEnabled(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_IER);
}

u32 XMpsoc_preset_v_tpg_0_0_v_tpg_InterruptGetStatus(XMpsoc_preset_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMpsoc_preset_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Mpsoc_preset_v_tpg_0_0_ctrl_BaseAddress, XMPSOC_PRESET_V_TPG_0_0_V_TPG_MPSOC_PRESET_V_TPG_0_0_CTRL_ADDR_ISR);
}

