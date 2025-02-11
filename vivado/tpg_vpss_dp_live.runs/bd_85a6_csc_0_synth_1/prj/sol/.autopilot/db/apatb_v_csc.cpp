#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_s_axis_video_V_data_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_s_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_data_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_keep_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_keep_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_strb_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_strb_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_user_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_s_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_user_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_user_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_last_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_s_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_last_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_last_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_id_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_s_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_id_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_id_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_dest_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_dest_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V "../tv/stream_size/stream_size_in_s_axis_video_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V "../tv/stream_size/stream_size_in_s_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V "../tv/stream_size/stream_size_in_s_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V "../tv/stream_size/stream_size_in_s_axis_video_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V "../tv/stream_size/stream_size_in_s_axis_video_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V "../tv/stream_size/stream_size_in_s_axis_video_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V "../tv/stream_size/stream_size_in_s_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVIN_InVideoFormat "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_InVideoFormat.dat"
#define AUTOTB_TVOUT_InVideoFormat "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_InVideoFormat.dat"
#define AUTOTB_TVIN_OutVideoFormat "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_OutVideoFormat.dat"
#define AUTOTB_TVOUT_OutVideoFormat "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_OutVideoFormat.dat"
#define AUTOTB_TVIN_width "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_width.dat"
#define AUTOTB_TVOUT_width "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_width.dat"
#define AUTOTB_TVIN_height "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_height.dat"
#define AUTOTB_TVOUT_height "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_height.dat"
#define AUTOTB_TVIN_ColStart "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_ColStart.dat"
#define AUTOTB_TVOUT_ColStart "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_ColStart.dat"
#define AUTOTB_TVIN_ColEnd "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_ColEnd.dat"
#define AUTOTB_TVOUT_ColEnd "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_ColEnd.dat"
#define AUTOTB_TVIN_RowStart "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_RowStart.dat"
#define AUTOTB_TVOUT_RowStart "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_RowStart.dat"
#define AUTOTB_TVIN_RowEnd "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_RowEnd.dat"
#define AUTOTB_TVOUT_RowEnd "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_RowEnd.dat"
#define AUTOTB_TVIN_K11 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K11.dat"
#define AUTOTB_TVOUT_K11 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K11.dat"
#define AUTOTB_TVIN_K12 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K12.dat"
#define AUTOTB_TVOUT_K12 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K12.dat"
#define AUTOTB_TVIN_K13 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K13.dat"
#define AUTOTB_TVOUT_K13 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K13.dat"
#define AUTOTB_TVIN_K21 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K21.dat"
#define AUTOTB_TVOUT_K21 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K21.dat"
#define AUTOTB_TVIN_K22 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K22.dat"
#define AUTOTB_TVOUT_K22 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K22.dat"
#define AUTOTB_TVIN_K23 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K23.dat"
#define AUTOTB_TVOUT_K23 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K23.dat"
#define AUTOTB_TVIN_K31 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K31.dat"
#define AUTOTB_TVOUT_K31 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K31.dat"
#define AUTOTB_TVIN_K32 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K32.dat"
#define AUTOTB_TVOUT_K32 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K32.dat"
#define AUTOTB_TVIN_K33 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K33.dat"
#define AUTOTB_TVOUT_K33 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K33.dat"
#define AUTOTB_TVIN_ROffset "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_ROffset.dat"
#define AUTOTB_TVOUT_ROffset "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_ROffset.dat"
#define AUTOTB_TVIN_GOffset "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_GOffset.dat"
#define AUTOTB_TVOUT_GOffset "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_GOffset.dat"
#define AUTOTB_TVIN_BOffset "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_BOffset.dat"
#define AUTOTB_TVOUT_BOffset "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_BOffset.dat"
#define AUTOTB_TVIN_ClampMin "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_ClampMin.dat"
#define AUTOTB_TVOUT_ClampMin "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_ClampMin.dat"
#define AUTOTB_TVIN_ClipMax "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_ClipMax.dat"
#define AUTOTB_TVOUT_ClipMax "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_ClipMax.dat"
#define AUTOTB_TVIN_K11_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K11_2.dat"
#define AUTOTB_TVOUT_K11_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K11_2.dat"
#define AUTOTB_TVIN_K12_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K12_2.dat"
#define AUTOTB_TVOUT_K12_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K12_2.dat"
#define AUTOTB_TVIN_K13_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K13_2.dat"
#define AUTOTB_TVOUT_K13_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K13_2.dat"
#define AUTOTB_TVIN_K21_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K21_2.dat"
#define AUTOTB_TVOUT_K21_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K21_2.dat"
#define AUTOTB_TVIN_K22_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K22_2.dat"
#define AUTOTB_TVOUT_K22_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K22_2.dat"
#define AUTOTB_TVIN_K23_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K23_2.dat"
#define AUTOTB_TVOUT_K23_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K23_2.dat"
#define AUTOTB_TVIN_K31_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K31_2.dat"
#define AUTOTB_TVOUT_K31_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K31_2.dat"
#define AUTOTB_TVIN_K32_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K32_2.dat"
#define AUTOTB_TVOUT_K32_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K32_2.dat"
#define AUTOTB_TVIN_K33_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_K33_2.dat"
#define AUTOTB_TVOUT_K33_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_K33_2.dat"
#define AUTOTB_TVIN_ROffset_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_ROffset_2.dat"
#define AUTOTB_TVOUT_ROffset_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_ROffset_2.dat"
#define AUTOTB_TVIN_GOffset_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_GOffset_2.dat"
#define AUTOTB_TVOUT_GOffset_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_GOffset_2.dat"
#define AUTOTB_TVIN_BOffset_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_BOffset_2.dat"
#define AUTOTB_TVOUT_BOffset_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_BOffset_2.dat"
#define AUTOTB_TVIN_ClampMin_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_ClampMin_2.dat"
#define AUTOTB_TVOUT_ClampMin_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_ClampMin_2.dat"
#define AUTOTB_TVIN_ClipMax_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_ClipMax_2.dat"
#define AUTOTB_TVOUT_ClipMax_2 "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_ClipMax_2.dat"
#define AUTOTB_TVIN_m_axis_video_V_data_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_m_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_data_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_keep_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_m_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_keep_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_strb_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_m_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_strb_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_user_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_m_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_user_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_user_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_last_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_m_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_last_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_last_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_id_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_m_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_id_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_id_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_dest_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvin_m_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_dest_V "../tv/cdatafile/c.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_data_V "../tv/stream_size/stream_size_out_m_axis_video_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_data_V "../tv/stream_size/stream_egress_status_m_axis_video_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_keep_V "../tv/stream_size/stream_size_out_m_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_strb_V "../tv/stream_size/stream_size_out_m_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_user_V "../tv/stream_size/stream_size_out_m_axis_video_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_user_V "../tv/stream_size/stream_egress_status_m_axis_video_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_last_V "../tv/stream_size/stream_size_out_m_axis_video_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_last_V "../tv/stream_size/stream_egress_status_m_axis_video_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_id_V "../tv/stream_size/stream_size_out_m_axis_video_V_id_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_id_V "../tv/stream_size/stream_egress_status_m_axis_video_V_id_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_dest_V "../tv/stream_size/stream_size_out_m_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_dest_V "../tv/stream_size/stream_egress_status_m_axis_video_V_dest_V.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_video_V_data_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_keep_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_strb_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_user_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_last_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_id_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_dest_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_data_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_keep_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_strb_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_user_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_last_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_id_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_dest_V "../tv/rtldatafile/rtl.bd_85a6_csc_0_v_csc.autotvout_m_axis_video_V_dest_V.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  template<size_t n>
  void move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    while (!f->empty()) {
      t->write(f->read());
    }
  }

  template<size_t n>
  void task_move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    std::thread(
      [=] () { while (true) { t->write(f->read()); } }
    ).detach();
  }

  template<typename A, typename K, typename S, typename U, typename L, typename I, typename E>
  struct MoveAXIS
  {
    struct ST { A data; K keep; S strb; U user; L last; I id; E dest; };

    static void toSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      ((hls::stream<ST>*)axis)->read(st);
      ((hls::stream<A>*)data)->write(st.data);
      ((hls::stream<K>*)keep)->write(st.keep);
      ((hls::stream<S>*)strb)->write(st.strb);
      ((hls::stream<U>*)user)->write(st.user);
      ((hls::stream<L>*)last)->write(st.last);
      ((hls::stream<I>*)id)->write(st.id);
      ((hls::stream<E>*)dest)->write(st.dest);
    }

    static void fromSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      ((hls::stream<A>*)data)->read(st.data);
      ((hls::stream<K>*)keep)->read(st.keep);
      ((hls::stream<S>*)strb)->read(st.strb);
      ((hls::stream<U>*)user)->read(st.user);
      ((hls::stream<L>*)last)->read(st.last);
      ((hls::stream<I>*)id)->read(st.id);
      ((hls::stream<E>*)dest)->read(st.dest);
      ((hls::stream<ST>*)axis)->write(st);
    }
  };

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                  void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    while (!((hls::stream<typename M::ST>*)axis)->empty()) {
      M::toSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                       void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    std::thread(
      [=] () { while (true) M::toSC(data, keep, strb, user, last, id, dest, axis); }
    ).detach();
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                    void* id, void* dest)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    while (!((hls::stream<ap_uint<sdata>>*)data)->empty()) {
      M::fromSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                         void* id, void* dest)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    std::thread(
      [=] () { while (true) M::fromSC(data, keep, strb, user, last, id, dest, axis); }
    ).detach();
  }
}

namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      size_t depth = 0;
      for (size_t n : nbytes) {
        depth += divide_ceil(n, asize);
      }
      return depth;
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = divide_ceil(nbytes[0], asize);
      } else {
        tcl.set(name[0], depth());
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct A2Stream {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }
#endif
  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for MAXI interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.nbytes[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
    }
    writer->end();
  }

  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void v_csc_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_v_csc_hw(void* __xlx_apatb_param_s_axis_video_V_data_V, void* __xlx_apatb_param_s_axis_video_V_keep_V, void* __xlx_apatb_param_s_axis_video_V_strb_V, void* __xlx_apatb_param_s_axis_video_V_user_V, void* __xlx_apatb_param_s_axis_video_V_last_V, void* __xlx_apatb_param_s_axis_video_V_id_V, void* __xlx_apatb_param_s_axis_video_V_dest_V, void* __xlx_apatb_param_InVideoFormat, void* __xlx_apatb_param_OutVideoFormat, void* __xlx_apatb_param_width, void* __xlx_apatb_param_height, void* __xlx_apatb_param_ColStart, void* __xlx_apatb_param_ColEnd, void* __xlx_apatb_param_RowStart, void* __xlx_apatb_param_RowEnd, void* __xlx_apatb_param_K11, void* __xlx_apatb_param_K12, void* __xlx_apatb_param_K13, void* __xlx_apatb_param_K21, void* __xlx_apatb_param_K22, void* __xlx_apatb_param_K23, void* __xlx_apatb_param_K31, void* __xlx_apatb_param_K32, void* __xlx_apatb_param_K33, void* __xlx_apatb_param_ROffset, void* __xlx_apatb_param_GOffset, void* __xlx_apatb_param_BOffset, void* __xlx_apatb_param_ClampMin, void* __xlx_apatb_param_ClipMax, void* __xlx_apatb_param_K11_2, void* __xlx_apatb_param_K12_2, void* __xlx_apatb_param_K13_2, void* __xlx_apatb_param_K21_2, void* __xlx_apatb_param_K22_2, void* __xlx_apatb_param_K23_2, void* __xlx_apatb_param_K31_2, void* __xlx_apatb_param_K32_2, void* __xlx_apatb_param_K33_2, void* __xlx_apatb_param_ROffset_2, void* __xlx_apatb_param_GOffset_2, void* __xlx_apatb_param_BOffset_2, void* __xlx_apatb_param_ClampMin_2, void* __xlx_apatb_param_ClipMax_2, void* __xlx_apatb_param_m_axis_video_V_data_V, void* __xlx_apatb_param_m_axis_video_V_keep_V, void* __xlx_apatb_param_m_axis_video_V_strb_V, void* __xlx_apatb_param_m_axis_video_V_user_V, void* __xlx_apatb_param_m_axis_video_V_last_V, void* __xlx_apatb_param_m_axis_video_V_id_V, void* __xlx_apatb_param_m_axis_video_V_dest_V)
{
  static hls::sim::Stream<hls::sim::Byte<4>> port0 {
    .width = 24,
    .name = "s_axis_video_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V),
#endif
  };
  port0.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_s_axis_video_V_data_V;
  port0.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port1 {
    .width = 3,
    .name = "s_axis_video_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V),
#endif
  };
  port1.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_keep_V;
  port1.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port2 {
    .width = 3,
    .name = "s_axis_video_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V),
#endif
  };
  port2.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_strb_V;
  port2.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port3 {
    .width = 1,
    .name = "s_axis_video_V_user_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_user_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V),
#endif
  };
  port3.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_user_V;
  port3.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port4 {
    .width = 1,
    .name = "s_axis_video_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V),
#endif
  };
  port4.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_last_V;
  port4.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port5 {
    .width = 1,
    .name = "s_axis_video_V_id_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_id_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V),
#endif
  };
  port5.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_id_V;
  port5.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port6 {
    .width = 1,
    .name = "s_axis_video_V_dest_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_dest_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V),
#endif
  };
  port6.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_dest_V;
  port6.hasWrite = false;

  static hls::sim::Register port7 {
    .name = "InVideoFormat",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_InVideoFormat),
#endif
  };
  port7.param = __xlx_apatb_param_InVideoFormat;

  static hls::sim::Register port8 {
    .name = "OutVideoFormat",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_OutVideoFormat),
