; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_args3684 = alloca { i64, [0 x i64] }*
  %_args3685 = alloca i64
  %_args3686 = alloca i64
  %_localId3690 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args3684
  store i64 %l, i64* %_args3685
  store i64 %r, i64* %_args3686
  store i64 0, i64* %_localId3690
  %_locRef3695 = load i64, i64* %_args3685
  %_locRef3696 = load i64, i64* %_args3686
  %_bop3697 = icmp slt i64 %_locRef3695, %_locRef3696
  br i1 %_bop3697, label %_ifTruelbl3692, label %_ifFalselbl3693
_ifTruelbl3692:
  %_locRef3698 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3684
  %_locRef3699 = load i64, i64* %_args3685
  %_locRef3700 = load i64, i64* %_args3686
  %_callUID3701 = call i64 @partition({ i64, [0 x i64] }* %_locRef3698, i64 %_locRef3699, i64 %_locRef3700)
  store i64 %_callUID3701, i64* %_localId3690
  %_locRef3703 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3684
  %_locRef3704 = load i64, i64* %_args3685
  %_locRef3705 = load i64, i64* %_localId3690
  %_bop3706 = sub i64 %_locRef3705, 1
  call void @quick_sort({ i64, [0 x i64] }* %_locRef3703, i64 %_locRef3704, i64 %_bop3706)
  %_locRef3708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3684
  %_locRef3709 = load i64, i64* %_localId3690
  %_bop3710 = add i64 %_locRef3709, 1
  %_locRef3711 = load i64, i64* %_args3686
  call void @quick_sort({ i64, [0 x i64] }* %_locRef3708, i64 %_bop3710, i64 %_locRef3711)
  br label %_ifEndlbl3694
_ifFalselbl3693:
  br label %_ifEndlbl3694
_ifEndlbl3694:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_args3558 = alloca { i64, [0 x i64] }*
  %_args3559 = alloca i64
  %_args3560 = alloca i64
  %_localId3568 = alloca i64
  %_localId3571 = alloca i64
  %_localId3575 = alloca i64
  %_localId3577 = alloca i64
  %_localId3579 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args3558
  store i64 %l, i64* %_args3559
  store i64 %r, i64* %_args3560
  %_locRef3564 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3565 = load i64, i64* %_args3559
  %_idxUID3566 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3564, i32 0, i32 1, i64 %_locRef3565
  %_getArrUID3567 = load i64, i64* %_idxUID3566
  store i64 %_getArrUID3567, i64* %_localId3568
  %_locRef3570 = load i64, i64* %_args3559
  store i64 %_locRef3570, i64* %_localId3571
  %_locRef3573 = load i64, i64* %_args3560
  %_bop3574 = add i64 %_locRef3573, 1
  store i64 %_bop3574, i64* %_localId3575
  store i64 0, i64* %_localId3577
  store i64 0, i64* %_localId3579
  %_locRef3581 = load i64, i64* %_localId3579
  %_bop3582 = icmp eq i64 %_locRef3581, 0
  br i1 %_bop3582, label %_while_body_jmp3584, label %_while_end_jmp3583
_while_body_jmp3584:
  %_locRef3585 = load i64, i64* %_localId3571
  %_bop3586 = add i64 %_locRef3585, 1
  store i64 %_bop3586, i64* %_localId3571
  %_locRef3588 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3589 = load i64, i64* %_localId3571
  %_idxUID3590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3588, i32 0, i32 1, i64 %_locRef3589
  %_getArrUID3591 = load i64, i64* %_idxUID3590
  %_locRef3592 = load i64, i64* %_localId3568
  %_bop3593 = icmp sle i64 %_getArrUID3591, %_locRef3592
  %_locRef3594 = load i64, i64* %_localId3571
  %_locRef3595 = load i64, i64* %_args3560
  %_bop3596 = icmp sle i64 %_locRef3594, %_locRef3595
  %_bop3597 = and i1 %_bop3593, %_bop3596
  br i1 %_bop3597, label %_while_body_jmp3599, label %_while_end_jmp3598
_while_body_jmp3599:
  %_locRef3600 = load i64, i64* %_localId3571
  %_bop3601 = add i64 %_locRef3600, 1
  store i64 %_bop3601, i64* %_localId3571
  %_locRef3603 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3604 = load i64, i64* %_localId3571
  %_idxUID3605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3603, i32 0, i32 1, i64 %_locRef3604
  %_getArrUID3606 = load i64, i64* %_idxUID3605
  %_locRef3607 = load i64, i64* %_localId3568
  %_bop3608 = icmp sle i64 %_getArrUID3606, %_locRef3607
  %_locRef3609 = load i64, i64* %_localId3571
  %_locRef3610 = load i64, i64* %_args3560
  %_bop3611 = icmp sle i64 %_locRef3609, %_locRef3610
  %_bop3612 = and i1 %_bop3608, %_bop3611
  br i1 %_bop3612, label %_while_body_jmp3599, label %_while_end_jmp3598
_while_end_jmp3598:
  %_locRef3613 = load i64, i64* %_localId3575
  %_bop3614 = sub i64 %_locRef3613, 1
  store i64 %_bop3614, i64* %_localId3575
  %_locRef3616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3617 = load i64, i64* %_localId3575
  %_idxUID3618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3616, i32 0, i32 1, i64 %_locRef3617
  %_getArrUID3619 = load i64, i64* %_idxUID3618
  %_locRef3620 = load i64, i64* %_localId3568
  %_bop3621 = icmp sgt i64 %_getArrUID3619, %_locRef3620
  br i1 %_bop3621, label %_while_body_jmp3623, label %_while_end_jmp3622
