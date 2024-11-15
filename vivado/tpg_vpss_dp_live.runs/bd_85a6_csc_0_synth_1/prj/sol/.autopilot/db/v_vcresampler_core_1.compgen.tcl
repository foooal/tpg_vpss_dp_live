# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_85a6_csc_0_v_vcresampler_core_1_linebuf_y_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_85a6_csc_0_v_vcresampler_core_1_linebuf_y_1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 112 \
    name stream_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in \
    op interface \
    ports { stream_in_dout { I 24 vector } stream_in_num_data_valid { I 5 vector } stream_in_fifo_cap { I 5 vector } stream_in_empty_n { I 1 bit } stream_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name HwReg_height \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_height \
    op interface \
    ports { HwReg_height_dout { I 12 vector } HwReg_height_num_data_valid { I 2 vector } HwReg_height_fifo_cap { I 2 vector } HwReg_height_empty_n { I 1 bit } HwReg_height_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name HwReg_width \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_width \
    op interface \
    ports { HwReg_width_dout { I 12 vector } HwReg_width_num_data_valid { I 2 vector } HwReg_width_fifo_cap { I 2 vector } HwReg_width_empty_n { I 1 bit } HwReg_width_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
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
    id 116 \
    name stream_in_vresampled \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_in_vresampled \
    op interface \
    ports { stream_in_vresampled_din { O 24 vector } stream_in_vresampled_num_data_valid { I 5 vector } stream_in_vresampled_fifo_cap { I 5 vector } stream_in_vresampled_full_n { I 1 bit } stream_in_vresampled_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name HwReg_width_c22 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_width_c22 \
    op interface \
    ports { HwReg_width_c22_din { O 12 vector } HwReg_width_c22_num_data_valid { I 2 vector } HwReg_width_c22_fifo_cap { I 2 vector } HwReg_width_c22_full_n { I 1 bit } HwReg_width_c22_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name HwReg_height_c28 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_height_c28 \
    op interface \
    ports { HwReg_height_c28_din { O 12 vector } HwReg_height_c28_num_data_valid { I 2 vector } HwReg_height_c28_fifo_cap { I 2 vector } HwReg_height_c28_full_n { I 1 bit } HwReg_height_c28_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