#endif
  };
  port8.param = __xlx_apatb_param_OutVideoFormat;

  static hls::sim::Register port9 {
    .name = "width",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_width),
#endif
  };
  port9.param = __xlx_apatb_param_width;

  static hls::sim::Register port10 {
    .name = "height",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_height),
#endif
  };
  port10.param = __xlx_apatb_param_height;

  static hls::sim::Register port11 {
    .name = "ColStart",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ColStart),
#endif
  };
  port11.param = __xlx_apatb_param_ColStart;

  static hls::sim::Register port12 {
    .name = "ColEnd",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ColEnd),
#endif
  };
  port12.param = __xlx_apatb_param_ColEnd;

  static hls::sim::Register port13 {
    .name = "RowStart",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_RowStart),
#endif
  };
  port13.param = __xlx_apatb_param_RowStart;

  static hls::sim::Register port14 {
    .name = "RowEnd",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_RowEnd),
#endif
  };
  port14.param = __xlx_apatb_param_RowEnd;

  static hls::sim::Register port15 {
    .name = "K11",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K11),
#endif
  };
  port15.param = __xlx_apatb_param_K11;

  static hls::sim::Register port16 {
    .name = "K12",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K12),
#endif
  };
  port16.param = __xlx_apatb_param_K12;

  static hls::sim::Register port17 {
    .name = "K13",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K13),
