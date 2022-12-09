; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_stringd3750 = global [2 x i8] c" \00"
@_string3749 = global i8* bitcast ([2 x i8]* @_stringd3750 to i8*)

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_args3758 = alloca { i64, [0 x i64] }*
  %_args3759 = alloca i64
  %_localId3762 = alloca i64
  %_localId3766 = alloca i64
  %_localId3772 = alloca i64
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_args3758
  store i64 %array_size, i64* %_args3759
  store i64 0, i64* %_localId3762
  %_locRef3764 = load i64, i64* %_args3759
  %_bop3765 = sub i64 %_locRef3764, 1
  store i64 %_bop3765, i64* %_localId3766
  %_locRef3768 = load i64, i64* %_localId3766
  %_bop3769 = icmp sgt i64 %_locRef3768, 0
  br i1 %_bop3769, label %_while_body_jmp3771, label %_while_end_jmp3770
_while_body_jmp3771:
  store i64 1, i64* %_localId3772
  %_locRef3774 = load i64, i64* %_localId3772
  %_locRef3775 = load i64, i64* %_localId3766
  %_bop3776 = icmp sle i64 %_locRef3774, %_locRef3775
  br i1 %_bop3776, label %_while_body_jmp3778, label %_while_end_jmp3777
_while_body_jmp3778:
  %_locRef3782 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3758
  %_locRef3783 = load i64, i64* %_localId3772
  %_bop3784 = sub i64 %_locRef3783, 1
  %_idxUID3785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3782, i32 0, i32 1, i64 %_bop3784
  %_getArrUID3786 = load i64, i64* %_idxUID3785
  %_locRef3787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3758
  %_locRef3788 = load i64, i64* %_localId3766
  %_idxUID3789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3787, i32 0, i32 1, i64 %_locRef3788
  %_getArrUID3790 = load i64, i64* %_idxUID3789
  %_bop3791 = icmp sgt i64 %_getArrUID3786, %_getArrUID3790
  br i1 %_bop3791, label %_ifTruelbl3779, label %_ifFalselbl3780
_ifTruelbl3779:
  %_locRef3792 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3758
  %_locRef3793 = load i64, i64* %_localId3772
  %_bop3794 = sub i64 %_locRef3793, 1
  %_idxUID3795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3792, i32 0, i32 1, i64 %_bop3794
  %_getArrUID3796 = load i64, i64* %_idxUID3795
  store i64 %_getArrUID3796, i64* %_localId3762
  %_locRef3798 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3758
  %_locRef3799 = load i64, i64* %_localId3772
  %_bop3800 = sub i64 %_locRef3799, 1
  %_locRef3801 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3758
  %_locRef3802 = load i64, i64* %_localId3766
  %_idxUID3803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3801, i32 0, i32 1, i64 %_locRef3802
  %_getArrUID3804 = load i64, i64* %_idxUID3803
  %_arridx3805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3798, i32 0, i32 1, i64 %_bop3800
  store i64 %_getArrUID3804, i64* %_arridx3805
  %_locRef3807 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3758
  %_locRef3808 = load i64, i64* %_localId3766
  %_locRef3809 = load i64, i64* %_localId3762
  %_arridx3810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3807, i32 0, i32 1, i64 %_locRef3808
  store i64 %_locRef3809, i64* %_arridx3810
  br label %_ifEndlbl3781
_ifFalselbl3780:
  br label %_ifEndlbl3781
_ifEndlbl3781:
  %_locRef3812 = load i64, i64* %_localId3772
  %_bop3813 = add i64 %_locRef3812, 1
  store i64 %_bop3813, i64* %_localId3772
  %_locRef3815 = load i64, i64* %_localId3772
  %_locRef3816 = load i64, i64* %_localId3766
  %_bop3817 = icmp sle i64 %_locRef3815, %_locRef3816
  br i1 %_bop3817, label %_while_body_jmp3778, label %_while_end_jmp3777
_while_end_jmp3777:
  %_locRef3818 = load i64, i64* %_localId3766
  %_bop3819 = sub i64 %_locRef3818, 1
  store i64 %_bop3819, i64* %_localId3766
  %_locRef3821 = load i64, i64* %_localId3766
  %_bop3822 = icmp sgt i64 %_locRef3821, 0
  br i1 %_bop3822, label %_while_body_jmp3771, label %_while_end_jmp3770
_while_end_jmp3770:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3713 = alloca i64
  %_args3714 = alloca { i64, [0 x i8*] }*
  %_localId3719 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args3713
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3714
  %_raw_array3717 = call i64* @oat_alloc_array(i64 8)
  %_array3718 = bitcast i64* %_raw_array3717 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3718, { i64, [0 x i64] }** %_localId3719
  %_locRef3721 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_arridx3722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3721, i32 0, i32 1, i32 0
  store i64 121, i64* %_arridx3722
  %_locRef3724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_arridx3725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3724, i32 0, i32 1, i32 1
  store i64 125, i64* %_arridx3725
  %_locRef3727 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_arridx3728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3727, i32 0, i32 1, i32 2
  store i64 120, i64* %_arridx3728
  %_locRef3730 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_arridx3731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3730, i32 0, i32 1, i32 3
  store i64 111, i64* %_arridx3731
  %_locRef3733 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_arridx3734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3733, i32 0, i32 1, i32 4
  store i64 116, i64* %_arridx3734
  %_locRef3736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_arridx3737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3736, i32 0, i32 1, i32 5
  store i64 110, i64* %_arridx3737
  %_locRef3739 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_arridx3740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3739, i32 0, i32 1, i32 6
  store i64 117, i64* %_arridx3740
  %_locRef3742 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_arridx3743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3742, i32 0, i32 1, i32 7
  store i64 119, i64* %_arridx3743
  %_locRef3745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_callUID3746 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef3745)
  call void @print_string(i8* %_callUID3746)
  %_stringp3748 = load i8*, i8** @_string3749
  call void @print_string(i8* %_stringp3748)
  %_locRef3752 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  call void @bubble_sort({ i64, [0 x i64] }* %_locRef3752, i64 8)
  %_locRef3754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3719
  %_callUID3755 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef3754)
  call void @print_string(i8* %_callUID3755)
  %_uopUID3757 = sub i64 0, 1
  ret i64 %_uopUID3757
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
