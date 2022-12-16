; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_str_arr2376 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %_argc2373, { i64, [0 x i8*] }* %_argv2370) {
  %_arr2379 = alloca { i64, [0 x i64] }*
  %_sum2381 = alloca i64
  %_i2383 = alloca i64
  %_i2400 = alloca i64
  %_str2377 = getelementptr [11 x i8], [11 x i8]* @_str_arr2376, i32 0, i32 0
  %_result2378 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2377)
  store { i64, [0 x i64] }* %_result2378, { i64, [0 x i64] }** %_arr2379
  store i64 0, i64* %_sum2381
  store i64 0, i64* %_i2383
  br label %_cond2389
_body2388:
  %_arr2390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2379
  %_i2391 = load i64, i64* %_i2383
  %_tmp2393 = bitcast { i64, [0 x i64] }* %_arr2390 to i64*
  call void @oat_assert_array_length(i64* %_tmp2393, i64 %_i2391)
  %_index_ptr2394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2390, i32 0, i32 1, i64 %_i2391
  %_i2395 = load i64, i64* %_i2383
  store i64 %_i2395, i64* %_index_ptr2394
  %_i2397 = load i64, i64* %_i2383
  %_bop2398 = add i64 %_i2397, 1
  store i64 %_bop2398, i64* %_i2383
  br label %_cond2389
_body2405:
  %_sum2407 = load i64, i64* %_sum2381
  %_arr2408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2379
  %_i2409 = load i64, i64* %_i2400
  %_tmp2411 = bitcast { i64, [0 x i64] }* %_arr2408 to i64*
  call void @oat_assert_array_length(i64* %_tmp2411, i64 %_i2409)
  %_index_ptr2412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2408, i32 0, i32 1, i64 %_i2409
  %_index2413 = load i64, i64* %_index_ptr2412
  %_bop2414 = add i64 %_sum2407, %_index2413
  store i64 %_bop2414, i64* %_sum2381
  %_i2416 = load i64, i64* %_i2400
  %_bop2417 = add i64 %_i2416, 1
  store i64 %_bop2417, i64* %_i2400
  br label %_cond2406
_cond2389:
  %_i2385 = load i64, i64* %_i2383
  %_bop2386 = icmp slt i64 %_i2385, 10
  br i1 %_bop2386, label %_body2388, label %_post2387
_cond2406:
  %_i2402 = load i64, i64* %_i2400
  %_bop2403 = icmp slt i64 %_i2402, 10
  br i1 %_bop2403, label %_body2405, label %_post2404
_post2387:
  store i64 0, i64* %_i2400
  br label %_cond2406
_post2404:
  %_sum2419 = load i64, i64* %_sum2381
  ret i64 %_sum2419
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