#endif
  };
  port17.param = __xlx_apatb_param_K13;

  static hls::sim::Register port18 {
    .name = "K21",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K21),
#endif
  };
  port18.param = __xlx_apatb_param_K21;

  static hls::sim::Register port19 {
    .name = "K22",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K22),
#endif
  };
  port19.param = __xlx_apatb_param_K22;

  static hls::sim::Register port20 {
    .name = "K23",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K23),
#endif
  };
  port20.param = __xlx_apatb_param_K23;

  static hls::sim::Register port21 {
    .name = "K31",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K31),
#endif
  };
  port21.param = __xlx_apatb_param_K31;

  static hls::sim::Register port22 {
    .name = "K32",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K32),
#endif
  };
  port22.param = __xlx_apatb_param_K32;

  static hls::sim::Register port23 {
    .name = "K33",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K33),
#endif
  };
  port23.param = __xlx_apatb_param_K33;

  static hls::sim::Register port24 {
    .name = "ROffset",
    .width = 10,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ROffset),
#endif
  };
  port24.param = __xlx_apatb_param_ROffset;

  static hls::sim::Register port25 {
    .name = "GOffset",
    .width = 10,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_GOffset),
#endif
  };
  port25.param = __xlx_apatb_param_GOffset;

  static hls::sim::Register port26 {
    .name = "BOffset",
    .width = 10,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_BOffset),
