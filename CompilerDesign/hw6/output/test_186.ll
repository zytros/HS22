; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str_arr9279 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %_arr9499, i64 %_len9496) {
  %_arr9500 = alloca { i64, [0 x i64] }*
  %_len9497 = alloca i64
  %_min9507 = alloca i64
  %_i9509 = alloca i64
  store { i64, [0 x i64] }* %_arr9499, { i64, [0 x i64] }** %_arr9500
  store i64 %_len9496, i64* %_len9497
  %_arr9502 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9500
  %_tmp9504 = bitcast { i64, [0 x i64] }* %_arr9502 to i64*
  call void @oat_assert_array_length(i64* %_tmp9504, i64 0)
  %_index_ptr9505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9502, i32 0, i32 1, i32 0
  %_index9506 = load i64, i64* %_index_ptr9505
  store i64 %_index9506, i64* %_min9507
  store i64 0, i64* %_i9509
  br label %_cond9516
_body9515:
  %_arr9517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9500
  %_i9518 = load i64, i64* %_i9509
  %_tmp9520 = bitcast { i64, [0 x i64] }* %_arr9517 to i64*
  call void @oat_assert_array_length(i64* %_tmp9520, i64 %_i9518)
  %_index_ptr9521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9517, i32 0, i32 1, i64 %_i9518
  %_index9522 = load i64, i64* %_index_ptr9521
  %_min9523 = load i64, i64* %_min9507
  %_bop9524 = icmp slt i64 %_index9522, %_min9523
  br i1 %_bop9524, label %_then9534, label %_else9533
_cond9516:
  %_i9511 = load i64, i64* %_i9509
  %_len9512 = load i64, i64* %_len9497
  %_bop9513 = icmp slt i64 %_i9511, %_len9512
  br i1 %_bop9513, label %_body9515, label %_post9514
_else9533:
  br label %_merge9532
_merge9532:
  %_i9535 = load i64, i64* %_i9509
  %_bop9536 = add i64 %_i9535, 1
  store i64 %_bop9536, i64* %_i9509
  br label %_cond9516
_post9514:
  %_min9538 = load i64, i64* %_min9507
  ret i64 %_min9538
_then9534:
  %_arr9525 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9500
  %_i9526 = load i64, i64* %_i9509
  %_tmp9528 = bitcast { i64, [0 x i64] }* %_arr9525 to i64*
  call void @oat_assert_array_length(i64* %_tmp9528, i64 %_i9526)
  %_index_ptr9529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9525, i32 0, i32 1, i64 %_i9526
  %_index9530 = load i64, i64* %_index_ptr9529
  store i64 %_index9530, i64* %_min9507
  br label %_merge9532
}

