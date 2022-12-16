; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %_array8495, i64 %_i8492, i64 %_len8489) {
  %_array8496 = alloca { i64, [0 x i64] }*
  %_i8493 = alloca i64
  %_len8490 = alloca i64
  %_l8500 = alloca i64
  %_r8504 = alloca i64
  %_tmp8506 = alloca i64
  %_m8509 = alloca i64
  store { i64, [0 x i64] }* %_array8495, { i64, [0 x i64] }** %_array8496
  store i64 %_i8492, i64* %_i8493
  store i64 %_len8489, i64* %_len8490
  %_i8498 = load i64, i64* %_i8493
  %_bop8499 = mul i64 %_i8498, 2
  store i64 %_bop8499, i64* %_l8500
  %_i8502 = load i64, i64* %_i8493
  %_bop8503 = add i64 %_i8502, 1
  store i64 %_bop8503, i64* %_r8504
  store i64 0, i64* %_tmp8506
  %_i8508 = load i64, i64* %_i8493
  store i64 %_i8508, i64* %_m8509
  %_l8511 = load i64, i64* %_l8500
  %_len8512 = load i64, i64* %_len8490
  %_bop8513 = icmp slt i64 %_l8511, %_len8512
  br i1 %_bop8513, label %_then8534, label %_else8533
_else8530:
  br label %_merge8529
_else8533:
  br label %_merge8532
_else8554:
  br label %_merge8553
_else8557:
  br label %_merge8556
_else8593:
  br label %_merge8592
_merge8529:
  br label %_merge8532
_merge8532:
  %_r8535 = load i64, i64* %_r8504
  %_len8536 = load i64, i64* %_len8490
  %_bop8537 = icmp slt i64 %_r8535, %_len8536
  br i1 %_bop8537, label %_then8558, label %_else8557
_merge8553:
  br label %_merge8556
_merge8556:
  %_m8559 = load i64, i64* %_m8509
  %_i8560 = load i64, i64* %_i8493
  %_bop8561 = icmp ne i64 %_m8559, %_i8560
  br i1 %_bop8561, label %_then8594, label %_else8593
_merge8592:
  ret void
_then8531:
  %_l8527 = load i64, i64* %_l8500
  store i64 %_l8527, i64* %_m8509
  br label %_merge8529
_then8534:
  %_array8514 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8496
  %_l8515 = load i64, i64* %_l8500
  %_tmp8517 = bitcast { i64, [0 x i64] }* %_array8514 to i64*
  call void @oat_assert_array_length(i64* %_tmp8517, i64 %_l8515)
  %_index_ptr8518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8514, i32 0, i32 1, i64 %_l8515
  %_index8519 = load i64, i64* %_index_ptr8518
  %_array8520 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8496
  %_m8521 = load i64, i64* %_m8509
  %_tmp8523 = bitcast { i64, [0 x i64] }* %_array8520 to i64*
  call void @oat_assert_array_length(i64* %_tmp8523, i64 %_m8521)
  %_index_ptr8524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8520, i32 0, i32 1, i64 %_m8521
  %_index8525 = load i64, i64* %_index_ptr8524
  %_bop8526 = icmp sgt i64 %_index8519, %_index8525
  br i1 %_bop8526, label %_then8531, label %_else8530
_then8555:
  %_r8551 = load i64, i64* %_r8504
  store i64 %_r8551, i64* %_m8509
  br label %_merge8553
_then8558:
  %_array8538 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8496
  %_r8539 = load i64, i64* %_r8504
  %_tmp8541 = bitcast { i64, [0 x i64] }* %_array8538 to i64*
  call void @oat_assert_array_length(i64* %_tmp8541, i64 %_r8539)
  %_index_ptr8542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8538, i32 0, i32 1, i64 %_r8539
  %_index8543 = load i64, i64* %_index_ptr8542
  %_array8544 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8496
  %_m8545 = load i64, i64* %_m8509
  %_tmp8547 = bitcast { i64, [0 x i64] }* %_array8544 to i64*
  call void @oat_assert_array_length(i64* %_tmp8547, i64 %_m8545)
  %_index_ptr8548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8544, i32 0, i32 1, i64 %_m8545
  %_index8549 = load i64, i64* %_index_ptr8548
  %_bop8550 = icmp sgt i64 %_index8543, %_index8549
  br i1 %_bop8550, label %_then8555, label %_else8554
_then8594:
  %_array8562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8496
  %_i8563 = load i64, i64* %_i8493
  %_tmp8565 = bitcast { i64, [0 x i64] }* %_array8562 to i64*
  call void @oat_assert_array_length(i64* %_tmp8565, i64 %_i8563)
  %_index_ptr8566 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8562, i32 0, i32 1, i64 %_i8563
  %_index8567 = load i64, i64* %_index_ptr8566
  store i64 %_index8567, i64* %_tmp8506
  %_array8569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8496
  %_i8570 = load i64, i64* %_i8493
  %_tmp8572 = bitcast { i64, [0 x i64] }* %_array8569 to i64*
  call void @oat_assert_array_length(i64* %_tmp8572, i64 %_i8570)
  %_index_ptr8573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8569, i32 0, i32 1, i64 %_i8570
  %_array8574 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8496
  %_m8575 = load i64, i64* %_m8509
  %_tmp8577 = bitcast { i64, [0 x i64] }* %_array8574 to i64*
  call void @oat_assert_array_length(i64* %_tmp8577, i64 %_m8575)
  %_index_ptr8578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8574, i32 0, i32 1, i64 %_m8575
  %_index8579 = load i64, i64* %_index_ptr8578
  store i64 %_index8579, i64* %_index_ptr8573
  %_array8581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8496
  %_m8582 = load i64, i64* %_m8509
  %_tmp8584 = bitcast { i64, [0 x i64] }* %_array8581 to i64*
  call void @oat_assert_array_length(i64* %_tmp8584, i64 %_m8582)
  %_index_ptr8585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8581, i32 0, i32 1, i64 %_m8582
  %_tmp8586 = load i64, i64* %_tmp8506
  store i64 %_tmp8586, i64* %_index_ptr8585
  %_len8588 = load i64, i64* %_len8490
  %_m8589 = load i64, i64* %_m8509
  %_array8590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8496
  call void @min_heapify({ i64, [0 x i64] }* %_array8590, i64 %_m8589, i64 %_len8588)
  br label %_merge8592
}

