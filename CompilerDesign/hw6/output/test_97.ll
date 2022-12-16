; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2348, { i64, [0 x i8*] }* %_argv2345) {
  %_argc2349 = alloca i64
  %_argv2346 = alloca { i64, [0 x i8*] }*
  %_i2351 = alloca i64
  store i64 %_argc2348, i64* %_argc2349
  store { i64, [0 x i8*] }* %_argv2345, { i64, [0 x i8*] }** %_argv2346
  store i64 1, i64* %_i2351
  br label %_cond2358
_body2357:
  %_argv2359 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2346
  %_i2360 = load i64, i64* %_i2351
  %_tmp2362 = bitcast { i64, [0 x i8*] }* %_argv2359 to i64*
  call void @oat_assert_array_length(i64* %_tmp2362, i64 %_i2360)
  %_index_ptr2363 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2359, i32 0, i32 1, i64 %_i2360
  %_index2364 = load i8*, i8** %_index_ptr2363
  call void @print_string(i8* %_index2364)
  %_i2366 = load i64, i64* %_i2351
  %_bop2367 = add i64 %_i2366, 1
  store i64 %_bop2367, i64* %_i2351
  br label %_cond2358
_cond2358:
  %_i2353 = load i64, i64* %_i2351
  %_argc2354 = load i64, i64* %_argc2349
  %_bop2355 = icmp slt i64 %_i2353, %_argc2354
  br i1 %_bop2355, label %_body2357, label %_post2356
_post2356:
  %_argc2369 = load i64, i64* %_argc2349
  ret i64 %_argc2369
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
