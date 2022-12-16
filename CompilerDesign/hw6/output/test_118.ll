; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr5357 to { i64, [0 x i64] }*)
@_global_arr5357 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr5356 to { i64, [0 x i64] }*)
@_global_arr5356 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %_ar15322, { i64, [0 x i64] }* %_ar25319, i64 %_len5316) {
  %_ar15323 = alloca { i64, [0 x i64] }*
  %_ar25320 = alloca { i64, [0 x i64] }*
  %_len5317 = alloca i64
  %_val5325 = alloca i64
  %_i5327 = alloca i64
  store { i64, [0 x i64] }* %_ar15322, { i64, [0 x i64] }** %_ar15323
  store { i64, [0 x i64] }* %_ar25319, { i64, [0 x i64] }** %_ar25320
  store i64 %_len5316, i64* %_len5317
  store i64 0, i64* %_val5325
  store i64 0, i64* %_i5327
  br label %_cond5334
_body5333:
  %_ar15335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar15323
  %_i5336 = load i64, i64* %_i5327
  %_tmp5338 = bitcast { i64, [0 x i64] }* %_ar15335 to i64*
  call void @oat_assert_array_length(i64* %_tmp5338, i64 %_i5336)
  %_index_ptr5339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar15335, i32 0, i32 1, i64 %_i5336
  %_index5340 = load i64, i64* %_index_ptr5339
  %_ar25341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar25320
  %_i5342 = load i64, i64* %_i5327
  %_tmp5344 = bitcast { i64, [0 x i64] }* %_ar25341 to i64*
  call void @oat_assert_array_length(i64* %_tmp5344, i64 %_i5342)
  %_index_ptr5345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar25341, i32 0, i32 1, i64 %_i5342
  %_index5346 = load i64, i64* %_index_ptr5345
  %_bop5347 = icmp ne i64 %_index5340, %_index5346
  br i1 %_bop5347, label %_then5351, label %_else5350
_cond5334:
  %_i5329 = load i64, i64* %_i5327
  %_len5330 = load i64, i64* %_len5317
  %_bop5331 = icmp slt i64 %_i5329, %_len5330
  br i1 %_bop5331, label %_body5333, label %_post5332
_else5350:
  br label %_merge5349
_merge5349:
  %_i5352 = load i64, i64* %_i5327
  %_bop5353 = add i64 %_i5352, 1
  store i64 %_bop5353, i64* %_i5327
  br label %_cond5334
_post5332:
  %_val5355 = load i64, i64* %_val5325
  ret i64 %_val5355
_then5351:
  store i64 1, i64* %_val5325
  br label %_merge5349
}

define i64 @program(i64 %_argc5302, { i64, [0 x i8*] }* %_argv5299) {
  %_val5305 = alloca i64
  store i64 1, i64* %_val5305
  %_arr25307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_arr15308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_result5309 = call i64 @arrcheck({ i64, [0 x i64] }* %_arr15308, { i64, [0 x i64] }* %_arr25307, i64 4)
  %_bop5310 = icmp eq i64 %_result5309, 1
  br i1 %_bop5310, label %_then5314, label %_else5313
_else5313:
  br label %_merge5312
_merge5312:
  %_val5315 = load i64, i64* %_val5305
  ret i64 %_val5315
_then5314:
  store i64 0, i64* %_val5305
  br label %_merge5312
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
