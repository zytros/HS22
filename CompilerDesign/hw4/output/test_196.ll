; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_stringd4269 = global [2 x i8] c" \00"
@_string4268 = global i8* bitcast ([2 x i8]* @_stringd4269 to i8*)
@_stringd4276 = global [2 x i8] c" \00"
@_string4275 = global i8* bitcast ([2 x i8]* @_stringd4276 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args4230 = alloca i64
  %_args4231 = alloca { i64, [0 x i8*] }*
  %_localId4258 = alloca { i64, [0 x i64] }*
  %_localId4260 = alloca i64
  store i64 %argc, i64* %_args4230
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args4231
  %_atomArrUID4235 = alloca { i64, [10 x i64] }
  %_idxUID4256 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 0
  store i64 10, i64* %_idxUID4256
  %_gep4236 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 0
  %_gep4237 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 1
  %_gep4238 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 2
  %_gep4239 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 3
  %_gep4240 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 4
  %_gep4241 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 5
  %_gep4242 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 6
  %_gep4243 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 7
  %_gep4244 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 8
  %_gep4245 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID4235, i32 0, i32 1, i32 9
  store i64 126, i64* %_gep4236
  store i64 125, i64* %_gep4237
  store i64 124, i64* %_gep4238
  store i64 123, i64* %_gep4239
  store i64 122, i64* %_gep4240
  store i64 121, i64* %_gep4241
  store i64 120, i64* %_gep4242
  store i64 119, i64* %_gep4243
  store i64 118, i64* %_gep4244
  store i64 117, i64* %_gep4245
  %_arrayUID4234 = bitcast { i64, [10 x i64] }* %_atomArrUID4235 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID4234, { i64, [0 x i64] }** %_localId4258
  store i64 0, i64* %_localId4260
  %_locRef4262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4258
  %_callUID4263 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef4262)
  call void @print_string(i8* %_callUID4263)
  %_locRef4265 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4258
  call void @oat_mergesort({ i64, [0 x i64] }* %_locRef4265, i64 0, i64 9)
  %_stringp4267 = load i8*, i8** @_string4268
  call void @print_string(i8* %_stringp4267)
  %_locRef4271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4258
  %_callUID4272 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef4271)
  call void @print_string(i8* %_callUID4272)
  %_stringp4274 = load i8*, i8** @_string4275
  call void @print_string(i8* %_stringp4274)
  %_locRef4278 = load i64, i64* %_localId4260
  ret i64 %_locRef4278
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_args4197 = alloca { i64, [0 x i64] }*
  %_args4198 = alloca i64
  %_args4199 = alloca i64
  %_localId4203 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args4197
  store i64 %low, i64* %_args4198
  store i64 %high, i64* %_args4199
  store i64 0, i64* %_localId4203
  %_locRef4208 = load i64, i64* %_args4198
  %_locRef4209 = load i64, i64* %_args4199
  %_bop4210 = icmp slt i64 %_locRef4208, %_locRef4209
  br i1 %_bop4210, label %_ifTruelbl4205, label %_ifFalselbl4206
_ifTruelbl4205:
  %_locRef4211 = load i64, i64* %_args4198
  %_locRef4212 = load i64, i64* %_args4199
  %_bop4213 = add i64 %_locRef4211, %_locRef4212
  %_bop4214 = lshr i64 %_bop4213, 1
  store i64 %_bop4214, i64* %_localId4203
  %_locRef4216 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4197
  %_locRef4217 = load i64, i64* %_args4198
  %_locRef4218 = load i64, i64* %_localId4203
  call void @oat_mergesort({ i64, [0 x i64] }* %_locRef4216, i64 %_locRef4217, i64 %_locRef4218)
  %_locRef4220 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4197
  %_locRef4221 = load i64, i64* %_localId4203
  %_bop4222 = add i64 %_locRef4221, 1
  %_locRef4223 = load i64, i64* %_args4199
  call void @oat_mergesort({ i64, [0 x i64] }* %_locRef4220, i64 %_bop4222, i64 %_locRef4223)
  %_locRef4225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4197
  %_locRef4226 = load i64, i64* %_args4198
  %_locRef4227 = load i64, i64* %_args4199
  %_locRef4228 = load i64, i64* %_localId4203
  call void @merge({ i64, [0 x i64] }* %_locRef4225, i64 %_locRef4226, i64 %_locRef4227, i64 %_locRef4228)
  br label %_ifEndlbl4207
_ifFalselbl4206:
  br label %_ifEndlbl4207
