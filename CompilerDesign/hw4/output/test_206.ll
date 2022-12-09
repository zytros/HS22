; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_atomArrUID5817 to { i64, [0 x i1] }*)
@_atomArrUID5817 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_stringd5800 = global [2 x i8] c"T\00"
@_string5799 = global i8* bitcast ([2 x i8]* @_stringd5800 to i8*)
@_stringd5803 = global [2 x i8] c"F\00"
@_string5802 = global i8* bitcast ([2 x i8]* @_stringd5803 to i8*)
@_stringd5764 = global [2 x i8] c" \00"
@_string5763 = global i8* bitcast ([2 x i8]* @_stringd5764 to i8*)

define i1 @xor(i1 %x, i1 %y) {
  %_args5804 = alloca i1
  %_args5805 = alloca i1
  store i1 %x, i1* %_args5804
  store i1 %y, i1* %_args5805
  %_locRef5808 = load i1, i1* %_args5804
  %_locRef5809 = load i1, i1* %_args5805
  %_uopUID5810 = xor i1 1, %_locRef5809
  %_bop5811 = and i1 %_locRef5808, %_uopUID5810
  %_locRef5812 = load i1, i1* %_args5804
  %_uopUID5813 = xor i1 1, %_locRef5812
  %_locRef5814 = load i1, i1* %_args5805
  %_bop5815 = and i1 %_uopUID5813, %_locRef5814
  %_bop5816 = or i1 %_bop5811, %_bop5815
  ret i1 %_bop5816
}

