; generated from: hw5programs/initarr2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc7336, { i64, [0 x i8*] }* %_argv7333) {
  %_i7343 = alloca i64
  %_x7362 = alloca { i64, [0 x i64] }*
  %_raw_array7341 = call i64* @oat_alloc_array(i64 3)
  %_array7342 = bitcast i64* %_raw_array7341 to { i64, [0 x i64] }*
  %_bnd_7340 = alloca i64
  store i64 3, i64* %_bnd_7340
  %_ptr_7339 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7342, { i64, [0 x i64] }** %_ptr_7339
  store i64 0, i64* %_i7343
  br label %_cond7350
_body7349:
  %__ptr_73397351 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7339
  %_i7352 = load i64, i64* %_i7343
  %_tmp7354 = bitcast { i64, [0 x i64] }* %__ptr_73397351 to i64*
  call void @oat_assert_array_length(i64* %_tmp7354, i64 %_i7352)
  %_index_ptr7355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_73397351, i32 0, i32 1, i64 %_i7352
  store i64 2, i64* %_index_ptr7355
  %_i7357 = load i64, i64* %_i7343
  %_bop7358 = add i64 %_i7357, 1
  store i64 %_bop7358, i64* %_i7343
  br label %_cond7350
_cond7350:
  %_i7345 = load i64, i64* %_i7343
  %__bnd_73407346 = load i64, i64* %_bnd_7340
  %_bop7347 = icmp slt i64 %_i7345, %__bnd_73407346
  br i1 %_bop7347, label %_body7349, label %_post7348
_post7348:
  store { i64, [0 x i64] }* %_array7342, { i64, [0 x i64] }** %_x7362
  %_x7364 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7362
  %_tmp7366 = bitcast { i64, [0 x i64] }* %_x7364 to i64*
  call void @oat_assert_array_length(i64* %_tmp7366, i64 0)
  %_index_ptr7367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7364, i32 0, i32 1, i32 0
  %_index7368 = load i64, i64* %_index_ptr7367
  ret i64 %_index7368
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
