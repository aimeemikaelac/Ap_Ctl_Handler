# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Adapter definition:
set corename AXI4LiteS
set opts {
    {
        id 1
        name ap_start_enable
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 1
        mode SIG_IN_VLD_OFF:SIG_IN_ACC_OFF
    }
    {
        id 6
        name ap_status_out_V
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 3
        mode SIG_IN_VLD_OFF:SIG_IN_ACC_OFF
    }
}
set portmap { }
set metadata { -bus_bundle}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axi_slave_int_gen] == "::AESL_LIB_XILADAPTER::axi_slave_int_gen"} {
eval "::AESL_LIB_XILADAPTER::axi_slave_int_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axi_slave_int_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name ap_start_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ap_start_out \
    op interface \
    ports { ap_start_out { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name ap_ready_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ap_ready_in \
    op interface \
    ports { ap_ready_in { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name ap_done_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ap_done_in \
    op interface \
    ports { ap_done_in { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name ap_idle_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ap_idle_in \
    op interface \
    ports { ap_idle_in { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


