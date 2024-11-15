; ModuleID = 'C:/Users/shen/Downloads/vitis_2/dp_live/dp_live.runs/mpsoc_preset_v_tpg_0_0_synth_1/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>" = type { %"struct.hls::axis<ap_uint<24>, 1, 1, 1>" }
%"struct.hls::axis<ap_uint<24>, 1, 1, 1>" = type { %"struct.ap_uint<24>", %"struct.ap_uint<3>", %"struct.ap_uint<3>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<24>" = type { %"struct.ap_int_base<24, false>" }
%"struct.ap_int_base<24, false>" = type { %"struct.ssdm_int<24, false>" }
%"struct.ssdm_int<24, false>" = type { i24 }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_v_tpg_ir(i16* noalias nocapture nonnull readonly dereferenceable(2) %height, i16* noalias nocapture nonnull readonly dereferenceable(2) %width, i16* noalias nocapture nonnull readonly dereferenceable(2) %field_id, i1* noalias nocapture nonnull readonly dereferenceable(1) %fid_in, i8* noalias nocapture nonnull readonly dereferenceable(1) %bckgndId, i8* noalias nocapture nonnull readonly dereferenceable(1) %ovrlayId, i8* noalias nocapture nonnull readonly dereferenceable(1) %maskId, i8* noalias nocapture nonnull readonly dereferenceable(1) %motionSpeed, i8* noalias nocapture nonnull readonly dereferenceable(1) %colorFormat, i16* noalias nocapture nonnull readonly dereferenceable(2) %crossHairX, i16* noalias nocapture nonnull readonly dereferenceable(2) %crossHairY, i16* noalias nocapture nonnull readonly dereferenceable(2) %ZplateHorContStart, i16* noalias nocapture nonnull readonly dereferenceable(2) %ZplateHorContDelta, i16* noalias nocapture nonnull readonly dereferenceable(2) %ZplateVerContStart, i16* noalias nocapture nonnull readonly dereferenceable(2) %ZplateVerContDelta, i16* noalias nocapture nonnull readonly dereferenceable(2) %boxSize, i16* noalias nocapture nonnull readonly dereferenceable(2) %boxColorR, i16* noalias nocapture nonnull readonly dereferenceable(2) %boxColorG, i16* noalias nocapture nonnull readonly dereferenceable(2) %boxColorB, i8* noalias nocapture nonnull readonly dereferenceable(1) %dpDynamicRange, i8* noalias nocapture nonnull readonly dereferenceable(1) %dpYUVCoef, i16* noalias nocapture nonnull readonly dereferenceable(2) %bck_motion_en, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(12) %m_axis_video, i1* noalias nocapture nonnull dereferenceable(1) %fid) local_unnamed_addr #0 {
entry:
  %height_copy = alloca i16, align 512
  %width_copy = alloca i16, align 512
  %field_id_copy = alloca i16, align 512
  %fid_in_copy = alloca i1, align 512
  %bckgndId_copy = alloca i8, align 512
  %ovrlayId_copy = alloca i8, align 512
  %maskId_copy = alloca i8, align 512
  %motionSpeed_copy = alloca i8, align 512
  %colorFormat_copy = alloca i8, align 512
  %crossHairX_copy = alloca i16, align 512
  %crossHairY_copy = alloca i16, align 512
  %ZplateHorContStart_copy = alloca i16, align 512
  %ZplateHorContDelta_copy = alloca i16, align 512
  %ZplateVerContStart_copy = alloca i16, align 512
  %ZplateVerContDelta_copy = alloca i16, align 512
  %boxSize_copy = alloca i16, align 512
  %boxColorR_copy = alloca i16, align 512
  %boxColorG_copy = alloca i16, align 512
  %boxColorB_copy = alloca i16, align 512
  %dpDynamicRange_copy = alloca i8, align 512
  %dpYUVCoef_copy = alloca i8, align 512
  %bck_motion_en_copy = alloca i16, align 512
  %m_axis_video_copy.data = alloca i24
  %m_axis_video_copy.keep = alloca i3
  %m_axis_video_copy.strb = alloca i3
  %m_axis_video_copy.user = alloca i1
  %m_axis_video_copy.last = alloca i1
  %m_axis_video_copy.id = alloca i1
  %m_axis_video_copy.dest = alloca i1
  %fid_copy = alloca i1, align 512
  call fastcc void @copy_in(i16* nonnull %height, i16* nonnull align 512 %height_copy, i16* nonnull %width, i16* nonnull align 512 %width_copy, i16* nonnull %field_id, i16* nonnull align 512 %field_id_copy, i1* nonnull %fid_in, i1* nonnull align 512 %fid_in_copy, i8* nonnull %bckgndId, i8* nonnull align 512 %bckgndId_copy, i8* nonnull %ovrlayId, i8* nonnull align 512 %ovrlayId_copy, i8* nonnull %maskId, i8* nonnull align 512 %maskId_copy, i8* nonnull %motionSpeed, i8* nonnull align 512 %motionSpeed_copy, i8* nonnull %colorFormat, i8* nonnull align 512 %colorFormat_copy, i16* nonnull %crossHairX, i16* nonnull align 512 %crossHairX_copy, i16* nonnull %crossHairY, i16* nonnull align 512 %crossHairY_copy, i16* nonnull %ZplateHorContStart, i16* nonnull align 512 %ZplateHorContStart_copy, i16* nonnull %ZplateHorContDelta, i16* nonnull align 512 %ZplateHorContDelta_copy, i16* nonnull %ZplateVerContStart, i16* nonnull align 512 %ZplateVerContStart_copy, i16* nonnull %ZplateVerContDelta, i16* nonnull align 512 %ZplateVerContDelta_copy, i16* nonnull %boxSize, i16* nonnull align 512 %boxSize_copy, i16* nonnull %boxColorR, i16* nonnull align 512 %boxColorR_copy, i16* nonnull %boxColorG, i16* nonnull align 512 %boxColorG_copy, i16* nonnull %boxColorB, i16* nonnull align 512 %boxColorB_copy, i8* nonnull %dpDynamicRange, i8* nonnull align 512 %dpDynamicRange_copy, i8* nonnull %dpYUVCoef, i8* nonnull align 512 %dpYUVCoef_copy, i16* nonnull %bck_motion_en, i16* nonnull align 512 %bck_motion_en_copy, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull %m_axis_video, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest, i1* nonnull %fid, i1* nonnull align 512 %fid_copy)
  call void @apatb_v_tpg_hw(i16* %height_copy, i16* %width_copy, i16* %field_id_copy, i1* %fid_in_copy, i8* %bckgndId_copy, i8* %ovrlayId_copy, i8* %maskId_copy, i8* %motionSpeed_copy, i8* %colorFormat_copy, i16* %crossHairX_copy, i16* %crossHairY_copy, i16* %ZplateHorContStart_copy, i16* %ZplateHorContDelta_copy, i16* %ZplateVerContStart_copy, i16* %ZplateVerContDelta_copy, i16* %boxSize_copy, i16* %boxColorR_copy, i16* %boxColorG_copy, i16* %boxColorB_copy, i8* %dpDynamicRange_copy, i8* %dpYUVCoef_copy, i16* %bck_motion_en_copy, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest, i1* %fid_copy)
  call void @copy_back(i16* %height, i16* %height_copy, i16* %width, i16* %width_copy, i16* %field_id, i16* %field_id_copy, i1* %fid_in, i1* %fid_in_copy, i8* %bckgndId, i8* %bckgndId_copy, i8* %ovrlayId, i8* %ovrlayId_copy, i8* %maskId, i8* %maskId_copy, i8* %motionSpeed, i8* %motionSpeed_copy, i8* %colorFormat, i8* %colorFormat_copy, i16* %crossHairX, i16* %crossHairX_copy, i16* %crossHairY, i16* %crossHairY_copy, i16* %ZplateHorContStart, i16* %ZplateHorContStart_copy, i16* %ZplateHorContDelta, i16* %ZplateHorContDelta_copy, i16* %ZplateVerContStart, i16* %ZplateVerContStart_copy, i16* %ZplateVerContDelta, i16* %ZplateVerContDelta_copy, i16* %boxSize, i16* %boxSize_copy, i16* %boxColorR, i16* %boxColorR_copy, i16* %boxColorG, i16* %boxColorG_copy, i16* %boxColorB, i16* %boxColorB_copy, i8* %dpDynamicRange, i8* %dpDynamicRange_copy, i8* %dpYUVCoef, i8* %dpYUVCoef_copy, i16* %bck_motion_en, i16* %bck_motion_en_copy, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %m_axis_video, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest, i1* %fid, i1* %fid_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i1* noalias readonly, i1* noalias align 512, i8* noalias readonly, i8* noalias align 512, i8* noalias readonly, i8* noalias align 512, i8* noalias readonly, i8* noalias align 512, i8* noalias readonly, i8* noalias align 512, i8* noalias readonly, i8* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i16* noalias readonly, i16* noalias align 512, i8* noalias readonly, i8* noalias align 512, i8* noalias readonly, i8* noalias align 512, i16* noalias readonly, i16* noalias align 512, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias, i24* noalias "unpacked"="45.0" %_V_data_V, i3* noalias "unpacked"="45.1" %_V_keep_V, i3* noalias "unpacked"="45.2" %_V_strb_V, i1* noalias "unpacked"="45.3" %_V_user_V, i1* noalias "unpacked"="45.4" %_V_last_V, i1* noalias "unpacked"="45.5" %_V_id_V, i1* noalias "unpacked"="45.6" %_V_dest_V, i1* noalias readonly, i1* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %1, i16* %0)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %3, i16* %2)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %5, i16* %4)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %7, i1* %6)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %9, i8* %8)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %11, i8* %10)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %13, i8* %12)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %15, i8* %14)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %17, i8* %16)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %19, i16* %18)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %21, i16* %20)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %23, i16* %22)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %25, i16* %24)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %27, i16* %26)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %29, i16* %28)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %31, i16* %30)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %33, i16* %32)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %35, i16* %34)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %37, i16* %36)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %39, i8* %38)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %41, i8* %40)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %43, i16* %42)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %44)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %46, i1* %45)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i16(i16* noalias align 512 %dst, i16* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i16* %dst, null
  %1 = icmp eq i16* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i16, i16* %src, align 2
  store i16 %3, i16* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512 %dst, i1* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i1* %dst, null
  %1 = icmp eq i1* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = bitcast i1* %src to i8*
  %4 = load i8, i8* %3
  %5 = trunc i8 %4 to i1
  store i1 %5, i1* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512 %dst, i8* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i8* %dst, null
  %1 = icmp eq i8* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i8, i8* %src, align 1
  store i8 %3, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(i24* noalias "unpacked"="0.0" %dst_V_data_V, i3* noalias "unpacked"="0.1" %dst_V_keep_V, i3* noalias "unpacked"="0.2" %dst_V_strb_V, i1* noalias "unpacked"="0.3" %dst_V_user_V, i1* noalias "unpacked"="0.4" %dst_V_last_V, i1* noalias "unpacked"="0.5" %dst_V_id_V, i1* noalias "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %src, null
  %1 = or i1 false, %0
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(i24* %dst_V_data_V, i3* %dst_V_keep_V, i3* %dst_V_strb_V, i1* %dst_V_user_V, i1* %dst_V_last_V, i1* %dst_V_id_V, i1* %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"(i24* noalias nocapture "unpacked"="0.0" %_V_data_V, i3* noalias nocapture "unpacked"="0.1" %_V_keep_V, i3* noalias nocapture "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "unpacked"="0.4" %_V_last_V, i1* noalias nocapture "unpacked"="0.5" %_V_id_V, i1* noalias nocapture "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<24>"* %8 to i24*
  %10 = bitcast i24* %9 to i8*
  %11 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<3>"* %12 to i3*
  %14 = bitcast i3* %13 to i8*
  %15 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<3>"* %16 to i3*
  %18 = bitcast i3* %17 to i8*
  %19 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  %30 = bitcast i1* %29 to i8*
  %31 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %30, i8* %31)
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  %34 = bitcast i1* %33 to i8*
  %35 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %34, i8* %35)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias, i24* noalias "unpacked"="45.0" %_V_data_V, i3* noalias "unpacked"="45.1" %_V_keep_V, i3* noalias "unpacked"="45.2" %_V_strb_V, i1* noalias "unpacked"="45.3" %_V_user_V, i1* noalias "unpacked"="45.4" %_V_last_V, i1* noalias "unpacked"="45.5" %_V_id_V, i1* noalias "unpacked"="45.6" %_V_dest_V, i1* noalias, i1* noalias readonly align 512) unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0i16(i16* %0, i16* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %2, i16* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %4, i16* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %8, i8* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %10, i8* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %12, i8* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %14, i8* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %16, i8* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %18, i16* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %20, i16* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %22, i16* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %24, i16* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %26, i16* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %28, i16* align 512 %29)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %30, i16* align 512 %31)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %32, i16* align 512 %33)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %34, i16* align 512 %35)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %36, i16* align 512 %37)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %38, i8* align 512 %39)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %40, i8* align 512 %41)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %42, i16* align 512 %43)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.78"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %44, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %45, i1* align 512 %46)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.78"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias align 512 %dst, i24* noalias "unpacked"="1.0" %src_V_data_V, i3* noalias "unpacked"="1.1" %src_V_keep_V, i3* noalias "unpacked"="1.2" %src_V_strb_V, i1* noalias "unpacked"="1.3" %src_V_user_V, i1* noalias "unpacked"="1.4" %src_V_last_V, i1* noalias "unpacked"="1.5" %src_V_id_V, i1* noalias "unpacked"="1.6" %src_V_dest_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %dst, null
  %1 = or i1 %0, false
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.81"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* nonnull align 512 %dst, i24* %src_V_data_V, i3* %src_V_keep_V, i3* %src_V_strb_V, i1* %src_V_user_V, i1* %src_V_last_V, i1* %src_V_id_V, i1* %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.81"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias nocapture align 512, i24* noalias nocapture "unpacked"="1.0" %_V_data_V, i3* noalias nocapture "unpacked"="1.1" %_V_keep_V, i3* noalias nocapture "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "unpacked"="1.4" %_V_last_V, i1* noalias nocapture "unpacked"="1.5" %_V_id_V, i1* noalias nocapture "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  %2 = alloca i24
  %3 = alloca i3
  %4 = alloca i3
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i24* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i24* %2 to i8*
  %12 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = load volatile i24, i24* %2
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %15 = bitcast %"struct.ap_uint<24>"* %14 to i24*
  store i24 %13, i24* %15
  %16 = bitcast i3* %4 to i8*
  %17 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i3* %4 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i3
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %22 = bitcast %"struct.ap_uint<3>"* %21 to i3*
  store i3 %20, i3* %22
  %23 = bitcast i3* %3 to i8*
  %24 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i3* %3 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i3
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %29 = bitcast %"struct.ap_uint<3>"* %28 to i3*
  store i3 %27, i3* %29
  %30 = bitcast i1* %8 to i8*
  %31 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %30, i8* %31)
  %32 = bitcast i1* %8 to i8*
  %33 = load i8, i8* %32
  %34 = trunc i8 %33 to i1
  %35 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %36 = bitcast %"struct.ap_uint<1>"* %35 to i1*
  store i1 %34, i1* %36
  %37 = bitcast i1* %7 to i8*
  %38 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %37, i8* %38)
  %39 = bitcast i1* %7 to i8*
  %40 = load i8, i8* %39
  %41 = trunc i8 %40 to i1
  %42 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %43 = bitcast %"struct.ap_uint<1>"* %42 to i1*
  store i1 %41, i1* %43
  %44 = bitcast i1* %6 to i8*
  %45 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %44, i8* %45)
  %46 = bitcast i1* %6 to i8*
  %47 = load i8, i8* %46
  %48 = trunc i8 %47 to i1
  %49 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %50 = bitcast %"struct.ap_uint<1>"* %49 to i1*
  store i1 %48, i1* %50
  %51 = bitcast i1* %5 to i8*
  %52 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %51, i8* %52)
  %53 = bitcast i1* %5 to i8*
  %54 = load i8, i8* %53
  %55 = trunc i8 %54 to i1
  %56 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %57 = bitcast %"struct.ap_uint<1>"* %56 to i1*
  store i1 %55, i1* %57
  %58 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %1 to i8*
  %59 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %58, i8* %59)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_v_tpg_hw(i16*, i16*, i16*, i1*, i8*, i8*, i8*, i8*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i8*, i8*, i16*, i24*, i3*, i3*, i1*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* noalias, i24* noalias "unpacked"="45.0" %_V_data_V, i3* noalias "unpacked"="45.1" %_V_keep_V, i3* noalias "unpacked"="45.2" %_V_strb_V, i1* noalias "unpacked"="45.3" %_V_user_V, i1* noalias "unpacked"="45.4" %_V_last_V, i1* noalias "unpacked"="45.5" %_V_id_V, i1* noalias "unpacked"="45.6" %_V_dest_V, i1* noalias, i1* noalias readonly align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>.78"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %44, i24* %_V_data_V, i3* %_V_keep_V, i3* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %45, i1* align 512 %46)
  ret void
}

