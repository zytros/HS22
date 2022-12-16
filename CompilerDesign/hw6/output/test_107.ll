; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %_a3588, i64 %_s3585, i64 %_b3582) {
  %_a3589 = alloca { i64, [0 x i64] }*
  %_s3586 = alloca i64
  %_b3583 = alloca i64
  %_i3592 = alloca i64
  %_min3600 = alloca i64
  %_mi3603 = alloca i64
  store { i64, [0 x i64] }* %_a3588, { i64, [0 x i64] }** %_a3589
  store i64 %_s3585, i64* %_s3586
  store i64 %_b3582, i64* %_b3583
  %_s3591 = load i64, i64* %_s3586
  store i64 %_s3591, i64* %_i3592
  %_a3594 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3589
  %_s3595 = load i64, i64* %_s3586
  %_tmp3597 = bitcast { i64, [0 x i64] }* %_a3594 to i64*
  call void @oat_assert_array_length(i64* %_tmp3597, i64 %_s3595)
  %_index_ptr3598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3594, i32 0, i32 1, i64 %_s3595
  %_index3599 = load i64, i64* %_index_ptr3598
  store i64 %_index3599, i64* %_min3600
  %_s3602 = load i64, i64* %_s3586
  store i64 %_s3602, i64* %_mi3603
  br label %_cond3610
_body3609:
  %_a3611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3589
  %_i3612 = load i64, i64* %_i3592
  %_tmp3614 = bitcast { i64, [0 x i64] }* %_a3611 to i64*
  call void @oat_assert_array_length(i64* %_tmp3614, i64 %_i3612)
  %_index_ptr3615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3611, i32 0, i32 1, i64 %_i3612
  %_index3616 = load i64, i64* %_index_ptr3615
  %_min3617 = load i64, i64* %_min3600
  %_bop3618 = icmp slt i64 %_index3616, %_min3617
  br i1 %_bop3618, label %_then3630, label %_else3629
_cond3610:
  %_i3605 = load i64, i64* %_i3592
  %_b3606 = load i64, i64* %_b3583
  %_bop3607 = icmp slt i64 %_i3605, %_b3606
  br i1 %_bop3607, label %_body3609, label %_post3608
_else3629:
  br label %_merge3628
_merge3628:
  %_i3631 = load i64, i64* %_i3592
  %_bop3632 = add i64 %_i3631, 1
  store i64 %_bop3632, i64* %_i3592
  br label %_cond3610
_post3608:
  %_mi3634 = load i64, i64* %_mi3603
  ret i64 %_mi3634
_then3630:
  %_a3619 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3589
  %_i3620 = load i64, i64* %_i3592
  %_tmp3622 = bitcast { i64, [0 x i64] }* %_a3619 to i64*
  call void @oat_assert_array_length(i64* %_tmp3622, i64 %_i3620)
  %_index_ptr3623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3619, i32 0, i32 1, i64 %_i3620
  %_index3624 = load i64, i64* %_index_ptr3623
  store i64 %_index3624, i64* %_min3600
  %_i3626 = load i64, i64* %_i3592
  store i64 %_i3626, i64* %_mi3603
  br label %_merge3628
}

