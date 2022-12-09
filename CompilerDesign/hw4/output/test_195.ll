; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_stringd4041 = global [2 x i8] c" \00"
@_string4040 = global i8* bitcast ([2 x i8]* @_stringd4041 to i8*)
@_stringd4048 = global [2 x i8] c" \00"
@_string4047 = global i8* bitcast ([2 x i8]* @_stringd4048 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args4002 = alloca i64
  %_args4003 = alloca { i64, [0 x i8*] }*
  %_localId4006 = alloca i64
  %_localId4032 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args4002
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args4003
  store i64 0, i64* %_localId4006
  %_atomArrUID4009 = alloca { i64, [10 x i64] }
  %_idxUID4030 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 0
  store i64 10, i64* %_idxUID4030
  %_gep4010 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 0
  %_gep4011 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 1
  %_gep4012 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 2
  %_gep4013 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 3
  %_gep4014 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 4
  %_gep4015 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 5
  %_gep4016 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 6
  %_gep4017 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 7
  %_gep4018 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 8
  %_gep4019 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4009, i32 0, i32 1, i32 9
  store i64 126, i64* %_gep4010
  store i64 125, i64* %_gep4011
  store i64 124, i64* %_gep4012
  store i64 123, i64* %_gep4013
  store i64 122, i64* %_gep4014
  store i64 121, i64* %_gep4015
  store i64 120, i64* %_gep4016
  store i64 119, i64* %_gep4017
  store i64 118, i64* %_gep4018
  store i64 117, i64* %_gep4019
  %_arrayUID4008 = bitcast { i64, [10 x i64] }* %_atomArrUID4009 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID4008, { i64, [0 x i64] }** %_localId4032
  %_locRef4034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4032
  %_callUID4035 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef4034)
  call void @print_string(i8* %_callUID4035)
  %_locRef4037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4032
  call void @oat_mergesort({ i64, [0 x i64] }* %_locRef4037, i64 0, i64 9)
  %_stringp4039 = load i8*, i8** @_string4040
  call void @print_string(i8* %_stringp4039)
  %_locRef4043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4032
  %_callUID4044 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef4043)
  call void @print_string(i8* %_callUID4044)
  %_stringp4046 = load i8*, i8** @_string4047
  call void @print_string(i8* %_stringp4046)
  %_locRef4050 = load i64, i64* %_localId4006
  ret i64 %_locRef4050
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_args3969 = alloca { i64, [0 x i64] }*
  %_args3970 = alloca i64
  %_args3971 = alloca i64
  %_localId3975 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args3969
  store i64 %low, i64* %_args3970
  store i64 %high, i64* %_args3971
  store i64 0, i64* %_localId3975
  %_locRef3980 = load i64, i64* %_args3970
  %_locRef3981 = load i64, i64* %_args3971
  %_bop3982 = icmp slt i64 %_locRef3980, %_locRef3981
  br i1 %_bop3982, label %_ifTruelbl3977, label %_ifFalselbl3978
_ifTruelbl3977:
  %_locRef3983 = load i64, i64* %_args3970
  %_locRef3984 = load i64, i64* %_args3971
  %_bop3985 = add i64 %_locRef3983, %_locRef3984
  %_bop3986 = lshr i64 %_bop3985, 1
  store i64 %_bop3986, i64* %_localId3975
  %_locRef3988 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3969
  %_locRef3989 = load i64, i64* %_args3970
  %_locRef3990 = load i64, i64* %_localId3975
  call void @oat_mergesort({ i64, [0 x i64] }* %_locRef3988, i64 %_locRef3989, i64 %_locRef3990)
  %_locRef3992 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3969
  %_locRef3993 = load i64, i64* %_localId3975
  %_bop3994 = add i64 %_locRef3993, 1
  %_locRef3995 = load i64, i64* %_args3971
  call void @oat_mergesort({ i64, [0 x i64] }* %_locRef3992, i64 %_bop3994, i64 %_locRef3995)
  %_locRef3997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3969
  %_locRef3998 = load i64, i64* %_args3970
  %_locRef3999 = load i64, i64* %_args3971
  %_locRef4000 = load i64, i64* %_localId3975
  call void @merge({ i64, [0 x i64] }* %_locRef3997, i64 %_locRef3998, i64 %_locRef3999, i64 %_locRef4000)
  br label %_ifEndlbl3979
_ifFalselbl3978:
  br label %_ifEndlbl3979
