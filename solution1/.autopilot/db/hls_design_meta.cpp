#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_start_enable", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("ap_start_out", 1, hls_out, 1, "ap_none", "out_data", 1),
	Port_Property("ap_ready_in", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("ap_done_in", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("ap_idle_in", 1, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("ap_status_out_V", 3, hls_in, 5, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "ap_ctl_handler";