define i64 @max({ i64, [0 x i64] }* %_arr9456, i64 %_len9453) {
  %_arr9457 = alloca { i64, [0 x i64] }*
  %_len9454 = alloca i64
  %_max9464 = alloca i64
  %_i9466 = alloca i64
  store { i64, [0 x i64] }* %_arr9456, { i64, [0 x i64] }** %_arr9457
  store i64 %_len9453, i64* %_len9454
  %_arr9459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9457
  %_tmp9461 = bitcast { i64, [0 x i64] }* %_arr9459 to i64*
  call void @oat_assert_array_length(i64* %_tmp9461, i64 0)
  %_index_ptr9462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9459, i32 0, i32 1, i32 0
  %_index9463 = load i64, i64* %_index_ptr9462
  store i64 %_index9463, i64* %_max9464
  store i64 0, i64* %_i9466
  br label %_cond9473
_body9472:
  %_arr9474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9457
  %_i9475 = load i64, i64* %_i9466
  %_tmp9477 = bitcast { i64, [0 x i64] }* %_arr9474 to i64*
  call void @oat_assert_array_length(i64* %_tmp9477, i64 %_i9475)
  %_index_ptr9478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9474, i32 0, i32 1, i64 %_i9475
  %_index9479 = load i64, i64* %_index_ptr9478
  %_max9480 = load i64, i64* %_max9464
  %_bop9481 = icmp sgt i64 %_index9479, %_max9480
  br i1 %_bop9481, label %_then9491, label %_else9490
_cond9473:
  %_i9468 = load i64, i64* %_i9466
  %_len9469 = load i64, i64* %_len9454
  %_bop9470 = icmp slt i64 %_i9468, %_len9469
  br i1 %_bop9470, label %_body9472, label %_post9471
_else9490:
  br label %_merge9489
_merge9489:
  %_i9492 = load i64, i64* %_i9466
  %_bop9493 = add i64 %_i9492, 1
  store i64 %_bop9493, i64* %_i9466
  br label %_cond9473
_post9471:
  %_max9495 = load i64, i64* %_max9464
  ret i64 %_max9495
_then9491:
  %_arr9482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9457
  %_i9483 = load i64, i64* %_i9466
  %_tmp9485 = bitcast { i64, [0 x i64] }* %_arr9482 to i64*
  call void @oat_assert_array_length(i64* %_tmp9485, i64 %_i9483)
  %_index_ptr9486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9482, i32 0, i32 1, i64 %_i9483
  %_index9487 = load i64, i64* %_index_ptr9486
  store i64 %_index9487, i64* %_max9464
  br label %_merge9489
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr9293, i64 %_len9290) {
  %_arr9294 = alloca { i64, [0 x i64] }*
  %_len9291 = alloca i64
  %_min9299 = alloca i64
  %_max9304 = alloca i64
  %_i9314 = alloca i64
  %_counts9333 = alloca { i64, [0 x i64] }*
  %_i9335 = alloca i64
  %_i9374 = alloca i64
  %_j9376 = alloca i64
  %_i29383 = alloca i64
  %_out9402 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr9293, { i64, [0 x i64] }** %_arr9294
  store i64 %_len9290, i64* %_len9291
  %_len9296 = load i64, i64* %_len9291
  %_arr9297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9294
  %_result9298 = call i64 @min({ i64, [0 x i64] }* %_arr9297, i64 %_len9296)
  store i64 %_result9298, i64* %_min9299
  %_len9301 = load i64, i64* %_len9291
  %_arr9302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9294
  %_result9303 = call i64 @max({ i64, [0 x i64] }* %_arr9302, i64 %_len9301)
  store i64 %_result9303, i64* %_max9304
  %_max9308 = load i64, i64* %_max9304
  %_min9309 = load i64, i64* %_min9299
  %_bop9310 = sub i64 %_max9308, %_min9309
  %_bop9311 = add i64 %_bop9310, 1
  %_raw_array9312 = call i64* @oat_alloc_array(i64 %_bop9311)
  %_array9313 = bitcast i64* %_raw_array9312 to { i64, [0 x i64] }*
  %_bnd_9307 = alloca i64
  store i64 %_bop9311, i64* %_bnd_9307
  %_ptr_9306 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array9313, { i64, [0 x i64] }** %_ptr_9306
  store i64 0, i64* %_i9314
  br label %_cond9321
_body9320:
  %__ptr_93069322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_9306
  %_i9323 = load i64, i64* %_i9314
  %_tmp9325 = bitcast { i64, [0 x i64] }* %__ptr_93069322 to i64*
  call void @oat_assert_array_length(i64* %_tmp9325, i64 %_i9323)
  %_index_ptr9326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_93069322, i32 0, i32 1, i64 %_i9323
  store i64 0, i64* %_index_ptr9326
  %_i9328 = load i64, i64* %_i9314
  %_bop9329 = add i64 %_i9328, 1
  store i64 %_bop9329, i64* %_i9314
  br label %_cond9321
_body9341:
  %_counts9343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9333
  %_arr9344 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9294
  %_i9345 = load i64, i64* %_i9335
  %_tmp9347 = bitcast { i64, [0 x i64] }* %_arr9344 to i64*
  call void @oat_assert_array_length(i64* %_tmp9347, i64 %_i9345)
  %_index_ptr9348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9344, i32 0, i32 1, i64 %_i9345
  %_index9349 = load i64, i64* %_index_ptr9348
  %_min9350 = load i64, i64* %_min9299
  %_bop9351 = sub i64 %_index9349, %_min9350
  %_tmp9353 = bitcast { i64, [0 x i64] }* %_counts9343 to i64*
  call void @oat_assert_array_length(i64* %_tmp9353, i64 %_bop9351)
  %_index_ptr9354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9343, i32 0, i32 1, i64 %_bop9351
  %_counts9355 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9333
  %_arr9356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9294
  %_i9357 = load i64, i64* %_i9335
  %_tmp9359 = bitcast { i64, [0 x i64] }* %_arr9356 to i64*
  call void @oat_assert_array_length(i64* %_tmp9359, i64 %_i9357)
  %_index_ptr9360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9356, i32 0, i32 1, i64 %_i9357
  %_index9361 = load i64, i64* %_index_ptr9360
  %_min9362 = load i64, i64* %_min9299
  %_bop9363 = sub i64 %_index9361, %_min9362
  %_tmp9365 = bitcast { i64, [0 x i64] }* %_counts9355 to i64*
  call void @oat_assert_array_length(i64* %_tmp9365, i64 %_bop9363)
  %_index_ptr9366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9355, i32 0, i32 1, i64 %_bop9363
  %_index9367 = load i64, i64* %_index_ptr9366
  %_bop9368 = add i64 %_index9367, 1
  store i64 %_bop9368, i64* %_index_ptr9354
  %_i9370 = load i64, i64* %_i9335
  %_bop9371 = add i64 %_i9370, 1
  store i64 %_bop9371, i64* %_i9335
  br label %_cond9342
_body9389:
  %__ptr_93789391 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_9378
  %_i29392 = load i64, i64* %_i29383
  %_tmp9394 = bitcast { i64, [0 x i64] }* %__ptr_93789391 to i64*
  call void @oat_assert_array_length(i64* %_tmp9394, i64 %_i29392)
  %_index_ptr9395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_93789391, i32 0, i32 1, i64 %_i29392
  store i64 0, i64* %_index_ptr9395
  %_i29397 = load i64, i64* %_i29383
  %_bop9398 = add i64 %_i29397, 1
  store i64 %_bop9398, i64* %_i29383
  br label %_cond9390
_body9408:
  %_counts9410 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9333
  %_i9411 = load i64, i64* %_i9374
  %_min9412 = load i64, i64* %_min9299
  %_bop9413 = sub i64 %_i9411, %_min9412
  %_tmp9415 = bitcast { i64, [0 x i64] }* %_counts9410 to i64*
  call void @oat_assert_array_length(i64* %_tmp9415, i64 %_bop9413)
  %_index_ptr9416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9410, i32 0, i32 1, i64 %_bop9413
  %_index9417 = load i64, i64* %_index_ptr9416
  %_bop9418 = icmp sgt i64 %_index9417, 0
  br i1 %_bop9418, label %_then9451, label %_else9450
_cond9321:
  %_i9316 = load i64, i64* %_i9314
  %__bnd_93079317 = load i64, i64* %_bnd_9307
  %_bop9318 = icmp slt i64 %_i9316, %__bnd_93079317
  br i1 %_bop9318, label %_body9320, label %_post9319
_cond9342:
  %_i9337 = load i64, i64* %_i9335
  %_len9338 = load i64, i64* %_len9291
  %_bop9339 = icmp slt i64 %_i9337, %_len9338
  br i1 %_bop9339, label %_body9341, label %_post9340
_cond9390:
  %_i29385 = load i64, i64* %_i29383
  %__bnd_93799386 = load i64, i64* %_bnd_9379
  %_bop9387 = icmp slt i64 %_i29385, %__bnd_93799386
  br i1 %_bop9387, label %_body9389, label %_post9388
_cond9409:
  %_i9404 = load i64, i64* %_i9374
  %_max9405 = load i64, i64* %_max9304
  %_bop9406 = icmp sle i64 %_i9404, %_max9405
  br i1 %_bop9406, label %_body9408, label %_post9407
_else9450:
  %_i9446 = load i64, i64* %_i9374
  %_bop9447 = add i64 %_i9446, 1
  store i64 %_bop9447, i64* %_i9374
  br label %_merge9449
_merge9449:
  br label %_cond9409
_post9319:
  store { i64, [0 x i64] }* %_array9313, { i64, [0 x i64] }** %_counts9333
  store i64 0, i64* %_i9335
  br label %_cond9342
_post9340:
  %_min9373 = load i64, i64* %_min9299
  store i64 %_min9373, i64* %_i9374
  store i64 0, i64* %_j9376
  %_len9380 = load i64, i64* %_len9291
  %_raw_array9381 = call i64* @oat_alloc_array(i64 %_len9380)
  %_array9382 = bitcast i64* %_raw_array9381 to { i64, [0 x i64] }*
  %_bnd_9379 = alloca i64
  store i64 %_len9380, i64* %_bnd_9379
  %_ptr_9378 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array9382, { i64, [0 x i64] }** %_ptr_9378
  store i64 0, i64* %_i29383
  br label %_cond9390
_post9388:
  store { i64, [0 x i64] }* %_array9382, { i64, [0 x i64] }** %_out9402
  br label %_cond9409
_post9407:
  %_out9452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out9402
  ret { i64, [0 x i64] }* %_out9452
_then9451:
  %_out9419 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out9402
  %_j9420 = load i64, i64* %_j9376
  %_tmp9422 = bitcast { i64, [0 x i64] }* %_out9419 to i64*
  call void @oat_assert_array_length(i64* %_tmp9422, i64 %_j9420)
  %_index_ptr9423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out9419, i32 0, i32 1, i64 %_j9420
  %_i9424 = load i64, i64* %_i9374
  store i64 %_i9424, i64* %_index_ptr9423
  %_counts9426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9333
  %_i9427 = load i64, i64* %_i9374
  %_min9428 = load i64, i64* %_min9299
  %_bop9429 = sub i64 %_i9427, %_min9428
  %_tmp9431 = bitcast { i64, [0 x i64] }* %_counts9426 to i64*
  call void @oat_assert_array_length(i64* %_tmp9431, i64 %_bop9429)
  %_index_ptr9432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9426, i32 0, i32 1, i64 %_bop9429
  %_counts9433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9333
  %_i9434 = load i64, i64* %_i9374
  %_min9435 = load i64, i64* %_min9299
  %_bop9436 = sub i64 %_i9434, %_min9435
  %_tmp9438 = bitcast { i64, [0 x i64] }* %_counts9433 to i64*
  call void @oat_assert_array_length(i64* %_tmp9438, i64 %_bop9436)
  %_index_ptr9439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9433, i32 0, i32 1, i64 %_bop9436
  %_index9440 = load i64, i64* %_index_ptr9439
  %_bop9441 = sub i64 %_index9440, 1
  store i64 %_bop9441, i64* %_index_ptr9432
  %_j9443 = load i64, i64* %_j9376
  %_bop9444 = add i64 %_j9443, 1
  store i64 %_bop9444, i64* %_j9376
  br label %_merge9449
}