_ifEndlbl3979:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_args3823 = alloca { i64, [0 x i64] }*
  %_args3824 = alloca i64
  %_args3825 = alloca i64
  %_args3826 = alloca i64
  %_localId3831 = alloca i64
  %_localId3833 = alloca i64
  %_localId3835 = alloca i64
  %_localId3839 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args3823
  store i64 %low, i64* %_args3824
  store i64 %high, i64* %_args3825
  store i64 %mid, i64* %_args3826
  store i64 0, i64* %_localId3831
  store i64 0, i64* %_localId3833
  store i64 0, i64* %_localId3835
  %_raw_array3837 = call i64* @oat_alloc_array(i64 50)
  %_array3838 = bitcast i64* %_raw_array3837 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3838, { i64, [0 x i64] }** %_localId3839
  %_locRef3841 = load i64, i64* %_args3824
  store i64 %_locRef3841, i64* %_localId3831
  %_locRef3843 = load i64, i64* %_args3826
  %_bop3844 = add i64 %_locRef3843, 1
  store i64 %_bop3844, i64* %_localId3833
  %_locRef3846 = load i64, i64* %_args3824
  store i64 %_locRef3846, i64* %_localId3835
  %_locRef3848 = load i64, i64* %_localId3831
  %_locRef3849 = load i64, i64* %_args3826
  %_bop3850 = icmp sle i64 %_locRef3848, %_locRef3849
  %_locRef3851 = load i64, i64* %_localId3833
  %_locRef3852 = load i64, i64* %_args3825
  %_bop3853 = icmp sle i64 %_locRef3851, %_locRef3852
  %_bop3854 = and i1 %_bop3850, %_bop3853
  br i1 %_bop3854, label %_while_body_jmp3856, label %_while_end_jmp3855
_while_body_jmp3856:
  %_locRef3860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3823
  %_locRef3861 = load i64, i64* %_localId3831
  %_idxUID3862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3860, i32 0, i32 1, i64 %_locRef3861
  %_getArrUID3863 = load i64, i64* %_idxUID3862
  %_locRef3864 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3823
  %_locRef3865 = load i64, i64* %_localId3833
  %_idxUID3866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3864, i32 0, i32 1, i64 %_locRef3865
  %_getArrUID3867 = load i64, i64* %_idxUID3866
  %_bop3868 = icmp slt i64 %_getArrUID3863, %_getArrUID3867
  br i1 %_bop3868, label %_ifTruelbl3857, label %_ifFalselbl3858
_ifTruelbl3857:
  %_locRef3869 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3839
  %_locRef3870 = load i64, i64* %_localId3835
  %_locRef3871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3823
  %_locRef3872 = load i64, i64* %_localId3831
  %_idxUID3873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3871, i32 0, i32 1, i64 %_locRef3872
  %_getArrUID3874 = load i64, i64* %_idxUID3873
  %_arridx3875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3869, i32 0, i32 1, i64 %_locRef3870
  store i64 %_getArrUID3874, i64* %_arridx3875
  %_locRef3877 = load i64, i64* %_localId3835
  %_bop3878 = add i64 %_locRef3877, 1
  store i64 %_bop3878, i64* %_localId3835
  %_locRef3880 = load i64, i64* %_localId3831
  %_bop3881 = add i64 %_locRef3880, 1
  store i64 %_bop3881, i64* %_localId3831
  br label %_ifEndlbl3859
_ifFalselbl3858:
  %_locRef3883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3839
  %_locRef3884 = load i64, i64* %_localId3835
  %_locRef3885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3823
  %_locRef3886 = load i64, i64* %_localId3833
  %_idxUID3887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3885, i32 0, i32 1, i64 %_locRef3886
  %_getArrUID3888 = load i64, i64* %_idxUID3887
  %_arridx3889 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3883, i32 0, i32 1, i64 %_locRef3884
  store i64 %_getArrUID3888, i64* %_arridx3889
  %_locRef3891 = load i64, i64* %_localId3835
  %_bop3892 = add i64 %_locRef3891, 1
  store i64 %_bop3892, i64* %_localId3835
  %_locRef3894 = load i64, i64* %_localId3833
  %_bop3895 = add i64 %_locRef3894, 1
  store i64 %_bop3895, i64* %_localId3833
  br label %_ifEndlbl3859
_ifEndlbl3859:
  %_locRef3897 = load i64, i64* %_localId3831
  %_locRef3898 = load i64, i64* %_args3826
  %_bop3899 = icmp sle i64 %_locRef3897, %_locRef3898
  %_locRef3900 = load i64, i64* %_localId3833
  %_locRef3901 = load i64, i64* %_args3825
  %_bop3902 = icmp sle i64 %_locRef3900, %_locRef3901
  %_bop3903 = and i1 %_bop3899, %_bop3902
  br i1 %_bop3903, label %_while_body_jmp3856, label %_while_end_jmp3855
