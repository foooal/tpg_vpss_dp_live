# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\shen\Downloads\tpg_vpss_dp_live\vitis\mpsoc_preset_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\shen\Downloads\tpg_vpss_dp_live\vitis\mpsoc_preset_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {mpsoc_preset_wrapper}\
-hw {C:\Users\shen\Downloads\tpg_vpss_dp_live\vivado\mpsoc_preset_wrapper.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Users/shen/Downloads/tpg_vpss_dp_live/vitis}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {mpsoc_preset_wrapper}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
