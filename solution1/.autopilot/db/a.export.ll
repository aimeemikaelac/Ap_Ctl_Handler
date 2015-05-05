; ModuleID = '/media/D/xilinx_workspace/Ap_Ctl_Handler/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [15 x i8] c"ap_ctl_handler\00"

define void @ap_ctl_handler(i1 zeroext %ap_start_enable, i1* %ap_start_out, i1 zeroext %ap_ready_in, i1 zeroext %ap_done_in, i1 zeroext %ap_idle_in, i3* %ap_status_out_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %ap_start_enable), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %ap_start_out), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %ap_ready_in), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %ap_done_in), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %ap_idle_in), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %ap_status_out_V), !map !29
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @str) nounwind
  %ap_idle_in_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %ap_idle_in)
  %ap_done_in_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %ap_done_in)
  %ap_ready_in_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %ap_ready_in)
  call void (...)* @_ssdm_op_SpecIFCore(i3* %ap_status_out_V, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecWire(i1 %ap_done_in, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i1 %ap_start_enable, [1 x i8]* @p_str, [10 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecWire(i3* %ap_status_out_V, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1 %ap_idle_in, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1 %ap_ready_in, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %ap_start_out, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1 %ap_start_enable, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %p_s = select i1 %ap_ready_in_read, i3 -4, i3 0
  %current_status_V = select i1 %ap_ready_in_read, i3 -2, i3 2
  %current_status_V_1 = select i1 %ap_done_in_read, i3 %current_status_V, i3 %p_s
  %tmp_1 = call i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3 %current_status_V_1, i32 1, i32 2)
  %current_status_V_2 = call i3 @_ssdm_op_BitConcatenate.i3.i2.i1(i2 %tmp_1, i1 true)
  %p_04_1 = select i1 %ap_idle_in_read, i3 %current_status_V_2, i3 %current_status_V_1
  %tmp = icmp ne i3 %p_04_1, 0
  call void @_ssdm_op_Write.ap_none.i1P(i1* %ap_start_out, i1 %tmp)
  ret void
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone {
entry:
  %empty = call i3 @llvm.part.select.i3(i3 %0, i32 %1, i32 %2)
  %empty_7 = trunc i3 %empty to i2
  ret i2 %empty_7
}

define weak i3 @_ssdm_op_BitConcatenate.i3.i2.i1(i2, i1) nounwind readnone {
entry:
  %empty = zext i2 %0 to i3
  %empty_8 = zext i1 %1 to i3
  %empty_9 = trunc i3 %empty to i2
  %empty_10 = call i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3 %empty_8, i32 1, i32 2)
  %empty_11 = or i2 %empty_9, %empty_10
  %empty_12 = call i3 @_ssdm_op_PartSet.i3.i3.i2.i32.i32(i3 %empty_8, i2 %empty_11, i32 1, i32 2)
  ret i3 %empty_12
}

define weak i1 @_ssdm_op_Read.ap_none.i1(i1) {
entry:
  ret i1 %0
}

define weak void @_ssdm_op_Write.ap_none.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

declare i3 @llvm.part.select.i3(i3, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSet.i3.i3.i2.i32.i32(i3, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i3 @llvm.part.set.i3.i2(i3 %0, i2 %1, i32 %2, i32 %3)
  ret i3 %empty
}

declare i3 @llvm.part.set.i3.i2(i3, i2, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 0, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"ap_start_enable", metadata !11, metadata !"bool"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 0, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"ap_start_out", metadata !5, metadata !"bool"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"ap_ready_in", metadata !11, metadata !"bool"}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"ap_done_in", metadata !11, metadata !"bool"}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"ap_idle_in", metadata !11, metadata !"bool"}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 2, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"ap_status_out.V", metadata !5, metadata !"uint3"}
