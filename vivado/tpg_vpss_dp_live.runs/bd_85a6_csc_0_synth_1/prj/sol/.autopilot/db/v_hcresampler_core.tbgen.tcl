set moduleName v_hcresampler_core
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
set C_modelName {v_hcresampler_core}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_csc int 24 regular {fifo 0 volatile }  }
	{ HwReg_height int 12 regular {fifo 0}  }
	{ HwReg_width int 12 regular {fifo 0}  }
	{ p_read int 1 regular  }
	{ stream_out_hresampled int 24 regular {fifo 1 volatile }  }
	{ HwReg_width_c19 int 12 regular {fifo 1}  }
	{ HwReg_height_c25 int 12 regular {fifo 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "stream_csc", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_height", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_width", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_hresampled", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_width_c19", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_height_c25", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
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
	{ stream_csc_dout sc_in sc_lv 24 signal 0 } 
	{ stream_csc_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_csc_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_csc_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_csc_read sc_out sc_logic 1 signal 0 } 
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
	{ stream_out_hresampled_din sc_out sc_lv 24 signal 4 } 
	{ stream_out_hresampled_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ stream_out_hresampled_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ stream_out_hresampled_full_n sc_in sc_logic 1 signal 4 } 
	{ stream_out_hresampled_write sc_out sc_logic 1 signal 4 } 
	{ HwReg_width_c19_din sc_out sc_lv 12 signal 5 } 
	{ HwReg_width_c19_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ HwReg_width_c19_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ HwReg_width_c19_full_n sc_in sc_logic 1 signal 5 } 
	{ HwReg_width_c19_write sc_out sc_logic 1 signal 5 } 
	{ HwReg_height_c25_din sc_out sc_lv 12 signal 6 } 
	{ HwReg_height_c25_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ HwReg_height_c25_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ HwReg_height_c25_full_n sc_in sc_logic 1 signal 6 } 
	{ HwReg_height_c25_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_csc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_csc", "role": "dout" }} , 
 	{ "name": "stream_csc_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_csc", "role": "num_data_valid" }} , 
 	{ "name": "stream_csc_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_csc", "role": "fifo_cap" }} , 
 	{ "name": "stream_csc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_csc", "role": "empty_n" }} , 
 	{ "name": "stream_csc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_csc", "role": "read" }} , 
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
 	{ "name": "stream_out_hresampled_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_out_hresampled", "role": "din" }} , 
 	{ "name": "stream_out_hresampled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_hresampled", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_hresampled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_hresampled", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_hresampled_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_hresampled", "role": "full_n" }} , 
 	{ "name": "stream_out_hresampled_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_hresampled", "role": "write" }} , 
 	{ "name": "HwReg_width_c19_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_width_c19", "role": "din" }} , 
 	{ "name": "HwReg_width_c19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_width_c19", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_width_c19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_width_c19", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_width_c19_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width_c19", "role": "full_n" }} , 
 	{ "name": "HwReg_width_c19_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width_c19", "role": "write" }} , 
 	{ "name": "HwReg_height_c25_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_height_c25", "role": "din" }} , 
 	{ "name": "HwReg_height_c25_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_height_c25", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_height_c25_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_height_c25", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_height_c25_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height_c25", "role": "full_n" }} , 
 	{ "name": "HwReg_height_c25_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height_c25", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_hcresampler_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1073938426",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_csc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186", "Port" : "stream_csc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "1"},
			{"Name" : "stream_out_hresampled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186", "Port" : "stream_out_hresampled", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_width_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c25_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_722_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "v_hcresampler_core_Pipeline_VITIS_LOOP_724_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "32771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pixbuf_y_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0536742_lcssa768_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast17_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln685", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln720", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_csc", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_csc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_hresampled", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_hresampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_21_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pixbuf_y_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_0748795_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0744792_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0785_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0480782_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0751_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0747_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0741_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0739_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0536737_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "filt_res1_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_724_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186.mux_4_2_8_1_1_U237", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_hcresampler_core {
		stream_csc {Type I LastRead 1 FirstWrite -1}
		HwReg_height {Type I LastRead 0 FirstWrite -1}
		HwReg_width {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_out_hresampled {Type O LastRead -1 FirstWrite 2}
		HwReg_width_c19 {Type O LastRead -1 FirstWrite 0}
		HwReg_height_c25 {Type O LastRead -1 FirstWrite 0}}
	v_hcresampler_core_Pipeline_VITIS_LOOP_724_2 {
		pixbuf_y_19 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_18 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_17 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0536742_lcssa768_i {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		p_cast17_i {Type I LastRead 0 FirstWrite -1}
		select_ln685 {Type I LastRead 0 FirstWrite -1}
		zext_ln720 {Type I LastRead 0 FirstWrite -1}
		stream_csc {Type I LastRead 1 FirstWrite -1}
		stream_out_hresampled {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_24_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_23_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_22_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_21_out {Type IO LastRead 3 FirstWrite 3}
		pixbuf_y_20_out {Type O LastRead -1 FirstWrite 2}
		p_0_1_0_0_0748795_i_out {Type IO LastRead 2 FirstWrite 2}
		p_0_1_0_0_0744792_i_out {Type IO LastRead 2 FirstWrite 2}
		p_out {Type IO LastRead 2 FirstWrite 2}
		p_out1 {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0785_i_out {Type IO LastRead 2 FirstWrite 2}
		p_0_0_0480782_i_out {Type IO LastRead 2 FirstWrite 2}
		p_0_1_0_0_0751_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_0747_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_2_0_0_0741_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_0739_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_0536737_i_out {Type IO LastRead 2 FirstWrite 1}
		filt_res1_1_out {Type IO LastRead 2 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1073938426"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1073938426"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_csc { ap_fifo {  { stream_csc_dout fifo_port_we 0 24 }  { stream_csc_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_csc_fifo_cap fifo_update 0 5 }  { stream_csc_empty_n fifo_status 0 1 }  { stream_csc_read fifo_data 1 1 } } }
	HwReg_height { ap_fifo {  { HwReg_height_dout fifo_port_we 0 12 }  { HwReg_height_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_height_fifo_cap fifo_update 0 2 }  { HwReg_height_empty_n fifo_status 0 1 }  { HwReg_height_read fifo_data 1 1 } } }
	HwReg_width { ap_fifo {  { HwReg_width_dout fifo_port_we 0 12 }  { HwReg_width_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_width_fifo_cap fifo_update 0 2 }  { HwReg_width_empty_n fifo_status 0 1 }  { HwReg_width_read fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	stream_out_hresampled { ap_fifo {  { stream_out_hresampled_din fifo_port_we 1 24 }  { stream_out_hresampled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_hresampled_fifo_cap fifo_update 0 5 }  { stream_out_hresampled_full_n fifo_status 0 1 }  { stream_out_hresampled_write fifo_data 1 1 } } }
	HwReg_width_c19 { ap_fifo {  { HwReg_width_c19_din fifo_port_we 1 12 }  { HwReg_width_c19_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_width_c19_fifo_cap fifo_update 0 2 }  { HwReg_width_c19_full_n fifo_status 0 1 }  { HwReg_width_c19_write fifo_data 1 1 } } }
	HwReg_height_c25 { ap_fifo {  { HwReg_height_c25_din fifo_port_we 1 12 }  { HwReg_height_c25_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_height_c25_fifo_cap fifo_update 0 2 }  { HwReg_height_c25_full_n fifo_status 0 1 }  { HwReg_height_c25_write fifo_data 1 1 } } }
}
