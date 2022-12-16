; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str_arr4037 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %_numerator4104, i64 %_denominator4101) {
  %_numerator4105 = alloca i64
  %_denominator4102 = alloca i64
  %_quotient4117 = alloca i64
  %_remainder4120 = alloca i64
  store i64 %_numerator4104, i64* %_numerator4105
  store i64 %_denominator4101, i64* %_denominator4102
  %_denominator4107 = load i64, i64* %_denominator4102
  %_bop4108 = icmp slt i64 %_denominator4107, 0
  br i1 %_bop4108, label %_then4116, label %_else4115
_body4131:
  %_quotient4133 = load i64, i64* %_quotient4117
  %_bop4134 = add i64 %_quotient4133, 1
  store i64 %_bop4134, i64* %_quotient4117
  %_remainder4136 = load i64, i64* %_remainder4120
  %_denominator4137 = load i64, i64* %_denominator4102
  %_bop4138 = sub i64 %_remainder4136, %_denominator4137
  store i64 %_bop4138, i64* %_remainder4120
  br label %_cond4132
_body4157:
  %_quotient4159 = load i64, i64* %_quotient4117
  %_bop4160 = add i64 %_quotient4159, 1
  store i64 %_bop4160, i64* %_quotient4117
  %_remainder4162 = load i64, i64* %_remainder4120
  %_denominator4163 = load i64, i64* %_denominator4102
  %_bop4164 = sub i64 %_remainder4162, %_denominator4163
  store i64 %_bop4164, i64* %_remainder4120
  br label %_cond4158
_cond4132:
  %_remainder4127 = load i64, i64* %_remainder4120
  %_denominator4128 = load i64, i64* %_denominator4102
  %_bop4129 = icmp sge i64 %_remainder4127, %_denominator4128
  br i1 %_bop4129, label %_body4131, label %_post4130
_cond4158:
  %_remainder4153 = load i64, i64* %_remainder4120
  %_denominator4154 = load i64, i64* %_denominator4102
  %_bop4155 = icmp sge i64 %_remainder4153, %_denominator4154
  br i1 %_bop4155, label %_body4157, label %_post4156
_else4115:
  br label %_merge4114
_else4148:
  %_quotient4144 = load i64, i64* %_quotient4117
  %_unop4145 = sub i64 0, %_quotient4144
  %_bop4146 = sub i64 %_unop4145, 1
  ret i64 %_bop4146
_else4151:
  br label %_merge4150
_merge4114:
  store i64 0, i64* %_quotient4117
  %_numerator4119 = load i64, i64* %_numerator4105
  store i64 %_numerator4119, i64* %_remainder4120
  %_numerator4122 = load i64, i64* %_numerator4105
  %_bop4123 = icmp slt i64 %_numerator4122, 0
  br i1 %_bop4123, label %_then4152, label %_else4151
_merge4147:
  br label %_merge4150
_merge4150:
  br label %_cond4158
_post4130:
  %_remainder4140 = load i64, i64* %_remainder4120
  %_bop4141 = icmp eq i64 %_remainder4140, 0
  br i1 %_bop4141, label %_then4149, label %_else4148
_post4156:
  %_quotient4166 = load i64, i64* %_quotient4117
  ret i64 %_quotient4166
_then4116:
  %_denominator4109 = load i64, i64* %_denominator4102
  %_unop4110 = sub i64 0, %_denominator4109
  %_numerator4111 = load i64, i64* %_numerator4105
  %_result4112 = call i64 @euclid_division(i64 %_numerator4111, i64 %_unop4110)
  %_unop4113 = sub i64 0, %_result4112
  ret i64 %_unop4113
_then4149:
  %_quotient4142 = load i64, i64* %_quotient4117
  %_unop4143 = sub i64 0, %_quotient4142
  ret i64 %_unop4143
_then4152:
  %_numerator4124 = load i64, i64* %_numerator4105
  %_unop4125 = sub i64 0, %_numerator4124
  store i64 %_unop4125, i64* %_remainder4120
  br label %_cond4132
}