define i8* @string_of_bool(i1 %b) {
  %_args5792 = alloca i1
  store i1 %b, i1* %_args5792
  %_locRef5797 = load i1, i1* %_args5792
  br i1 %_locRef5797, label %_ifTruelbl5794, label %_ifFalselbl5795
_ifTruelbl5794:
  %_stringp5798 = load i8*, i8** @_string5799
  ret i8* %_stringp5798
_ifFalselbl5795:
  %_stringp5801 = load i8*, i8** @_string5802
  ret i8* %_stringp5801
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_args5769 = alloca { i64, [0 x i1] }*
  %_args5770 = alloca i64
  %_localId5773 = alloca i64
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_args5769
  store i64 %len, i64* %_args5770
  store i64 0, i64* %_localId5773
  %_locRef5775 = load i64, i64* %_localId5773
  %_locRef5776 = load i64, i64* %_args5770
  %_bop5777 = icmp slt i64 %_locRef5775, %_locRef5776
  br i1 %_bop5777, label %_while_body_jmp5779, label %_while_end_jmp5778
_while_body_jmp5779:
  %_locRef5780 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_args5769
  %_locRef5781 = load i64, i64* %_localId5773
  %_idxUID5782 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5780, i32 0, i32 1, i64 %_locRef5781
  %_getArrUID5783 = load i1, i1* %_idxUID5782
  %_callUID5784 = call i8* @string_of_bool(i1 %_getArrUID5783)
  call void @print_string(i8* %_callUID5784)
  %_locRef5786 = load i64, i64* %_localId5773
  %_bop5787 = add i64 %_locRef5786, 1
  store i64 %_bop5787, i64* %_localId5773
  %_locRef5789 = load i64, i64* %_localId5773
  %_locRef5790 = load i64, i64* %_args5770
  %_bop5791 = icmp slt i64 %_locRef5789, %_locRef5790
  br i1 %_bop5791, label %_while_body_jmp5779, label %_while_end_jmp5778
_while_end_jmp5778:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args5677 = alloca i64
  %_args5678 = alloca { i64, [0 x i8*] }*
  %_localId5684 = alloca { i64, [0 x i1] }*
  %_localId5686 = alloca i64
  %_localId5707 = alloca i64
  %_localId5725 = alloca i1
  %_localId5729 = alloca i64
  store i64 %argc, i64* %_args5677
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args5678
  %_locRef5681 = load i64, i64* @lfsr_length
  %_raw_array5682 = call i64* @oat_alloc_array(i64 %_locRef5681)
  %_array5683 = bitcast i64* %_raw_array5682 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array5683, { i64, [0 x i1] }** %_localId5684
  store i64 0, i64* %_localId5686
  %_locRef5688 = load i64, i64* %_localId5686
  %_locRef5689 = load i64, i64* @lfsr_length
  %_bop5690 = icmp slt i64 %_locRef5688, %_locRef5689
  br i1 %_bop5690, label %_while_body_jmp5692, label %_while_end_jmp5691
_while_body_jmp5692:
  %_locRef5693 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5684
  %_locRef5694 = load i64, i64* %_localId5686
  %_locRef5695 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_locRef5696 = load i64, i64* %_localId5686
  %_idxUID5697 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5695, i32 0, i32 1, i64 %_locRef5696
  %_getArrUID5698 = load i1, i1* %_idxUID5697
  %_arridx5699 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5693, i32 0, i32 1, i64 %_locRef5694
  store i1 %_getArrUID5698, i1* %_arridx5699
  %_locRef5701 = load i64, i64* %_localId5686
  %_bop5702 = add i64 %_locRef5701, 1
  store i64 %_bop5702, i64* %_localId5686
  %_locRef5704 = load i64, i64* %_localId5686
  %_locRef5705 = load i64, i64* @lfsr_length
  %_bop5706 = icmp slt i64 %_locRef5704, %_locRef5705
  br i1 %_bop5706, label %_while_body_jmp5692, label %_while_end_jmp5691
_while_end_jmp5691:
  store i64 0, i64* %_localId5707
  %_locRef5709 = load i64, i64* %_localId5707
  %_locRef5710 = load i64, i64* @lfsr_iterations
  %_bop5711 = icmp slt i64 %_locRef5709, %_locRef5710
  br i1 %_bop5711, label %_while_body_jmp5713, label %_while_end_jmp5712
_while_body_jmp5713:
  %_locRef5714 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5684
  %_locRef5715 = load i64, i64* @lfsr_length
  %_bop5716 = sub i64 %_locRef5715, 1
  %_idxUID5717 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5714, i32 0, i32 1, i64 %_bop5716
  %_getArrUID5718 = load i1, i1* %_idxUID5717
  %_locRef5719 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5684
  %_locRef5720 = load i64, i64* @lfsr_length
  %_bop5721 = sub i64 %_locRef5720, 2
  %_idxUID5722 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5719, i32 0, i32 1, i64 %_bop5721
  %_getArrUID5723 = load i1, i1* %_idxUID5722
  %_callUID5724 = call i1 @xor(i1 %_getArrUID5718, i1 %_getArrUID5723)
  store i1 %_callUID5724, i1* %_localId5725
  %_locRef5727 = load i64, i64* @lfsr_length
  %_bop5728 = sub i64 %_locRef5727, 1
  store i64 %_bop5728, i64* %_localId5729
  %_locRef5731 = load i64, i64* %_localId5729
  %_bop5732 = icmp sgt i64 %_locRef5731, 0
  br i1 %_bop5732, label %_while_body_jmp5734, label %_while_end_jmp5733
_while_body_jmp5734:
  %_locRef5735 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5684
  %_locRef5736 = load i64, i64* %_localId5729
  %_locRef5737 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5684
  %_locRef5738 = load i64, i64* %_localId5729
  %_bop5739 = sub i64 %_locRef5738, 1
  %_idxUID5740 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5737, i32 0, i32 1, i64 %_bop5739
  %_getArrUID5741 = load i1, i1* %_idxUID5740
  %_arridx5742 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5735, i32 0, i32 1, i64 %_locRef5736
  store i1 %_getArrUID5741, i1* %_arridx5742
  %_locRef5744 = load i64, i64* %_localId5729
  %_bop5745 = sub i64 %_locRef5744, 1
  store i64 %_bop5745, i64* %_localId5729
  %_locRef5747 = load i64, i64* %_localId5729
  %_bop5748 = icmp sgt i64 %_locRef5747, 0
  br i1 %_bop5748, label %_while_body_jmp5734, label %_while_end_jmp5733
_while_end_jmp5733:
  %_locRef5749 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5684
  %_locRef5750 = load i1, i1* %_localId5725
  %_arridx5751 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5749, i32 0, i32 1, i32 0
  store i1 %_locRef5750, i1* %_arridx5751
  %_locRef5753 = load i64, i64* %_localId5707
  %_bop5754 = add i64 %_locRef5753, 1
  store i64 %_bop5754, i64* %_localId5707
  %_locRef5756 = load i64, i64* %_localId5707
  %_locRef5757 = load i64, i64* @lfsr_iterations
  %_bop5758 = icmp slt i64 %_locRef5756, %_locRef5757
  br i1 %_bop5758, label %_while_body_jmp5713, label %_while_end_jmp5712
_while_end_jmp5712:
  %_locRef5759 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_locRef5760 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_locRef5759, i64 %_locRef5760)
  %_stringp5762 = load i8*, i8** @_string5763
  call void @print_string(i8* %_stringp5762)
  %_locRef5766 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5684
  %_locRef5767 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_locRef5766, i64 %_locRef5767)
  ret i64 0
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
