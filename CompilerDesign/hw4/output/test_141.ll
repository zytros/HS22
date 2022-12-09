; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args600 = alloca i64
  %_args601 = alloca { i64, [0 x i8*] }*
  %_localId650 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId652 = alloca i64
  %_localId654 = alloca i64
  %_localId660 = alloca i64
  store i64 %argc, i64* %_args600
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args601
  %_atomArrUID605 = alloca { i64, [4 x i64] }
  %_idxUID614 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID605, i32 0, i32 0
  store i64 4, i64* %_idxUID614
  %_gep606 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID605, i32 0, i32 1, i32 0
  %_gep607 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID605, i32 0, i32 1, i32 1
  %_gep608 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID605, i32 0, i32 1, i32 2
  %_gep609 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID605, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep606
  store i64 1, i64* %_gep607
  store i64 2, i64* %_gep608
  store i64 3, i64* %_gep609
  %_arrayUID604 = bitcast { i64, [4 x i64] }* %_atomArrUID605 to { i64, [0 x i64] }*
  %_atomArrUID617 = alloca { i64, [4 x i64] }
  %_idxUID626 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID617, i32 0, i32 0
  store i64 4, i64* %_idxUID626
  %_gep618 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID617, i32 0, i32 1, i32 0
  %_gep619 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID617, i32 0, i32 1, i32 1
  %_gep620 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID617, i32 0, i32 1, i32 2
  %_gep621 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID617, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep618
  store i64 5, i64* %_gep619
  store i64 6, i64* %_gep620
  store i64 7, i64* %_gep621
  %_arrayUID616 = bitcast { i64, [4 x i64] }* %_atomArrUID617 to { i64, [0 x i64] }*
  %_atomArrUID629 = alloca { i64, [4 x i64] }
  %_idxUID638 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID629, i32 0, i32 0
  store i64 4, i64* %_idxUID638
  %_gep630 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID629, i32 0, i32 1, i32 0
  %_gep631 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID629, i32 0, i32 1, i32 1
  %_gep632 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID629, i32 0, i32 1, i32 2
  %_gep633 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID629, i32 0, i32 1, i32 3
  store i64 8, i64* %_gep630
  store i64 9, i64* %_gep631
  store i64 10, i64* %_gep632
  store i64 11, i64* %_gep633
  %_arrayUID628 = bitcast { i64, [4 x i64] }* %_atomArrUID629 to { i64, [0 x i64] }*
  %_atomArrUID641 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID648 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID641, i32 0, i32 0
  store i64 3, i64* %_idxUID648
  %_gep642 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID641, i32 0, i32 1, i32 0
  %_gep643 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID641, i32 0, i32 1, i32 1
  %_gep644 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID641, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_arrayUID604, { i64, [0 x i64] }** %_gep642
  store { i64, [0 x i64] }* %_arrayUID616, { i64, [0 x i64] }** %_gep643
  store { i64, [0 x i64] }* %_arrayUID628, { i64, [0 x i64] }** %_gep644
  %_arrayUID640 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID641 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID640, { i64, [0 x { i64, [0 x i64] }*] }** %_localId650
  store i64 0, i64* %_localId652
  store i64 0, i64* %_localId654
  %_locRef656 = load i64, i64* %_localId654
  %_bop657 = icmp slt i64 %_locRef656, 3
  br i1 %_bop657, label %_while_body_jmp659, label %_while_end_jmp658
_while_body_jmp659:
  store i64 0, i64* %_localId660
  %_locRef662 = load i64, i64* %_localId660
  %_bop663 = icmp slt i64 %_locRef662, 4
  br i1 %_bop663, label %_while_body_jmp665, label %_while_end_jmp664
_while_body_jmp665:
  %_locRef666 = load i64, i64* %_localId652
  %_locRef667 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId650
  %_locRef668 = load i64, i64* %_localId654
  %_idxUID669 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef667, i32 0, i32 1, i64 %_locRef668
  %_getArrUID670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID669
  %_locRef671 = load i64, i64* %_localId660
  %_idxUID672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID670, i32 0, i32 1, i64 %_locRef671
  %_getArrUID673 = load i64, i64* %_idxUID672
  %_bop674 = add i64 %_locRef666, %_getArrUID673
  store i64 %_bop674, i64* %_localId652
  %_locRef676 = load i64, i64* %_localId660
  %_bop677 = add i64 %_locRef676, 1
  store i64 %_bop677, i64* %_localId660
  %_locRef679 = load i64, i64* %_localId660
  %_bop680 = icmp slt i64 %_locRef679, 4
  br i1 %_bop680, label %_while_body_jmp665, label %_while_end_jmp664
_while_end_jmp664:
  %_locRef681 = load i64, i64* %_localId654
  %_bop682 = add i64 %_locRef681, 1
  store i64 %_bop682, i64* %_localId654
  %_locRef684 = load i64, i64* %_localId654
  %_bop685 = icmp slt i64 %_locRef684, 3
  br i1 %_bop685, label %_while_body_jmp659, label %_while_end_jmp658
_while_end_jmp658:
  %_locRef686 = load i64, i64* %_localId652
  ret i64 %_locRef686
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