_ifEndlbl4207:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_args4051 = alloca { i64, [0 x i64] }*
  %_args4052 = alloca i64
  %_args4053 = alloca i64
  %_args4054 = alloca i64
  %_localId4059 = alloca i64
  %_localId4061 = alloca i64
  %_localId4063 = alloca i64
  %_localId4067 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args4051
  store i64 %low, i64* %_args4052
  store i64 %high, i64* %_args4053
  store i64 %mid, i64* %_args4054
  store i64 0, i64* %_localId4059
  store i64 0, i64* %_localId4061
  store i64 0, i64* %_localId4063
  %_raw_array4065 = call i64* @oat_alloc_array(i64 50)
  %_array4066 = bitcast i64* %_raw_array4065 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4066, { i64, [0 x i64] }** %_localId4067
  %_locRef4069 = load i64, i64* %_args4052
  store i64 %_locRef4069, i64* %_localId4059
  %_locRef4071 = load i64, i64* %_args4054
  %_bop4072 = add i64 %_locRef4071, 1
  store i64 %_bop4072, i64* %_localId4061
  %_locRef4074 = load i64, i64* %_args4052
  store i64 %_locRef4074, i64* %_localId4063
  %_locRef4076 = load i64, i64* %_localId4059
  %_locRef4077 = load i64, i64* %_args4054
  %_bop4078 = icmp sle i64 %_locRef4076, %_locRef4077
  %_locRef4079 = load i64, i64* %_localId4061
  %_locRef4080 = load i64, i64* %_args4053
  %_bop4081 = icmp sle i64 %_locRef4079, %_locRef4080
  %_bop4082 = and i1 %_bop4078, %_bop4081
  br i1 %_bop4082, label %_while_body_jmp4084, label %_while_end_jmp4083
_while_body_jmp4084:
  %_locRef4088 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4051
  %_locRef4089 = load i64, i64* %_localId4059
  %_idxUID4090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4088, i32 0, i32 1, i64 %_locRef4089
  %_getArrUID4091 = load i64, i64* %_idxUID4090
  %_locRef4092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4051
  %_locRef4093 = load i64, i64* %_localId4061
  %_idxUID4094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4092, i32 0, i32 1, i64 %_locRef4093
  %_getArrUID4095 = load i64, i64* %_idxUID4094
  %_bop4096 = icmp slt i64 %_getArrUID4091, %_getArrUID4095
  br i1 %_bop4096, label %_ifTruelbl4085, label %_ifFalselbl4086
_ifTruelbl4085:
  %_locRef4097 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4067
  %_locRef4098 = load i64, i64* %_localId4063
  %_locRef4099 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4051
  %_locRef4100 = load i64, i64* %_localId4059
  %_idxUID4101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4099, i32 0, i32 1, i64 %_locRef4100
  %_getArrUID4102 = load i64, i64* %_idxUID4101
  %_arridx4103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4097, i32 0, i32 1, i64 %_locRef4098
  store i64 %_getArrUID4102, i64* %_arridx4103
  %_locRef4105 = load i64, i64* %_localId4063
  %_bop4106 = add i64 %_locRef4105, 1
  store i64 %_bop4106, i64* %_localId4063
  %_locRef4108 = load i64, i64* %_localId4059
  %_bop4109 = add i64 %_locRef4108, 1
  store i64 %_bop4109, i64* %_localId4059
  br label %_ifEndlbl4087
_ifFalselbl4086:
  %_locRef4111 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4067
  %_locRef4112 = load i64, i64* %_localId4063
  %_locRef4113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4051
  %_locRef4114 = load i64, i64* %_localId4061
  %_idxUID4115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4113, i32 0, i32 1, i64 %_locRef4114
  %_getArrUID4116 = load i64, i64* %_idxUID4115
  %_arridx4117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4111, i32 0, i32 1, i64 %_locRef4112
  store i64 %_getArrUID4116, i64* %_arridx4117
  %_locRef4119 = load i64, i64* %_localId4063
  %_bop4120 = add i64 %_locRef4119, 1
  store i64 %_bop4120, i64* %_localId4063
  %_locRef4122 = load i64, i64* %_localId4061
  %_bop4123 = add i64 %_locRef4122, 1
  store i64 %_bop4123, i64* %_localId4061
  br label %_ifEndlbl4087
_ifEndlbl4087:
  %_locRef4125 = load i64, i64* %_localId4059
  %_locRef4126 = load i64, i64* %_args4054
  %_bop4127 = icmp sle i64 %_locRef4125, %_locRef4126
  %_locRef4128 = load i64, i64* %_localId4061
  %_locRef4129 = load i64, i64* %_args4053
  %_bop4130 = icmp sle i64 %_locRef4128, %_locRef4129
  %_bop4131 = and i1 %_bop4127, %_bop4130
  br i1 %_bop4131, label %_while_body_jmp4084, label %_while_end_jmp4083
