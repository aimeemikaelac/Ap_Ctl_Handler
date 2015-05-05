set moduleName ap_ctl_handler
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName ap_ctl_handler
set C_modelType { void 0 }
set C_modelArgList { 
	{ ap_start_enable uint 1 unused  }
	{ ap_start_out int 1 regular {pointer 1}  }
	{ ap_ready_in uint 1 regular  }
	{ ap_done_in uint 1 regular  }
	{ ap_idle_in uint 1 regular  }
	{ ap_status_out_V int 3 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ap_start_enable", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ap_start_enable","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_start_out", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ap_start_out","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_ready_in", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ap_ready_in","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_done_in", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ap_done_in","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_idle_in", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ap_idle_in","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_status_out_V", "interface" : "wire", "bitwidth" : 3,"bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "ap_status_out.V","cData": "uint3","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_start_enable sc_in sc_logic 1 signal 0 } 
	{ ap_start_out sc_out sc_logic 1 signal 1 } 
	{ ap_ready_in sc_in sc_logic 1 signal 2 } 
	{ ap_done_in sc_in sc_logic 1 signal 3 } 
	{ ap_idle_in sc_in sc_logic 1 signal 4 } 
	{ ap_status_out_V sc_in sc_lv 3 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_start_enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_start_enable", "role": "default" }} , 
 	{ "name": "ap_start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_start_out", "role": "default" }} , 
 	{ "name": "ap_ready_in", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ready_in", "role": "default" }} , 
 	{ "name": "ap_done_in", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_done_in", "role": "default" }} , 
 	{ "name": "ap_idle_in", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_idle_in", "role": "default" }} , 
 	{ "name": "ap_status_out_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ap_status_out_V", "role": "default" }}  ]}
set Spec2ImplPortList { 
	ap_start_enable { ap_none {  { ap_start_enable in_data 0 1 } } }
	ap_start_out { ap_none {  { ap_start_out out_data 1 1 } } }
	ap_ready_in { ap_none {  { ap_ready_in in_data 0 1 } } }
	ap_done_in { ap_none {  { ap_done_in in_data 0 1 } } }
	ap_idle_in { ap_none {  { ap_idle_in in_data 0 1 } } }
	ap_status_out_V { ap_none {  { ap_status_out_V in_data 0 3 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