_while_end_jmp3855:
  %_locRef3904 = load i64, i64* %_localId3831
  %_locRef3905 = load i64, i64* %_args3826
  %_bop3906 = icmp sle i64 %_locRef3904, %_locRef3905
  br i1 %_bop3906, label %_while_body_jmp3908, label %_while_end_jmp3907
_while_body_jmp3908:
  %_locRef3909 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3839
  %_locRef3910 = load i64, i64* %_localId3835
  %_locRef3911 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3823
  %_locRef3912 = load i64, i64* %_localId3831
  %_idxUID3913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3911, i32 0, i32 1, i64 %_locRef3912
  %_getArrUID3914 = load i64, i64* %_idxUID3913
  %_arridx3915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3909, i32 0, i32 1, i64 %_locRef3910
  store i64 %_getArrUID3914, i64* %_arridx3915
  %_locRef3917 = load i64, i64* %_localId3835
  %_bop3918 = add i64 %_locRef3917, 1
  store i64 %_bop3918, i64* %_localId3835
  %_locRef3920 = load i64, i64* %_localId3831
  %_bop3921 = add i64 %_locRef3920, 1
  store i64 %_bop3921, i64* %_localId3831
  %_locRef3923 = load i64, i64* %_localId3831
  %_locRef3924 = load i64, i64* %_args3826
  %_bop3925 = icmp sle i64 %_locRef3923, %_locRef3924
  br i1 %_bop3925, label %_while_body_jmp3908, label %_while_end_jmp3907
_while_end_jmp3907:
  %_locRef3926 = load i64, i64* %_localId3833
  %_locRef3927 = load i64, i64* %_args3825
  %_bop3928 = icmp sle i64 %_locRef3926, %_locRef3927
  br i1 %_bop3928, label %_while_body_jmp3930, label %_while_end_jmp3929
_while_body_jmp3930:
  %_locRef3931 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3839
  %_locRef3932 = load i64, i64* %_localId3835
  %_locRef3933 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3823
  %_locRef3934 = load i64, i64* %_localId3833
  %_idxUID3935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3933, i32 0, i32 1, i64 %_locRef3934
  %_getArrUID3936 = load i64, i64* %_idxUID3935
  %_arridx3937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3931, i32 0, i32 1, i64 %_locRef3932
  store i64 %_getArrUID3936, i64* %_arridx3937
  %_locRef3939 = load i64, i64* %_localId3835
  %_bop3940 = add i64 %_locRef3939, 1
  store i64 %_bop3940, i64* %_localId3835
  %_locRef3942 = load i64, i64* %_localId3833
  %_bop3943 = add i64 %_locRef3942, 1
  store i64 %_bop3943, i64* %_localId3833
  %_locRef3945 = load i64, i64* %_localId3833
  %_locRef3946 = load i64, i64* %_args3825
  %_bop3947 = icmp sle i64 %_locRef3945, %_locRef3946
  br i1 %_bop3947, label %_while_body_jmp3930, label %_while_end_jmp3929
_while_end_jmp3929:
  %_locRef3948 = load i64, i64* %_args3824
  store i64 %_locRef3948, i64* %_localId3831
  %_locRef3950 = load i64, i64* %_localId3831
  %_locRef3951 = load i64, i64* %_localId3835
  %_bop3952 = icmp slt i64 %_locRef3950, %_locRef3951
  br i1 %_bop3952, label %_while_body_jmp3954, label %_while_end_jmp3953
_while_body_jmp3954:
  %_locRef3955 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3823
  %_locRef3956 = load i64, i64* %_localId3831
  %_locRef3957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3839
  %_locRef3958 = load i64, i64* %_localId3831
  %_idxUID3959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3957, i32 0, i32 1, i64 %_locRef3958
  %_getArrUID3960 = load i64, i64* %_idxUID3959
  %_arridx3961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3955, i32 0, i32 1, i64 %_locRef3956
  store i64 %_getArrUID3960, i64* %_arridx3961
  %_locRef3963 = load i64, i64* %_localId3831
  %_bop3964 = add i64 %_locRef3963, 1
  store i64 %_bop3964, i64* %_localId3831
  %_locRef3966 = load i64, i64* %_localId3831
  %_locRef3967 = load i64, i64* %_localId3835
  %_bop3968 = icmp slt i64 %_locRef3966, %_locRef3967
  br i1 %_bop3968, label %_while_body_jmp3954, label %_while_end_jmp3953
_while_end_jmp3953:
  ret void
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
