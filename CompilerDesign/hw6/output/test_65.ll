; generated from: oatprograms/arrayargs4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc240, { i64, [0 x i8*] }* %_argv237) {
  %_i247 = alloca i64
  %_raw_array245 = call i64* @oat_alloc_array(i64 3)
  %_array246 = bitcast i64* %_raw_array245 to { i64, [0 x i64] }*
  %_bnd_244 = alloca i64
  store i64 3, i64* %_bnd_244
  %_ptr_243 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array246, { i64, [0 x i64] }** %_ptr_243
  store i64 0, i64* %_i247
  br label %_cond254
_body253:
  %__ptr_243255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_243
  %_i256 = load i64, i64* %_i247
  %_tmp258 = bitcast { i64, [0 x i64] }* %__ptr_243255 to i64*
  call void @oat_assert_array_length(i64* %_tmp258, i64 %_i256)
  %_index_ptr259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_243255, i32 0, i32 1, i64 %_i256
  store i64 0, i64* %_index_ptr259
  %_i261 = load i64, i64* %_i247
  %_bop262 = add i64 %_i261, 1
  store i64 %_bop262, i64* %_i247
  br label %_cond254
_cond254:
  %_i249 = load i64, i64* %_i247
  %__bnd_244250 = load i64, i64* %_bnd_244
  %_bop251 = icmp slt i64 %_i249, %__bnd_244250
  br i1 %_bop251, label %_body253, label %_post252
_post252:
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
