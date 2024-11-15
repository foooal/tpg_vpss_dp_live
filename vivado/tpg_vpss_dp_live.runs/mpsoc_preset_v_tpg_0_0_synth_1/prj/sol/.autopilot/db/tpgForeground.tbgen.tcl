set moduleName tpgForeground
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {tpgForeground}
set C_modelType { void 0 }
set C_modelArgList {
	{ bckgndYUV int 24 regular {fifo 0 volatile }  }
	{ height int 16 regular {pointer 0 stable }  }
	{ width int 16 regular {pointer 0 stable }  }
	{ ovrlayId int 8 regular {pointer 0 stable }  }
	{ maskId int 8 regular {pointer 0 stable }  }
	{ colorFormat int 8 regular {pointer 0 stable }  }
	{ crossHairX int 16 regular {pointer 0 stable }  }
	{ crossHairY int 16 regular {pointer 0 stable }  }
	{ boxSize int 16 regular {pointer 0 stable }  }
	{ boxColorR int 16 regular {pointer 0 stable }  }
	{ boxColorG int 16 regular {pointer 0 stable }  }
	{ boxColorB int 16 regular {pointer 0 stable }  }
	{ motionSpeed int 8 regular {pointer 0 stable }  }
	{ ovrlayYUV int 24 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "bckgndYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ovrlayId", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "maskId", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "colorFormat", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairX", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairY", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxSize", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorR", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorG", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorB", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "motionSpeed", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ovrlayYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ bckgndYUV_dout sc_in sc_lv 24 signal 0 } 
	{ bckgndYUV_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ bckgndYUV_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ bckgndYUV_empty_n sc_in sc_logic 1 signal 0 } 
	{ bckgndYUV_read sc_out sc_logic 1 signal 0 } 
	{ height sc_in sc_lv 16 signal 1 } 
	{ width sc_in sc_lv 16 signal 2 } 
	{ ovrlayId sc_in sc_lv 8 signal 3 } 
	{ maskId sc_in sc_lv 8 signal 4 } 
	{ colorFormat sc_in sc_lv 8 signal 5 } 
	{ crossHairX sc_in sc_lv 16 signal 6 } 
	{ crossHairY sc_in sc_lv 16 signal 7 } 
	{ boxSize sc_in sc_lv 16 signal 8 } 
	{ boxColorR sc_in sc_lv 16 signal 9 } 
	{ boxColorG sc_in sc_lv 16 signal 10 } 
	{ boxColorB sc_in sc_lv 16 signal 11 } 
	{ motionSpeed sc_in sc_lv 8 signal 12 } 
	{ ovrlayYUV_din sc_out sc_lv 24 signal 13 } 
	{ ovrlayYUV_num_data_valid sc_in sc_lv 5 signal 13 } 
	{ ovrlayYUV_fifo_cap sc_in sc_lv 5 signal 13 } 
	{ ovrlayYUV_full_n sc_in sc_logic 1 signal 13 } 
	{ ovrlayYUV_write sc_out sc_logic 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "bckgndYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "dout" }} , 
 	{ "name": "bckgndYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "num_data_valid" }} , 
 	{ "name": "bckgndYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "fifo_cap" }} , 
 	{ "name": "bckgndYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "empty_n" }} , 
 	{ "name": "bckgndYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "read" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "ovrlayId", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ovrlayId", "role": "default" }} , 
 	{ "name": "maskId", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "maskId", "role": "default" }} , 
 	{ "name": "colorFormat", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "colorFormat", "role": "default" }} , 
 	{ "name": "crossHairX", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairX", "role": "default" }} , 
 	{ "name": "crossHairY", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairY", "role": "default" }} , 
 	{ "name": "boxSize", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxSize", "role": "default" }} , 
 	{ "name": "boxColorR", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxColorR", "role": "default" }} , 
 	{ "name": "boxColorG", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxColorG", "role": "default" }} , 
 	{ "name": "boxColorB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxColorB", "role": "default" }} , 
 	{ "name": "motionSpeed", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "motionSpeed", "role": "default" }} , 
 	{ "name": "ovrlayYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "din" }} , 
 	{ "name": "ovrlayYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "num_data_valid" }} , 
 	{ "name": "ovrlayYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "fifo_cap" }} , 
 	{ "name": "ovrlayYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "full_n" }} , 
 	{ "name": "ovrlayYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "tpgForeground",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "4295229436",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bckgndYUV", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182", "Port" : "bckgndYUV", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "ovrlayId", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "maskId", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "colorFormat", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "crossHairX", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "crossHairY", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "boxSize", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "boxColorR", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "boxColorG", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "boxColorB", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "motionSpeed", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "ovrlayYUV", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182", "Port" : "ovrlayYUV", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "boxHCoord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182", "Port" : "boxHCoord", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "boxVCoord", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182", "Port" : "boxVCoord", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "vDir", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182", "Port" : "vDir", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "hDir", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182", "Port" : "hDir", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "whiYuv_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182", "Port" : "whiYuv_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_727_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182.whiYuv_2_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	tpgForeground {
		bckgndYUV {Type I LastRead 2 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		ovrlayId {Type I LastRead 0 FirstWrite -1}
		maskId {Type I LastRead 0 FirstWrite -1}
		colorFormat {Type I LastRead 0 FirstWrite -1}
		crossHairX {Type I LastRead 0 FirstWrite -1}
		crossHairY {Type I LastRead 0 FirstWrite -1}
		boxSize {Type I LastRead 0 FirstWrite -1}
		boxColorR {Type I LastRead 0 FirstWrite -1}
		boxColorG {Type I LastRead 0 FirstWrite -1}
		boxColorB {Type I LastRead 0 FirstWrite -1}
		motionSpeed {Type I LastRead 0 FirstWrite -1}
		ovrlayYUV {Type O LastRead -1 FirstWrite 3}
		boxHCoord {Type IO LastRead -1 FirstWrite -1}
		boxVCoord {Type IO LastRead -1 FirstWrite -1}
		vDir {Type IO LastRead -1 FirstWrite -1}
		hDir {Type IO LastRead -1 FirstWrite -1}
		whiYuv_2 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "1", "Max" : "4295229436"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "262140"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bckgndYUV { ap_fifo {  { bckgndYUV_dout fifo_port_we 0 24 }  { bckgndYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { bckgndYUV_fifo_cap fifo_update 0 5 }  { bckgndYUV_empty_n fifo_status 0 1 }  { bckgndYUV_read fifo_data 1 1 } } }
	height { ap_stable {  { height in_data 0 16 } } }
	width { ap_stable {  { width in_data 0 16 } } }
	ovrlayId { ap_stable {  { ovrlayId in_data 0 8 } } }
	maskId { ap_stable {  { maskId in_data 0 8 } } }
	colorFormat { ap_stable {  { colorFormat in_data 0 8 } } }
	crossHairX { ap_stable {  { crossHairX in_data 0 16 } } }
	crossHairY { ap_stable {  { crossHairY in_data 0 16 } } }
	boxSize { ap_stable {  { boxSize in_data 0 16 } } }
	boxColorR { ap_stable {  { boxColorR in_data 0 16 } } }
	boxColorG { ap_stable {  { boxColorG in_data 0 16 } } }
	boxColorB { ap_stable {  { boxColorB in_data 0 16 } } }
	motionSpeed { ap_stable {  { motionSpeed in_data 0 8 } } }
	ovrlayYUV { ap_fifo {  { ovrlayYUV_din fifo_port_we 1 24 }  { ovrlayYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { ovrlayYUV_fifo_cap fifo_update 0 5 }  { ovrlayYUV_full_n fifo_status 0 1 }  { ovrlayYUV_write fifo_data 1 1 } } }
}
