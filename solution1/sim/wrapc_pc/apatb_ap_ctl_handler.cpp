// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================


#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#define AP_INT_MAX_W 32678

#include "ap_int.h"


using namespace std;
using namespace sc_core;
using namespace sc_dt;




   #define AUTOTB_TVOUT_ap_start_out  "../tv/cdatafile/c.ap_ctl_handler.autotvout_ap_start_out.dat"
   #define AUTOTB_TVIN_ap_ready_in  "../tv/cdatafile/c.ap_ctl_handler.autotvin_ap_ready_in.dat"
   #define AUTOTB_TVIN_ap_done_in  "../tv/cdatafile/c.ap_ctl_handler.autotvin_ap_done_in.dat"
   #define AUTOTB_TVIN_ap_idle_in  "../tv/cdatafile/c.ap_ctl_handler.autotvin_ap_idle_in.dat"
   #define INTER_TCL  "../tv/cdatafile/ref.tcl"

   #define AUTOTB_TVOUT_PC_ap_start_out  "../tv/rtldatafile/rtl.ap_ctl_handler.autotvout_ap_start_out.dat"

class INTER_TCL_FILE {
    public:
//functions
        INTER_TCL_FILE(const char* name) {
            mName = name;
            ap_start_out_depth = 0;
            ap_ready_in_depth = 0;
            ap_done_in_depth = 0;
            ap_idle_in_depth = 0;
            trans_num =0;
        }
        ~INTER_TCL_FILE() {
            mFile.open(mName);
            if (!mFile.good() ) {
                cout<<"Failed to open file ref.tcl."<<endl;
                exit (1);
            }
            string total_list = get_depth_list();
            mFile<<"set depth_list {\n";
            mFile<<total_list; 
            mFile<<"}\n";
            mFile<<"set trans_num "<<trans_num<<endl;
            mFile.close();
        }
        string get_depth_list () {
            stringstream total_list;
            total_list<<"   {ap_start_out "<< ap_start_out_depth << "}\n";
            total_list<<"   {ap_ready_in "<< ap_ready_in_depth << "}\n";
            total_list<<"   {ap_done_in "<< ap_done_in_depth << "}\n";
            total_list<<"   {ap_idle_in "<< ap_idle_in_depth << "}\n";
            return total_list.str();
        }
        void set_num (int num , int* class_num) {
            (*class_num) = (*class_num) > num ? (*class_num) : num;
        }
    public:
//variables
        int ap_start_out_depth;
        int ap_ready_in_depth;
        int ap_done_in_depth;
        int ap_idle_in_depth;
        int trans_num;
    private:
        ofstream mFile;
        const char* mName;
};

