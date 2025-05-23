set moduleName accelerator_Pipeline_VITIS_LOOP_55_1
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
set C_modelName {accelerator_Pipeline_VITIS_LOOP_55_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict bias_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bias_2 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ bias_1 int 16 regular {array 2 { 1 } 1 1 }  }
	{ bias_2 int 16 regular {array 2 { 1 } 1 1 }  }
	{ w1_1_load int 16 regular  }
	{ w1_0_load int 16 regular  }
	{ w1_1_load_1 int 16 regular  }
	{ w1_0_load_1 int 16 regular  }
	{ w2_1_load int 16 regular  }
	{ w2_0_load int 16 regular  }
	{ w2_1_load_1 int 16 regular  }
	{ w2_0_load_1 int 16 regular  }
	{ w2_local_3_out int 16 regular {pointer 1}  }
	{ w2_local_2_out int 16 regular {pointer 1}  }
	{ w1_local_3_out int 16 regular {pointer 1}  }
	{ w1_local_2_out int 16 regular {pointer 1}  }
	{ w2_local_1_out int 16 regular {pointer 1}  }
	{ w2_local_out int 16 regular {pointer 1}  }
	{ w1_local_1_out int 16 regular {pointer 1}  }
	{ w1_local_out int 16 regular {pointer 1}  }
	{ bias_2_local_idx90_promoted157_out int 16 regular {pointer 1}  }
	{ bias_2_local_idx89_promoted155_out int 16 regular {pointer 1}  }
	{ bias_1_local_idx97_promoted153_out int 16 regular {pointer 1}  }
	{ bias_1_local_idx96_promoted151_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bias_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_1_load_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_0_load_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_1_load_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_0_load_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_2_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_2_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_2_local_idx90_promoted157_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_2_local_idx89_promoted155_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_idx97_promoted153_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_idx96_promoted151_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bias_1_address0 sc_out sc_lv 1 signal 0 } 
	{ bias_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ bias_1_q0 sc_in sc_lv 16 signal 0 } 
	{ bias_2_address0 sc_out sc_lv 1 signal 1 } 
	{ bias_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ bias_2_q0 sc_in sc_lv 16 signal 1 } 
	{ w1_1_load sc_in sc_lv 16 signal 2 } 
	{ w1_0_load sc_in sc_lv 16 signal 3 } 
	{ w1_1_load_1 sc_in sc_lv 16 signal 4 } 
	{ w1_0_load_1 sc_in sc_lv 16 signal 5 } 
	{ w2_1_load sc_in sc_lv 16 signal 6 } 
	{ w2_0_load sc_in sc_lv 16 signal 7 } 
	{ w2_1_load_1 sc_in sc_lv 16 signal 8 } 
	{ w2_0_load_1 sc_in sc_lv 16 signal 9 } 
	{ w2_local_3_out sc_out sc_lv 16 signal 10 } 
	{ w2_local_3_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ w2_local_2_out sc_out sc_lv 16 signal 11 } 
	{ w2_local_2_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ w1_local_3_out sc_out sc_lv 16 signal 12 } 
	{ w1_local_3_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ w1_local_2_out sc_out sc_lv 16 signal 13 } 
	{ w1_local_2_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ w2_local_1_out sc_out sc_lv 16 signal 14 } 
	{ w2_local_1_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ w2_local_out sc_out sc_lv 16 signal 15 } 
	{ w2_local_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ w1_local_1_out sc_out sc_lv 16 signal 16 } 
	{ w1_local_1_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ w1_local_out sc_out sc_lv 16 signal 17 } 
	{ w1_local_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ bias_2_local_idx90_promoted157_out sc_out sc_lv 16 signal 18 } 
	{ bias_2_local_idx90_promoted157_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ bias_2_local_idx89_promoted155_out sc_out sc_lv 16 signal 19 } 
	{ bias_2_local_idx89_promoted155_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ bias_1_local_idx97_promoted153_out sc_out sc_lv 16 signal 20 } 
	{ bias_1_local_idx97_promoted153_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ bias_1_local_idx96_promoted151_out sc_out sc_lv 16 signal 21 } 
	{ bias_1_local_idx96_promoted151_out_ap_vld sc_out sc_logic 1 outvld 21 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bias_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "address0" }} , 
 	{ "name": "bias_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "ce0" }} , 
 	{ "name": "bias_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1", "role": "q0" }} , 
 	{ "name": "bias_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2", "role": "address0" }} , 
 	{ "name": "bias_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2", "role": "ce0" }} , 
 	{ "name": "bias_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2", "role": "q0" }} , 
 	{ "name": "w1_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_1_load", "role": "default" }} , 
 	{ "name": "w1_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_0_load", "role": "default" }} , 
 	{ "name": "w1_1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_1_load_1", "role": "default" }} , 
 	{ "name": "w1_0_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_0_load_1", "role": "default" }} , 
 	{ "name": "w2_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_1_load", "role": "default" }} , 
 	{ "name": "w2_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_0_load", "role": "default" }} , 
 	{ "name": "w2_1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_1_load_1", "role": "default" }} , 
 	{ "name": "w2_0_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_0_load_1", "role": "default" }} , 
 	{ "name": "w2_local_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_3_out", "role": "default" }} , 
 	{ "name": "w2_local_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_3_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_2_out", "role": "default" }} , 
 	{ "name": "w2_local_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_2_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_3_out", "role": "default" }} , 
 	{ "name": "w1_local_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_3_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_2_out", "role": "default" }} , 
 	{ "name": "w1_local_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_2_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_out", "role": "default" }} , 
 	{ "name": "w2_local_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_1_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_out", "role": "default" }} , 
 	{ "name": "w2_local_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_out", "role": "default" }} , 
 	{ "name": "w1_local_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_1_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_out", "role": "default" }} , 
 	{ "name": "w1_local_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_out", "role": "ap_vld" }} , 
 	{ "name": "bias_2_local_idx90_promoted157_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_idx90_promoted157_out", "role": "default" }} , 
 	{ "name": "bias_2_local_idx90_promoted157_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_idx90_promoted157_out", "role": "ap_vld" }} , 
 	{ "name": "bias_2_local_idx89_promoted155_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_idx89_promoted155_out", "role": "default" }} , 
 	{ "name": "bias_2_local_idx89_promoted155_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_idx89_promoted155_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_idx97_promoted153_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_idx97_promoted153_out", "role": "default" }} , 
 	{ "name": "bias_1_local_idx97_promoted153_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_idx97_promoted153_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_idx96_promoted151_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_idx96_promoted151_out", "role": "default" }} , 
 	{ "name": "bias_1_local_idx96_promoted151_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_idx96_promoted151_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_55_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bias_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w1_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx90_promoted157_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx89_promoted155_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx97_promoted153_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx96_promoted151_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_Pipeline_VITIS_LOOP_55_1 {
		bias_1 {Type I LastRead 1 FirstWrite -1}
		bias_2 {Type I LastRead 1 FirstWrite -1}
		w1_1_load {Type I LastRead 0 FirstWrite -1}
		w1_0_load {Type I LastRead 0 FirstWrite -1}
		w1_1_load_1 {Type I LastRead 0 FirstWrite -1}
		w1_0_load_1 {Type I LastRead 0 FirstWrite -1}
		w2_1_load {Type I LastRead 0 FirstWrite -1}
		w2_0_load {Type I LastRead 0 FirstWrite -1}
		w2_1_load_1 {Type I LastRead 0 FirstWrite -1}
		w2_0_load_1 {Type I LastRead 0 FirstWrite -1}
		w2_local_3_out {Type O LastRead -1 FirstWrite 1}
		w2_local_2_out {Type O LastRead -1 FirstWrite 1}
		w1_local_3_out {Type O LastRead -1 FirstWrite 1}
		w1_local_2_out {Type O LastRead -1 FirstWrite 1}
		w2_local_1_out {Type O LastRead -1 FirstWrite 1}
		w2_local_out {Type O LastRead -1 FirstWrite 1}
		w1_local_1_out {Type O LastRead -1 FirstWrite 1}
		w1_local_out {Type O LastRead -1 FirstWrite 1}
		bias_2_local_idx90_promoted157_out {Type O LastRead -1 FirstWrite 1}
		bias_2_local_idx89_promoted155_out {Type O LastRead -1 FirstWrite 1}
		bias_1_local_idx97_promoted153_out {Type O LastRead -1 FirstWrite 1}
		bias_1_local_idx96_promoted151_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bias_1 { ap_memory {  { bias_1_address0 mem_address 1 1 }  { bias_1_ce0 mem_ce 1 1 }  { bias_1_q0 mem_dout 0 16 } } }
	bias_2 { ap_memory {  { bias_2_address0 mem_address 1 1 }  { bias_2_ce0 mem_ce 1 1 }  { bias_2_q0 mem_dout 0 16 } } }
	w1_1_load { ap_none {  { w1_1_load in_data 0 16 } } }
	w1_0_load { ap_none {  { w1_0_load in_data 0 16 } } }
	w1_1_load_1 { ap_none {  { w1_1_load_1 in_data 0 16 } } }
	w1_0_load_1 { ap_none {  { w1_0_load_1 in_data 0 16 } } }
	w2_1_load { ap_none {  { w2_1_load in_data 0 16 } } }
	w2_0_load { ap_none {  { w2_0_load in_data 0 16 } } }
	w2_1_load_1 { ap_none {  { w2_1_load_1 in_data 0 16 } } }
	w2_0_load_1 { ap_none {  { w2_0_load_1 in_data 0 16 } } }
	w2_local_3_out { ap_vld {  { w2_local_3_out out_data 1 16 }  { w2_local_3_out_ap_vld out_vld 1 1 } } }
	w2_local_2_out { ap_vld {  { w2_local_2_out out_data 1 16 }  { w2_local_2_out_ap_vld out_vld 1 1 } } }
	w1_local_3_out { ap_vld {  { w1_local_3_out out_data 1 16 }  { w1_local_3_out_ap_vld out_vld 1 1 } } }
	w1_local_2_out { ap_vld {  { w1_local_2_out out_data 1 16 }  { w1_local_2_out_ap_vld out_vld 1 1 } } }
	w2_local_1_out { ap_vld {  { w2_local_1_out out_data 1 16 }  { w2_local_1_out_ap_vld out_vld 1 1 } } }
	w2_local_out { ap_vld {  { w2_local_out out_data 1 16 }  { w2_local_out_ap_vld out_vld 1 1 } } }
	w1_local_1_out { ap_vld {  { w1_local_1_out out_data 1 16 }  { w1_local_1_out_ap_vld out_vld 1 1 } } }
	w1_local_out { ap_vld {  { w1_local_out out_data 1 16 }  { w1_local_out_ap_vld out_vld 1 1 } } }
	bias_2_local_idx90_promoted157_out { ap_vld {  { bias_2_local_idx90_promoted157_out out_data 1 16 }  { bias_2_local_idx90_promoted157_out_ap_vld out_vld 1 1 } } }
	bias_2_local_idx89_promoted155_out { ap_vld {  { bias_2_local_idx89_promoted155_out out_data 1 16 }  { bias_2_local_idx89_promoted155_out_ap_vld out_vld 1 1 } } }
	bias_1_local_idx97_promoted153_out { ap_vld {  { bias_1_local_idx97_promoted153_out out_data 1 16 }  { bias_1_local_idx97_promoted153_out_ap_vld out_vld 1 1 } } }
	bias_1_local_idx96_promoted151_out { ap_vld {  { bias_1_local_idx96_promoted151_out out_data 1 16 }  { bias_1_local_idx96_promoted151_out_ap_vld out_vld 1 1 } } }
}
