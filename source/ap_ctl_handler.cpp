#include "ap_int.h"

void ap_ctl_handler(bool ap_start_enable, bool * ap_start_out, bool ap_ready_in, bool ap_done_in, bool ap_idle_in, ap_uint<3> * ap_status_out){
#pragma HLS RESOURCE variable=ap_status_out core=AXI4LiteS
#pragma HLS INTERFACE ap_none port=ap_done_in
#pragma HLS RESOURCE variable=ap_start_enable core=AXI4LiteS
#pragma HLS INTERFACE ap_none port=ap_status_out
#pragma HLS INTERFACE ap_none port=ap_idle_in
#pragma HLS INTERFACE ap_none port=ap_ready_in
#pragma HLS INTERFACE ap_none port=ap_start_out
#pragma HLS INTERFACE ap_none port=ap_start_enable
	*ap_start_out = ap_start_enable;
	//ap_status_out[2]: ap_ready_in, [1]: ap_done_in, [0]: ap_idle_in
	ap_uint<3> current_status = 0;
	if(ap_ready_in){
		current_status += 4;
	}
	if(ap_done_in){
		current_status += 2;
	}
	if(ap_idle_in){
		current_status += 1;
	}
	*ap_start_out = current_status;
}
