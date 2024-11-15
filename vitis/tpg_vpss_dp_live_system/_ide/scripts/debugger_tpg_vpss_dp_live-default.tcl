# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\shen\Downloads\tpg_vpss_dp_live\vitis\tpg_vpss_dp_live_system\_ide\scripts\debugger_tpg_vpss_dp_live-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\shen\Downloads\tpg_vpss_dp_live\vitis\tpg_vpss_dp_live_system\_ide\scripts\debugger_tpg_vpss_dp_live-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source D:/program/Xilinx2023/Vitis/2023.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT232H 89418" && level==0 && jtag_device_ctx=="jsn-HW-FTDI-TEST FT232H-89418-14730093-0"}
fpga -file C:/Users/shen/Downloads/tpg_vpss_dp_live/vitis/tpg_vpss_dp_live/_ide/bitstream/mpsoc_preset_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/shen/Downloads/tpg_vpss_dp_live/vitis/mpsoc_preset_wrapper/export/mpsoc_preset_wrapper/hw/mpsoc_preset_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Users/shen/Downloads/tpg_vpss_dp_live/vitis/mpsoc_preset_wrapper/export/mpsoc_preset_wrapper/sw/mpsoc_preset_wrapper/boot/fsbl.elf
set bp_42_11_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_42_11_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Users/shen/Downloads/tpg_vpss_dp_live/vitis/tpg_vpss_dp_live/Debug/tpg_vpss_dp_live.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