define i64 @program(i64 %_argc9249, { i64, [0 x i8*] }* %_argv9246) {
  %_arr9272 = alloca { i64, [0 x i64] }*
  %_len9274 = alloca i64
  %_sorted9285 = alloca { i64, [0 x i64] }*
  %_raw_array9252 = call i64* @oat_alloc_array(i64 9)
  %_array9253 = bitcast i64* %_raw_array9252 to { i64, [0 x i64] }*
  %_ind9254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9253, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind9254
  %_ind9256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9253, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind9256
  %_ind9258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9253, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind9258
  %_ind9260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9253, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind9260
  %_ind9262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9253, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind9262
  %_ind9264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9253, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind9264
  %_ind9266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9253, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind9266
  %_ind9268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9253, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind9268
  %_ind9270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9253, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind9270
  store { i64, [0 x i64] }* %_array9253, { i64, [0 x i64] }** %_arr9272
  store i64 9, i64* %_len9274
  %_arr9276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9272
  %_result9277 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr9276)
  call void @print_string(i8* %_result9277)
  %_str9280 = getelementptr [2 x i8], [2 x i8]* @_str_arr9279, i32 0, i32 0
  call void @print_string(i8* %_str9280)
  %_len9282 = load i64, i64* %_len9274
  %_arr9283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9272
  %_result9284 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr9283, i64 %_len9282)
  store { i64, [0 x i64] }* %_result9284, { i64, [0 x i64] }** %_sorted9285
  %_sorted9287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted9285
  %_result9288 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted9287)
  call void @print_string(i8* %_result9288)
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