#endif
  };
  port26.param = __xlx_apatb_param_BOffset;

  static hls::sim::Register port27 {
    .name = "ClampMin",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ClampMin),
#endif
  };
  port27.param = __xlx_apatb_param_ClampMin;

  static hls::sim::Register port28 {
    .name = "ClipMax",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ClipMax),
#endif
  };
  port28.param = __xlx_apatb_param_ClipMax;

  static hls::sim::Register port29 {
    .name = "K11_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K11_2),
#endif
  };
  port29.param = __xlx_apatb_param_K11_2;

  static hls::sim::Register port30 {
    .name = "K12_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K12_2),
#endif
  };
  port30.param = __xlx_apatb_param_K12_2;

  static hls::sim::Register port31 {
    .name = "K13_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K13_2),
#endif
  };
  port31.param = __xlx_apatb_param_K13_2;

  static hls::sim::Register port32 {
    .name = "K21_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K21_2),
#endif
  };
  port32.param = __xlx_apatb_param_K21_2;

  static hls::sim::Register port33 {
    .name = "K22_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K22_2),
#endif
  };
  port33.param = __xlx_apatb_param_K22_2;

  static hls::sim::Register port34 {
    .name = "K23_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K23_2),
#endif
  };
  port34.param = __xlx_apatb_param_K23_2;

  static hls::sim::Register port35 {
    .name = "K31_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K31_2),
#endif
  };
  port35.param = __xlx_apatb_param_K31_2;

  static hls::sim::Register port36 {
    .name = "K32_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K32_2),
#endif
  };
  port36.param = __xlx_apatb_param_K32_2;

  static hls::sim::Register port37 {
    .name = "K33_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K33_2),
#endif
  };
  port37.param = __xlx_apatb_param_K33_2;

  static hls::sim::Register port38 {
    .name = "ROffset_2",
    .width = 10,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ROffset_2),
#endif
  };
  port38.param = __xlx_apatb_param_ROffset_2;

  static hls::sim::Register port39 {
    .name = "GOffset_2",
    .width = 10,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_GOffset_2),
#endif
  };
  port39.param = __xlx_apatb_param_GOffset_2;

  static hls::sim::Register port40 {
    .name = "BOffset_2",
    .width = 10,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_BOffset_2),
#endif
  };
  port40.param = __xlx_apatb_param_BOffset_2;

  static hls::sim::Register port41 {
    .name = "ClampMin_2",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ClampMin_2),
#endif
  };
  port41.param = __xlx_apatb_param_ClampMin_2;

  static hls::sim::Register port42 {
    .name = "ClipMax_2",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ClipMax_2),
