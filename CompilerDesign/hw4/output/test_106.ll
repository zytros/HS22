; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_args6693 = alloca { i64, [0 x i64] }*
  %_args6694 = alloca i64
  %_localId6700 = alloca { i64, [0 x i64] }*
  %_localId6702 = alloca i64
  %_localId6710 = alloca i64
  %_localId6717 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_args6693
  store i64 %size, i64* %_args6694
  %_locRef6697 = load i64, i64* %_args6694
  %_raw_array6698 = call i64* @oat_alloc_array(i64 %_locRef6697)
  %_array6699 = bitcast i64* %_raw_array6698 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6699, { i64, [0 x i64] }** %_localId6700
  store i64 0, i64* %_localId6702
  %_locRef6704 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6700
  %_locRef6705 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6693
  %_idxUID6706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6705, i32 0, i32 1, i32 0
  %_getArrUID6707 = load i64, i64* %_idxUID6706
  %_arridx6708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6704, i32 0, i32 1, i32 0
  store i64 %_getArrUID6707, i64* %_arridx6708
  store i64 0, i64* %_localId6710
  %_locRef6712 = load i64, i64* %_localId6710
  %_locRef6713 = load i64, i64* %_args6694
  %_bop6714 = icmp slt i64 %_locRef6712, %_locRef6713
  br i1 %_bop6714, label %_while_body_jmp6716, label %_while_end_jmp6715
_while_body_jmp6716:
  store i64 0, i64* %_localId6717
  %_locRef6719 = load i64, i64* %_localId6717
  %_locRef6720 = load i64, i64* %_localId6710
  %_bop6721 = icmp slt i64 %_locRef6719, %_locRef6720
  br i1 %_bop6721, label %_while_body_jmp6723, label %_while_end_jmp6722
_while_body_jmp6723:
  %_locRef6727 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6693
  %_locRef6728 = load i64, i64* %_localId6710
  %_idxUID6729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6727, i32 0, i32 1, i64 %_locRef6728
  %_getArrUID6730 = load i64, i64* %_idxUID6729
  %_locRef6731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6693
  %_locRef6732 = load i64, i64* %_localId6717
  %_idxUID6733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6731, i32 0, i32 1, i64 %_locRef6732
  %_getArrUID6734 = load i64, i64* %_idxUID6733
  %_bop6735 = icmp sgt i64 %_getArrUID6730, %_getArrUID6734
  %_locRef6736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6700
  %_locRef6737 = load i64, i64* %_localId6710
  %_idxUID6738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6736, i32 0, i32 1, i64 %_locRef6737
  %_getArrUID6739 = load i64, i64* %_idxUID6738
  %_locRef6740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6700
  %_locRef6741 = load i64, i64* %_localId6717
  %_idxUID6742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6740, i32 0, i32 1, i64 %_locRef6741
  %_getArrUID6743 = load i64, i64* %_idxUID6742
  %_locRef6744 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6693
  %_locRef6745 = load i64, i64* %_localId6710
  %_idxUID6746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6744, i32 0, i32 1, i64 %_locRef6745
  %_getArrUID6747 = load i64, i64* %_idxUID6746
  %_bop6748 = add i64 %_getArrUID6743, %_getArrUID6747
  %_bop6749 = icmp slt i64 %_getArrUID6739, %_bop6748
  %_bop6750 = and i1 %_bop6735, %_bop6749
  br i1 %_bop6750, label %_ifTruelbl6724, label %_ifFalselbl6725
_ifTruelbl6724:
  %_locRef6751 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6700
  %_locRef6752 = load i64, i64* %_localId6710
  %_locRef6753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6700
  %_locRef6754 = load i64, i64* %_localId6717
  %_idxUID6755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6753, i32 0, i32 1, i64 %_locRef6754
  %_getArrUID6756 = load i64, i64* %_idxUID6755
  %_locRef6757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6693
  %_locRef6758 = load i64, i64* %_localId6710
  %_idxUID6759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6757, i32 0, i32 1, i64 %_locRef6758
  %_getArrUID6760 = load i64, i64* %_idxUID6759
  %_bop6761 = add i64 %_getArrUID6756, %_getArrUID6760
  %_arridx6762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6751, i32 0, i32 1, i64 %_locRef6752
  store i64 %_bop6761, i64* %_arridx6762
  br label %_ifEndlbl6726
_ifFalselbl6725:
  br label %_ifEndlbl6726
