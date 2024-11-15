# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name pixbuf_y_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_4 \
    op interface \
    ports { pixbuf_y_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name pixbuf_y_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_3 \
    op interface \
    ports { pixbuf_y_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name pixbuf_y_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_2 \
    op interface \
    ports { pixbuf_y_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name pixbuf_y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y \
    op interface \
    ports { pixbuf_y { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name p_0_0_0_0_0536742_lcssa768_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0536742_lcssa768_i \
    op interface \
    ports { p_0_0_0_0_0536742_lcssa768_i { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name loopWidth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_loopWidth \
    op interface \
    ports { loopWidth { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name select_ln685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln685 \
    op interface \
    ports { select_ln685 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name zext_ln720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln720 \
    op interface \
    ports { zext_ln720 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name stream_in_vresampled \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in_vresampled \
    op interface \
    ports { stream_in_vresampled_dout { I 24 vector } stream_in_vresampled_num_data_valid { I 5 vector } stream_in_vresampled_fifo_cap { I 5 vector } stream_in_vresampled_empty_n { I 1 bit } stream_in_vresampled_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name stream_in_hresampled \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in_hresampled \
    op interface \
    ports { stream_in_hresampled_din { O 24 vector } stream_in_hresampled_num_data_valid { I 5 vector } stream_in_hresampled_fifo_cap { I 5 vector } stream_in_hresampled_full_n { I 1 bit } stream_in_hresampled_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name pixbuf_y_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_9_out \
    op interface \
    ports { pixbuf_y_9_out { O 8 vector } pixbuf_y_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name pixbuf_y_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_8_out \
    op interface \
    ports { pixbuf_y_8_out { O 8 vector } pixbuf_y_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name pixbuf_y_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_7_out \
    op interface \
    ports { pixbuf_y_7_out { O 8 vector } pixbuf_y_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name pixbuf_y_6_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_6_out \
    op interface \
    ports { pixbuf_y_6_out_i { I 8 vector } pixbuf_y_6_out_o { O 8 vector } pixbuf_y_6_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name pixbuf_y_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pixbuf_y_5_out \
    op interface \
    ports { pixbuf_y_5_out { O 8 vector } pixbuf_y_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name p_0_1_0_0_0748795_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0748795_i_out \
    op interface \
    ports { p_0_1_0_0_0748795_i_out_i { I 8 vector } p_0_1_0_0_0748795_i_out_o { O 8 vector } p_0_1_0_0_0748795_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_0_1_0_0_0744792_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0744792_i_out \
    op interface \
    ports { p_0_1_0_0_0744792_i_out_i { I 8 vector } p_0_1_0_0_0744792_i_out_o { O 8 vector } p_0_1_0_0_0744792_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out_i { I 8 vector } p_out_o { O 8 vector } p_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_out1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out1 \
    op interface \
    ports { p_out1_i { I 8 vector } p_out1_o { O 8 vector } p_out1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_0_0_0785_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0785_i_out \
    op interface \
    ports { p_0_0_0785_i_out_i { I 8 vector } p_0_0_0785_i_out_o { O 8 vector } p_0_0_0785_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_0_0_0480782_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0480782_i_out \
    op interface \
    ports { p_0_0_0480782_i_out_i { I 8 vector } p_0_0_0480782_i_out_o { O 8 vector } p_0_0_0480782_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_0_1_0_0_0751_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0751_i_out \
    op interface \
    ports { p_0_1_0_0_0751_i_out_i { I 8 vector } p_0_1_0_0_0751_i_out_o { O 8 vector } p_0_1_0_0_0751_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_0_1_0_0_0747_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0747_i_out \
    op interface \
    ports { p_0_1_0_0_0747_i_out_i { I 8 vector } p_0_1_0_0_0747_i_out_o { O 8 vector } p_0_1_0_0_0747_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_0_2_0_0_0741_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0741_i_out \
    op interface \
    ports { p_0_2_0_0_0741_i_out_i { I 8 vector } p_0_2_0_0_0741_i_out_o { O 8 vector } p_0_2_0_0_0741_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_0_1_0_0_0739_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0739_i_out \
    op interface \
    ports { p_0_1_0_0_0739_i_out_i { I 8 vector } p_0_1_0_0_0739_i_out_o { O 8 vector } p_0_1_0_0_0739_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name p_0_0_0_0_0536737_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0536737_i_out \
    op interface \
    ports { p_0_0_0_0_0536737_i_out_i { I 8 vector } p_0_0_0_0_0536737_i_out_o { O 8 vector } p_0_0_0_0_0536737_i_out_o_ap_vld { O 1 bit } } \
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


