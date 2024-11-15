set moduleName v_vcresampler_core_1
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
set C_modelName {v_vcresampler_core.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_in int 24 regular {fifo 0 volatile }  }
	{ HwReg_height int 12 regular {fifo 0}  }
	{ HwReg_width int 12 regular {fifo 0}  }
	{ p_read int 1 regular  }
	{ stream_in_vresampled int 24 regular {fifo 1 volatile }  }
	{ HwReg_width_c22 int 12 regular {fifo 1}  }
	{ HwReg_height_c28 int 12 regular {fifo 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "stream_in", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_height", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_width", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_vresampled", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_width_c22", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_height_c28", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_in_dout sc_in sc_lv 24 signal 0 } 
	{ stream_in_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_in_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_in_read sc_out sc_logic 1 signal 0 } 
	{ HwReg_height_dout sc_in sc_lv 12 signal 1 } 
	{ HwReg_height_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ HwReg_height_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ HwReg_height_empty_n sc_in sc_logic 1 signal 1 } 
	{ HwReg_height_read sc_out sc_logic 1 signal 1 } 
	{ HwReg_width_dout sc_in sc_lv 12 signal 2 } 
	{ HwReg_width_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ HwReg_width_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ HwReg_width_empty_n sc_in sc_logic 1 signal 2 } 
	{ HwReg_width_read sc_out sc_logic 1 signal 2 } 
	{ p_read sc_in sc_lv 1 signal 3 } 
	{ stream_in_vresampled_din sc_out sc_lv 24 signal 4 } 
	{ stream_in_vresampled_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ stream_in_vresampled_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ stream_in_vresampled_full_n sc_in sc_logic 1 signal 4 } 
	{ stream_in_vresampled_write sc_out sc_logic 1 signal 4 } 
	{ HwReg_width_c22_din sc_out sc_lv 12 signal 5 } 
	{ HwReg_width_c22_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ HwReg_width_c22_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ HwReg_width_c22_full_n sc_in sc_logic 1 signal 5 } 
	{ HwReg_width_c22_write sc_out sc_logic 1 signal 5 } 
	{ HwReg_height_c28_din sc_out sc_lv 12 signal 6 } 
	{ HwReg_height_c28_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ HwReg_height_c28_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ HwReg_height_c28_full_n sc_in sc_logic 1 signal 6 } 
	{ HwReg_height_c28_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_in", "role": "dout" }} , 
 	{ "name": "stream_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "num_data_valid" }} , 
 	{ "name": "stream_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in", "role": "fifo_cap" }} , 
 	{ "name": "stream_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "empty_n" }} , 
 	{ "name": "stream_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in", "role": "read" }} , 
 	{ "name": "HwReg_height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_height", "role": "dout" }} , 
 	{ "name": "HwReg_height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_height", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_height", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height", "role": "empty_n" }} , 
 	{ "name": "HwReg_height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height", "role": "read" }} , 
 	{ "name": "HwReg_width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_width", "role": "dout" }} , 
 	{ "name": "HwReg_width_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_width", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_width_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_width", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width", "role": "empty_n" }} , 
 	{ "name": "HwReg_width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "stream_in_vresampled_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_in_vresampled", "role": "din" }} , 
 	{ "name": "stream_in_vresampled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_vresampled", "role": "num_data_valid" }} , 
 	{ "name": "stream_in_vresampled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_vresampled", "role": "fifo_cap" }} , 
 	{ "name": "stream_in_vresampled_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_vresampled", "role": "full_n" }} , 
 	{ "name": "stream_in_vresampled_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_vresampled", "role": "write" }} , 
 	{ "name": "HwReg_width_c22_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_width_c22", "role": "din" }} , 
 	{ "name": "HwReg_width_c22_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_width_c22", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_width_c22_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_width_c22", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_width_c22_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width_c22", "role": "full_n" }} , 
 	{ "name": "HwReg_width_c22_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width_c22", "role": "write" }} , 
 	{ "name": "HwReg_height_c28_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_height_c28", "role": "din" }} , 
 	{ "name": "HwReg_height_c28_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_height_c28", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_height_c28_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_height_c28", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_height_c28_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height_c28", "role": "full_n" }} , 
 	{ "name": "HwReg_height_c28_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height_c28", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "v_vcresampler_core_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1073872892",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2_fu_148", "Port" : "stream_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "stream_in_vresampled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2_fu_148", "Port" : "stream_in_vresampled", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_width_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c28_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_953_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_y_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_y_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_c_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_c_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2_fu_148", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "32771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_y_cast_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp393_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_y_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp105_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y_cast2_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp33_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_vresampled", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_in_vresampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_0607_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0423605_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0603_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0601_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0423599_i_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_955_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	v_vcresampler_core_1 {
		stream_in {Type I LastRead 1 FirstWrite -1}
		HwReg_height {Type I LastRead 0 FirstWrite -1}
		HwReg_width {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_in_vresampled {Type O LastRead -1 FirstWrite 2}
		HwReg_width_c22 {Type O LastRead -1 FirstWrite 0}
		HwReg_height_c28 {Type O LastRead -1 FirstWrite 0}}
	v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2 {
		loopWidth {Type I LastRead 0 FirstWrite -1}
		out_y_cast_i {Type I LastRead 0 FirstWrite -1}
		cmp393_i {Type I LastRead 0 FirstWrite -1}
		linebuf_y {Type IO LastRead 1 FirstWrite 2}
		linebuf_y_1 {Type IO LastRead 2 FirstWrite 2}
		cmp105_i {Type I LastRead 0 FirstWrite -1}
		linebuf_c {Type IO LastRead 1 FirstWrite 2}
		linebuf_c_1 {Type IO LastRead 1 FirstWrite 2}
		y_cast2_i {Type I LastRead 0 FirstWrite -1}
		cmp33_i {Type I LastRead 0 FirstWrite -1}
		stream_in {Type I LastRead 1 FirstWrite -1}
		stream_in_vresampled {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_0607_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_0423605_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_2_0_0_0603_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_0601_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_0423599_i_out {Type IO LastRead 2 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1073872892"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1073872892"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in { ap_fifo {  { stream_in_dout fifo_port_we 0 24 }  { stream_in_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_in_fifo_cap fifo_update 0 5 }  { stream_in_empty_n fifo_status 0 1 }  { stream_in_read fifo_data 1 1 } } }
	HwReg_height { ap_fifo {  { HwReg_height_dout fifo_port_we 0 12 }  { HwReg_height_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_height_fifo_cap fifo_update 0 2 }  { HwReg_height_empty_n fifo_status 0 1 }  { HwReg_height_read fifo_data 1 1 } } }
	HwReg_width { ap_fifo {  { HwReg_width_dout fifo_port_we 0 12 }  { HwReg_width_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_width_fifo_cap fifo_update 0 2 }  { HwReg_width_empty_n fifo_status 0 1 }  { HwReg_width_read fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	stream_in_vresampled { ap_fifo {  { stream_in_vresampled_din fifo_port_we 1 24 }  { stream_in_vresampled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_in_vresampled_fifo_cap fifo_update 0 5 }  { stream_in_vresampled_full_n fifo_status 0 1 }  { stream_in_vresampled_write fifo_data 1 1 } } }
	HwReg_width_c22 { ap_fifo {  { HwReg_width_c22_din fifo_port_we 1 12 }  { HwReg_width_c22_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_width_c22_fifo_cap fifo_update 0 2 }  { HwReg_width_c22_full_n fifo_status 0 1 }  { HwReg_width_c22_write fifo_data 1 1 } } }
	HwReg_height_c28 { ap_fifo {  { HwReg_height_c28_din fifo_port_we 1 12 }  { HwReg_height_c28_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_height_c28_fifo_cap fifo_update 0 2 }  { HwReg_height_c28_full_n fifo_status 0 1 }  { HwReg_height_c28_write fifo_data 1 1 } } }
}
