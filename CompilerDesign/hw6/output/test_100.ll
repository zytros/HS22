; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %_str2472, i64 %_start2469, i64 %_len2466) {
  %_str2473 = alloca i8*
  %_start2470 = alloca i64
  %_len2467 = alloca i64
  %_arr2477 = alloca { i64, [0 x i64] }*
  %_i2484 = alloca i64
  %_r2511 = alloca { i64, [0 x i64] }*
  store i8* %_str2472, i8** %_str2473
  store i64 %_start2469, i64* %_start2470
  store i64 %_len2466, i64* %_len2467
  %_str2475 = load i8*, i8** %_str2473
  %_result2476 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2475)
  store { i64, [0 x i64] }* %_result2476, { i64, [0 x i64] }** %_arr2477
  %_len2481 = load i64, i64* %_len2467
  %_raw_array2482 = call i64* @oat_alloc_array(i64 %_len2481)
  %_array2483 = bitcast i64* %_raw_array2482 to { i64, [0 x i64] }*
  %_bnd_2480 = alloca i64
  store i64 %_len2481, i64* %_bnd_2480
  %_ptr_2479 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2483, { i64, [0 x i64] }** %_ptr_2479
  store i64 0, i64* %_i2484
  br label %_cond2491
_body2490:
  %__ptr_24792492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_2479
  %_i2493 = load i64, i64* %_i2484
  %_tmp2495 = bitcast { i64, [0 x i64] }* %__ptr_24792492 to i64*
  call void @oat_assert_array_length(i64* %_tmp2495, i64 %_i2493)
  %_index_ptr2496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_24792492, i32 0, i32 1, i64 %_i2493
  %_arr2497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2477
  %_i2498 = load i64, i64* %_i2484
  %_start2499 = load i64, i64* %_start2470
  %_bop2500 = add i64 %_i2498, %_start2499
  %_tmp2502 = bitcast { i64, [0 x i64] }* %_arr2497 to i64*
  call void @oat_assert_array_length(i64* %_tmp2502, i64 %_bop2500)
  %_index_ptr2503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2497, i32 0, i32 1, i64 %_bop2500
  %_index2504 = load i64, i64* %_index_ptr2503
  store i64 %_index2504, i64* %_index_ptr2496
  %_i2506 = load i64, i64* %_i2484
  %_bop2507 = add i64 %_i2506, 1
  store i64 %_bop2507, i64* %_i2484
  br label %_cond2491
_cond2491:
  %_i2486 = load i64, i64* %_i2484
  %__bnd_24802487 = load i64, i64* %_bnd_2480
  %_bop2488 = icmp slt i64 %_i2486, %__bnd_24802487
  br i1 %_bop2488, label %_body2490, label %_post2489
_post2489:
  store { i64, [0 x i64] }* %_array2483, { i64, [0 x i64] }** %_r2511
  %_r2513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2511
  %_result2514 = call i8* @string_of_array({ i64, [0 x i64] }* %_r2513)
  ret i8* %_result2514
}

define i64 @program(i64 %_argc2456, { i64, [0 x i8*] }* %_argv2453) {
  %_argv2454 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2453, { i64, [0 x i8*] }** %_argv2454
  %_argv2459 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2454
  %_tmp2461 = bitcast { i64, [0 x i8*] }* %_argv2459 to i64*
  call void @oat_assert_array_length(i64* %_tmp2461, i64 1)
  %_index_ptr2462 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2459, i32 0, i32 1, i32 1
  %_index2463 = load i8*, i8** %_index_ptr2462
  %_result2464 = call i8* @sub(i8* %_index2463, i64 3, i64 5)
  call void @print_string(i8* %_result2464)
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
