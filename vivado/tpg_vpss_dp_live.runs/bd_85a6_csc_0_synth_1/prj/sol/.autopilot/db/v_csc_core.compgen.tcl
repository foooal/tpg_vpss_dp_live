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
    id 199 \
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
    id 200 \
    name height \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_height \
    op interface \
    ports { height_dout { I 12 vector } height_num_data_valid { I 2 vector } height_fifo_cap { I 2 vector } height_empty_n { I 1 bit } height_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name width \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width \
    op interface \
    ports { width_dout { I 12 vector } width_num_data_valid { I 2 vector } width_fifo_cap { I 2 vector } width_empty_n { I 1 bit } width_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
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
    id 203 \
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
    id 204 \
    name RowStart_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_RowStart_read \
    op interface \
    ports { RowStart_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name RowEnd_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_RowEnd_read \
    op interface \
    ports { RowEnd_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
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
    id 207 \
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
    id 208 \
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
    id 209 \
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
    id 210 \
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
    id 211 \
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
    id 212 \
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
    id 213 \
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
    id 214 \
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
    id 215 \
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
    id 216 \
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
    id 217 \
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
    id 218 \
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
    id 219 \
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
    id 220 \
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
    id 221 \
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
    id 222 \
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
    id 223 \
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
    id 224 \
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
    id 225 \
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
    id 226 \
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
    id 227 \
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
    id 228 \
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
    id 229 \
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
    id 230 \
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
    id 231 \
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
    id 232 \
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
    id 233 \
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
    id 234 \
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
    id 235 \
    name HwReg_width_c20 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_width_c20 \
    op interface \
    ports { HwReg_width_c20_din { O 12 vector } HwReg_width_c20_num_data_valid { I 2 vector } HwReg_width_c20_fifo_cap { I 2 vector } HwReg_width_c20_full_n { I 1 bit } HwReg_width_c20_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name HwReg_height_c26 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_height_c26 \
    op interface \
    ports { HwReg_height_c26_din { O 12 vector } HwReg_height_c26_num_data_valid { I 2 vector } HwReg_height_c26_fifo_cap { I 2 vector } HwReg_height_c26_full_n { I 1 bit } HwReg_height_c26_write { O 1 bit } } \
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