_ifEndlbl6726:
  %_locRef6764 = load i64, i64* %_localId6717
  %_bop6765 = add i64 %_locRef6764, 1
  store i64 %_bop6765, i64* %_localId6717
  %_locRef6767 = load i64, i64* %_localId6717
  %_locRef6768 = load i64, i64* %_localId6710
  %_bop6769 = icmp slt i64 %_locRef6767, %_locRef6768
  br i1 %_bop6769, label %_while_body_jmp6723, label %_while_end_jmp6722
_while_end_jmp6722:
  %_locRef6773 = load i64, i64* %_localId6702
  %_locRef6774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6700
  %_locRef6775 = load i64, i64* %_localId6710
  %_idxUID6776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6774, i32 0, i32 1, i64 %_locRef6775
  %_getArrUID6777 = load i64, i64* %_idxUID6776
  %_bop6778 = icmp slt i64 %_locRef6773, %_getArrUID6777
  br i1 %_bop6778, label %_ifTruelbl6770, label %_ifFalselbl6771
_ifTruelbl6770:
  %_locRef6779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6700
  %_locRef6780 = load i64, i64* %_localId6710
  %_idxUID6781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6779, i32 0, i32 1, i64 %_locRef6780
  %_getArrUID6782 = load i64, i64* %_idxUID6781
  store i64 %_getArrUID6782, i64* %_localId6702
  br label %_ifEndlbl6772
_ifFalselbl6771:
  br label %_ifEndlbl6772
_ifEndlbl6772:
  %_locRef6784 = load i64, i64* %_localId6710
  %_bop6785 = add i64 %_locRef6784, 1
  store i64 %_bop6785, i64* %_localId6710
  %_locRef6787 = load i64, i64* %_localId6710
  %_locRef6788 = load i64, i64* %_args6694
  %_bop6789 = icmp slt i64 %_locRef6787, %_locRef6788
  br i1 %_bop6789, label %_while_body_jmp6716, label %_while_end_jmp6715
_while_end_jmp6715:
  %_locRef6790 = load i64, i64* %_localId6702
  ret i64 %_locRef6790
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args6664 = alloca i64
  %_args6665 = alloca { i64, [0 x i8*] }*
  %_localId6686 = alloca { i64, [0 x i64] }*
  %_localId6690 = alloca i64
  store i64 %argc, i64* %_args6664
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args6665
  %_atomArrUID6669 = alloca { i64, [7 x i64] }
  %_idxUID6684 = getelementptr { i64, [7 x i64] }, { i64, [7 x i64] }* %_atomArrUID6669, i32 0, i32 0
  store i64 7, i64* %_idxUID6684
  %_gep6670 = getelementptr { i64, [7 x i64] }, { i64, [7 x i64] }* %_atomArrUID6669, i32 0, i32 1, i32 0
  %_gep6671 = getelementptr { i64, [7 x i64] }, { i64, [7 x i64] }* %_atomArrUID6669, i32 0, i32 1, i32 1
  %_gep6672 = getelementptr { i64, [7 x i64] }, { i64, [7 x i64] }* %_atomArrUID6669, i32 0, i32 1, i32 2
  %_gep6673 = getelementptr { i64, [7 x i64] }, { i64, [7 x i64] }* %_atomArrUID6669, i32 0, i32 1, i32 3
  %_gep6674 = getelementptr { i64, [7 x i64] }, { i64, [7 x i64] }* %_atomArrUID6669, i32 0, i32 1, i32 4
  %_gep6675 = getelementptr { i64, [7 x i64] }, { i64, [7 x i64] }* %_atomArrUID6669, i32 0, i32 1, i32 5
  %_gep6676 = getelementptr { i64, [7 x i64] }, { i64, [7 x i64] }* %_atomArrUID6669, i32 0, i32 1, i32 6
  store i64 1, i64* %_gep6670
  store i64 101, i64* %_gep6671
  store i64 2, i64* %_gep6672
  store i64 3, i64* %_gep6673
  store i64 101, i64* %_gep6674
  store i64 4, i64* %_gep6675
  store i64 5, i64* %_gep6676
  %_arrayUID6668 = bitcast { i64, [7 x i64] }* %_atomArrUID6669 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID6668, { i64, [0 x i64] }** %_localId6686
  %_locRef6688 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6686
  %_callUID6689 = call i64 @maxsum({ i64, [0 x i64] }* %_locRef6688, i64 7)
  store i64 %_callUID6689, i64* %_localId6690
  %_locRef6692 = load i64, i64* %_localId6690
  ret i64 %_locRef6692
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
