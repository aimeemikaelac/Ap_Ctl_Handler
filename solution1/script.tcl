############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project Ap_Ctl_Handler
set_top ap_ctl_handler
add_files Ap_Ctl_Handler/source/ap_ctl_handler.cpp
add_files -tb Ap_Ctl_Handler/source/ap_ctl_handler_testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./Ap_Ctl_Handler/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level none -rtl systemc
export_design -format ip_catalog
