// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ap_ctl_handler,hls_ip_2014_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.728500,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module ap_ctl_handler (
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_start_enable,
        ap_start_out,
        ap_ready_in,
        ap_done_in,
        ap_idle_in,
        ap_status_out_V
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_true = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv3_6 = 3'b110;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_1 = 1'b1;

input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_start_enable;
output   ap_start_out;
input   ap_ready_in;
input   ap_done_in;
input   ap_idle_in;
input  [2:0] ap_status_out_V;

wire   [0:0] p_s_fu_78_p0;
wire   [0:0] current_status_V_fu_86_p0;
wire   [0:0] current_status_V_1_fu_94_p0;
wire   [2:0] current_status_V_fu_86_p3;
wire   [2:0] p_s_fu_78_p3;
wire   [2:0] current_status_V_1_fu_94_p3;
wire   [1:0] tmp_1_fu_102_p4;
wire   [0:0] p_04_1_fu_120_p0;
wire   [2:0] current_status_V_2_fu_112_p3;
wire   [2:0] p_04_1_fu_120_p3;



assign ap_done = ap_start;
assign ap_idle = ap_const_logic_1;
assign ap_ready = ap_start;
assign ap_start_out = (p_04_1_fu_120_p3 != ap_const_lv3_0? 1'b1: 1'b0);
assign current_status_V_1_fu_94_p0 = ap_done_in;
assign current_status_V_1_fu_94_p3 = ((current_status_V_1_fu_94_p0)? current_status_V_fu_86_p3: p_s_fu_78_p3);
assign current_status_V_2_fu_112_p3 = {{tmp_1_fu_102_p4}, {ap_const_lv1_1}};
assign current_status_V_fu_86_p0 = ap_ready_in;
assign current_status_V_fu_86_p3 = ((current_status_V_fu_86_p0)? ap_const_lv3_6: ap_const_lv3_2);
assign p_04_1_fu_120_p0 = ap_idle_in;
assign p_04_1_fu_120_p3 = ((p_04_1_fu_120_p0)? current_status_V_2_fu_112_p3: current_status_V_1_fu_94_p3);
assign p_s_fu_78_p0 = ap_ready_in;
assign p_s_fu_78_p3 = ((p_s_fu_78_p0)? ap_const_lv3_4: ap_const_lv3_0);
assign tmp_1_fu_102_p4 = {{current_status_V_1_fu_94_p3[ap_const_lv32_2 : ap_const_lv32_1]}};


endmodule //ap_ctl_handler