define i1 @binary_search({ i64, [0 x i64] }* %_input4052, i64 %_key4049, i64 %_min4046, i64 %_max4043) {
  %_input4053 = alloca { i64, [0 x i64] }*
  %_key4050 = alloca i64
  %_min4047 = alloca i64
  %_max4044 = alloca i64
  %_midpt4065 = alloca i64
  store { i64, [0 x i64] }* %_input4052, { i64, [0 x i64] }** %_input4053
  store i64 %_key4049, i64* %_key4050
  store i64 %_min4046, i64* %_min4047
  store i64 %_max4043, i64* %_max4044
  %_max4055 = load i64, i64* %_max4044
  %_min4056 = load i64, i64* %_min4047
  %_bop4057 = icmp slt i64 %_max4055, %_min4056
  br i1 %_bop4057, label %_then4060, label %_else4059
_else4059:
  br label %_merge4058
_else4082:
  br label %_merge4081
_else4099:
  ret i1 1
_merge4058:
  %_max4061 = load i64, i64* %_max4044
  %_min4062 = load i64, i64* %_min4047
  %_bop4063 = add i64 %_max4061, %_min4062
  %_result4064 = call i64 @euclid_division(i64 %_bop4063, i64 2)
  store i64 %_result4064, i64* %_midpt4065
  %_input4067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4053
  %_midpt4068 = load i64, i64* %_midpt4065
  %_tmp4070 = bitcast { i64, [0 x i64] }* %_input4067 to i64*
  call void @oat_assert_array_length(i64* %_tmp4070, i64 %_midpt4068)
  %_index_ptr4071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4067, i32 0, i32 1, i64 %_midpt4068
  %_index4072 = load i64, i64* %_index_ptr4071
  %_key4073 = load i64, i64* %_key4050
  %_bop4074 = icmp sgt i64 %_index4072, %_key4073
  br i1 %_bop4074, label %_then4083, label %_else4082
_merge4081:
  %_input4084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4053
  %_midpt4085 = load i64, i64* %_midpt4065
  %_tmp4087 = bitcast { i64, [0 x i64] }* %_input4084 to i64*
  call void @oat_assert_array_length(i64* %_tmp4087, i64 %_midpt4085)
  %_index_ptr4088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4084, i32 0, i32 1, i64 %_midpt4085
  %_index4089 = load i64, i64* %_index_ptr4088
  %_key4090 = load i64, i64* %_key4050
  %_bop4091 = icmp slt i64 %_index4089, %_key4090
  br i1 %_bop4091, label %_then4100, label %_else4099
_merge4098:
  ret i1 0
_then4060:
  ret i1 0
_then4083:
  %_midpt4075 = load i64, i64* %_midpt4065
  %_bop4076 = sub i64 %_midpt4075, 1
  %_min4077 = load i64, i64* %_min4047
  %_key4078 = load i64, i64* %_key4050
  %_input4079 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4053
  %_result4080 = call i1 @binary_search({ i64, [0 x i64] }* %_input4079, i64 %_key4078, i64 %_min4077, i64 %_bop4076)
  ret i1 %_result4080
_then4100:
  %_max4092 = load i64, i64* %_max4044
  %_midpt4093 = load i64, i64* %_midpt4065
  %_bop4094 = add i64 %_midpt4093, 1
  %_key4095 = load i64, i64* %_key4050
  %_input4096 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4053
  %_result4097 = call i1 @binary_search({ i64, [0 x i64] }* %_input4096, i64 %_key4095, i64 %_bop4094, i64 %_max4092)
  ret i1 %_result4097
}

define i64 @program(i64 %_argc3974, { i64, [0 x i8*] }* %_argv3971) {
  %_i3981 = alloca i64
  %_test_array4000 = alloca { i64, [0 x i64] }*
  %_i4002 = alloca i64
  %_even4023 = alloca i1
  %_odd4027 = alloca i1
  %_raw_array3979 = call i64* @oat_alloc_array(i64 100)
  %_array3980 = bitcast i64* %_raw_array3979 to { i64, [0 x i64] }*
  %_bnd_3978 = alloca i64
  store i64 100, i64* %_bnd_3978
  %_ptr_3977 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3980, { i64, [0 x i64] }** %_ptr_3977
  store i64 0, i64* %_i3981
  br label %_cond3988
_body3987:
  %__ptr_39773989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_3977
  %_i3990 = load i64, i64* %_i3981
  %_tmp3992 = bitcast { i64, [0 x i64] }* %__ptr_39773989 to i64*
  call void @oat_assert_array_length(i64* %_tmp3992, i64 %_i3990)
  %_index_ptr3993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_39773989, i32 0, i32 1, i64 %_i3990
  store i64 0, i64* %_index_ptr3993
  %_i3995 = load i64, i64* %_i3981
  %_bop3996 = add i64 %_i3995, 1
  store i64 %_bop3996, i64* %_i3981
  br label %_cond3988
_body4007:
  %_test_array4009 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4000
  %_i4010 = load i64, i64* %_i4002
  %_tmp4012 = bitcast { i64, [0 x i64] }* %_test_array4009 to i64*
  call void @oat_assert_array_length(i64* %_tmp4012, i64 %_i4010)
  %_index_ptr4013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array4009, i32 0, i32 1, i64 %_i4010
  %_i4014 = load i64, i64* %_i4002
  %_bop4015 = mul i64 2, %_i4014
  %_bop4016 = add i64 %_bop4015, 1
  store i64 %_bop4016, i64* %_index_ptr4013
  %_i4018 = load i64, i64* %_i4002
  %_bop4019 = add i64 %_i4018, 1
  store i64 %_bop4019, i64* %_i4002
  br label %_cond4008
_cond3988:
  %_i3983 = load i64, i64* %_i3981
  %__bnd_39783984 = load i64, i64* %_bnd_3978
  %_bop3985 = icmp slt i64 %_i3983, %__bnd_39783984
  br i1 %_bop3985, label %_body3987, label %_post3986
_cond4008:
  %_i4004 = load i64, i64* %_i4002
  %_bop4005 = icmp slt i64 %_i4004, 100
  br i1 %_bop4005, label %_body4007, label %_post4006
_else4041:
  br label %_merge4040
_merge4040:
  ret i64 0
_post3986:
  store { i64, [0 x i64] }* %_array3980, { i64, [0 x i64] }** %_test_array4000
  store i64 0, i64* %_i4002
  br label %_cond4008
_post4006:
  %_test_array4021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4000
  %_result4022 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4021, i64 80, i64 0, i64 99)
  store i1 %_result4022, i1* %_even4023
  %_test_array4025 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4000
  %_result4026 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4025, i64 81, i64 0, i64 99)
  store i1 %_result4026, i1* %_odd4027
  %_even4029 = load i1, i1* %_even4023
  %_odd4030 = load i1, i1* %_odd4027
  %_bop4031 = and i1 %_even4029, %_odd4030
  %_unop4032 = icmp eq i1 %_bop4031, 0
  %_even4033 = load i1, i1* %_even4023
  %_odd4034 = load i1, i1* %_odd4027
  %_bop4035 = or i1 %_even4033, %_odd4034
  %_bop4036 = and i1 %_unop4032, %_bop4035
  br i1 %_bop4036, label %_then4042, label %_else4041
_then4042:
  %_str4038 = getelementptr [9 x i8], [9 x i8]* @_str_arr4037, i32 0, i32 0
  call void @print_string(i8* %_str4038)
  br label %_merge4040
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
