# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
# Tool Version Limit: 2023.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XBd_85a6_csc_0_v_csc" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_BD_85A6_CSC_0_CTRL_BASEADDR" \
        "C_S_AXI_BD_85A6_CSC_0_CTRL_HIGHADDR"

    xdefine_config_file $drv_handle "xbd_85a6_csc_0_v_csc_g.c" "XBd_85a6_csc_0_v_csc" \
        "DEVICE_ID" \
        "C_S_AXI_BD_85A6_CSC_0_CTRL_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XBd_85a6_csc_0_v_csc" \
        "DEVICE_ID" \
        "C_S_AXI_BD_85A6_CSC_0_CTRL_BASEADDR" \
        "C_S_AXI_BD_85A6_CSC_0_CTRL_HIGHADDR"
}

