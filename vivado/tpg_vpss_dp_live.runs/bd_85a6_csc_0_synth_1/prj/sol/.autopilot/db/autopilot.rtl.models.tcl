set SynModuleInfo {
  {SRCNAME Block_entry3_proc MODELNAME Block_entry3_proc RTLNAME bd_85a6_csc_0_Block_entry3_proc}
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME bd_85a6_csc_0_reg_unsigned_short_s}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start RTLNAME bd_85a6_csc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME bd_85a6_csc_0_flow_control_loop_pipe_sequential_init RTLNAME bd_85a6_csc_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME bd_85a6_csc_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_width MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_width RTLNAME bd_85a6_csc_0_AXIvideo2MultiPixStream_Pipeline_loop_width}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol RTLNAME bd_85a6_csc_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiPixStream MODELNAME AXIvideo2MultiPixStream RTLNAME bd_85a6_csc_0_AXIvideo2MultiPixStream
    SUBMODULES {
      {MODELNAME bd_85a6_csc_0_regslice_both RTLNAME bd_85a6_csc_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME bd_85a6_csc_0_regslice_both_U}
    }
  }
  {SRCNAME v_vcresampler_core.1_Pipeline_VITIS_LOOP_955_2 MODELNAME v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2 RTLNAME bd_85a6_csc_0_v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2}
  {SRCNAME v_vcresampler_core.1 MODELNAME v_vcresampler_core_1 RTLNAME bd_85a6_csc_0_v_vcresampler_core_1
    SUBMODULES {
      {MODELNAME bd_85a6_csc_0_v_vcresampler_core_1_linebuf_y_RAM_AUTO_1R1W RTLNAME bd_85a6_csc_0_v_vcresampler_core_1_linebuf_y_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME bd_85a6_csc_0_v_vcresampler_core_1_linebuf_y_1_RAM_AUTO_1R1W RTLNAME bd_85a6_csc_0_v_vcresampler_core_1_linebuf_y_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME v_hcresampler_core.2_Pipeline_VITIS_LOOP_724_2 MODELNAME v_hcresampler_core_2_Pipeline_VITIS_LOOP_724_2 RTLNAME bd_85a6_csc_0_v_hcresampler_core_2_Pipeline_VITIS_LOOP_724_2}
  {SRCNAME v_hcresampler_core.2 MODELNAME v_hcresampler_core_2 RTLNAME bd_85a6_csc_0_v_hcresampler_core_2}
  {SRCNAME v_csc_core_Pipeline_VITIS_LOOP_91_2 MODELNAME v_csc_core_Pipeline_VITIS_LOOP_91_2 RTLNAME bd_85a6_csc_0_v_csc_core_Pipeline_VITIS_LOOP_91_2
    SUBMODULES {
      {MODELNAME bd_85a6_csc_0_mul_16s_8ns_24_1_1 RTLNAME bd_85a6_csc_0_mul_16s_8ns_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1 RTLNAME bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME v_csc_core MODELNAME v_csc_core RTLNAME bd_85a6_csc_0_v_csc_core}
  {SRCNAME v_hcresampler_core_Pipeline_VITIS_LOOP_724_2 MODELNAME v_hcresampler_core_Pipeline_VITIS_LOOP_724_2 RTLNAME bd_85a6_csc_0_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2
    SUBMODULES {
      {MODELNAME bd_85a6_csc_0_mux_4_2_8_1_1 RTLNAME bd_85a6_csc_0_mux_4_2_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME v_hcresampler_core MODELNAME v_hcresampler_core RTLNAME bd_85a6_csc_0_v_hcresampler_core}
  {SRCNAME v_vcresampler_core_Pipeline_VITIS_LOOP_955_2 MODELNAME v_vcresampler_core_Pipeline_VITIS_LOOP_955_2 RTLNAME bd_85a6_csc_0_v_vcresampler_core_Pipeline_VITIS_LOOP_955_2}
  {SRCNAME v_vcresampler_core MODELNAME v_vcresampler_core RTLNAME bd_85a6_csc_0_v_vcresampler_core
    SUBMODULES {
      {MODELNAME bd_85a6_csc_0_v_vcresampler_core_linebuf_y_RAM_AUTO_1R1W RTLNAME bd_85a6_csc_0_v_vcresampler_core_linebuf_y_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME bd_85a6_csc_0_v_vcresampler_core_linebuf_c_RAM_AUTO_1R1W RTLNAME bd_85a6_csc_0_v_vcresampler_core_linebuf_c_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2 RTLNAME bd_85a6_csc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2}
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME bd_85a6_csc_0_MultiPixStream2AXIvideo}
  {SRCNAME v_csc MODELNAME v_csc RTLNAME bd_85a6_csc_0_v_csc IS_TOP 1
    SUBMODULES {
      {MODELNAME bd_85a6_csc_0_fifo_w8_d2_S RTLNAME bd_85a6_csc_0_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_InVideoFormat_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w8_d8_S RTLNAME bd_85a6_csc_0_fifo_w8_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_OutVideoFormat_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_ColStart_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_ColEnd_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_RowStart_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_RowEnd_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K11_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K12_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K13_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K21_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K22_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K23_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K31_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K32_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K33_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w10_d5_S RTLNAME bd_85a6_csc_0_fifo_w10_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_ROffset_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w10_d5_S RTLNAME bd_85a6_csc_0_fifo_w10_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_GOffset_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w10_d5_S RTLNAME bd_85a6_csc_0_fifo_w10_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_BOffset_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w8_d5_S RTLNAME bd_85a6_csc_0_fifo_w8_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_ClampMin_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w8_d5_S RTLNAME bd_85a6_csc_0_fifo_w8_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_ClipMax_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K11_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K12_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K13_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K21_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K22_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K23_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K31_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K32_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w16_d5_S RTLNAME bd_85a6_csc_0_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_K33_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w10_d5_S RTLNAME bd_85a6_csc_0_fifo_w10_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_ROffset_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w10_d5_S RTLNAME bd_85a6_csc_0_fifo_w10_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_GOffset_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w10_d5_S RTLNAME bd_85a6_csc_0_fifo_w10_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_BOffset_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w8_d5_S RTLNAME bd_85a6_csc_0_fifo_w8_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_ClampMin_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w8_d5_S RTLNAME bd_85a6_csc_0_fifo_w8_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_ClipMax_2_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w1_d3_S RTLNAME bd_85a6_csc_0_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bPassThru_420_In_loc_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w1_d7_S RTLNAME bd_85a6_csc_0_fifo_w1_d7_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bPassThru_420_Out_loc_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w1_d4_S RTLNAME bd_85a6_csc_0_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bPassThru_422_or_420_In_loc_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w1_d6_S RTLNAME bd_85a6_csc_0_fifo_w1_d6_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bPassThru_422_or_420_Out_loc_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_width_c24_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_height_c30_channel_U}
      {MODELNAME bd_85a6_csc_0_fifo_w24_d16_S RTLNAME bd_85a6_csc_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stream_in_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_width_c23_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_height_c29_U}
      {MODELNAME bd_85a6_csc_0_fifo_w24_d16_S RTLNAME bd_85a6_csc_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stream_in_vresampled_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_width_c22_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_height_c28_U}
      {MODELNAME bd_85a6_csc_0_fifo_w24_d16_S RTLNAME bd_85a6_csc_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stream_in_hresampled_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_width_c21_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_height_c27_U}
      {MODELNAME bd_85a6_csc_0_fifo_w24_d16_S RTLNAME bd_85a6_csc_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stream_csc_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_width_c20_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_height_c26_U}
      {MODELNAME bd_85a6_csc_0_fifo_w24_d16_S RTLNAME bd_85a6_csc_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stream_out_hresampled_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_width_c19_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_height_c25_U}
      {MODELNAME bd_85a6_csc_0_fifo_w24_d16_S RTLNAME bd_85a6_csc_0_fifo_w24_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stream_out_vresampled_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_width_c_U}
      {MODELNAME bd_85a6_csc_0_fifo_w12_d2_S RTLNAME bd_85a6_csc_0_fifo_w12_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_height_c_U}
      {MODELNAME bd_85a6_csc_0_CTRL_s_axi RTLNAME bd_85a6_csc_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