#endif
  };
  port42.param = __xlx_apatb_param_ClipMax_2;

  static hls::sim::Stream<hls::sim::Byte<4>> port43 {
    .width = 24,
    .name = "m_axis_video_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_data_V),
#endif
  };
  port43.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_m_axis_video_V_data_V;
  port43.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port44 {
    .width = 3,
    .name = "m_axis_video_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_keep_V),
#endif
  };
  port44.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_keep_V;
  port44.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port45 {
    .width = 3,
    .name = "m_axis_video_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_strb_V),
#endif
  };
  port45.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_strb_V;
  port45.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port46 {
    .width = 1,
    .name = "m_axis_video_V_user_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_user_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_user_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_user_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_user_V),
#endif
  };
  port46.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_user_V;
  port46.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port47 {
    .width = 1,
    .name = "m_axis_video_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_last_V),
#endif
  };
  port47.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_last_V;
  port47.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port48 {
    .width = 1,
    .name = "m_axis_video_V_id_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_id_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_id_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_id_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_id_V),
#endif
  };
  port48.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_id_V;
  port48.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port49 {
    .width = 1,
    .name = "m_axis_video_V_dest_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_dest_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_dest_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_dest_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_dest_V),
#endif
  };
  port49.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_dest_V;
  port49.hasWrite = true;

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port0);
    check(port1);
    check(port2);
    check(port3);
    check(port4);
    check(port5);
    check(port6);
    check(port43);
    check(port44);
    check(port45);
    check(port46);
    check(port47);
    check(port48);
    check(port49);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port0.markSize();
    port1.markSize();
    port2.markSize();
    port3.markSize();
    port4.markSize();
    port5.markSize();
    port6.markSize();
    port0.buffer();
    port1.buffer();
    port2.buffer();
    port3.buffer();
    port4.buffer();
    port5.buffer();
    port6.buffer();
    port43.markSize();
    port44.markSize();
    port45.markSize();
    port46.markSize();
    port47.markSize();
    port48.markSize();
    port49.markSize();
    CodeState = CALL_C_DUT;
    v_csc_hw_stub_wrapper(__xlx_apatb_param_s_axis_video_V_data_V, __xlx_apatb_param_s_axis_video_V_keep_V, __xlx_apatb_param_s_axis_video_V_strb_V, __xlx_apatb_param_s_axis_video_V_user_V, __xlx_apatb_param_s_axis_video_V_last_V, __xlx_apatb_param_s_axis_video_V_id_V, __xlx_apatb_param_s_axis_video_V_dest_V, __xlx_apatb_param_InVideoFormat, __xlx_apatb_param_OutVideoFormat, __xlx_apatb_param_width, __xlx_apatb_param_height, __xlx_apatb_param_ColStart, __xlx_apatb_param_ColEnd, __xlx_apatb_param_RowStart, __xlx_apatb_param_RowEnd, __xlx_apatb_param_K11, __xlx_apatb_param_K12, __xlx_apatb_param_K13, __xlx_apatb_param_K21, __xlx_apatb_param_K22, __xlx_apatb_param_K23, __xlx_apatb_param_K31, __xlx_apatb_param_K32, __xlx_apatb_param_K33, __xlx_apatb_param_ROffset, __xlx_apatb_param_GOffset, __xlx_apatb_param_BOffset, __xlx_apatb_param_ClampMin, __xlx_apatb_param_ClipMax, __xlx_apatb_param_K11_2, __xlx_apatb_param_K12_2, __xlx_apatb_param_K13_2, __xlx_apatb_param_K21_2, __xlx_apatb_param_K22_2, __xlx_apatb_param_K23_2, __xlx_apatb_param_K31_2, __xlx_apatb_param_K32_2, __xlx_apatb_param_K33_2, __xlx_apatb_param_ROffset_2, __xlx_apatb_param_GOffset_2, __xlx_apatb_param_BOffset_2, __xlx_apatb_param_ClampMin_2, __xlx_apatb_param_ClipMax_2, __xlx_apatb_param_m_axis_video_V_data_V, __xlx_apatb_param_m_axis_video_V_keep_V, __xlx_apatb_param_m_axis_video_V_strb_V, __xlx_apatb_param_m_axis_video_V_user_V, __xlx_apatb_param_m_axis_video_V_last_V, __xlx_apatb_param_m_axis_video_V_id_V, __xlx_apatb_param_m_axis_video_V_dest_V);
    port43.buffer();
    port44.buffer();
    port45.buffer();
    port46.buffer();
    port47.buffer();
    port48.buffer();
    port49.buffer();
    dump(port0, tcl.AESL_transaction);
    dump(port1, tcl.AESL_transaction);
    dump(port2, tcl.AESL_transaction);
    dump(port3, tcl.AESL_transaction);
    dump(port4, tcl.AESL_transaction);
    dump(port5, tcl.AESL_transaction);
    dump(port6, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    CodeState = DUMP_OUTPUTS;
    dump(port43, tcl.AESL_transaction);
    dump(port44, tcl.AESL_transaction);
    dump(port45, tcl.AESL_transaction);
    dump(port46, tcl.AESL_transaction);
    dump(port47, tcl.AESL_transaction);
    dump(port48, tcl.AESL_transaction);
    dump(port49, tcl.AESL_transaction);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}