#define ap_ctl_handler AESL_ORIG_DUT_ap_ctl_handler
extern void ap_ctl_handler ( bool ap_start_enable,  bool* ap_start_out,  bool ap_ready_in,  bool ap_done_in,  bool ap_idle_in,  ap_uint<3>* ap_status_out);
#undef ap_ctl_handler
void ap_ctl_handler ( bool ap_start_enable,  bool* ap_start_out,  bool ap_ready_in,  bool ap_done_in,  bool ap_idle_in,  ap_uint<3>* ap_status_out) {

    fstream wrapc_switch_file_token;

    wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");

    int AESL_i;

    if (wrapc_switch_file_token.good()) {

        static unsigned AESL_transaction_pc;

        string AESL_token;

        string AESL_num;

        static AESL_FILE_HANDLER aesl_fh;

        aesl_fh.read(AUTOTB_TVOUT_PC_ap_start_out, AESL_token); //[[transaction]]

        if ( AESL_token != "[[transaction]]") {

           exit(1);

        }

        aesl_fh.read(AUTOTB_TVOUT_PC_ap_start_out, AESL_num); //transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            aesl_fh.read(AUTOTB_TVOUT_PC_ap_start_out, AESL_token); //data

            sc_bv<1> *ap_start_out_pc_buffer = new sc_bv<1>[1];

            int i = 0;

            while (AESL_token != "[[/transaction]]") {

                bool no_x = false;

                bool err = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('X');

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'ap_start_out', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                no_x = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('x', 2);

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'ap_start_out', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                if (AESL_token != "") {

                    ap_start_out_pc_buffer[i] = AESL_token.c_str();

                    i++;

                }

                aesl_fh.read(AUTOTB_TVOUT_PC_ap_start_out, AESL_token); //data or [[/transaction]]

                if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_start_out)) {

                   exit(1);

                }

            }

            if (i > 0) {

                AESL_i = 0; //subscript for rtl array

                for (int i_0 = 0; i_0 <= 0 ; i_0+= 1) {

                    *(ap_start_out) = (sc_bv<1>(ap_start_out_pc_buffer[0 + AESL_i].range(0, 0))).to_uint64();

                    AESL_i++;

                }

                }

            delete [] ap_start_out_pc_buffer;

        }

        AESL_transaction_pc ++ ;

    } else {

        static unsigned AESL_transaction;

        static AESL_FILE_HANDLER aesl_fh;

        char* tvout_ap_start_out = new char[50];

        char* tvin_ap_ready_in = new char[50];

        char* tvin_ap_done_in = new char[50];

        char* tvin_ap_idle_in = new char[50];

        static INTER_TCL_FILE tcl_file(INTER_TCL);


        int leading_zero;

        sprintf(tvin_ap_ready_in, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_ap_ready_in, tvin_ap_ready_in);

        sc_bv<1> ap_ready_in_tvin_wrapc_buffer;

        AESL_i = 0; //subscript for rtl array

        ap_ready_in_tvin_wrapc_buffer.range(0, 0) = ap_ready_in;

        AESL_i++;

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_ap_ready_in, "%s\n", (ap_ready_in_tvin_wrapc_buffer).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_ap_ready_in, tvin_ap_ready_in);

        }

        tcl_file.set_num(1,&tcl_file.ap_ready_in_depth);

        sprintf(tvin_ap_ready_in, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_ap_ready_in, tvin_ap_ready_in);

        sprintf(tvin_ap_done_in, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_ap_done_in, tvin_ap_done_in);

        sc_bv<1> ap_done_in_tvin_wrapc_buffer;

        AESL_i = 0; //subscript for rtl array

        ap_done_in_tvin_wrapc_buffer.range(0, 0) = ap_done_in;

        AESL_i++;

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_ap_done_in, "%s\n", (ap_done_in_tvin_wrapc_buffer).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_ap_done_in, tvin_ap_done_in);

        }

        tcl_file.set_num(1,&tcl_file.ap_done_in_depth);

        sprintf(tvin_ap_done_in, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_ap_done_in, tvin_ap_done_in);

        sprintf(tvin_ap_idle_in, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_ap_idle_in, tvin_ap_idle_in);

        sc_bv<1> ap_idle_in_tvin_wrapc_buffer;

        AESL_i = 0; //subscript for rtl array

        ap_idle_in_tvin_wrapc_buffer.range(0, 0) = ap_idle_in;

        AESL_i++;

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_ap_idle_in, "%s\n", (ap_idle_in_tvin_wrapc_buffer).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_ap_idle_in, tvin_ap_idle_in);

        }

        tcl_file.set_num(1,&tcl_file.ap_idle_in_depth);

        sprintf(tvin_ap_idle_in, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_ap_idle_in, tvin_ap_idle_in);

        AESL_ORIG_DUT_ap_ctl_handler(ap_start_enable,ap_start_out,ap_ready_in,ap_done_in,ap_idle_in,ap_status_out);

        sprintf(tvout_ap_start_out, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVOUT_ap_start_out, tvout_ap_start_out);

        sc_bv<1> *ap_start_out_tvout_wrapc_buffer = new sc_bv<1>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 0; i_0 <= 0 ; i_0+= 1) {

            ap_start_out_tvout_wrapc_buffer[0 + AESL_i].range(0, 0) = *(ap_start_out);

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvout_ap_start_out, "%s\n", (ap_start_out_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVOUT_ap_start_out, tvout_ap_start_out);

        }

        tcl_file.set_num(1,&tcl_file.ap_start_out_depth);

        sprintf(tvout_ap_start_out, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVOUT_ap_start_out, tvout_ap_start_out);

        delete [] ap_start_out_tvout_wrapc_buffer;

        delete [] tvout_ap_start_out;

        delete [] tvin_ap_ready_in;

        delete [] tvin_ap_done_in;

        delete [] tvin_ap_idle_in;

        AESL_transaction++;

        tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

    }
}


