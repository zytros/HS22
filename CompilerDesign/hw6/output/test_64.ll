; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x228, { i64, [0 x i64] }* %_y225, i1 %_b222) {
  %_x229 = alloca { i64, [0 x i64] }*
  %_y226 = alloca { i64, [0 x i64] }*
  %_b223 = alloca i1
  store { i64, [0 x i64] }* %_x228, { i64, [0 x i64] }** %_x229
  store { i64, [0 x i64] }* %_y225, { i64, [0 x i64] }** %_y226
  store i1 %_b222, i1* %_b223
  %_b231 = load i1, i1* %_b223
  br i1 %_b231, label %_then236, label %_else235
_else235:
  %_y233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y226
  ret { i64, [0 x i64] }* %_y233
_merge234:
  ret { i64, [0 x i64] }* null
_then236:
  %_x232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x229
  ret { i64, [0 x i64] }* %_x232
}

define i64 @program(i64 %_argc157, { i64, [0 x i8*] }* %_argv154) {
  %_i164 = alloca i64
  %_x183 = alloca { i64, [0 x i64] }*
  %_i189 = alloca i64
  %_y208 = alloca { i64, [0 x i64] }*
  %_raw_array162 = call i64* @oat_alloc_array(i64 3)
  %_array163 = bitcast i64* %_raw_array162 to { i64, [0 x i64] }*
  %_bnd_161 = alloca i64
  store i64 3, i64* %_bnd_161
  %_ptr_160 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array163, { i64, [0 x i64] }** %_ptr_160
  store i64 0, i64* %_i164
  br label %_cond171
_body170:
  %__ptr_160172 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_160
  %_i173 = load i64, i64* %_i164
  %_tmp175 = bitcast { i64, [0 x i64] }* %__ptr_160172 to i64*
  call void @oat_assert_array_length(i64* %_tmp175, i64 %_i173)
  %_index_ptr176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_160172, i32 0, i32 1, i64 %_i173
  store i64 0, i64* %_index_ptr176
  %_i178 = load i64, i64* %_i164
  %_bop179 = add i64 %_i178, 1
  store i64 %_bop179, i64* %_i164
  br label %_cond171
_body195:
  %__ptr_185197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_185
  %_i198 = load i64, i64* %_i189
  %_tmp200 = bitcast { i64, [0 x i64] }* %__ptr_185197 to i64*
  call void @oat_assert_array_length(i64* %_tmp200, i64 %_i198)
  %_index_ptr201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_185197, i32 0, i32 1, i64 %_i198
  store i64 0, i64* %_index_ptr201
  %_i203 = load i64, i64* %_i189
  %_bop204 = add i64 %_i203, 1
  store i64 %_bop204, i64* %_i189
  br label %_cond196
_cond171:
  %_i166 = load i64, i64* %_i164
  %__bnd_161167 = load i64, i64* %_bnd_161
  %_bop168 = icmp slt i64 %_i166, %__bnd_161167
  br i1 %_bop168, label %_body170, label %_post169
_cond196:
  %_i191 = load i64, i64* %_i189
  %__bnd_186192 = load i64, i64* %_bnd_186
  %_bop193 = icmp slt i64 %_i191, %__bnd_186192
  br i1 %_bop193, label %_body195, label %_post194
_post169:
  store { i64, [0 x i64] }* %_array163, { i64, [0 x i64] }** %_x183
  %_raw_array187 = call i64* @oat_alloc_array(i64 3)
  %_array188 = bitcast i64* %_raw_array187 to { i64, [0 x i64] }*
  %_bnd_186 = alloca i64
  store i64 3, i64* %_bnd_186
  %_ptr_185 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array188, { i64, [0 x i64] }** %_ptr_185
  store i64 0, i64* %_i189
  br label %_cond196
_post194:
  store { i64, [0 x i64] }* %_array188, { i64, [0 x i64] }** %_y208
  %_y210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y208
  %_x211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x183
  %_result212 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x211, { i64, [0 x i64] }* %_y210, i1 1)
  %_tmp214 = bitcast { i64, [0 x i64] }* %_result212 to i64*
  call void @oat_assert_array_length(i64* %_tmp214, i64 0)
  %_index_ptr215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result212, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr215
  %_x217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x183
  %_tmp219 = bitcast { i64, [0 x i64] }* %_x217 to i64*
  call void @oat_assert_array_length(i64* %_tmp219, i64 0)
  %_index_ptr220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x217, i32 0, i32 1, i32 0
  %_index221 = load i64, i64* %_index_ptr220
  ret i64 %_index221
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
