// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Nov 15 11:03:29 2024
// Host        : DESKTOP-S07ATB7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/dp/zcu106/tpg_dp_live/vivado/tpg_dp_live/tpg_dp_live.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_system_ila_1_0/mpsoc_preset_system_ila_1_0_stub.v
// Design      : mpsoc_preset_system_ila_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_53c1,Vivado 2023.1" *)
module mpsoc_preset_system_ila_1_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6)
/* synthesis syn_black_box black_box_pad_pin="probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[10:0],probe5[31:0],probe6[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [10:0]probe4;
  input [31:0]probe5;
  input [0:0]probe6;
endmodule
