; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc356, { i64, [0 x i8*] }* %_argv353) {
  %_a397 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s399 = alloca i64
  %_i401 = alloca i64
  %_j408 = alloca i64
  %_raw_array359 = call i64* @oat_alloc_array(i64 3)
  %_array360 = bitcast i64* %_raw_array359 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array361 = call i64* @oat_alloc_array(i64 4)
  %_array362 = bitcast i64* %_raw_array361 to { i64, [0 x i64] }*
  %_ind363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array362, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind363
  %_ind365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array362, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind365
  %_ind367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array362, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind367
  %_ind369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array362, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind369
  %_ind371 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array360, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array362, { i64, [0 x i64] }** %_ind371
  %_raw_array373 = call i64* @oat_alloc_array(i64 4)
  %_array374 = bitcast i64* %_raw_array373 to { i64, [0 x i64] }*
  %_ind375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind375
  %_ind377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind377
  %_ind379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind379
  %_ind381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind381
  %_ind383 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array360, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array374, { i64, [0 x i64] }** %_ind383
  %_raw_array385 = call i64* @oat_alloc_array(i64 4)
  %_array386 = bitcast i64* %_raw_array385 to { i64, [0 x i64] }*
  %_ind387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array386, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind387
  %_ind389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array386, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind389
  %_ind391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array386, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind391
  %_ind393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array386, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind393
  %_ind395 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array360, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array386, { i64, [0 x i64] }** %_ind395
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array360, { i64, [0 x { i64, [0 x i64] }*] }** %_a397
  store i64 0, i64* %_s399
  store i64 0, i64* %_i401
  br label %_cond407
_body406:
  store i64 0, i64* %_j408
  br label %_cond414
_body413:
  %_s415 = load i64, i64* %_s399
  %_a416 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a397
  %_i417 = load i64, i64* %_i401
  %_tmp419 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a416 to i64*
  call void @oat_assert_array_length(i64* %_tmp419, i64 %_i417)
  %_index_ptr420 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a416, i32 0, i32 1, i64 %_i417
  %_index421 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr420
  %_j422 = load i64, i64* %_j408
  %_tmp424 = bitcast { i64, [0 x i64] }* %_index421 to i64*
  call void @oat_assert_array_length(i64* %_tmp424, i64 %_j422)
  %_index_ptr425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index421, i32 0, i32 1, i64 %_j422
  %_index426 = load i64, i64* %_index_ptr425
  %_bop427 = add i64 %_s415, %_index426
  store i64 %_bop427, i64* %_s399
  %_j429 = load i64, i64* %_j408
  %_bop430 = add i64 %_j429, 1
  store i64 %_bop430, i64* %_j408
  br label %_cond414
_cond407:
  %_i403 = load i64, i64* %_i401
  %_bop404 = icmp slt i64 %_i403, 3
  br i1 %_bop404, label %_body406, label %_post405
_cond414:
  %_j410 = load i64, i64* %_j408
  %_bop411 = icmp slt i64 %_j410, 4
  br i1 %_bop411, label %_body413, label %_post412
_post405:
  %_s435 = load i64, i64* %_s399
  ret i64 %_s435
_post412:
  %_i432 = load i64, i64* %_i401
  %_bop433 = add i64 %_i432, 1
  store i64 %_bop433, i64* %_i401
  br label %_cond407
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
