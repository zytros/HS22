; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %_n4299) {
  %_n4300 = alloca i64
  %_i4307 = alloca i64
  %_arr4326 = alloca { i64, [0 x i1] }*
  %_i4328 = alloca i64
  %_i4355 = alloca i64
  %_j4371 = alloca i64
  %_count4395 = alloca i64
  %_i4397 = alloca i64
  store i64 %_n4299, i64* %_n4300
  %_n4304 = load i64, i64* %_n4300
  %_raw_array4305 = call i64* @oat_alloc_array(i64 %_n4304)
  %_array4306 = bitcast i64* %_raw_array4305 to { i64, [0 x i1] }*
  %_bnd_4303 = alloca i64
  store i64 %_n4304, i64* %_bnd_4303
  %_ptr_4302 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4306, { i64, [0 x i1] }** %_ptr_4302
  store i64 0, i64* %_i4307
  br label %_cond4314
_body4313:
  %__ptr_43024315 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_ptr_4302
  %_i4316 = load i64, i64* %_i4307
  %_tmp4318 = bitcast { i64, [0 x i1] }* %__ptr_43024315 to i64*
  call void @oat_assert_array_length(i64* %_tmp4318, i64 %_i4316)
  %_index_ptr4319 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %__ptr_43024315, i32 0, i32 1, i64 %_i4316
  store i1 0, i1* %_index_ptr4319
  %_i4321 = load i64, i64* %_i4307
  %_bop4322 = add i64 %_i4321, 1
  store i64 %_bop4322, i64* %_i4307
  br label %_cond4314
_body4334:
  %_arr4336 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4326
  %_i4337 = load i64, i64* %_i4328
  %_tmp4339 = bitcast { i64, [0 x i1] }* %_arr4336 to i64*
  call void @oat_assert_array_length(i64* %_tmp4339, i64 %_i4337)
  %_index_ptr4340 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4336, i32 0, i32 1, i64 %_i4337
  store i1 1, i1* %_index_ptr4340
  %_i4342 = load i64, i64* %_i4328
  %_bop4343 = add i64 %_i4342, 1
  store i64 %_bop4343, i64* %_i4328
  br label %_cond4335
_body4361:
  %_arr4363 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4326
  %_i4364 = load i64, i64* %_i4355
  %_tmp4366 = bitcast { i64, [0 x i1] }* %_arr4363 to i64*
  call void @oat_assert_array_length(i64* %_tmp4366, i64 %_i4364)
  %_index_ptr4367 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4363, i32 0, i32 1, i64 %_i4364
  %_index4368 = load i1, i1* %_index_ptr4367
  br i1 %_index4368, label %_then4391, label %_else4390
_body4377:
  %_arr4379 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4326
  %_j4380 = load i64, i64* %_j4371
  %_tmp4382 = bitcast { i64, [0 x i1] }* %_arr4379 to i64*
  call void @oat_assert_array_length(i64* %_tmp4382, i64 %_j4380)
  %_index_ptr4383 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4379, i32 0, i32 1, i64 %_j4380
  store i1 0, i1* %_index_ptr4383
  %_j4385 = load i64, i64* %_j4371
  %_i4386 = load i64, i64* %_i4355
  %_bop4387 = add i64 %_j4385, %_i4386
  store i64 %_bop4387, i64* %_j4371
  br label %_cond4378
_body4403:
  %_arr4405 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4326
  %_i4406 = load i64, i64* %_i4397
  %_tmp4408 = bitcast { i64, [0 x i1] }* %_arr4405 to i64*
  call void @oat_assert_array_length(i64* %_tmp4408, i64 %_i4406)
  %_index_ptr4409 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4405, i32 0, i32 1, i64 %_i4406
  %_index4410 = load i1, i1* %_index_ptr4409
  br i1 %_index4410, label %_then4416, label %_else4415
_cond4314:
  %_i4309 = load i64, i64* %_i4307
  %__bnd_43034310 = load i64, i64* %_bnd_4303
  %_bop4311 = icmp slt i64 %_i4309, %__bnd_43034310
  br i1 %_bop4311, label %_body4313, label %_post4312
_cond4335:
  %_i4330 = load i64, i64* %_i4328
  %_n4331 = load i64, i64* %_n4300
  %_bop4332 = icmp slt i64 %_i4330, %_n4331
  br i1 %_bop4332, label %_body4334, label %_post4333
_cond4362:
  %_i4357 = load i64, i64* %_i4355
  %_n4358 = load i64, i64* %_n4300
  %_bop4359 = icmp slt i64 %_i4357, %_n4358
  br i1 %_bop4359, label %_body4361, label %_post4360
_cond4378:
  %_j4373 = load i64, i64* %_j4371
  %_n4374 = load i64, i64* %_n4300
  %_bop4375 = icmp slt i64 %_j4373, %_n4374
  br i1 %_bop4375, label %_body4377, label %_post4376
_cond4404:
  %_i4399 = load i64, i64* %_i4397
  %_n4400 = load i64, i64* %_n4300
  %_bop4401 = icmp slt i64 %_i4399, %_n4400
  br i1 %_bop4401, label %_body4403, label %_post4402
_else4390:
  br label %_merge4389
_else4415:
  br label %_merge4414
_merge4389:
  %_i4392 = load i64, i64* %_i4355
  %_bop4393 = add i64 %_i4392, 1
  store i64 %_bop4393, i64* %_i4355
  br label %_cond4362
_merge4414:
  %_i4417 = load i64, i64* %_i4397
  %_bop4418 = add i64 %_i4417, 1
  store i64 %_bop4418, i64* %_i4397
  br label %_cond4404
_post4312:
  store { i64, [0 x i1] }* %_array4306, { i64, [0 x i1] }** %_arr4326
  store i64 0, i64* %_i4328
  br label %_cond4335
_post4333:
  %_arr4345 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4326
  %_tmp4347 = bitcast { i64, [0 x i1] }* %_arr4345 to i64*
  call void @oat_assert_array_length(i64* %_tmp4347, i64 0)
  %_index_ptr4348 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4345, i32 0, i32 1, i32 0
  store i1 0, i1* %_index_ptr4348
  %_arr4350 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4326
  %_tmp4352 = bitcast { i64, [0 x i1] }* %_arr4350 to i64*
  call void @oat_assert_array_length(i64* %_tmp4352, i64 1)
  %_index_ptr4353 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4350, i32 0, i32 1, i32 1
  store i1 0, i1* %_index_ptr4353
  store i64 0, i64* %_i4355
  br label %_cond4362
_post4360:
  store i64 0, i64* %_count4395
  store i64 0, i64* %_i4397
  br label %_cond4404
_post4376:
  br label %_merge4389
_post4402:
  %_count4420 = load i64, i64* %_count4395
  ret i64 %_count4420
_then4391:
  %_i4369 = load i64, i64* %_i4355
  %_bop4370 = mul i64 %_i4369, 2
  store i64 %_bop4370, i64* %_j4371
  br label %_cond4378
_then4416:
  %_count4411 = load i64, i64* %_count4395
  %_bop4412 = add i64 %_count4411, 1
  store i64 %_bop4412, i64* %_count4395
  br label %_merge4414
}

define i64 @program(i64 %_argc4292, { i64, [0 x i8*] }* %_argv4289) {
  %_n4295 = alloca i64
  store i64 100, i64* %_n4295
  %_n4297 = load i64, i64* %_n4295
  %_result4298 = call i64 @sieve(i64 %_n4297)
  ret i64 %_result4298
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
