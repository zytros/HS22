; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %_arr6494, i64 %_size6491) {
  %_arr6495 = alloca { i64, [0 x i64] }*
  %_size6492 = alloca i64
  %_i6502 = alloca i64
  %_maxarr6521 = alloca { i64, [0 x i64] }*
  %_maxs6523 = alloca i64
  %_i6535 = alloca i64
  %_j6543 = alloca i64
  store { i64, [0 x i64] }* %_arr6494, { i64, [0 x i64] }** %_arr6495
  store i64 %_size6491, i64* %_size6492
  %_size6499 = load i64, i64* %_size6492
  %_raw_array6500 = call i64* @oat_alloc_array(i64 %_size6499)
  %_array6501 = bitcast i64* %_raw_array6500 to { i64, [0 x i64] }*
  %_bnd_6498 = alloca i64
  store i64 %_size6499, i64* %_bnd_6498
  %_ptr_6497 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6501, { i64, [0 x i64] }** %_ptr_6497
  store i64 0, i64* %_i6502
  br label %_cond6509
_body6508:
  %__ptr_64976510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_6497
  %_i6511 = load i64, i64* %_i6502
  %_tmp6513 = bitcast { i64, [0 x i64] }* %__ptr_64976510 to i64*
  call void @oat_assert_array_length(i64* %_tmp6513, i64 %_i6511)
  %_index_ptr6514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_64976510, i32 0, i32 1, i64 %_i6511
  store i64 0, i64* %_index_ptr6514
  %_i6516 = load i64, i64* %_i6502
  %_bop6517 = add i64 %_i6516, 1
  store i64 %_bop6517, i64* %_i6502
  br label %_cond6509
_body6541:
  store i64 0, i64* %_j6543
  br label %_cond6550
_body6549:
  %_arr6551 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6495
  %_i6552 = load i64, i64* %_i6535
  %_tmp6554 = bitcast { i64, [0 x i64] }* %_arr6551 to i64*
  call void @oat_assert_array_length(i64* %_tmp6554, i64 %_i6552)
  %_index_ptr6555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6551, i32 0, i32 1, i64 %_i6552
  %_index6556 = load i64, i64* %_index_ptr6555
  %_arr6557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6495
  %_j6558 = load i64, i64* %_j6543
  %_tmp6560 = bitcast { i64, [0 x i64] }* %_arr6557 to i64*
  call void @oat_assert_array_length(i64* %_tmp6560, i64 %_j6558)
  %_index_ptr6561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6557, i32 0, i32 1, i64 %_j6558
  %_index6562 = load i64, i64* %_index_ptr6561
  %_bop6563 = icmp sgt i64 %_index6556, %_index6562
  %_maxarr6564 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6521
  %_i6565 = load i64, i64* %_i6535
  %_tmp6567 = bitcast { i64, [0 x i64] }* %_maxarr6564 to i64*
  call void @oat_assert_array_length(i64* %_tmp6567, i64 %_i6565)
  %_index_ptr6568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6564, i32 0, i32 1, i64 %_i6565
  %_index6569 = load i64, i64* %_index_ptr6568
  %_maxarr6570 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6521
  %_j6571 = load i64, i64* %_j6543
  %_tmp6573 = bitcast { i64, [0 x i64] }* %_maxarr6570 to i64*
  call void @oat_assert_array_length(i64* %_tmp6573, i64 %_j6571)
  %_index_ptr6574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6570, i32 0, i32 1, i64 %_j6571
  %_index6575 = load i64, i64* %_index_ptr6574
  %_arr6576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6495
  %_i6577 = load i64, i64* %_i6535
  %_tmp6579 = bitcast { i64, [0 x i64] }* %_arr6576 to i64*
  call void @oat_assert_array_length(i64* %_tmp6579, i64 %_i6577)
  %_index_ptr6580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6576, i32 0, i32 1, i64 %_i6577
  %_index6581 = load i64, i64* %_index_ptr6580
  %_bop6582 = add i64 %_index6575, %_index6581
  %_bop6583 = icmp slt i64 %_index6569, %_bop6582
  %_bop6584 = and i1 %_bop6563, %_bop6583
  br i1 %_bop6584, label %_then6606, label %_else6605
_cond6509:
  %_i6504 = load i64, i64* %_i6502
  %__bnd_64986505 = load i64, i64* %_bnd_6498
  %_bop6506 = icmp slt i64 %_i6504, %__bnd_64986505
  br i1 %_bop6506, label %_body6508, label %_post6507
_cond6542:
  %_i6537 = load i64, i64* %_i6535
  %_size6538 = load i64, i64* %_size6492
  %_bop6539 = icmp slt i64 %_i6537, %_size6538
  br i1 %_bop6539, label %_body6541, label %_post6540
_cond6550:
  %_j6545 = load i64, i64* %_j6543
  %_i6546 = load i64, i64* %_i6535
  %_bop6547 = icmp slt i64 %_j6545, %_i6546
  br i1 %_bop6547, label %_body6549, label %_post6548
_else6605:
  br label %_merge6604
_else6626:
  br label %_merge6625
_merge6604:
  %_j6607 = load i64, i64* %_j6543
  %_bop6608 = add i64 %_j6607, 1
  store i64 %_bop6608, i64* %_j6543
  br label %_cond6550
_merge6625:
  %_i6628 = load i64, i64* %_i6535
  %_bop6629 = add i64 %_i6628, 1
  store i64 %_bop6629, i64* %_i6535
  br label %_cond6542
_post6507:
  store { i64, [0 x i64] }* %_array6501, { i64, [0 x i64] }** %_maxarr6521
  store i64 0, i64* %_maxs6523
  %_maxarr6525 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6521
  %_tmp6527 = bitcast { i64, [0 x i64] }* %_maxarr6525 to i64*
  call void @oat_assert_array_length(i64* %_tmp6527, i64 0)
  %_index_ptr6528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6525, i32 0, i32 1, i32 0
  %_arr6529 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6495
  %_tmp6531 = bitcast { i64, [0 x i64] }* %_arr6529 to i64*
  call void @oat_assert_array_length(i64* %_tmp6531, i64 0)
  %_index_ptr6532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6529, i32 0, i32 1, i32 0
  %_index6533 = load i64, i64* %_index_ptr6532
  store i64 %_index6533, i64* %_index_ptr6528
  store i64 0, i64* %_i6535
  br label %_cond6542
_post6540:
  %_maxs6631 = load i64, i64* %_maxs6523
  ret i64 %_maxs6631
_post6548:
  %_maxs6610 = load i64, i64* %_maxs6523
  %_maxarr6611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6521
  %_i6612 = load i64, i64* %_i6535
  %_tmp6614 = bitcast { i64, [0 x i64] }* %_maxarr6611 to i64*
  call void @oat_assert_array_length(i64* %_tmp6614, i64 %_i6612)
  %_index_ptr6615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6611, i32 0, i32 1, i64 %_i6612
  %_index6616 = load i64, i64* %_index_ptr6615
  %_bop6617 = icmp slt i64 %_maxs6610, %_index6616
  br i1 %_bop6617, label %_then6627, label %_else6626
_then6606:
  %_maxarr6585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6521
  %_i6586 = load i64, i64* %_i6535
  %_tmp6588 = bitcast { i64, [0 x i64] }* %_maxarr6585 to i64*
  call void @oat_assert_array_length(i64* %_tmp6588, i64 %_i6586)
  %_index_ptr6589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6585, i32 0, i32 1, i64 %_i6586
  %_maxarr6590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6521
  %_j6591 = load i64, i64* %_j6543
  %_tmp6593 = bitcast { i64, [0 x i64] }* %_maxarr6590 to i64*
  call void @oat_assert_array_length(i64* %_tmp6593, i64 %_j6591)
  %_index_ptr6594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6590, i32 0, i32 1, i64 %_j6591
  %_index6595 = load i64, i64* %_index_ptr6594
  %_arr6596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6495
  %_i6597 = load i64, i64* %_i6535
  %_tmp6599 = bitcast { i64, [0 x i64] }* %_arr6596 to i64*
  call void @oat_assert_array_length(i64* %_tmp6599, i64 %_i6597)
  %_index_ptr6600 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6596, i32 0, i32 1, i64 %_i6597
  %_index6601 = load i64, i64* %_index_ptr6600
  %_bop6602 = add i64 %_index6595, %_index6601
  store i64 %_bop6602, i64* %_index_ptr6589
  br label %_merge6604
_then6627:
  %_maxarr6618 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6521
  %_i6619 = load i64, i64* %_i6535
  %_tmp6621 = bitcast { i64, [0 x i64] }* %_maxarr6618 to i64*
  call void @oat_assert_array_length(i64* %_tmp6621, i64 %_i6619)
  %_index_ptr6622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6618, i32 0, i32 1, i64 %_i6619
  %_index6623 = load i64, i64* %_index_ptr6622
  store i64 %_index6623, i64* %_maxs6523
  br label %_merge6625
}

define i64 @program(i64 %_argc6465, { i64, [0 x i8*] }* %_argv6462) {
  %_array6484 = alloca { i64, [0 x i64] }*
  %_max_ans6488 = alloca i64
  %_raw_array6468 = call i64* @oat_alloc_array(i64 7)
  %_array6469 = bitcast i64* %_raw_array6468 to { i64, [0 x i64] }*
  %_ind6470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6469, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind6470
  %_ind6472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6469, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind6472
  %_ind6474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6469, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind6474
  %_ind6476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6469, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind6476
  %_ind6478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6469, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind6478
  %_ind6480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6469, i32 0, i32 1, i32 5
  store i64 4, i64* %_ind6480
  %_ind6482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6469, i32 0, i32 1, i32 6
  store i64 5, i64* %_ind6482
  store { i64, [0 x i64] }* %_array6469, { i64, [0 x i64] }** %_array6484
  %_array6486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6484
  %_result6487 = call i64 @maxsum({ i64, [0 x i64] }* %_array6486, i64 7)
  store i64 %_result6487, i64* %_max_ans6488
  %_max_ans6490 = load i64, i64* %_max_ans6488
  ret i64 %_max_ans6490
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