define void @selectionsort({ i64, [0 x i64] }* %_a3533, i64 %_s3530) {
  %_a3534 = alloca { i64, [0 x i64] }*
  %_s3531 = alloca i64
  %_t3536 = alloca i64
  %_mi3538 = alloca i64
  %_i3540 = alloca i64
  store { i64, [0 x i64] }* %_a3533, { i64, [0 x i64] }** %_a3534
  store i64 %_s3530, i64* %_s3531
  store i64 0, i64* %_t3536
  store i64 0, i64* %_mi3538
  store i64 0, i64* %_i3540
  br label %_cond3547
_body3546:
  %_s3548 = load i64, i64* %_s3531
  %_i3549 = load i64, i64* %_i3540
  %_a3550 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3534
  %_result3551 = call i64 @getminindex({ i64, [0 x i64] }* %_a3550, i64 %_i3549, i64 %_s3548)
  store i64 %_result3551, i64* %_mi3538
  %_a3553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3534
  %_i3554 = load i64, i64* %_i3540
  %_tmp3556 = bitcast { i64, [0 x i64] }* %_a3553 to i64*
  call void @oat_assert_array_length(i64* %_tmp3556, i64 %_i3554)
  %_index_ptr3557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3553, i32 0, i32 1, i64 %_i3554
  %_index3558 = load i64, i64* %_index_ptr3557
  store i64 %_index3558, i64* %_t3536
  %_a3560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3534
  %_i3561 = load i64, i64* %_i3540
  %_tmp3563 = bitcast { i64, [0 x i64] }* %_a3560 to i64*
  call void @oat_assert_array_length(i64* %_tmp3563, i64 %_i3561)
  %_index_ptr3564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3560, i32 0, i32 1, i64 %_i3561
  %_a3565 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3534
  %_mi3566 = load i64, i64* %_mi3538
  %_tmp3568 = bitcast { i64, [0 x i64] }* %_a3565 to i64*
  call void @oat_assert_array_length(i64* %_tmp3568, i64 %_mi3566)
  %_index_ptr3569 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3565, i32 0, i32 1, i64 %_mi3566
  %_index3570 = load i64, i64* %_index_ptr3569
  store i64 %_index3570, i64* %_index_ptr3564
  %_a3572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3534
  %_mi3573 = load i64, i64* %_mi3538
  %_tmp3575 = bitcast { i64, [0 x i64] }* %_a3572 to i64*
  call void @oat_assert_array_length(i64* %_tmp3575, i64 %_mi3573)
  %_index_ptr3576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3572, i32 0, i32 1, i64 %_mi3573
  %_t3577 = load i64, i64* %_t3536
  store i64 %_t3577, i64* %_index_ptr3576
  %_i3579 = load i64, i64* %_i3540
  %_bop3580 = add i64 %_i3579, 1
  store i64 %_bop3580, i64* %_i3540
  br label %_cond3547
_cond3547:
  %_i3542 = load i64, i64* %_i3540
  %_s3543 = load i64, i64* %_s3531
  %_bop3544 = icmp slt i64 %_i3542, %_s3543
  br i1 %_bop3544, label %_body3546, label %_post3545
_post3545:
  ret void
}

define i64 @program(i64 %_argc3488, { i64, [0 x i8*] }* %_argv3485) {
  %_ar3509 = alloca { i64, [0 x i64] }*
  %_i3513 = alloca i64
  %_raw_array3491 = call i64* @oat_alloc_array(i64 8)
  %_array3492 = bitcast i64* %_raw_array3491 to { i64, [0 x i64] }*
  %_ind3493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3492, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind3493
  %_ind3495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3492, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind3495
  %_ind3497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3492, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3497
  %_ind3499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3492, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind3499
  %_ind3501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3492, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind3501
  %_ind3503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3492, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3503
  %_ind3505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3492, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind3505
  %_ind3507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3492, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind3507
  store { i64, [0 x i64] }* %_array3492, { i64, [0 x i64] }** %_ar3509
  %_ar3511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3509
  call void @selectionsort({ i64, [0 x i64] }* %_ar3511, i64 8)
  store i64 0, i64* %_i3513
  br label %_cond3519
_body3518:
  %_ar3520 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3509
  %_i3521 = load i64, i64* %_i3513
  %_tmp3523 = bitcast { i64, [0 x i64] }* %_ar3520 to i64*
  call void @oat_assert_array_length(i64* %_tmp3523, i64 %_i3521)
  %_index_ptr3524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar3520, i32 0, i32 1, i64 %_i3521
  %_index3525 = load i64, i64* %_index_ptr3524
  call void @print_int(i64 %_index3525)
  %_i3527 = load i64, i64* %_i3513
  %_bop3528 = add i64 %_i3527, 1
  store i64 %_bop3528, i64* %_i3513
  br label %_cond3519
_cond3519:
  %_i3515 = load i64, i64* %_i3513
  %_bop3516 = icmp slt i64 %_i3515, 8
  br i1 %_bop3516, label %_body3518, label %_post3517
_post3517:
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