define void @make_min_heap({ i64, [0 x i64] }* %_array8471, i64 %_len8468) {
  %_array8472 = alloca { i64, [0 x i64] }*
  %_len8469 = alloca i64
  %_i8475 = alloca i64
  store { i64, [0 x i64] }* %_array8471, { i64, [0 x i64] }** %_array8472
  store i64 %_len8468, i64* %_len8469
  %_len8474 = load i64, i64* %_len8469
  store i64 %_len8474, i64* %_i8475
  br label %_cond8481
_body8480:
  %_len8482 = load i64, i64* %_len8469
  %_i8483 = load i64, i64* %_i8475
  %_array8484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8472
  call void @min_heapify({ i64, [0 x i64] }* %_array8484, i64 %_i8483, i64 %_len8482)
  %_i8486 = load i64, i64* %_i8475
  %_bop8487 = sub i64 %_i8486, 1
  store i64 %_bop8487, i64* %_i8475
  br label %_cond8481
_cond8481:
  %_i8477 = load i64, i64* %_i8475
  %_bop8478 = icmp sge i64 %_i8477, 1
  br i1 %_bop8478, label %_body8480, label %_post8479
_post8479:
  ret void
}

define i64 @program(i64 %_argc8381, { i64, [0 x i8*] }* %_argv8378) {
  %_array8408 = alloca { i64, [0 x i64] }*
  %_end_result8434 = alloca { i64, [0 x i64] }*
  %_same8438 = alloca i64
  %_i8440 = alloca i64
  %_raw_array8384 = call i64* @oat_alloc_array(i64 11)
  %_array8385 = bitcast i64* %_raw_array8384 to { i64, [0 x i64] }*
  %_ind8386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind8386
  %_ind8388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind8388
  %_ind8390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind8390
  %_ind8392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind8392
  %_ind8394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind8394
  %_ind8396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 5
  store i64 10, i64* %_ind8396
  %_ind8398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind8398
  %_ind8400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind8400
  %_ind8402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind8402
  %_ind8404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 9
  store i64 4, i64* %_ind8404
  %_ind8406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8385, i32 0, i32 1, i32 10
  store i64 5, i64* %_ind8406
  store { i64, [0 x i64] }* %_array8385, { i64, [0 x i64] }** %_array8408
  %_raw_array8410 = call i64* @oat_alloc_array(i64 11)
  %_array8411 = bitcast i64* %_raw_array8410 to { i64, [0 x i64] }*
  %_ind8412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind8412
  %_ind8414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind8414
  %_ind8416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind8416
  %_ind8418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind8418
  %_ind8420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind8420
  %_ind8422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 5
  store i64 5, i64* %_ind8422
  %_ind8424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind8424
  %_ind8426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind8426
  %_ind8428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind8428
  %_ind8430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 9
  store i64 9, i64* %_ind8430
  %_ind8432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8411, i32 0, i32 1, i32 10
  store i64 10, i64* %_ind8432
  store { i64, [0 x i64] }* %_array8411, { i64, [0 x i64] }** %_end_result8434
  %_array8436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8408
  call void @make_min_heap({ i64, [0 x i64] }* %_array8436, i64 10)
  store i64 0, i64* %_same8438
  store i64 0, i64* %_i8440
  br label %_cond8446
_body8445:
  %_array8447 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8408
  %_i8448 = load i64, i64* %_i8440
  %_tmp8450 = bitcast { i64, [0 x i64] }* %_array8447 to i64*
  call void @oat_assert_array_length(i64* %_tmp8450, i64 %_i8448)
  %_index_ptr8451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8447, i32 0, i32 1, i64 %_i8448
  %_index8452 = load i64, i64* %_index_ptr8451
  %_end_result8453 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result8434
  %_i8454 = load i64, i64* %_i8440
  %_tmp8456 = bitcast { i64, [0 x i64] }* %_end_result8453 to i64*
  call void @oat_assert_array_length(i64* %_tmp8456, i64 %_i8454)
  %_index_ptr8457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result8453, i32 0, i32 1, i64 %_i8454
  %_index8458 = load i64, i64* %_index_ptr8457
  %_bop8459 = icmp ne i64 %_index8452, %_index8458
  br i1 %_bop8459, label %_then8463, label %_else8462
_cond8446:
  %_i8442 = load i64, i64* %_i8440
  %_bop8443 = icmp slt i64 %_i8442, 11
  br i1 %_bop8443, label %_body8445, label %_post8444
_else8462:
  br label %_merge8461
_merge8461:
  %_i8464 = load i64, i64* %_i8440
  %_bop8465 = add i64 %_i8464, 1
  store i64 %_bop8465, i64* %_i8440
  br label %_cond8446
_post8444:
  %_same8467 = load i64, i64* %_same8438
  ret i64 %_same8467
_then8463:
  store i64 1, i64* %_same8438
  br label %_merge8461
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
