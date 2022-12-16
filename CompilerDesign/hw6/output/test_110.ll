; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str_arr4220 = global [2 x i8] c"
\00"

define i64 @xor(i64 %_x4278, i64 %_y4275) {
  %_x4279 = alloca i64
  %_y4276 = alloca i64
  store i64 %_x4278, i64* %_x4279
  store i64 %_y4275, i64* %_y4276
  %_x4281 = load i64, i64* %_x4279
  %_y4282 = load i64, i64* %_y4276
  %_bop4283 = and i64 %_x4281, %_y4282
  %_unop4284 = xor i64 %_bop4283, -1
  %_x4285 = load i64, i64* %_x4279
  %_y4286 = load i64, i64* %_y4276
  %_bop4287 = or i64 %_x4285, %_y4286
  %_bop4288 = and i64 %_unop4284, %_bop4287
  ret i64 %_bop4288
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %_s4226) {
  %_s4227 = alloca { i64, [0 x i64] }*
  %_x4234 = alloca i64
  %_y4241 = alloca i64
  store { i64, [0 x i64] }* %_s4226, { i64, [0 x i64] }** %_s4227
  %_s4229 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4227
  %_tmp4231 = bitcast { i64, [0 x i64] }* %_s4229 to i64*
  call void @oat_assert_array_length(i64* %_tmp4231, i64 0)
  %_index_ptr4232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4229, i32 0, i32 1, i32 0
  %_index4233 = load i64, i64* %_index_ptr4232
  store i64 %_index4233, i64* %_x4234
  %_s4236 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4227
  %_tmp4238 = bitcast { i64, [0 x i64] }* %_s4236 to i64*
  call void @oat_assert_array_length(i64* %_tmp4238, i64 1)
  %_index_ptr4239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4236, i32 0, i32 1, i32 1
  %_index4240 = load i64, i64* %_index_ptr4239
  store i64 %_index4240, i64* %_y4241
  %_s4243 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4227
  %_tmp4245 = bitcast { i64, [0 x i64] }* %_s4243 to i64*
  call void @oat_assert_array_length(i64* %_tmp4245, i64 0)
  %_index_ptr4246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4243, i32 0, i32 1, i32 0
  %_y4247 = load i64, i64* %_y4241
  store i64 %_y4247, i64* %_index_ptr4246
  %_x4249 = load i64, i64* %_x4234
  %_bop4250 = shl i64 %_x4249, 23
  %_x4251 = load i64, i64* %_x4234
  %_result4252 = call i64 @xor(i64 %_x4251, i64 %_bop4250)
  store i64 %_result4252, i64* %_x4234
  %_x4254 = load i64, i64* %_x4234
  %_bop4255 = lshr i64 %_x4254, 17
  %_x4256 = load i64, i64* %_x4234
  %_result4257 = call i64 @xor(i64 %_x4256, i64 %_bop4255)
  store i64 %_result4257, i64* %_x4234
  %_y4259 = load i64, i64* %_y4241
  %_bop4260 = lshr i64 %_y4259, 26
  %_y4261 = load i64, i64* %_y4241
  %_result4262 = call i64 @xor(i64 %_y4261, i64 %_bop4260)
  %_x4263 = load i64, i64* %_x4234
  %_result4264 = call i64 @xor(i64 %_x4263, i64 %_result4262)
  store i64 %_result4264, i64* %_x4234
  %_s4266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4227
  %_tmp4268 = bitcast { i64, [0 x i64] }* %_s4266 to i64*
  call void @oat_assert_array_length(i64* %_tmp4268, i64 1)
  %_index_ptr4269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4266, i32 0, i32 1, i32 1
  %_x4270 = load i64, i64* %_x4234
  store i64 %_x4270, i64* %_index_ptr4269
  %_x4272 = load i64, i64* %_x4234
  %_y4273 = load i64, i64* %_y4241
  %_bop4274 = add i64 %_x4272, %_y4273
  ret i64 %_bop4274
}

define i64 @program(i64 %_argc4170, { i64, [0 x i8*] }* %_argv4167) {
  %_i4177 = alloca i64
  %_seed4196 = alloca { i64, [0 x i64] }*
  %_i4198 = alloca i64
  %_raw_array4175 = call i64* @oat_alloc_array(i64 2)
  %_array4176 = bitcast i64* %_raw_array4175 to { i64, [0 x i64] }*
  %_bnd_4174 = alloca i64
  store i64 2, i64* %_bnd_4174
  %_ptr_4173 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4176, { i64, [0 x i64] }** %_ptr_4173
  store i64 0, i64* %_i4177
  br label %_cond4184
_body4183:
  %__ptr_41734185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_4173
  %_i4186 = load i64, i64* %_i4177
  %_tmp4188 = bitcast { i64, [0 x i64] }* %__ptr_41734185 to i64*
  call void @oat_assert_array_length(i64* %_tmp4188, i64 %_i4186)
  %_index_ptr4189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_41734185, i32 0, i32 1, i64 %_i4186
  store i64 0, i64* %_index_ptr4189
  %_i4191 = load i64, i64* %_i4177
  %_bop4192 = add i64 %_i4191, 1
  store i64 %_bop4192, i64* %_i4177
  br label %_cond4184
_body4203:
  %_seed4205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4196
  %_i4206 = load i64, i64* %_i4198
  %_tmp4208 = bitcast { i64, [0 x i64] }* %_seed4205 to i64*
  call void @oat_assert_array_length(i64* %_tmp4208, i64 %_i4206)
  %_index_ptr4209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed4205, i32 0, i32 1, i64 %_i4206
  %_i4210 = load i64, i64* %_i4198
  %_bop4211 = add i64 %_i4210, 1
  %_bop4212 = mul i64 100, %_bop4211
  store i64 %_bop4212, i64* %_index_ptr4209
  %_i4214 = load i64, i64* %_i4198
  %_bop4215 = add i64 %_i4214, 1
  store i64 %_bop4215, i64* %_i4198
  br label %_cond4204
_cond4184:
  %_i4179 = load i64, i64* %_i4177
  %__bnd_41744180 = load i64, i64* %_bnd_4174
  %_bop4181 = icmp slt i64 %_i4179, %__bnd_41744180
  br i1 %_bop4181, label %_body4183, label %_post4182
_cond4204:
  %_i4200 = load i64, i64* %_i4198
  %_bop4201 = icmp slt i64 %_i4200, 2
  br i1 %_bop4201, label %_body4203, label %_post4202
_post4182:
  store { i64, [0 x i64] }* %_array4176, { i64, [0 x i64] }** %_seed4196
  store i64 0, i64* %_i4198
  br label %_cond4204
_post4202:
  %_seed4217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4196
  %_result4218 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4217)
  call void @print_int(i64 %_result4218)
  %_str4221 = getelementptr [2 x i8], [2 x i8]* @_str_arr4220, i32 0, i32 0
  call void @print_string(i8* %_str4221)
  %_seed4223 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4196
  %_result4224 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4223)
  call void @print_int(i64 %_result4224)
  ret i64 0
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