_while_body_jmp3623:
  %_locRef3624 = load i64, i64* %_localId3575
  %_bop3625 = sub i64 %_locRef3624, 1
  store i64 %_bop3625, i64* %_localId3575
  %_locRef3627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3628 = load i64, i64* %_localId3575
  %_idxUID3629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3627, i32 0, i32 1, i64 %_locRef3628
  %_getArrUID3630 = load i64, i64* %_idxUID3629
  %_locRef3631 = load i64, i64* %_localId3568
  %_bop3632 = icmp sgt i64 %_getArrUID3630, %_locRef3631
  br i1 %_bop3632, label %_while_body_jmp3623, label %_while_end_jmp3622
_while_end_jmp3622:
  %_locRef3636 = load i64, i64* %_localId3571
  %_locRef3637 = load i64, i64* %_localId3575
  %_bop3638 = icmp sge i64 %_locRef3636, %_locRef3637
  br i1 %_bop3638, label %_ifTruelbl3633, label %_ifFalselbl3634
_ifTruelbl3633:
  store i64 1, i64* %_localId3579
  br label %_ifEndlbl3635
_ifFalselbl3634:
  br label %_ifEndlbl3635
_ifEndlbl3635:
  %_locRef3643 = load i64, i64* %_localId3579
  %_bop3644 = icmp eq i64 %_locRef3643, 0
  br i1 %_bop3644, label %_ifTruelbl3640, label %_ifFalselbl3641
_ifTruelbl3640:
  %_locRef3645 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3646 = load i64, i64* %_localId3571
  %_idxUID3647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3645, i32 0, i32 1, i64 %_locRef3646
  %_getArrUID3648 = load i64, i64* %_idxUID3647
  store i64 %_getArrUID3648, i64* %_localId3577
  %_locRef3650 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3651 = load i64, i64* %_localId3571
  %_locRef3652 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3653 = load i64, i64* %_localId3575
  %_idxUID3654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3652, i32 0, i32 1, i64 %_locRef3653
  %_getArrUID3655 = load i64, i64* %_idxUID3654
  %_arridx3656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3650, i32 0, i32 1, i64 %_locRef3651
  store i64 %_getArrUID3655, i64* %_arridx3656
  %_locRef3658 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3659 = load i64, i64* %_localId3575
  %_locRef3660 = load i64, i64* %_localId3577
  %_arridx3661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3658, i32 0, i32 1, i64 %_locRef3659
  store i64 %_locRef3660, i64* %_arridx3661
  br label %_ifEndlbl3642
_ifFalselbl3641:
  br label %_ifEndlbl3642
_ifEndlbl3642:
  %_locRef3663 = load i64, i64* %_localId3579
  %_bop3664 = icmp eq i64 %_locRef3663, 0
  br i1 %_bop3664, label %_while_body_jmp3584, label %_while_end_jmp3583
_while_end_jmp3583:
  %_locRef3665 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3666 = load i64, i64* %_args3559
  %_idxUID3667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3665, i32 0, i32 1, i64 %_locRef3666
  %_getArrUID3668 = load i64, i64* %_idxUID3667
  store i64 %_getArrUID3668, i64* %_localId3577
  %_locRef3670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3671 = load i64, i64* %_args3559
  %_locRef3672 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3673 = load i64, i64* %_localId3575
  %_idxUID3674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3672, i32 0, i32 1, i64 %_locRef3673
  %_getArrUID3675 = load i64, i64* %_idxUID3674
  %_arridx3676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3670, i32 0, i32 1, i64 %_locRef3671
  store i64 %_getArrUID3675, i64* %_arridx3676
  %_locRef3678 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args3558
  %_locRef3679 = load i64, i64* %_localId3575
  %_locRef3680 = load i64, i64* %_localId3577
  %_arridx3681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3678, i32 0, i32 1, i64 %_locRef3679
  store i64 %_locRef3680, i64* %_arridx3681
  %_locRef3683 = load i64, i64* %_localId3575
  ret i64 %_locRef3683
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3522 = alloca i64
  %_args3523 = alloca { i64, [0 x i8*] }*
  %_localId3548 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args3522
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3523
  %_atomArrUID3527 = alloca { i64, [9 x i64] }
  %_idxUID3546 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 0
  store i64 9, i64* %_idxUID3546
  %_gep3528 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 1, i32 0
  %_gep3529 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 1, i32 1
  %_gep3530 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 1, i32 2
  %_gep3531 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 1, i32 3
  %_gep3532 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 1, i32 4
  %_gep3533 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 1, i32 5
  %_gep3534 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 1, i32 6
  %_gep3535 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 1, i32 7
  %_gep3536 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID3527, i32 0, i32 1, i32 8
  store i64 107, i64* %_gep3528
  store i64 112, i64* %_gep3529
  store i64 121, i64* %_gep3530
  store i64 102, i64* %_gep3531
  store i64 123, i64* %_gep3532
  store i64 115, i64* %_gep3533
  store i64 104, i64* %_gep3534
  store i64 111, i64* %_gep3535
  store i64 109, i64* %_gep3536
  %_arrayUID3526 = bitcast { i64, [9 x i64] }* %_atomArrUID3527 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID3526, { i64, [0 x i64] }** %_localId3548
  %_locRef3550 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3548
  %_callUID3551 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef3550)
  call void @print_string(i8* %_callUID3551)
  %_locRef3553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3548
  call void @quick_sort({ i64, [0 x i64] }* %_locRef3553, i64 0, i64 8)
  %_locRef3555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3548
  %_callUID3556 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef3555)
  call void @print_string(i8* %_callUID3556)
  ret i64 255
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
