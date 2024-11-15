set moduleName v_csc
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {v_csc}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_video_V_data_V int 24 regular {axi_s 0 volatile  { s_axis_video Data } }  }
	{ s_axis_video_V_keep_V int 3 regular {axi_s 0 volatile  { s_axis_video Keep } }  }
	{ s_axis_video_V_strb_V int 3 regular {axi_s 0 volatile  { s_axis_video Strb } }  }
	{ s_axis_video_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video User } }  }
	{ s_axis_video_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video Last } }  }
	{ s_axis_video_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video ID } }  }
	{ s_axis_video_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video Dest } }  }
	{ InVideoFormat int 8 regular {axi_slave 0 stable }  }
	{ OutVideoFormat int 8 regular {axi_slave 0 stable }  }
	{ width int 16 regular {axi_slave 0 stable }  }
	{ height int 16 regular {axi_slave 0 stable }  }
	{ ColStart int 16 regular {axi_slave 0 stable }  }
	{ ColEnd int 16 regular {axi_slave 0 stable }  }
	{ RowStart int 16 regular {axi_slave 0 stable }  }
	{ RowEnd int 16 regular {axi_slave 0 stable }  }
	{ K11 int 16 regular {axi_slave 0 stable }  }
	{ K12 int 16 regular {axi_slave 0 stable }  }
	{ K13 int 16 regular {axi_slave 0 stable }  }
	{ K21 int 16 regular {axi_slave 0 stable }  }
	{ K22 int 16 regular {axi_slave 0 stable }  }
	{ K23 int 16 regular {axi_slave 0 stable }  }
	{ K31 int 16 regular {axi_slave 0 stable }  }
	{ K32 int 16 regular {axi_slave 0 stable }  }
	{ K33 int 16 regular {axi_slave 0 stable }  }
	{ ROffset int 10 regular {axi_slave 0 stable }  }
	{ GOffset int 10 regular {axi_slave 0 stable }  }
	{ BOffset int 10 regular {axi_slave 0 stable }  }
	{ ClampMin int 8 regular {axi_slave 0 stable }  }
	{ ClipMax int 8 regular {axi_slave 0 stable }  }
	{ K11_2 int 16 regular {axi_slave 0 stable }  }
	{ K12_2 int 16 regular {axi_slave 0 stable }  }
	{ K13_2 int 16 regular {axi_slave 0 stable }  }
	{ K21_2 int 16 regular {axi_slave 0 stable }  }
	{ K22_2 int 16 regular {axi_slave 0 stable }  }
	{ K23_2 int 16 regular {axi_slave 0 stable }  }
	{ K31_2 int 16 regular {axi_slave 0 stable }  }
	{ K32_2 int 16 regular {axi_slave 0 stable }  }
	{ K33_2 int 16 regular {axi_slave 0 stable }  }
	{ ROffset_2 int 10 regular {axi_slave 0 stable }  }
	{ GOffset_2 int 10 regular {axi_slave 0 stable }  }
	{ BOffset_2 int 10 regular {axi_slave 0 stable }  }
	{ ClampMin_2 int 8 regular {axi_slave 0 stable }  }
	{ ClipMax_2 int 8 regular {axi_slave 0 stable }  }
	{ m_axis_video_V_data_V int 24 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 3 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 3 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "InVideoFormat", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "OutVideoFormat", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "width", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "height", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "ColStart", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "ColEnd", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "RowStart", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "RowEnd", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "K11", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "K12", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "K13", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "K21", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "K22", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "K23", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "K31", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "K32", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "K33", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "ROffset", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 10, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "GOffset", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 10, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "BOffset", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 10, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "ClampMin", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "ClipMax", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "K11_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "K12_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "K13_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "K21_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "K22_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":224}, "offset_end" : {"in":231}} , 
 	{ "Name" : "K23_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":239}} , 
 	{ "Name" : "K31_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":247}} , 
 	{ "Name" : "K32_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":248}, "offset_end" : {"in":255}} , 
 	{ "Name" : "K33_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":263}} , 
 	{ "Name" : "ROffset_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 10, "direction" : "READONLY", "offset" : {"in":264}, "offset_end" : {"in":271}} , 
 	{ "Name" : "GOffset_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 10, "direction" : "READONLY", "offset" : {"in":272}, "offset_end" : {"in":279}} , 
 	{ "Name" : "BOffset_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 10, "direction" : "READONLY", "offset" : {"in":280}, "offset_end" : {"in":287}} , 
 	{ "Name" : "ClampMin_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":288}, "offset_end" : {"in":295}} , 
 	{ "Name" : "ClipMax_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":296}, "offset_end" : {"in":303}} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axis_video_TDATA sc_in sc_lv 24 signal 0 } 
	{ s_axis_video_TKEEP sc_in sc_lv 3 signal 1 } 
	{ s_axis_video_TSTRB sc_in sc_lv 3 signal 2 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 3 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 4 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 5 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 6 } 
	{ m_axis_video_TDATA sc_out sc_lv 24 signal 43 } 
	{ m_axis_video_TKEEP sc_out sc_lv 3 signal 44 } 
	{ m_axis_video_TSTRB sc_out sc_lv 3 signal 45 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 46 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 47 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 48 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 49 } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 6 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 6 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 49 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 49 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"v_csc","role":"start","value":"0","valid_bit":"0"},{"name":"v_csc","role":"continue","value":"0","valid_bit":"4"},{"name":"v_csc","role":"auto_start","value":"0","valid_bit":"7"},{"name":"InVideoFormat","role":"data","value":"16"},{"name":"OutVideoFormat","role":"data","value":"24"},{"name":"width","role":"data","value":"32"},{"name":"height","role":"data","value":"40"},{"name":"ColStart","role":"data","value":"48"},{"name":"ColEnd","role":"data","value":"56"},{"name":"RowStart","role":"data","value":"64"},{"name":"RowEnd","role":"data","value":"72"},{"name":"K11","role":"data","value":"80"},{"name":"K12","role":"data","value":"88"},{"name":"K13","role":"data","value":"96"},{"name":"K21","role":"data","value":"104"},{"name":"K22","role":"data","value":"112"},{"name":"K23","role":"data","value":"120"},{"name":"K31","role":"data","value":"128"},{"name":"K32","role":"data","value":"136"},{"name":"K33","role":"data","value":"144"},{"name":"ROffset","role":"data","value":"152"},{"name":"GOffset","role":"data","value":"160"},{"name":"BOffset","role":"data","value":"168"},{"name":"ClampMin","role":"data","value":"176"},{"name":"ClipMax","role":"data","value":"184"},{"name":"K11_2","role":"data","value":"192"},{"name":"K12_2","role":"data","value":"200"},{"name":"K13_2","role":"data","value":"208"},{"name":"K21_2","role":"data","value":"216"},{"name":"K22_2","role":"data","value":"224"},{"name":"K23_2","role":"data","value":"232"},{"name":"K31_2","role":"data","value":"240"},{"name":"K32_2","role":"data","value":"248"},{"name":"K33_2","role":"data","value":"256"},{"name":"ROffset_2","role":"data","value":"264"},{"name":"GOffset_2","role":"data","value":"272"},{"name":"BOffset_2","role":"data","value":"280"},{"name":"ClampMin_2","role":"data","value":"288"},{"name":"ClipMax_2","role":"data","value":"296"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"v_csc","role":"start","value":"0","valid_bit":"0"},{"name":"v_csc","role":"done","value":"0","valid_bit":"1"},{"name":"v_csc","role":"idle","value":"0","valid_bit":"2"},{"name":"v_csc","role":"ready","value":"0","valid_bit":"3"},{"name":"v_csc","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "19", "26", "29", "41", "45", "51", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120"],
		"CDFG" : "v_csc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4679", "EstimateLatencyMax" : "1073938438",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "Block_entry3_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "51", "Name" : "MultiPixStream2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_data_V"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_keep_V"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_strb_V"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_user_V"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_last_V"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_id_V"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_dest_V"}]},
			{"Name" : "InVideoFormat", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "InVideoFormat"}]},
			{"Name" : "OutVideoFormat", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "OutVideoFormat"}]},
			{"Name" : "width", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "width"}]},
			{"Name" : "height", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "height"}]},
			{"Name" : "ColStart", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "ColStart"}]},
			{"Name" : "ColEnd", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "ColEnd"}]},
			{"Name" : "RowStart", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "RowStart"}]},
			{"Name" : "RowEnd", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "RowEnd"}]},
			{"Name" : "K11", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K11"}]},
			{"Name" : "K12", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K12"}]},
			{"Name" : "K13", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K13"}]},
			{"Name" : "K21", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K21"}]},
			{"Name" : "K22", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K22"}]},
			{"Name" : "K23", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K23"}]},
			{"Name" : "K31", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K31"}]},
			{"Name" : "K32", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K32"}]},
			{"Name" : "K33", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K33"}]},
			{"Name" : "ROffset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "ROffset"}]},
			{"Name" : "GOffset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "GOffset"}]},
			{"Name" : "BOffset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "BOffset"}]},
			{"Name" : "ClampMin", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "ClampMin"}]},
			{"Name" : "ClipMax", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "ClipMax"}]},
			{"Name" : "K11_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K11_2"}]},
			{"Name" : "K12_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K12_2"}]},
			{"Name" : "K13_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K13_2"}]},
			{"Name" : "K21_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K21_2"}]},
			{"Name" : "K22_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K22_2"}]},
			{"Name" : "K23_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K23_2"}]},
			{"Name" : "K31_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K31_2"}]},
			{"Name" : "K32_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K32_2"}]},
			{"Name" : "K33_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "K33_2"}]},
			{"Name" : "ROffset_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "ROffset_2"}]},
			{"Name" : "GOffset_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "GOffset_2"}]},
			{"Name" : "BOffset_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "BOffset_2"}]},
			{"Name" : "ClampMin_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "ClampMin_2"}]},
			{"Name" : "ClipMax_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_entry3_proc_U0", "Port" : "ClipMax_2"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_data_V"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_keep_V"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_strb_V"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_user_V"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_last_V"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_id_V"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry3_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry3_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "InVideoFormat", "Type" : "None", "Direction" : "I"},
			{"Name" : "OutVideoFormat", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "ColEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "RowStart", "Type" : "None", "Direction" : "I"},
			{"Name" : "RowEnd", "Type" : "None", "Direction" : "I"},
			{"Name" : "K11", "Type" : "None", "Direction" : "I"},
			{"Name" : "K12", "Type" : "None", "Direction" : "I"},
			{"Name" : "K13", "Type" : "None", "Direction" : "I"},
			{"Name" : "K21", "Type" : "None", "Direction" : "I"},
			{"Name" : "K22", "Type" : "None", "Direction" : "I"},
			{"Name" : "K23", "Type" : "None", "Direction" : "I"},
			{"Name" : "K31", "Type" : "None", "Direction" : "I"},
			{"Name" : "K32", "Type" : "None", "Direction" : "I"},
			{"Name" : "K33", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "GOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "BOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClampMin", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClipMax", "Type" : "None", "Direction" : "I"},
			{"Name" : "K11_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K12_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K21_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K22_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K23_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K31_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K32_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K33_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROffset_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "GOffset_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "BOffset_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClampMin_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ClipMax_2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0", "Parent" : "0", "Child" : ["4", "6", "8", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "AXIvideo2MultiPixStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4678", "EstimateLatencyMax" : "8313846",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "103", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Port" : "stream_in", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "HwReg_width_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c29_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "axi_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_start", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196", "Parent" : "3", "Child" : ["7"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "3842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sof_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_last_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_data_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "cond", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "eol_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_data_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225", "Parent" : "3", "Child" : ["9"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "axi_data_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eol_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "axi_data_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_eol", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_225.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_reg_unsigned_short_s_fu_257", "Parent" : "3",
		"CDFG" : "reg_unsigned_short_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_reg_unsigned_short_s_fu_262", "Parent" : "3",
		"CDFG" : "reg_unsigned_short_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_data_V_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_keep_V_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_strb_V_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_user_V_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_last_V_U", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_id_V_U", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.regslice_both_s_axis_video_V_dest_V_U", "Parent" : "3"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_1_U0", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24"],
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
			{"Name" : "stream_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "103", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2_fu_148", "Port" : "stream_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "97", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "stream_in_vresampled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "106", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2_fu_148", "Port" : "stream_in_vresampled", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_width_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c28_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_953_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_1_U0.linebuf_y_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_1_U0.linebuf_y_1_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_1_U0.linebuf_c_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_1_U0.linebuf_c_1_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_1_U0.grp_v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2_fu_148", "Parent" : "19", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_1_U0.grp_v_vcresampler_core_1_Pipeline_VITIS_LOOP_955_2_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_2_U0", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "v_hcresampler_core_2",
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
			{"Name" : "stream_in_vresampled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["19"], "DependentChan" : "106", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_v_hcresampler_core_2_Pipeline_VITIS_LOOP_724_2_fu_180", "Port" : "stream_in_vresampled", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["19"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["19"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "99", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "stream_in_hresampled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "109", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_v_hcresampler_core_2_Pipeline_VITIS_LOOP_724_2_fu_180", "Port" : "stream_in_hresampled", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_width_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c27_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_722_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_2_U0.grp_v_hcresampler_core_2_Pipeline_VITIS_LOOP_724_2_fu_180", "Parent" : "26", "Child" : ["28"],
		"CDFG" : "v_hcresampler_core_2_Pipeline_VITIS_LOOP_724_2",
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
			{"Name" : "pixbuf_y_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0536742_lcssa768_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln685", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln720", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in_vresampled", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_vresampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_hresampled", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_in_hresampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_6_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pixbuf_y_5_out", "Type" : "Vld", "Direction" : "O"},
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
			{"Name" : "p_0_0_0_0_0536737_i_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_724_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_2_U0.grp_v_hcresampler_core_2_Pipeline_VITIS_LOOP_724_2_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0", "Parent" : "0", "Child" : ["30"],
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
			{"Name" : "stream_in_hresampled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["26"], "DependentChan" : "109", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348", "Port" : "stream_in_hresampled", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["26"], "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["26"], "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ColStart_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "65", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ColEnd_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "66", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "RowStart_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "67", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "RowEnd_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "68", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K11_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "69", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K12_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "70", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K13_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "71", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K21_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "72", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K22_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "73", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K23_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "74", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K31_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "75", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K32_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "76", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K33_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "77", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ROffset_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "78", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "GOffset_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "79", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "BOffset_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "80", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ClampMin_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "81", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ClipMax_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "82", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K11_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "83", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K12_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "84", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K13_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "85", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K21_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "86", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K22_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "87", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K23_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "88", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K31_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "89", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K32_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "90", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "K33_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "91", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ROffset_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "92", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "GOffset_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "93", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "BOffset_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "94", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ClampMin_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "95", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "ClipMax_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "96", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "stream_csc", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "112", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348", "Port" : "stream_csc", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_width_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c26_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_89_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348", "Parent" : "29", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U153", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U154", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U155", "Parent" : "30"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U156", "Parent" : "30"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U157", "Parent" : "30"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mul_16s_8ns_24_1_1_U158", "Parent" : "30"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mac_muladd_8ns_16s_22s_25_4_1_U159", "Parent" : "30"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mac_muladd_8ns_16s_22s_25_4_1_U160", "Parent" : "30"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.mac_muladd_8ns_16s_22s_25_4_1_U161", "Parent" : "30"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0", "Parent" : "0", "Child" : ["42"],
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
			{"Name" : "stream_csc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "112", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186", "Port" : "stream_csc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "100", "DependentChanDepth" : "6", "DependentChanType" : "1"},
			{"Name" : "stream_out_hresampled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["45"], "DependentChan" : "115", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186", "Port" : "stream_out_hresampled", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_width_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["45"], "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["45"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c25_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_722_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186", "Parent" : "41", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186.mux_4_2_8_1_1_U237", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_724_2_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0", "Parent" : "0", "Child" : ["46", "47", "48", "49"],
		"CDFG" : "v_vcresampler_core",
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
			{"Name" : "stream_out_hresampled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "115", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_955_2_fu_138", "Port" : "stream_out_hresampled", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "98", "DependentChanDepth" : "7", "DependentChanType" : "1"},
			{"Name" : "stream_out_vresampled", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["51"], "DependentChan" : "118", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_955_2_fu_138", "Port" : "stream_out_vresampled", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["51"], "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_width_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["51"], "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_height_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_953_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.linebuf_y_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.linebuf_c_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.linebuf_c_2_U", "Parent" : "45"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_955_2_fu_138", "Parent" : "45", "Child" : ["50"],
		"CDFG" : "v_vcresampler_core_Pipeline_VITIS_LOOP_955_2",
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
			{"Name" : "cmp105_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_y_cast_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp393_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp33_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_out_hresampled", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_out_hresampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_vresampled", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_vresampled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_0607_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0423605_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0603_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0601_i_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0423599_i_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_955_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_vcresampler_core_U0.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_955_2_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0", "Parent" : "0", "Child" : ["52", "54", "55", "56", "57", "58", "59", "60", "61", "62"],
		"CDFG" : "MultiPixStream2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4419", "EstimateLatencyMax" : "8305203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_out_vresampled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "118", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120", "Port" : "stream_out_vresampled", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120", "Port" : "m_axis_video_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120", "Port" : "m_axis_video_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120", "Port" : "m_axis_video_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120", "Port" : "m_axis_video_V_user_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120", "Port" : "m_axis_video_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120", "Port" : "m_axis_video_V_id_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120", "Port" : "m_axis_video_V_dest_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "64", "DependentChanDepth" : "8", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_617_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120", "Parent" : "51", "Child" : ["53"],
		"CDFG" : "MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "3843",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sof", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"BlockSignal" : [
					{"Name" : "m_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_out_vresampled", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_out_vresampled_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_619_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_reg_unsigned_short_s_fu_145", "Parent" : "51",
		"CDFG" : "reg_unsigned_short_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_reg_unsigned_short_s_fu_151", "Parent" : "51",
		"CDFG" : "reg_unsigned_short_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_data_V_U", "Parent" : "51"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_keep_V_U", "Parent" : "51"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_strb_V_U", "Parent" : "51"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_user_V_U", "Parent" : "51"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_last_V_U", "Parent" : "51"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_id_V_U", "Parent" : "51"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.regslice_both_m_axis_video_V_dest_V_U", "Parent" : "51"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_InVideoFormat_channel_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_OutVideoFormat_channel_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_ColStart_channel_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_ColEnd_channel_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_RowStart_channel_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_RowEnd_channel_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K11_channel_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K12_channel_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K13_channel_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K21_channel_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K22_channel_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K23_channel_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K31_channel_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K32_channel_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K33_channel_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_ROffset_channel_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_GOffset_channel_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_BOffset_channel_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_ClampMin_channel_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_ClipMax_channel_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K11_2_channel_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K12_2_channel_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K13_2_channel_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K21_2_channel_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K22_2_channel_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K23_2_channel_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K31_2_channel_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K32_2_channel_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_K33_2_channel_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_ROffset_2_channel_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_GOffset_2_channel_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_BOffset_2_channel_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_ClampMin_2_channel_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_ClipMax_2_channel_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThru_420_In_loc_channel_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThru_420_Out_loc_channel_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThru_422_or_420_In_loc_channel_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPassThru_422_or_420_Out_loc_channel_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_width_c24_channel_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_height_c30_channel_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_in_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_width_c23_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_height_c29_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_in_vresampled_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_width_c22_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_height_c28_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_in_hresampled_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_width_c21_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_height_c27_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_csc_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_width_c20_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_height_c26_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_out_hresampled_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_width_c19_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_height_c25_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_out_vresampled_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_width_c_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_height_c_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_csc {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		InVideoFormat {Type I LastRead 0 FirstWrite -1}
		OutVideoFormat {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		ColStart {Type I LastRead 0 FirstWrite -1}
		ColEnd {Type I LastRead 0 FirstWrite -1}
		RowStart {Type I LastRead 0 FirstWrite -1}
		RowEnd {Type I LastRead 0 FirstWrite -1}
		K11 {Type I LastRead 0 FirstWrite -1}
		K12 {Type I LastRead 0 FirstWrite -1}
		K13 {Type I LastRead 0 FirstWrite -1}
		K21 {Type I LastRead 0 FirstWrite -1}
		K22 {Type I LastRead 0 FirstWrite -1}
		K23 {Type I LastRead 0 FirstWrite -1}
		K31 {Type I LastRead 0 FirstWrite -1}
		K32 {Type I LastRead 0 FirstWrite -1}
		K33 {Type I LastRead 0 FirstWrite -1}
		ROffset {Type I LastRead 0 FirstWrite -1}
		GOffset {Type I LastRead 0 FirstWrite -1}
		BOffset {Type I LastRead 0 FirstWrite -1}
		ClampMin {Type I LastRead 0 FirstWrite -1}
		ClipMax {Type I LastRead 0 FirstWrite -1}
		K11_2 {Type I LastRead 0 FirstWrite -1}
		K12_2 {Type I LastRead 0 FirstWrite -1}
		K13_2 {Type I LastRead 0 FirstWrite -1}
		K21_2 {Type I LastRead 0 FirstWrite -1}
		K22_2 {Type I LastRead 0 FirstWrite -1}
		K23_2 {Type I LastRead 0 FirstWrite -1}
		K31_2 {Type I LastRead 0 FirstWrite -1}
		K32_2 {Type I LastRead 0 FirstWrite -1}
		K33_2 {Type I LastRead 0 FirstWrite -1}
		ROffset_2 {Type I LastRead 0 FirstWrite -1}
		GOffset_2 {Type I LastRead 0 FirstWrite -1}
		BOffset_2 {Type I LastRead 0 FirstWrite -1}
		ClampMin_2 {Type I LastRead 0 FirstWrite -1}
		ClipMax_2 {Type I LastRead 0 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	Block_entry3_proc {
		InVideoFormat {Type I LastRead 0 FirstWrite -1}
		OutVideoFormat {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		ColStart {Type I LastRead 0 FirstWrite -1}
		ColEnd {Type I LastRead 0 FirstWrite -1}
		RowStart {Type I LastRead 0 FirstWrite -1}
		RowEnd {Type I LastRead 0 FirstWrite -1}
		K11 {Type I LastRead 0 FirstWrite -1}
		K12 {Type I LastRead 0 FirstWrite -1}
		K13 {Type I LastRead 0 FirstWrite -1}
		K21 {Type I LastRead 0 FirstWrite -1}
		K22 {Type I LastRead 0 FirstWrite -1}
		K23 {Type I LastRead 0 FirstWrite -1}
		K31 {Type I LastRead 0 FirstWrite -1}
		K32 {Type I LastRead 0 FirstWrite -1}
		K33 {Type I LastRead 0 FirstWrite -1}
		ROffset {Type I LastRead 0 FirstWrite -1}
		GOffset {Type I LastRead 0 FirstWrite -1}
		BOffset {Type I LastRead 0 FirstWrite -1}
		ClampMin {Type I LastRead 0 FirstWrite -1}
		ClipMax {Type I LastRead 0 FirstWrite -1}
		K11_2 {Type I LastRead 0 FirstWrite -1}
		K12_2 {Type I LastRead 0 FirstWrite -1}
		K13_2 {Type I LastRead 0 FirstWrite -1}
		K21_2 {Type I LastRead 0 FirstWrite -1}
		K22_2 {Type I LastRead 0 FirstWrite -1}
		K23_2 {Type I LastRead 0 FirstWrite -1}
		K31_2 {Type I LastRead 0 FirstWrite -1}
		K32_2 {Type I LastRead 0 FirstWrite -1}
		K33_2 {Type I LastRead 0 FirstWrite -1}
		ROffset_2 {Type I LastRead 0 FirstWrite -1}
		GOffset_2 {Type I LastRead 0 FirstWrite -1}
		BOffset_2 {Type I LastRead 0 FirstWrite -1}
		ClampMin_2 {Type I LastRead 0 FirstWrite -1}
		ClipMax_2 {Type I LastRead 0 FirstWrite -1}}
	AXIvideo2MultiPixStream {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		stream_in {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		HwReg_width_c23 {Type O LastRead -1 FirstWrite 0}
		HwReg_height_c29 {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_out {Type O LastRead -1 FirstWrite 0}
		axi_last_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_width {
		sof_4 {Type I LastRead 0 FirstWrite -1}
		axi_last_2 {Type I LastRead 0 FirstWrite -1}
		axi_data_13 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		cond {Type I LastRead 0 FirstWrite -1}
		stream_in {Type O LastRead -1 FirstWrite 1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		eol_out {Type O LastRead -1 FirstWrite 0}
		axi_data_14_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol {
		axi_data_14_reload {Type I LastRead 0 FirstWrite -1}
		eol_reload {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_4_out {Type O LastRead -1 FirstWrite 0}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}
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
		p_0_0_0_0_0423599_i_out {Type IO LastRead 2 FirstWrite 1}}
	v_hcresampler_core_2 {
		stream_in_vresampled {Type I LastRead 1 FirstWrite -1}
		HwReg_height {Type I LastRead 0 FirstWrite -1}
		HwReg_width {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_in_hresampled {Type O LastRead -1 FirstWrite 2}
		HwReg_width_c21 {Type O LastRead -1 FirstWrite 0}
		HwReg_height_c27 {Type O LastRead -1 FirstWrite 0}}
	v_hcresampler_core_2_Pipeline_VITIS_LOOP_724_2 {
		pixbuf_y_4 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_3 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_2 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0536742_lcssa768_i {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		select_ln685 {Type I LastRead 0 FirstWrite -1}
		zext_ln720 {Type I LastRead 0 FirstWrite -1}
		stream_in_vresampled {Type I LastRead 1 FirstWrite -1}
		stream_in_hresampled {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_9_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_8_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_7_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_6_out {Type IO LastRead 2 FirstWrite 2}
		pixbuf_y_5_out {Type O LastRead -1 FirstWrite 2}
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
		p_0_0_0_0_0536737_i_out {Type IO LastRead 2 FirstWrite 1}}
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
		stream_csc {Type O LastRead -1 FirstWrite 5}}
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
		filt_res1_1_out {Type IO LastRead 2 FirstWrite 2}}
	v_vcresampler_core {
		stream_out_hresampled {Type I LastRead 1 FirstWrite -1}
		HwReg_height {Type I LastRead 0 FirstWrite -1}
		HwReg_width {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_out_vresampled {Type O LastRead -1 FirstWrite 2}
		HwReg_width_c {Type O LastRead -1 FirstWrite 0}
		HwReg_height_c {Type O LastRead -1 FirstWrite 0}}
	v_vcresampler_core_Pipeline_VITIS_LOOP_955_2 {
		loopWidth {Type I LastRead 0 FirstWrite -1}
		cmp105_i {Type I LastRead 0 FirstWrite -1}
		out_y_cast_i {Type I LastRead 0 FirstWrite -1}
		cmp393_i {Type I LastRead 0 FirstWrite -1}
		linebuf_y {Type IO LastRead 2 FirstWrite 2}
		linebuf_c {Type IO LastRead 1 FirstWrite 2}
		linebuf_c_2 {Type IO LastRead 1 FirstWrite 2}
		cmp33_i {Type I LastRead 0 FirstWrite -1}
		stream_out_hresampled {Type I LastRead 1 FirstWrite -1}
		stream_out_vresampled {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_0607_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_0423605_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_2_0_0_0603_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_0601_i_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_0423599_i_out {Type IO LastRead 2 FirstWrite 1}}
	MultiPixStream2AXIvideo {
		stream_out_vresampled {Type I LastRead 1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthOut {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}}
	MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2 {
		sof {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		stream_out_vresampled {Type I LastRead 1 FirstWrite -1}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4679", "Max" : "1073938438"}
	, {"Name" : "Interval", "Min" : "4679", "Max" : "1073938427"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_video_V_data_V { axis {  { s_axis_video_TDATA in_data 0 24 } } }
	s_axis_video_V_keep_V { axis {  { s_axis_video_TKEEP in_data 0 3 } } }
	s_axis_video_V_strb_V { axis {  { s_axis_video_TSTRB in_data 0 3 } } }
	s_axis_video_V_user_V { axis {  { s_axis_video_TUSER in_data 0 1 } } }
	s_axis_video_V_last_V { axis {  { s_axis_video_TLAST in_data 0 1 } } }
	s_axis_video_V_id_V { axis {  { s_axis_video_TID in_data 0 1 } } }
	s_axis_video_V_dest_V { axis {  { s_axis_video_TDEST in_data 0 1 }  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TREADY in_acc 1 1 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 24 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 3 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 3 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TDEST out_data 1 1 }  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
