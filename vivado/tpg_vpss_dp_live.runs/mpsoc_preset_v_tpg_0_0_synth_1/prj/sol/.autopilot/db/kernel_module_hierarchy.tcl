set ModuleHierarchy {[{
"Name" : "v_tpg","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_v_tpgHlsDataFlow_fu_313","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "tpgBackground_U0","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_518_1","ID" : "3","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432","ID" : "4","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_520_2","ID" : "5","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "grp_reg_ap_uint_10_s_fu_1709","ID" : "6","Type" : "pipeline"},
					{"Name" : "grp_reg_int_s_fu_2293","ID" : "7","Type" : "pipeline"},]},]},]},]},
		{"Name" : "tpgForeground_U0","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_727_1","ID" : "9","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_729_2","ID" : "11","Type" : "pipeline"},]},]},]},
		{"Name" : "MultiPixStream2AXIvideo_U0","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_934_1","ID" : "13","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2_fu_155","ID" : "14","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_936_2","ID" : "15","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_reg_unsigned_short_s_fu_513","ID" : "16","Type" : "pipeline"},]
}]}