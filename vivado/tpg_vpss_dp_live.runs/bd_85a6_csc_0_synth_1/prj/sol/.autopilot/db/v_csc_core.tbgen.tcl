set moduleName v_csc_core
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
set C_modelName {v_csc_core}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_in_hresampled int 24 regular {fifo 0 volatile }  }
	{ height int 12 regular {fifo 0}  }
	{ width int 12 regular {fifo 0}  }
	{ ColStart_read int 16 regular  }
	{ ColEnd_read int 16 regular  }
	{ RowStart_read int 16 regular  }
	{ RowEnd_read int 16 regular  }
	{ K11_read int 16 regular  }
	{ K12_read int 16 regular  }
	{ K13_read int 16 regular  }
	{ K21_read int 16 regular  }
	{ K22_read int 16 regular  }
	{ K23_read int 16 regular  }
	{ K31_read int 16 regular  }
	{ K32_read int 16 regular  }
	{ K33_read int 16 regular  }
	{ ROffset_read int 10 regular  }
	{ GOffset_read int 10 regular  }
	{ BOffset_read int 10 regular  }
	{ ClampMin_read int 8 regular  }
	{ ClipMax_read int 8 regular  }
	{ K11_2_read int 16 regular  }
	{ K12_2_read int 16 regular  }
	{ K13_2_read int 16 regular  }
	{ K21_2_read int 16 regular  }
	{ K22_2_read int 16 regular  }
	{ K23_2_read int 16 regular  }
	{ K31_2_read int 16 regular  }
	{ K32_2_read int 16 regular  }
	{ K33_2_read int 16 regular  }
	{ ROffset_2_read int 10 regular  }
	{ GOffset_2_read int 10 regular  }
	{ BOffset_2_read int 10 regular  }
	{ ClampMin_2_read int 8 regular  }
	{ ClipMax_2_read int 8 regular  }
	{ stream_csc int 24 regular {fifo 1 volatile }  }
	{ HwReg_width_c20 int 12 regular {fifo 1}  }
	{ HwReg_height_c26 int 12 regular {fifo 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_hresampled", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "ColStart_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ColEnd_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "RowStart_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "RowEnd_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K11_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K12_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K13_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K21_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K22_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K23_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K31_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K32_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K33_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ROffset_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "GOffset_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "BOffset_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "ClampMin_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ClipMax_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "K11_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K12_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K13_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K21_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K22_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K23_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K31_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K32_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "K33_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ROffset_2_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "GOffset_2_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "BOffset_2_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "ClampMin_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ClipMax_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "stream_csc", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_width_c20", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_height_c26", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_in_hresampled_dout sc_in sc_lv 24 signal 0 } 
	{ stream_in_hresampled_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_in_hresampled_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_in_hresampled_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_in_hresampled_read sc_out sc_logic 1 signal 0 } 
	{ height_dout sc_in sc_lv 12 signal 1 } 
	{ height_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ height_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ height_empty_n sc_in sc_logic 1 signal 1 } 
	{ height_read sc_out sc_logic 1 signal 1 } 
	{ width_dout sc_in sc_lv 12 signal 2 } 
	{ width_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ width_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ width_empty_n sc_in sc_logic 1 signal 2 } 
	{ width_read sc_out sc_logic 1 signal 2 } 
	{ ColStart_read sc_in sc_lv 16 signal 3 } 
	{ ColEnd_read sc_in sc_lv 16 signal 4 } 
	{ RowStart_read sc_in sc_lv 16 signal 5 } 
	{ RowEnd_read sc_in sc_lv 16 signal 6 } 
	{ K11_read sc_in sc_lv 16 signal 7 } 
	{ K12_read sc_in sc_lv 16 signal 8 } 
	{ K13_read sc_in sc_lv 16 signal 9 } 
	{ K21_read sc_in sc_lv 16 signal 10 } 
	{ K22_read sc_in sc_lv 16 signal 11 } 
	{ K23_read sc_in sc_lv 16 signal 12 } 
	{ K31_read sc_in sc_lv 16 signal 13 } 
	{ K32_read sc_in sc_lv 16 signal 14 } 
	{ K33_read sc_in sc_lv 16 signal 15 } 
	{ ROffset_read sc_in sc_lv 10 signal 16 } 
	{ GOffset_read sc_in sc_lv 10 signal 17 } 
	{ BOffset_read sc_in sc_lv 10 signal 18 } 
	{ ClampMin_read sc_in sc_lv 8 signal 19 } 
	{ ClipMax_read sc_in sc_lv 8 signal 20 } 
	{ K11_2_read sc_in sc_lv 16 signal 21 } 
	{ K12_2_read sc_in sc_lv 16 signal 22 } 
	{ K13_2_read sc_in sc_lv 16 signal 23 } 
	{ K21_2_read sc_in sc_lv 16 signal 24 } 
	{ K22_2_read sc_in sc_lv 16 signal 25 } 
	{ K23_2_read sc_in sc_lv 16 signal 26 } 
	{ K31_2_read sc_in sc_lv 16 signal 27 } 
	{ K32_2_read sc_in sc_lv 16 signal 28 } 
	{ K33_2_read sc_in sc_lv 16 signal 29 } 
	{ ROffset_2_read sc_in sc_lv 10 signal 30 } 
	{ GOffset_2_read sc_in sc_lv 10 signal 31 } 
	{ BOffset_2_read sc_in sc_lv 10 signal 32 } 
	{ ClampMin_2_read sc_in sc_lv 8 signal 33 } 
	{ ClipMax_2_read sc_in sc_lv 8 signal 34 } 
	{ stream_csc_din sc_out sc_lv 24 signal 35 } 
	{ stream_csc_num_data_valid sc_in sc_lv 5 signal 35 } 
	{ stream_csc_fifo_cap sc_in sc_lv 5 signal 35 } 
	{ stream_csc_full_n sc_in sc_logic 1 signal 35 } 
	{ stream_csc_write sc_out sc_logic 1 signal 35 } 
	{ HwReg_width_c20_din sc_out sc_lv 12 signal 36 } 
	{ HwReg_width_c20_num_data_valid sc_in sc_lv 2 signal 36 } 
	{ HwReg_width_c20_fifo_cap sc_in sc_lv 2 signal 36 } 
	{ HwReg_width_c20_full_n sc_in sc_logic 1 signal 36 } 
	{ HwReg_width_c20_write sc_out sc_logic 1 signal 36 } 
	{ HwReg_height_c26_din sc_out sc_lv 12 signal 37 } 
	{ HwReg_height_c26_num_data_valid sc_in sc_lv 2 signal 37 } 
	{ HwReg_height_c26_fifo_cap sc_in sc_lv 2 signal 37 } 
	{ HwReg_height_c26_full_n sc_in sc_logic 1 signal 37 } 
	{ HwReg_height_c26_write sc_out sc_logic 1 signal 37 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_in_hresampled_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "dout" }} , 
 	{ "name": "stream_in_hresampled_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "num_data_valid" }} , 
 	{ "name": "stream_in_hresampled_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "fifo_cap" }} , 
 	{ "name": "stream_in_hresampled_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "empty_n" }} , 
 	{ "name": "stream_in_hresampled_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_hresampled", "role": "read" }} , 
 	{ "name": "height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "height", "role": "dout" }} , 
 	{ "name": "height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "height", "role": "num_data_valid" }} , 
 	{ "name": "height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "height", "role": "fifo_cap" }} , 
 	{ "name": "height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "empty_n" }} , 
 	{ "name": "height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "read" }} , 
 	{ "name": "width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "width", "role": "dout" }} , 
 	{ "name": "width_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "width", "role": "num_data_valid" }} , 
 	{ "name": "width_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "width", "role": "fifo_cap" }} , 
 	{ "name": "width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "empty_n" }} , 
 	{ "name": "width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "read" }} , 
 	{ "name": "ColStart_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ColStart_read", "role": "default" }} , 
 	{ "name": "ColEnd_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ColEnd_read", "role": "default" }} , 
 	{ "name": "RowStart_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "RowStart_read", "role": "default" }} , 
 	{ "name": "RowEnd_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "RowEnd_read", "role": "default" }} , 
 	{ "name": "K11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K11_read", "role": "default" }} , 
 	{ "name": "K12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K12_read", "role": "default" }} , 
 	{ "name": "K13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K13_read", "role": "default" }} , 
 	{ "name": "K21_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K21_read", "role": "default" }} , 
 	{ "name": "K22_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K22_read", "role": "default" }} , 
 	{ "name": "K23_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K23_read", "role": "default" }} , 
 	{ "name": "K31_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K31_read", "role": "default" }} , 
 	{ "name": "K32_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K32_read", "role": "default" }} , 
 	{ "name": "K33_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K33_read", "role": "default" }} , 
 	{ "name": "ROffset_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ROffset_read", "role": "default" }} , 
 	{ "name": "GOffset_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "GOffset_read", "role": "default" }} , 
 	{ "name": "BOffset_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "BOffset_read", "role": "default" }} , 
 	{ "name": "ClampMin_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClampMin_read", "role": "default" }} , 
 	{ "name": "ClipMax_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClipMax_read", "role": "default" }} , 
 	{ "name": "K11_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K11_2_read", "role": "default" }} , 
 	{ "name": "K12_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K12_2_read", "role": "default" }} , 
 	{ "name": "K13_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K13_2_read", "role": "default" }} , 
 	{ "name": "K21_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K21_2_read", "role": "default" }} , 
 	{ "name": "K22_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K22_2_read", "role": "default" }} , 
 	{ "name": "K23_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K23_2_read", "role": "default" }} , 
 	{ "name": "K31_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K31_2_read", "role": "default" }} , 
 	{ "name": "K32_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K32_2_read", "role": "default" }} , 
 	{ "name": "K33_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "K33_2_read", "role": "default" }} , 
 	{ "name": "ROffset_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ROffset_2_read", "role": "default" }} , 
 	{ "name": "GOffset_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "GOffset_2_read", "role": "default" }} , 
 	{ "name": "BOffset_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "BOffset_2_read", "role": "default" }} , 
 	{ "name": "ClampMin_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClampMin_2_read", "role": "default" }} , 
 	{ "name": "ClipMax_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ClipMax_2_read", "role": "default" }} , 
 	{ "name": "stream_csc_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_csc", "role": "din" }} , 
 	{ "name": "stream_csc_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_csc", "role": "num_data_valid" }} , 
 	{ "name": "stream_csc_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_csc", "role": "fifo_cap" }} , 
 	{ "name": "stream_csc_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_csc", "role": "full_n" }} , 
 	{ "name": "stream_csc_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_csc", "role": "write" }} , 
 	{ "name": "HwReg_width_c20_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_width_c20", "role": "din" }} , 
 	{ "name": "HwReg_width_c20_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_width_c20", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_width_c20_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_width_c20", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_width_c20_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width_c20", "role": "full_n" }} , 
 	{ "name": "HwReg_width_c20_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_width_c20", "role": "write" }} , 
 	{ "name": "HwReg_height_c26_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_height_c26", "role": "din" }} , 
 	{ "name": "HwReg_height_c26_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_height_c26", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_height_c26_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_height_c26", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_height_c26_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height_c26", "role": "full_n" }} , 
 	{ "name": "HwReg_height_c26_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_height_c26", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_csc_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "16801786",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_in_hresampled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348", "Port" : "stream_in_hresampled", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ColStart_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ColEnd_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "RowStart_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "RowEnd_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K11_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K12_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K13_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K21_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K22_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K23_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K31_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K32_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K33_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ROffset_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "GOffset_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "BOffset_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ClampMin_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ClipMax_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K11_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K12_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K13_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K21_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K22_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K23_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K31_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K32_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K33_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ROffset_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "GOffset_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "BOffset_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ClampMin_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ClipMax_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "stream_csc", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348", "Port" : "stream_csc", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_width_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c26_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_89_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "v_csc_core_Pipeline_VITIS_LOOP_91_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "4101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln89", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in_hresampled", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_hresampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ColStart_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColEnd_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp20_not", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp17_not", "Type" : "None", "Direction" : "I"},
			{"Name" : "K11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K11_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K12_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K13_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K21_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K21_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K22_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K22_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K23_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K23_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K31_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K31_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K32_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K32_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K33_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K33_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClipMax_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClipMax_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClampMin_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClampMin_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "BOffset_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "BOffset_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "GOffset_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "GOffset_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROffset_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROffset_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_csc", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_csc_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U153", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U154", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U155", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U156", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U157", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U158", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mac_muladd_8ns_16s_22s_25_4_1_U159", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mac_muladd_8ns_16s_22s_25_4_1_U160", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mac_muladd_8ns_16s_22s_25_4_1_U161", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_csc_core {
		stream_in_hresampled {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		ColStart_read {Type I LastRead 0 FirstWrite -1}
		ColEnd_read {Type I LastRead 0 FirstWrite -1}
		RowStart_read {Type I LastRead 0 FirstWrite -1}
		RowEnd_read {Type I LastRead 0 FirstWrite -1}
		K11_read {Type I LastRead 0 FirstWrite -1}
		K12_read {Type I LastRead 0 FirstWrite -1}
		K13_read {Type I LastRead 0 FirstWrite -1}
		K21_read {Type I LastRead 0 FirstWrite -1}
		K22_read {Type I LastRead 0 FirstWrite -1}
		K23_read {Type I LastRead 0 FirstWrite -1}
		K31_read {Type I LastRead 0 FirstWrite -1}
		K32_read {Type I LastRead 0 FirstWrite -1}
		K33_read {Type I LastRead 0 FirstWrite -1}
		ROffset_read {Type I LastRead 0 FirstWrite -1}
		GOffset_read {Type I LastRead 0 FirstWrite -1}
		BOffset_read {Type I LastRead 0 FirstWrite -1}
		ClampMin_read {Type I LastRead 0 FirstWrite -1}
		ClipMax_read {Type I LastRead 0 FirstWrite -1}
		K11_2_read {Type I LastRead 0 FirstWrite -1}
		K12_2_read {Type I LastRead 0 FirstWrite -1}
		K13_2_read {Type I LastRead 0 FirstWrite -1}
		K21_2_read {Type I LastRead 0 FirstWrite -1}
		K22_2_read {Type I LastRead 0 FirstWrite -1}
		K23_2_read {Type I LastRead 0 FirstWrite -1}
		K31_2_read {Type I LastRead 0 FirstWrite -1}
		K32_2_read {Type I LastRead 0 FirstWrite -1}
		K33_2_read {Type I LastRead 0 FirstWrite -1}
		ROffset_2_read {Type I LastRead 0 FirstWrite -1}
		GOffset_2_read {Type I LastRead 0 FirstWrite -1}
		BOffset_2_read {Type I LastRead 0 FirstWrite -1}
		ClampMin_2_read {Type I LastRead 0 FirstWrite -1}
		ClipMax_2_read {Type I LastRead 0 FirstWrite -1}
		stream_csc {Type O LastRead -1 FirstWrite 5}
		HwReg_width_c20 {Type O LastRead -1 FirstWrite 0}
		HwReg_height_c26 {Type O LastRead -1 FirstWrite 0}}
	v_csc_core_Pipeline_VITIS_LOOP_91_2 {
		add_ln89 {Type I LastRead 0 FirstWrite -1}
		stream_in_hresampled {Type I LastRead 1 FirstWrite -1}
		ColStart_read {Type I LastRead 0 FirstWrite -1}
		ColEnd_read {Type I LastRead 0 FirstWrite -1}
		cmp20_not {Type I LastRead 0 FirstWrite -1}
		cmp17_not {Type I LastRead 0 FirstWrite -1}
		K11_read {Type I LastRead 0 FirstWrite -1}
		K11_2_read {Type I LastRead 0 FirstWrite -1}
		K12_read {Type I LastRead 0 FirstWrite -1}
		K12_2_read {Type I LastRead 0 FirstWrite -1}
		K13_read {Type I LastRead 0 FirstWrite -1}
		K13_2_read {Type I LastRead 0 FirstWrite -1}
		K21_read {Type I LastRead 0 FirstWrite -1}
		K21_2_read {Type I LastRead 0 FirstWrite -1}
		K22_read {Type I LastRead 0 FirstWrite -1}
		K22_2_read {Type I LastRead 0 FirstWrite -1}
		K23_read {Type I LastRead 0 FirstWrite -1}
		K23_2_read {Type I LastRead 0 FirstWrite -1}
		K31_read {Type I LastRead 0 FirstWrite -1}
		K31_2_read {Type I LastRead 0 FirstWrite -1}
		K32_read {Type I LastRead 0 FirstWrite -1}
		K32_2_read {Type I LastRead 0 FirstWrite -1}
		K33_read {Type I LastRead 0 FirstWrite -1}
		K33_2_read {Type I LastRead 0 FirstWrite -1}
		ClipMax_read {Type I LastRead 0 FirstWrite -1}
		ClipMax_2_read {Type I LastRead 0 FirstWrite -1}
		ClampMin_read {Type I LastRead 0 FirstWrite -1}
		ClampMin_2_read {Type I LastRead 0 FirstWrite -1}
		BOffset_read {Type I LastRead 0 FirstWrite -1}
		BOffset_2_read {Type I LastRead 0 FirstWrite -1}
		GOffset_read {Type I LastRead 0 FirstWrite -1}
		GOffset_2_read {Type I LastRead 0 FirstWrite -1}
		ROffset_read {Type I LastRead 0 FirstWrite -1}
		ROffset_2_read {Type I LastRead 0 FirstWrite -1}
		stream_csc {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "16801786"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "16801786"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in_hresampled { ap_fifo {  { stream_in_hresampled_dout fifo_port_we 0 24 }  { stream_in_hresampled_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_in_hresampled_fifo_cap fifo_update 0 5 }  { stream_in_hresampled_empty_n fifo_status 0 1 }  { stream_in_hresampled_read fifo_data 1 1 } } }
	height { ap_fifo {  { height_dout fifo_port_we 0 12 }  { height_num_data_valid fifo_status_num_data_valid 0 2 }  { height_fifo_cap fifo_update 0 2 }  { height_empty_n fifo_status 0 1 }  { height_read fifo_data 1 1 } } }
	width { ap_fifo {  { width_dout fifo_port_we 0 12 }  { width_num_data_valid fifo_status_num_data_valid 0 2 }  { width_fifo_cap fifo_update 0 2 }  { width_empty_n fifo_status 0 1 }  { width_read fifo_data 1 1 } } }
	ColStart_read { ap_none {  { ColStart_read in_data 0 16 } } }
	ColEnd_read { ap_none {  { ColEnd_read in_data 0 16 } } }
	RowStart_read { ap_none {  { RowStart_read in_data 0 16 } } }
	RowEnd_read { ap_none {  { RowEnd_read in_data 0 16 } } }
	K11_read { ap_none {  { K11_read in_data 0 16 } } }
	K12_read { ap_none {  { K12_read in_data 0 16 } } }
	K13_read { ap_none {  { K13_read in_data 0 16 } } }
	K21_read { ap_none {  { K21_read in_data 0 16 } } }
	K22_read { ap_none {  { K22_read in_data 0 16 } } }
	K23_read { ap_none {  { K23_read in_data 0 16 } } }
	K31_read { ap_none {  { K31_read in_data 0 16 } } }
	K32_read { ap_none {  { K32_read in_data 0 16 } } }
	K33_read { ap_none {  { K33_read in_data 0 16 } } }
	ROffset_read { ap_none {  { ROffset_read in_data 0 10 } } }
	GOffset_read { ap_none {  { GOffset_read in_data 0 10 } } }
	BOffset_read { ap_none {  { BOffset_read in_data 0 10 } } }
	ClampMin_read { ap_none {  { ClampMin_read in_data 0 8 } } }
	ClipMax_read { ap_none {  { ClipMax_read in_data 0 8 } } }
	K11_2_read { ap_none {  { K11_2_read in_data 0 16 } } }
	K12_2_read { ap_none {  { K12_2_read in_data 0 16 } } }
	K13_2_read { ap_none {  { K13_2_read in_data 0 16 } } }
	K21_2_read { ap_none {  { K21_2_read in_data 0 16 } } }
	K22_2_read { ap_none {  { K22_2_read in_data 0 16 } } }
	K23_2_read { ap_none {  { K23_2_read in_data 0 16 } } }
	K31_2_read { ap_none {  { K31_2_read in_data 0 16 } } }
	K32_2_read { ap_none {  { K32_2_read in_data 0 16 } } }
	K33_2_read { ap_none {  { K33_2_read in_data 0 16 } } }
	ROffset_2_read { ap_none {  { ROffset_2_read in_data 0 10 } } }
	GOffset_2_read { ap_none {  { GOffset_2_read in_data 0 10 } } }
	BOffset_2_read { ap_none {  { BOffset_2_read in_data 0 10 } } }
	ClampMin_2_read { ap_none {  { ClampMin_2_read in_data 0 8 } } }
	ClipMax_2_read { ap_none {  { ClipMax_2_read in_data 0 8 } } }
	stream_csc { ap_fifo {  { stream_csc_din fifo_port_we 1 24 }  { stream_csc_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_csc_fifo_cap fifo_update 0 5 }  { stream_csc_full_n fifo_status 0 1 }  { stream_csc_write fifo_data 1 1 } } }
	HwReg_width_c20 { ap_fifo {  { HwReg_width_c20_din fifo_port_we 1 12 }  { HwReg_width_c20_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_width_c20_fifo_cap fifo_update 0 2 }  { HwReg_width_c20_full_n fifo_status 0 1 }  { HwReg_width_c20_write fifo_data 1 1 } } }
	HwReg_height_c26 { ap_fifo {  { HwReg_height_c26_din fifo_port_we 1 12 }  { HwReg_height_c26_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_height_c26_fifo_cap fifo_update 0 2 }  { HwReg_height_c26_full_n fifo_status 0 1 }  { HwReg_height_c26_write fifo_data 1 1 } } }
}
