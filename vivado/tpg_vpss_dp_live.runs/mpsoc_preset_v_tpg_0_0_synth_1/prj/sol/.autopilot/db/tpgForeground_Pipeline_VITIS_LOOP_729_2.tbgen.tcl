set moduleName tpgForeground_Pipeline_VITIS_LOOP_729_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {tpgForeground_Pipeline_VITIS_LOOP_729_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ boxHCoord_loc_0 int 16 regular  }
	{ boxVCoord_loc_0 int 16 regular  }
	{ loopWidth int 16 regular {ap_stable 0} }
	{ pixOut_9 int 8 regular {ap_stable 0} }
	{ pixOut int 8 regular {ap_stable 0} }
	{ pixOut_7 int 8 regular {ap_stable 0} }
	{ and4_i int 1 regular {ap_stable 0} }
	{ and26_i int 1 regular {ap_stable 0} }
	{ tobool int 1 regular {ap_stable 0} }
	{ and10_i int 1 regular {ap_stable 0} }
	{ ovrlayYUV int 24 regular {fifo 1 volatile }  }
	{ bckgndYUV int 24 regular {fifo 0 volatile }  }
	{ ovrlayId_load int 8 regular {ap_stable 0} }
	{ boxSize_1 int 16 regular {ap_stable 0} }
	{ y int 16 regular  }
	{ zext_ln1869 int 8 regular {ap_stable 0} }
	{ vMax int 16 regular {ap_stable 0} }
	{ hMax int 16 regular {ap_stable 0} }
	{ zext_ln1869_1 int 9 regular {ap_stable 0} }
	{ cmp101_i int 1 regular {ap_stable 0} }
	{ boxColorG_1 int 8 regular {ap_stable 0} }
	{ crossHairX_1 int 16 regular {ap_stable 0} }
	{ cmp2_i int 1 regular  }
	{ color int 8 regular {ap_stable 0} }
	{ boxHCoord_loc_1_out int 16 regular {pointer 1}  }
	{ boxVCoord_loc_1_out int 16 regular {pointer 1}  }
	{ boxHCoord int 16 regular {pointer 1} {global 1}  }
	{ boxVCoord int 16 regular {pointer 1} {global 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "boxHCoord_loc_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxVCoord_loc_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "pixOut_9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pixOut", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pixOut_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "and4_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "and26_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tobool", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "and10_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ovrlayYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bckgndYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "ovrlayId_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxSize_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1869", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "vMax", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "hMax", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1869_1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "cmp101_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorG_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairX_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp2_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "color", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxHCoord_loc_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "boxVCoord_loc_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "boxHCoord", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "boxVCoord", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bckgndYUV_dout sc_in sc_lv 24 signal 11 } 
	{ bckgndYUV_num_data_valid sc_in sc_lv 5 signal 11 } 
	{ bckgndYUV_fifo_cap sc_in sc_lv 5 signal 11 } 
	{ bckgndYUV_empty_n sc_in sc_logic 1 signal 11 } 
	{ bckgndYUV_read sc_out sc_logic 1 signal 11 } 
	{ ovrlayYUV_din sc_out sc_lv 24 signal 10 } 
	{ ovrlayYUV_num_data_valid sc_in sc_lv 5 signal 10 } 
	{ ovrlayYUV_fifo_cap sc_in sc_lv 5 signal 10 } 
	{ ovrlayYUV_full_n sc_in sc_logic 1 signal 10 } 
	{ ovrlayYUV_write sc_out sc_logic 1 signal 10 } 
	{ boxHCoord_loc_0 sc_in sc_lv 16 signal 0 } 
	{ boxVCoord_loc_0 sc_in sc_lv 16 signal 1 } 
	{ loopWidth sc_in sc_lv 16 signal 2 } 
	{ pixOut_9 sc_in sc_lv 8 signal 3 } 
	{ pixOut sc_in sc_lv 8 signal 4 } 
	{ pixOut_7 sc_in sc_lv 8 signal 5 } 
	{ and4_i sc_in sc_lv 1 signal 6 } 
	{ and26_i sc_in sc_lv 1 signal 7 } 
	{ tobool sc_in sc_lv 1 signal 8 } 
	{ and10_i sc_in sc_lv 1 signal 9 } 
	{ ovrlayId_load sc_in sc_lv 8 signal 12 } 
	{ boxSize_1 sc_in sc_lv 16 signal 13 } 
	{ y sc_in sc_lv 16 signal 14 } 
	{ zext_ln1869 sc_in sc_lv 8 signal 15 } 
	{ vMax sc_in sc_lv 16 signal 16 } 
	{ hMax sc_in sc_lv 16 signal 17 } 
	{ zext_ln1869_1 sc_in sc_lv 9 signal 18 } 
	{ cmp101_i sc_in sc_lv 1 signal 19 } 
	{ boxColorG_1 sc_in sc_lv 8 signal 20 } 
	{ crossHairX_1 sc_in sc_lv 16 signal 21 } 
	{ cmp2_i sc_in sc_lv 1 signal 22 } 
	{ color sc_in sc_lv 8 signal 23 } 
	{ boxHCoord_loc_1_out sc_out sc_lv 16 signal 24 } 
	{ boxHCoord_loc_1_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ boxVCoord_loc_1_out sc_out sc_lv 16 signal 25 } 
	{ boxVCoord_loc_1_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ boxHCoord sc_out sc_lv 16 signal 26 } 
	{ boxHCoord_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ boxVCoord sc_out sc_lv 16 signal 27 } 
	{ boxVCoord_ap_vld sc_out sc_logic 1 outvld 27 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bckgndYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "dout" }} , 
 	{ "name": "bckgndYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "num_data_valid" }} , 
 	{ "name": "bckgndYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "fifo_cap" }} , 
 	{ "name": "bckgndYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "empty_n" }} , 
 	{ "name": "bckgndYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "read" }} , 
 	{ "name": "ovrlayYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "din" }} , 
 	{ "name": "ovrlayYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "num_data_valid" }} , 
 	{ "name": "ovrlayYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "fifo_cap" }} , 
 	{ "name": "ovrlayYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "full_n" }} , 
 	{ "name": "ovrlayYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "write" }} , 
 	{ "name": "boxHCoord_loc_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxHCoord_loc_0", "role": "default" }} , 
 	{ "name": "boxVCoord_loc_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxVCoord_loc_0", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "pixOut_9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixOut_9", "role": "default" }} , 
 	{ "name": "pixOut", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixOut", "role": "default" }} , 
 	{ "name": "pixOut_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixOut_7", "role": "default" }} , 
 	{ "name": "and4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and4_i", "role": "default" }} , 
 	{ "name": "and26_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and26_i", "role": "default" }} , 
 	{ "name": "tobool", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tobool", "role": "default" }} , 
 	{ "name": "and10_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and10_i", "role": "default" }} , 
 	{ "name": "ovrlayId_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ovrlayId_load", "role": "default" }} , 
 	{ "name": "boxSize_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxSize_1", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "zext_ln1869", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln1869", "role": "default" }} , 
 	{ "name": "vMax", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vMax", "role": "default" }} , 
 	{ "name": "hMax", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hMax", "role": "default" }} , 
 	{ "name": "zext_ln1869_1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln1869_1", "role": "default" }} , 
 	{ "name": "cmp101_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp101_i", "role": "default" }} , 
 	{ "name": "boxColorG_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorG_1", "role": "default" }} , 
 	{ "name": "crossHairX_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairX_1", "role": "default" }} , 
 	{ "name": "cmp2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp2_i", "role": "default" }} , 
 	{ "name": "color", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color", "role": "default" }} , 
 	{ "name": "boxHCoord_loc_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxHCoord_loc_1_out", "role": "default" }} , 
 	{ "name": "boxHCoord_loc_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "boxHCoord_loc_1_out", "role": "ap_vld" }} , 
 	{ "name": "boxVCoord_loc_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxVCoord_loc_1_out", "role": "default" }} , 
 	{ "name": "boxVCoord_loc_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "boxVCoord_loc_1_out", "role": "ap_vld" }} , 
 	{ "name": "boxHCoord", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxHCoord", "role": "default" }} , 
 	{ "name": "boxHCoord_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "boxHCoord", "role": "ap_vld" }} , 
 	{ "name": "boxVCoord", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxVCoord", "role": "default" }} , 
 	{ "name": "boxVCoord_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "boxVCoord", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "tpgForeground_Pipeline_VITIS_LOOP_729_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "65538",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "boxHCoord_loc_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "boxVCoord_loc_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "pixOut_9", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "pixOut", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "pixOut_7", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "and4_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "and26_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "tobool", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "and10_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "ovrlayYUV", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ovrlayYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bckgndYUV", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bckgndYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ovrlayId_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "boxSize_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "vMax", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "hMax", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln1869_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp101_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "boxColorG_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "crossHairX_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp2_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "color", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "boxHCoord_loc_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "boxVCoord_loc_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "boxHCoord", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "boxVCoord", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vDir", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hDir", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "whiYuv_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_729_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.whiYuv_2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tpgForeground_Pipeline_VITIS_LOOP_729_2 {
		boxHCoord_loc_0 {Type I LastRead 0 FirstWrite -1}
		boxVCoord_loc_0 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		pixOut_9 {Type I LastRead 0 FirstWrite -1}
		pixOut {Type I LastRead 0 FirstWrite -1}
		pixOut_7 {Type I LastRead 0 FirstWrite -1}
		and4_i {Type I LastRead 0 FirstWrite -1}
		and26_i {Type I LastRead 0 FirstWrite -1}
		tobool {Type I LastRead 0 FirstWrite -1}
		and10_i {Type I LastRead 0 FirstWrite -1}
		ovrlayYUV {Type O LastRead -1 FirstWrite 3}
		bckgndYUV {Type I LastRead 2 FirstWrite -1}
		ovrlayId_load {Type I LastRead 0 FirstWrite -1}
		boxSize_1 {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		zext_ln1869 {Type I LastRead 0 FirstWrite -1}
		vMax {Type I LastRead 0 FirstWrite -1}
		hMax {Type I LastRead 0 FirstWrite -1}
		zext_ln1869_1 {Type I LastRead 0 FirstWrite -1}
		cmp101_i {Type I LastRead 0 FirstWrite -1}
		boxColorG_1 {Type I LastRead 0 FirstWrite -1}
		crossHairX_1 {Type I LastRead 0 FirstWrite -1}
		cmp2_i {Type I LastRead 0 FirstWrite -1}
		color {Type I LastRead 0 FirstWrite -1}
		boxHCoord_loc_1_out {Type O LastRead -1 FirstWrite 2}
		boxVCoord_loc_1_out {Type O LastRead -1 FirstWrite 2}
		boxHCoord {Type O LastRead -1 FirstWrite 1}
		boxVCoord {Type O LastRead -1 FirstWrite 1}
		vDir {Type IO LastRead -1 FirstWrite -1}
		hDir {Type IO LastRead -1 FirstWrite -1}
		whiYuv_2 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "65538"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "65538"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	boxHCoord_loc_0 { ap_none {  { boxHCoord_loc_0 in_data 0 16 } } }
	boxVCoord_loc_0 { ap_none {  { boxVCoord_loc_0 in_data 0 16 } } }
	loopWidth { ap_stable {  { loopWidth in_data 0 16 } } }
	pixOut_9 { ap_stable {  { pixOut_9 in_data 0 8 } } }
	pixOut { ap_stable {  { pixOut in_data 0 8 } } }
	pixOut_7 { ap_stable {  { pixOut_7 in_data 0 8 } } }
	and4_i { ap_stable {  { and4_i in_data 0 1 } } }
	and26_i { ap_stable {  { and26_i in_data 0 1 } } }
	tobool { ap_stable {  { tobool in_data 0 1 } } }
	and10_i { ap_stable {  { and10_i in_data 0 1 } } }
	ovrlayYUV { ap_fifo {  { ovrlayYUV_din fifo_port_we 1 24 }  { ovrlayYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { ovrlayYUV_fifo_cap fifo_update 0 5 }  { ovrlayYUV_full_n fifo_status 0 1 }  { ovrlayYUV_write fifo_data 1 1 } } }
	bckgndYUV { ap_fifo {  { bckgndYUV_dout fifo_port_we 0 24 }  { bckgndYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { bckgndYUV_fifo_cap fifo_update 0 5 }  { bckgndYUV_empty_n fifo_status 0 1 }  { bckgndYUV_read fifo_data 1 1 } } }
	ovrlayId_load { ap_stable {  { ovrlayId_load in_data 0 8 } } }
	boxSize_1 { ap_stable {  { boxSize_1 in_data 0 16 } } }
	y { ap_none {  { y in_data 0 16 } } }
	zext_ln1869 { ap_stable {  { zext_ln1869 in_data 0 8 } } }
	vMax { ap_stable {  { vMax in_data 0 16 } } }
	hMax { ap_stable {  { hMax in_data 0 16 } } }
	zext_ln1869_1 { ap_stable {  { zext_ln1869_1 in_data 0 9 } } }
	cmp101_i { ap_stable {  { cmp101_i in_data 0 1 } } }
	boxColorG_1 { ap_stable {  { boxColorG_1 in_data 0 8 } } }
	crossHairX_1 { ap_stable {  { crossHairX_1 in_data 0 16 } } }
	cmp2_i { ap_none {  { cmp2_i in_data 0 1 } } }
	color { ap_stable {  { color in_data 0 8 } } }
	boxHCoord_loc_1_out { ap_vld {  { boxHCoord_loc_1_out out_data 1 16 }  { boxHCoord_loc_1_out_ap_vld out_vld 1 1 } } }
	boxVCoord_loc_1_out { ap_vld {  { boxVCoord_loc_1_out out_data 1 16 }  { boxVCoord_loc_1_out_ap_vld out_vld 1 1 } } }
	boxHCoord { ap_vld {  { boxHCoord out_data 1 16 }  { boxHCoord_ap_vld out_vld 1 1 } } }
	boxVCoord { ap_vld {  { boxVCoord out_data 1 16 }  { boxVCoord_ap_vld out_vld 1 1 } } }
}
