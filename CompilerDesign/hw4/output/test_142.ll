; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args687 = alloca i64
  %_args688 = alloca { i64, [0 x i8*] }*
  %_localId738 = alloca i64
  %_localId740 = alloca i64
  %_localId746 = alloca i64
  store i64 %argc, i64* %_args687
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args688
  %_atomArrUID692 = alloca { i64, [4 x i64] }
  %_idxUID701 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID692, i32 0, i32 0
  store i64 4, i64* %_idxUID701
  %_gep693 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID692, i32 0, i32 1, i32 0
  %_gep694 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID692, i32 0, i32 1, i32 1
  %_gep695 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID692, i32 0, i32 1, i32 2
  %_gep696 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID692, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep693
  store i64 1, i64* %_gep694
  store i64 2, i64* %_gep695
  store i64 3, i64* %_gep696
  %_arrayUID691 = bitcast { i64, [4 x i64] }* %_atomArrUID692 to { i64, [0 x i64] }*
  %_atomArrUID704 = alloca { i64, [4 x i64] }
  %_idxUID713 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID704, i32 0, i32 0
  store i64 4, i64* %_idxUID713
  %_gep705 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID704, i32 0, i32 1, i32 0
  %_gep706 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID704, i32 0, i32 1, i32 1
  %_gep707 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID704, i32 0, i32 1, i32 2
  %_gep708 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID704, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep705
  store i64 5, i64* %_gep706
  store i64 6, i64* %_gep707
  store i64 7, i64* %_gep708
  %_arrayUID703 = bitcast { i64, [4 x i64] }* %_atomArrUID704 to { i64, [0 x i64] }*
  %_atomArrUID716 = alloca { i64, [4 x i64] }
  %_idxUID725 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID716, i32 0, i32 0
  store i64 4, i64* %_idxUID725
  %_gep717 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID716, i32 0, i32 1, i32 0
  %_gep718 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID716, i32 0, i32 1, i32 1
  %_gep719 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID716, i32 0, i32 1, i32 2
  %_gep720 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID716, i32 0, i32 1, i32 3
  store i64 8, i64* %_gep717
  store i64 9, i64* %_gep718
  store i64 10, i64* %_gep719
  store i64 11, i64* %_gep720
  %_arrayUID715 = bitcast { i64, [4 x i64] }* %_atomArrUID716 to { i64, [0 x i64] }*
  %_atomArrUID728 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID735 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID728, i32 0, i32 0
  store i64 3, i64* %_idxUID735
  %_gep729 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID728, i32 0, i32 1, i32 0
  %_gep730 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID728, i32 0, i32 1, i32 1
  %_gep731 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID728, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_arrayUID691, { i64, [0 x i64] }** %_gep729
  store { i64, [0 x i64] }* %_arrayUID703, { i64, [0 x i64] }** %_gep730
  store { i64, [0 x i64] }* %_arrayUID715, { i64, [0 x i64] }** %_gep731
  %_arrayUID727 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID728 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID727, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_localId738
  store i64 0, i64* %_localId740
  %_locRef742 = load i64, i64* %_localId740
  %_bop743 = icmp slt i64 %_locRef742, 3
  br i1 %_bop743, label %_while_body_jmp745, label %_while_end_jmp744
_while_body_jmp745:
  store i64 0, i64* %_localId746
  %_locRef748 = load i64, i64* %_localId746
  %_bop749 = icmp slt i64 %_locRef748, 4
  br i1 %_bop749, label %_while_body_jmp751, label %_while_end_jmp750
_while_body_jmp751:
  %_locRef752 = load i64, i64* %_localId738
  %_locRef753 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_locRef754 = load i64, i64* %_localId740
  %_idxUID755 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef753, i32 0, i32 1, i64 %_locRef754
  %_getArrUID756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID755
  %_locRef757 = load i64, i64* %_localId746
  %_idxUID758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID756, i32 0, i32 1, i64 %_locRef757
  %_getArrUID759 = load i64, i64* %_idxUID758
  %_bop760 = add i64 %_locRef752, %_getArrUID759
  store i64 %_bop760, i64* %_localId738
  %_locRef762 = load i64, i64* %_localId746
  %_bop763 = add i64 %_locRef762, 1
  store i64 %_bop763, i64* %_localId746
  %_locRef765 = load i64, i64* %_localId746
  %_bop766 = icmp slt i64 %_locRef765, 4
  br i1 %_bop766, label %_while_body_jmp751, label %_while_end_jmp750
_while_end_jmp750:
  %_locRef767 = load i64, i64* %_localId740
  %_bop768 = add i64 %_locRef767, 1
  store i64 %_bop768, i64* %_localId740
  %_locRef770 = load i64, i64* %_localId740
  %_bop771 = icmp slt i64 %_locRef770, 3
  br i1 %_bop771, label %_while_body_jmp745, label %_while_end_jmp744
_while_end_jmp744:
  %_locRef772 = load i64, i64* %_localId738
  ret i64 %_locRef772
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