_while_end_jmp4083:
  %_locRef4132 = load i64, i64* %_localId4059
  %_locRef4133 = load i64, i64* %_args4054
  %_bop4134 = icmp sle i64 %_locRef4132, %_locRef4133
  br i1 %_bop4134, label %_while_body_jmp4136, label %_while_end_jmp4135
_while_body_jmp4136:
  %_locRef4137 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4067
  %_locRef4138 = load i64, i64* %_localId4063
  %_locRef4139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4051
  %_locRef4140 = load i64, i64* %_localId4059
  %_idxUID4141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4139, i32 0, i32 1, i64 %_locRef4140
  %_getArrUID4142 = load i64, i64* %_idxUID4141
  %_arridx4143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4137, i32 0, i32 1, i64 %_locRef4138
  store i64 %_getArrUID4142, i64* %_arridx4143
  %_locRef4145 = load i64, i64* %_localId4063
  %_bop4146 = add i64 %_locRef4145, 1
  store i64 %_bop4146, i64* %_localId4063
  %_locRef4148 = load i64, i64* %_localId4059
  %_bop4149 = add i64 %_locRef4148, 1
  store i64 %_bop4149, i64* %_localId4059
  %_locRef4151 = load i64, i64* %_localId4059
  %_locRef4152 = load i64, i64* %_args4054
  %_bop4153 = icmp sle i64 %_locRef4151, %_locRef4152
  br i1 %_bop4153, label %_while_body_jmp4136, label %_while_end_jmp4135
_while_end_jmp4135:
  %_locRef4154 = load i64, i64* %_localId4061
  %_locRef4155 = load i64, i64* %_args4053
  %_bop4156 = icmp sle i64 %_locRef4154, %_locRef4155
  br i1 %_bop4156, label %_while_body_jmp4158, label %_while_end_jmp4157
_while_body_jmp4158:
  %_locRef4159 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4067
  %_locRef4160 = load i64, i64* %_localId4063
  %_locRef4161 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4051
  %_locRef4162 = load i64, i64* %_localId4061
  %_idxUID4163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4161, i32 0, i32 1, i64 %_locRef4162
  %_getArrUID4164 = load i64, i64* %_idxUID4163
  %_arridx4165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4159, i32 0, i32 1, i64 %_locRef4160
  store i64 %_getArrUID4164, i64* %_arridx4165
  %_locRef4167 = load i64, i64* %_localId4063
  %_bop4168 = add i64 %_locRef4167, 1
  store i64 %_bop4168, i64* %_localId4063
  %_locRef4170 = load i64, i64* %_localId4061
  %_bop4171 = add i64 %_locRef4170, 1
  store i64 %_bop4171, i64* %_localId4061
  %_locRef4173 = load i64, i64* %_localId4061
  %_locRef4174 = load i64, i64* %_args4053
  %_bop4175 = icmp sle i64 %_locRef4173, %_locRef4174
  br i1 %_bop4175, label %_while_body_jmp4158, label %_while_end_jmp4157
_while_end_jmp4157:
  %_locRef4176 = load i64, i64* %_args4052
  store i64 %_locRef4176, i64* %_localId4059
  %_locRef4178 = load i64, i64* %_localId4059
  %_locRef4179 = load i64, i64* %_localId4063
  %_bop4180 = icmp slt i64 %_locRef4178, %_locRef4179
  br i1 %_bop4180, label %_while_body_jmp4182, label %_while_end_jmp4181
_while_body_jmp4182:
  %_locRef4183 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4051
  %_locRef4184 = load i64, i64* %_localId4059
  %_locRef4185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4067
  %_locRef4186 = load i64, i64* %_localId4059
  %_idxUID4187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4185, i32 0, i32 1, i64 %_locRef4186
  %_getArrUID4188 = load i64, i64* %_idxUID4187
  %_arridx4189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4183, i32 0, i32 1, i64 %_locRef4184
  store i64 %_getArrUID4188, i64* %_arridx4189
  %_locRef4191 = load i64, i64* %_localId4059
  %_bop4192 = add i64 %_locRef4191, 1
  store i64 %_bop4192, i64* %_localId4059
  %_locRef4194 = load i64, i64* %_localId4059
  %_locRef4195 = load i64, i64* %_localId4063
  %_bop4196 = icmp slt i64 %_locRef4194, %_locRef4195
  br i1 %_bop4196, label %_while_body_jmp4182, label %_while_end_jmp4181
_while_end_jmp4181:
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
