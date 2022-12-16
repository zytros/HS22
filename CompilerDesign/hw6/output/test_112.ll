; generated from: oatprograms/determinant_size2.oat
target triple = "x86_64-unknown-linux"
define i64 @compute_determinant({ i64, [0 x { i64, [0 x i64] }*] }* %_matrix4452, i64 %_n4449) {
  %_matrix4453 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n4450 = alloca i64
  %_sum4455 = alloca i64
  %_multiplier4458 = alloca i64
  %_k4472 = alloca i64
  %_len4482 = alloca i64
  %_i4489 = alloca i64
  %_j4507 = alloca i64
  %_b4532 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_l4534 = alloca i64
  %_m4542 = alloca i64
  %_o4581 = alloca i64
  %_p4590 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4452, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4453
  store i64 %_n4449, i64* %_n4450
  store i64 0, i64* %_sum4455
  store i64 -1, i64* %_multiplier4458
  %_n4460 = load i64, i64* %_n4450
  %_bop4461 = icmp eq i64 %_n4460, 1
  br i1 %_bop4461, label %_then4658, label %_else4657
_body4478:
  %_n4480 = load i64, i64* %_n4450
  %_bop4481 = sub i64 %_n4480, 1
  store i64 %_bop4481, i64* %_len4482
  %_len4486 = load i64, i64* %_len4482
  %_raw_array4487 = call i64* @oat_alloc_array(i64 %_len4486)
  %_array4488 = bitcast i64* %_raw_array4487 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_4485 = alloca i64
  store i64 %_len4486, i64* %_bnd_4485
  %_ptr_4484 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4488, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_4484
  store i64 0, i64* %_i4489
  br label %_cond4496
_body4495:
  %__ptr_44844497 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_4484
  %_i4498 = load i64, i64* %_i4489
  %_tmp4500 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_44844497 to i64*
  call void @oat_assert_array_length(i64* %_tmp4500, i64 %_i4498)
  %_index_ptr4501 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_44844497, i32 0, i32 1, i64 %_i4498
  %_len4504 = load i64, i64* %_len4482
  %_raw_array4505 = call i64* @oat_alloc_array(i64 %_len4504)
  %_array4506 = bitcast i64* %_raw_array4505 to { i64, [0 x i64] }*
  %_bnd_4503 = alloca i64
  store i64 %_len4504, i64* %_bnd_4503
  %_ptr_4502 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4506, { i64, [0 x i64] }** %_ptr_4502
  store i64 0, i64* %_j4507
  br label %_cond4514
_body4513:
  %__ptr_45024515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_4502
  %_j4516 = load i64, i64* %_j4507
  %_tmp4518 = bitcast { i64, [0 x i64] }* %__ptr_45024515 to i64*
  call void @oat_assert_array_length(i64* %_tmp4518, i64 %_j4516)
  %_index_ptr4519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_45024515, i32 0, i32 1, i64 %_j4516
  store i64 1, i64* %_index_ptr4519
  %_j4521 = load i64, i64* %_j4507
  %_bop4522 = add i64 %_j4521, 1
  store i64 %_bop4522, i64* %_j4507
  br label %_cond4514
_body4540:
  store i64 0, i64* %_m4542
  br label %_cond4550
_body4549:
  %_b4551 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4532
  %_m4552 = load i64, i64* %_m4542
  %_tmp4554 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_b4551 to i64*
  call void @oat_assert_array_length(i64* %_tmp4554, i64 %_m4552)
  %_index_ptr4555 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b4551, i32 0, i32 1, i64 %_m4552
  %_index4556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4555
  %_l4557 = load i64, i64* %_l4534
  %_tmp4559 = bitcast { i64, [0 x i64] }* %_index4556 to i64*
  call void @oat_assert_array_length(i64* %_tmp4559, i64 %_l4557)
  %_index_ptr4560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4556, i32 0, i32 1, i64 %_l4557
  %_matrix4561 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4453
  %_m4562 = load i64, i64* %_m4542
  %_bop4563 = add i64 %_m4562, 1
  %_tmp4565 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4561 to i64*
  call void @oat_assert_array_length(i64* %_tmp4565, i64 %_bop4563)
  %_index_ptr4566 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4561, i32 0, i32 1, i64 %_bop4563
  %_index4567 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4566
  %_l4568 = load i64, i64* %_l4534
  %_tmp4570 = bitcast { i64, [0 x i64] }* %_index4567 to i64*
  call void @oat_assert_array_length(i64* %_tmp4570, i64 %_l4568)
  %_index_ptr4571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4567, i32 0, i32 1, i64 %_l4568
  %_index4572 = load i64, i64* %_index_ptr4571
  store i64 %_index4572, i64* %_index_ptr4560
  %_m4574 = load i64, i64* %_m4542
  %_bop4575 = add i64 %_m4574, 1
  store i64 %_bop4575, i64* %_m4542
  br label %_cond4550
_body4588:
  store i64 0, i64* %_p4590
  br label %_cond4598
_body4597:
  %_b4599 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4532
  %_p4600 = load i64, i64* %_p4590
  %_tmp4602 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_b4599 to i64*
  call void @oat_assert_array_length(i64* %_tmp4602, i64 %_p4600)
  %_index_ptr4603 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b4599, i32 0, i32 1, i64 %_p4600
  %_index4604 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4603
  %_o4605 = load i64, i64* %_o4581
  %_tmp4607 = bitcast { i64, [0 x i64] }* %_index4604 to i64*
  call void @oat_assert_array_length(i64* %_tmp4607, i64 %_o4605)
  %_index_ptr4608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4604, i32 0, i32 1, i64 %_o4605
  %_matrix4609 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4453
  %_p4610 = load i64, i64* %_p4590
  %_bop4611 = add i64 %_p4610, 1
  %_tmp4613 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4609 to i64*
  call void @oat_assert_array_length(i64* %_tmp4613, i64 %_bop4611)
  %_index_ptr4614 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4609, i32 0, i32 1, i64 %_bop4611
  %_index4615 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4614
  %_o4616 = load i64, i64* %_o4581
  %_bop4617 = add i64 %_o4616, 1
  %_tmp4619 = bitcast { i64, [0 x i64] }* %_index4615 to i64*
  call void @oat_assert_array_length(i64* %_tmp4619, i64 %_bop4617)
  %_index_ptr4620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4615, i32 0, i32 1, i64 %_bop4617
  %_index4621 = load i64, i64* %_index_ptr4620
  store i64 %_index4621, i64* %_index_ptr4608
  %_p4623 = load i64, i64* %_p4590
  %_bop4624 = add i64 %_p4623, 1
  store i64 %_bop4624, i64* %_p4590
  br label %_cond4598
_cond4479:
  %_k4474 = load i64, i64* %_k4472
  %_n4475 = load i64, i64* %_n4450
  %_bop4476 = icmp slt i64 %_k4474, %_n4475
  br i1 %_bop4476, label %_body4478, label %_post4477
_cond4496:
  %_i4491 = load i64, i64* %_i4489
  %__bnd_44854492 = load i64, i64* %_bnd_4485
  %_bop4493 = icmp slt i64 %_i4491, %__bnd_44854492
  br i1 %_bop4493, label %_body4495, label %_post4494
_cond4514:
  %_j4509 = load i64, i64* %_j4507
  %__bnd_45034510 = load i64, i64* %_bnd_4503
  %_bop4511 = icmp slt i64 %_j4509, %__bnd_45034510
  br i1 %_bop4511, label %_body4513, label %_post4512
_cond4541:
  %_l4536 = load i64, i64* %_l4534
  %_k4537 = load i64, i64* %_k4472
  %_bop4538 = icmp slt i64 %_l4536, %_k4537
  br i1 %_bop4538, label %_body4540, label %_post4539
_cond4550:
  %_m4544 = load i64, i64* %_m4542
  %_n4545 = load i64, i64* %_n4450
  %_bop4546 = sub i64 %_n4545, 1
  %_bop4547 = icmp slt i64 %_m4544, %_bop4546
  br i1 %_bop4547, label %_body4549, label %_post4548
_cond4589:
  %_o4583 = load i64, i64* %_o4581
  %_n4584 = load i64, i64* %_n4450
  %_bop4585 = sub i64 %_n4584, 1
  %_bop4586 = icmp slt i64 %_o4583, %_bop4585
  br i1 %_bop4586, label %_body4588, label %_post4587
_cond4598:
  %_p4592 = load i64, i64* %_p4590
  %_n4593 = load i64, i64* %_n4450
  %_bop4594 = sub i64 %_n4593, 1
  %_bop4595 = icmp slt i64 %_p4592, %_bop4594
  br i1 %_bop4595, label %_body4597, label %_post4596
_else4657:
  store i64 0, i64* %_k4472
  br label %_cond4479
_merge4656:
  %_sum4659 = load i64, i64* %_sum4455
  ret i64 %_sum4659
_post4477:
  br label %_merge4656
_post4494:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4488, { i64, [0 x { i64, [0 x i64] }*] }** %_b4532
  store i64 0, i64* %_l4534
  br label %_cond4541
_post4512:
  store { i64, [0 x i64] }* %_array4506, { i64, [0 x i64] }** %_index_ptr4501
  %_i4527 = load i64, i64* %_i4489
  %_bop4528 = add i64 %_i4527, 1
  store i64 %_bop4528, i64* %_i4489
  br label %_cond4496
_post4539:
  %_k4580 = load i64, i64* %_k4472
  store i64 %_k4580, i64* %_o4581
  br label %_cond4589
_post4548:
  %_l4577 = load i64, i64* %_l4534
  %_bop4578 = add i64 %_l4577, 1
  store i64 %_bop4578, i64* %_l4534
  br label %_cond4541
_post4587:
  %_multiplier4629 = load i64, i64* %_multiplier4458
  %_bop4631 = mul i64 %_multiplier4629, -1
  store i64 %_bop4631, i64* %_multiplier4458
  %_sum4633 = load i64, i64* %_sum4455
  %_multiplier4634 = load i64, i64* %_multiplier4458
  %_matrix4635 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4453
  %_tmp4637 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4635 to i64*
  call void @oat_assert_array_length(i64* %_tmp4637, i64 0)
  %_index_ptr4638 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4635, i32 0, i32 1, i32 0
  %_index4639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4638
  %_k4640 = load i64, i64* %_k4472
  %_tmp4642 = bitcast { i64, [0 x i64] }* %_index4639 to i64*
  call void @oat_assert_array_length(i64* %_tmp4642, i64 %_k4640)
  %_index_ptr4643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4639, i32 0, i32 1, i64 %_k4640
  %_index4644 = load i64, i64* %_index_ptr4643
  %_bop4645 = mul i64 %_multiplier4634, %_index4644
  %_n4646 = load i64, i64* %_n4450
  %_bop4647 = sub i64 %_n4646, 1
  %_b4648 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4532
  %_result4649 = call i64 @compute_determinant({ i64, [0 x { i64, [0 x i64] }*] }* %_b4648, i64 %_bop4647)
  %_bop4650 = mul i64 %_bop4645, %_result4649
  %_bop4651 = add i64 %_sum4633, %_bop4650
  store i64 %_bop4651, i64* %_sum4455
  %_k4653 = load i64, i64* %_k4472
  %_bop4654 = add i64 %_k4653, 1
  store i64 %_bop4654, i64* %_k4472
  br label %_cond4479
_post4596:
  %_o4626 = load i64, i64* %_o4581
  %_bop4627 = add i64 %_o4626, 1
  store i64 %_bop4627, i64* %_o4581
  br label %_cond4589
_then4658:
  %_matrix4462 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4453
  %_tmp4464 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4462 to i64*
  call void @oat_assert_array_length(i64* %_tmp4464, i64 0)
  %_index_ptr4465 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4462, i32 0, i32 1, i32 0
  %_index4466 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4465
  %_tmp4468 = bitcast { i64, [0 x i64] }* %_index4466 to i64*
  call void @oat_assert_array_length(i64* %_tmp4468, i64 0)
  %_index_ptr4469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4466, i32 0, i32 1, i32 0
  %_index4470 = load i64, i64* %_index_ptr4469
  store i64 %_index4470, i64* %_sum4455
  br label %_merge4656
}

define i64 @program(i64 %_argc4424, { i64, [0 x i8*] }* %_argv4421) {
  %_matrix4445 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4427 = call i64* @oat_alloc_array(i64 2)
  %_array4428 = bitcast i64* %_raw_array4427 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4429 = call i64* @oat_alloc_array(i64 2)
  %_array4430 = bitcast i64* %_raw_array4429 to { i64, [0 x i64] }*
  %_ind4431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4430, i32 0, i32 1, i32 0
  store i64 20, i64* %_ind4431
  %_ind4433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4430, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind4433
  %_ind4435 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4428, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4430, { i64, [0 x i64] }** %_ind4435
  %_raw_array4437 = call i64* @oat_alloc_array(i64 2)
  %_array4438 = bitcast i64* %_raw_array4437 to { i64, [0 x i64] }*
  %_ind4439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4438, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind4439
  %_ind4441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4438, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind4441
  %_ind4443 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4428, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4438, { i64, [0 x i64] }** %_ind4443
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4428, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4445
  %_matrix4447 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4445
  %_result4448 = call i64 @compute_determinant({ i64, [0 x { i64, [0 x i64] }*] }* %_matrix4447, i64 2)
  ret i64 %_result4448
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