define void @v_tpg_hw_stub_wrapper(i16*, i16*, i16*, i1*, i8*, i8*, i8*, i8*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i8*, i8*, i16*, i24*, i3*, i3*, i1*, i1*, i1*, i1*, i1*) #6 {
entry:
  %30 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"
  call void @copy_out(i16* null, i16* %0, i16* null, i16* %1, i16* null, i16* %2, i1* null, i1* %3, i8* null, i8* %4, i8* null, i8* %5, i8* null, i8* %6, i8* null, i8* %7, i8* null, i8* %8, i16* null, i16* %9, i16* null, i16* %10, i16* null, i16* %11, i16* null, i16* %12, i16* null, i16* %13, i16* null, i16* %14, i16* null, i16* %15, i16* null, i16* %16, i16* null, i16* %17, i16* null, i16* %18, i8* null, i8* %19, i8* null, i8* %20, i16* null, i16* %21, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %30, i24* %22, i3* %23, i3* %24, i1* %25, i1* %26, i1* %27, i1* %28, i1* null, i1* %29)
  call void @v_tpg_hw_stub(i16* %0, i16* %1, i16* %2, i1* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i16* %9, i16* %10, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, i16* %17, i16* %18, i8* %19, i8* %20, i16* %21, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %30, i1* %29)
  call void @copy_in(i16* null, i16* %0, i16* null, i16* %1, i16* null, i16* %2, i1* null, i1* %3, i8* null, i8* %4, i8* null, i8* %5, i8* null, i8* %6, i8* null, i8* %7, i8* null, i8* %8, i16* null, i16* %9, i16* null, i16* %10, i16* null, i16* %11, i16* null, i16* %12, i16* null, i16* %13, i16* null, i16* %14, i16* null, i16* %15, i16* null, i16* %16, i16* null, i16* %17, i16* null, i16* %18, i8* null, i8* %19, i8* null, i8* %20, i16* null, i16* %21, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"* %30, i24* %22, i3* %23, i3* %24, i1* %25, i1* %26, i1* %27, i1* %28, i1* null, i1* %29)
  ret void
}

declare void @v_tpg_hw_stub(i16*, i16*, i16*, i1*, i8*, i8*, i8*, i8*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i8*, i8*, i16*, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1>, 0>"*, i1*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
