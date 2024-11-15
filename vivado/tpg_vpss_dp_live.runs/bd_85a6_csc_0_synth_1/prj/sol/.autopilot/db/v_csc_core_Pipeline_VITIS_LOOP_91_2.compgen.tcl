# This script segment is generated automatically by AutoPilot

set name bd_85a6_csc_0_mul_16s_8ns_24_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 159
set name bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 0
set in1_width 16
set in1_signed 1
set in2_width 22
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 25
set arg_lists {i0 {8 0 +} i1 {16 1 +} m {24 1 +} i2 {22 1 +} p {25 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name add_ln89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln89 \
    op interface \
    ports { add_ln89 { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name stream_in_hresampled \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in_hresampled \
    op interface \
    ports { stream_in_hresampled_dout { I 24 vector } stream_in_hresampled_num_data_valid { I 5 vector } stream_in_hresampled_fifo_cap { I 5 vector } stream_in_hresampled_empty_n { I 1 bit } stream_in_hresampled_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name ColStart_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ColStart_read \
    op interface \
    ports { ColStart_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name ColEnd_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ColEnd_read \
    op interface \
    ports { ColEnd_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name cmp20_not \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp20_not \
    op interface \
    ports { cmp20_not { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name cmp17_not \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp17_not \
    op interface \
    ports { cmp17_not { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name K11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K11_read \
    op interface \
    ports { K11_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name K11_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K11_2_read \
    op interface \
    ports { K11_2_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name K12_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K12_read \
    op interface \
    ports { K12_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name K12_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K12_2_read \
    op interface \
    ports { K12_2_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name K13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K13_read \
    op interface \
    ports { K13_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name K13_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K13_2_read \
    op interface \
    ports { K13_2_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name K21_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K21_read \
    op interface \
    ports { K21_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name K21_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K21_2_read \
    op interface \
    ports { K21_2_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name K22_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K22_read \
    op interface \
    ports { K22_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name K22_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K22_2_read \
    op interface \
    ports { K22_2_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name K23_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K23_read \
    op interface \
    ports { K23_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name K23_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K23_2_read \
    op interface \
    ports { K23_2_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name K31_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K31_read \
    op interface \
    ports { K31_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name K31_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K31_2_read \
    op interface \
    ports { K31_2_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name K32_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K32_read \
    op interface \
    ports { K32_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name K32_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K32_2_read \
    op interface \
    ports { K32_2_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name K33_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K33_read \
    op interface \
    ports { K33_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name K33_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K33_2_read \
    op interface \
    ports { K33_2_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name ClipMax_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ClipMax_read \
    op interface \
    ports { ClipMax_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name ClipMax_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ClipMax_2_read \
    op interface \
    ports { ClipMax_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name ClampMin_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ClampMin_read \
    op interface \
    ports { ClampMin_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name ClampMin_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ClampMin_2_read \
    op interface \
    ports { ClampMin_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name BOffset_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_BOffset_read \
    op interface \
    ports { BOffset_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name BOffset_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_BOffset_2_read \
    op interface \
    ports { BOffset_2_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name GOffset_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_GOffset_read \
    op interface \
    ports { GOffset_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name GOffset_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_GOffset_2_read \
    op interface \
    ports { GOffset_2_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name ROffset_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ROffset_read \
    op interface \
    ports { ROffset_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name ROffset_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ROffset_2_read \
    op interface \
    ports { ROffset_2_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name stream_csc \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_csc \
    op interface \
    ports { stream_csc_din { O 24 vector } stream_csc_num_data_valid { I 5 vector } stream_csc_fifo_cap { I 5 vector } stream_csc_full_n { I 1 bit } stream_csc_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName bd_85a6_csc_0_flow_control_loop_pipe_sequential_init_U
set CompName bd_85a6_csc_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix bd_85a6_csc_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


