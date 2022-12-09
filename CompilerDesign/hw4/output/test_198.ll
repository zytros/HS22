; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_stringd4440 = global [2 x i8] c" \00"
@_string4439 = global i8* bitcast ([2 x i8]* @_stringd4440 to i8*)
@_stringd4449 = global [2 x i8] c"	\00"
@_string4448 = global i8* bitcast ([2 x i8]* @_stringd4449 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args4606 = alloca i64
  %_args4607 = alloca { i64, [0 x i8*] }*
  %_localId4638 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId4686 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId4720 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_args4606
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args4607
  %_atomArrUID4611 = alloca { i64, [3 x i64] }
  %_idxUID4618 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID4611, i32 0, i32 0
  store i64 3, i64* %_idxUID4618
  %_gep4612 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID4611, i32 0, i32 1, i32 0
  %_gep4613 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID4611, i32 0, i32 1, i32 1
  %_gep4614 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID4611, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep4612
  store i64 3, i64* %_gep4613
  store i64 4, i64* %_gep4614
  %_arrayUID4610 = bitcast { i64, [3 x i64] }* %_atomArrUID4611 to { i64, [0 x i64] }*
  %_atomArrUID4621 = alloca { i64, [3 x i64] }
  %_idxUID4628 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID4621, i32 0, i32 0
  store i64 3, i64* %_idxUID4628
  %_gep4622 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID4621, i32 0, i32 1, i32 0
  %_gep4623 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID4621, i32 0, i32 1, i32 1
  %_gep4624 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID4621, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep4622
  store i64 0, i64* %_gep4623
  store i64 1, i64* %_gep4624
  %_arrayUID4620 = bitcast { i64, [3 x i64] }* %_atomArrUID4621 to { i64, [0 x i64] }*
  %_atomArrUID4631 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID4636 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID4631, i32 0, i32 0
  store i64 2, i64* %_idxUID4636
  %_gep4632 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID4631, i32 0, i32 1, i32 0
  %_gep4633 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID4631, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID4610, { i64, [0 x i64] }** %_gep4632
  store { i64, [0 x i64] }* %_arrayUID4620, { i64, [0 x i64] }** %_gep4633
  %_arrayUID4630 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID4631 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID4630, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4638
  %_atomArrUID4641 = alloca { i64, [4 x i64] }
  %_idxUID4650 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4641, i32 0, i32 0
  store i64 4, i64* %_idxUID4650
  %_gep4642 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4641, i32 0, i32 1, i32 0
  %_gep4643 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4641, i32 0, i32 1, i32 1
  %_gep4644 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4641, i32 0, i32 1, i32 2
  %_gep4645 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4641, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep4642
  store i64 2, i64* %_gep4643
  store i64 3, i64* %_gep4644
  store i64 1, i64* %_gep4645
  %_arrayUID4640 = bitcast { i64, [4 x i64] }* %_atomArrUID4641 to { i64, [0 x i64] }*
  %_atomArrUID4653 = alloca { i64, [4 x i64] }
  %_idxUID4662 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4653, i32 0, i32 0
  store i64 4, i64* %_idxUID4662
  %_gep4654 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4653, i32 0, i32 1, i32 0
  %_gep4655 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4653, i32 0, i32 1, i32 1
  %_gep4656 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4653, i32 0, i32 1, i32 2
  %_gep4657 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4653, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep4654
  store i64 2, i64* %_gep4655
  store i64 2, i64* %_gep4656
  store i64 2, i64* %_gep4657
  %_arrayUID4652 = bitcast { i64, [4 x i64] }* %_atomArrUID4653 to { i64, [0 x i64] }*
  %_atomArrUID4665 = alloca { i64, [4 x i64] }
  %_idxUID4674 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4665, i32 0, i32 0
  store i64 4, i64* %_idxUID4674
  %_gep4666 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4665, i32 0, i32 1, i32 0
  %_gep4667 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4665, i32 0, i32 1, i32 1
  %_gep4668 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4665, i32 0, i32 1, i32 2
  %_gep4669 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4665, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep4666
  store i64 2, i64* %_gep4667
  store i64 1, i64* %_gep4668
  store i64 4, i64* %_gep4669
  %_arrayUID4664 = bitcast { i64, [4 x i64] }* %_atomArrUID4665 to { i64, [0 x i64] }*
  %_atomArrUID4677 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID4684 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID4677, i32 0, i32 0
  store i64 3, i64* %_idxUID4684
  %_gep4678 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID4677, i32 0, i32 1, i32 0
  %_gep4679 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID4677, i32 0, i32 1, i32 1
  %_gep4680 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID4677, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_arrayUID4640, { i64, [0 x i64] }** %_gep4678
  store { i64, [0 x i64] }* %_arrayUID4652, { i64, [0 x i64] }** %_gep4679
  store { i64, [0 x i64] }* %_arrayUID4664, { i64, [0 x i64] }** %_gep4680
  %_arrayUID4676 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID4677 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID4676, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4686
  %_atomArrUID4689 = alloca { i64, [4 x i64] }
  %_idxUID4698 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4689, i32 0, i32 0
  store i64 4, i64* %_idxUID4698
  %_gep4690 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4689, i32 0, i32 1, i32 0
  %_gep4691 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4689, i32 0, i32 1, i32 1
  %_gep4692 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4689, i32 0, i32 1, i32 2
  %_gep4693 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4689, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep4690
  store i64 0, i64* %_gep4691
  store i64 0, i64* %_gep4692
  store i64 0, i64* %_gep4693
  %_arrayUID4688 = bitcast { i64, [4 x i64] }* %_atomArrUID4689 to { i64, [0 x i64] }*
  %_atomArrUID4701 = alloca { i64, [4 x i64] }
  %_idxUID4710 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4701, i32 0, i32 0
  store i64 4, i64* %_idxUID4710
  %_gep4702 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4701, i32 0, i32 1, i32 0
  %_gep4703 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4701, i32 0, i32 1, i32 1
  %_gep4704 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4701, i32 0, i32 1, i32 2
  %_gep4705 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID4701, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep4702
  store i64 0, i64* %_gep4703
  store i64 0, i64* %_gep4704
  store i64 0, i64* %_gep4705
  %_arrayUID4700 = bitcast { i64, [4 x i64] }* %_atomArrUID4701 to { i64, [0 x i64] }*
  %_atomArrUID4713 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID4718 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID4713, i32 0, i32 0
  store i64 2, i64* %_idxUID4718
  %_gep4714 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID4713, i32 0, i32 1, i32 0
  %_gep4715 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID4713, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID4688, { i64, [0 x i64] }** %_gep4714
  store { i64, [0 x i64] }* %_arrayUID4700, { i64, [0 x i64] }** %_gep4715
  %_arrayUID4712 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID4713 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID4712, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4720
  %_locRef4722 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4638
  %_locRef4723 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4686
  %_locRef4724 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4720
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef4722, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4723, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4724)
  %_locRef4726 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4720
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef4726, i64 2)
  %_locRef4728 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4638
  %_locRef4729 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4686
  %_locRef4730 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4720
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef4728, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4729, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4730)
  %_locRef4732 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId4720
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef4732, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_args4537 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_args4538 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_args4539 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId4543 = alloca i64
  %_localId4549 = alloca i64
  %_localId4555 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_args4537
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_args4538
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_args4539
  store i64 0, i64* %_localId4543
  %_locRef4545 = load i64, i64* %_localId4543
  %_bop4546 = icmp slt i64 %_locRef4545, 2
  br i1 %_bop4546, label %_while_body_jmp4548, label %_while_end_jmp4547
_while_body_jmp4548:
  store i64 0, i64* %_localId4549
  %_locRef4551 = load i64, i64* %_localId4549
  %_bop4552 = icmp slt i64 %_locRef4551, 4
  br i1 %_bop4552, label %_while_body_jmp4554, label %_while_end_jmp4553
_while_body_jmp4554:
  store i64 0, i64* %_localId4555
  %_locRef4557 = load i64, i64* %_localId4555
  %_bop4558 = icmp slt i64 %_locRef4557, 3
  br i1 %_bop4558, label %_while_body_jmp4560, label %_while_end_jmp4559
_while_body_jmp4560:
  %_locRef4561 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4539
  %_locRef4562 = load i64, i64* %_localId4543
  %_idxUID4563 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4561, i32 0, i32 1, i64 %_locRef4562
  %_getArrUID4564 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID4563
  %_locRef4565 = load i64, i64* %_localId4549
  %_locRef4566 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4539
  %_locRef4567 = load i64, i64* %_localId4543
  %_idxUID4568 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4566, i32 0, i32 1, i64 %_locRef4567
  %_getArrUID4569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID4568
  %_locRef4570 = load i64, i64* %_localId4549
  %_idxUID4571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID4569, i32 0, i32 1, i64 %_locRef4570
  %_getArrUID4572 = load i64, i64* %_idxUID4571
  %_locRef4573 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4537
  %_locRef4574 = load i64, i64* %_localId4543
  %_idxUID4575 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4573, i32 0, i32 1, i64 %_locRef4574
  %_getArrUID4576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID4575
  %_locRef4577 = load i64, i64* %_localId4555
  %_idxUID4578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID4576, i32 0, i32 1, i64 %_locRef4577
  %_getArrUID4579 = load i64, i64* %_idxUID4578
  %_locRef4580 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4538
  %_locRef4581 = load i64, i64* %_localId4555
  %_idxUID4582 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4580, i32 0, i32 1, i64 %_locRef4581
  %_getArrUID4583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID4582
  %_locRef4584 = load i64, i64* %_localId4549
  %_idxUID4585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID4583, i32 0, i32 1, i64 %_locRef4584
  %_getArrUID4586 = load i64, i64* %_idxUID4585
  %_bop4587 = mul i64 %_getArrUID4579, %_getArrUID4586
  %_bop4588 = add i64 %_getArrUID4572, %_bop4587
  %_arridx4589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID4564, i32 0, i32 1, i64 %_locRef4565
  store i64 %_bop4588, i64* %_arridx4589
  %_locRef4591 = load i64, i64* %_localId4555
  %_bop4592 = add i64 %_locRef4591, 1
  store i64 %_bop4592, i64* %_localId4555
  %_locRef4594 = load i64, i64* %_localId4555
  %_bop4595 = icmp slt i64 %_locRef4594, 3
  br i1 %_bop4595, label %_while_body_jmp4560, label %_while_end_jmp4559
_while_end_jmp4559:
  %_locRef4596 = load i64, i64* %_localId4549
  %_bop4597 = add i64 %_locRef4596, 1
  store i64 %_bop4597, i64* %_localId4549
  %_locRef4599 = load i64, i64* %_localId4549
  %_bop4600 = icmp slt i64 %_locRef4599, 4
  br i1 %_bop4600, label %_while_body_jmp4554, label %_while_end_jmp4553
_while_end_jmp4553:
  %_locRef4601 = load i64, i64* %_localId4543
  %_bop4602 = add i64 %_locRef4601, 1
  store i64 %_bop4602, i64* %_localId4543
  %_locRef4604 = load i64, i64* %_localId4543
  %_bop4605 = icmp slt i64 %_locRef4604, 2
  br i1 %_bop4605, label %_while_body_jmp4548, label %_while_end_jmp4547
_while_end_jmp4547:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_args4497 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_args4498 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_args4499 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId4503 = alloca i64
  %_localId4509 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_args4497
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_args4498
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_args4499
  store i64 0, i64* %_localId4503
  %_locRef4505 = load i64, i64* %_localId4503
  %_bop4506 = icmp slt i64 %_locRef4505, 2
  br i1 %_bop4506, label %_while_body_jmp4508, label %_while_end_jmp4507
_while_body_jmp4508:
  store i64 0, i64* %_localId4509
  %_locRef4511 = load i64, i64* %_localId4509
  %_bop4512 = icmp slt i64 %_locRef4511, 4
  br i1 %_bop4512, label %_while_body_jmp4514, label %_while_end_jmp4513
_while_body_jmp4514:
  %_locRef4515 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4499
  %_locRef4516 = load i64, i64* %_localId4503
  %_idxUID4517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4515, i32 0, i32 1, i64 %_locRef4516
  %_getArrUID4518 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID4517
  %_locRef4519 = load i64, i64* %_localId4509
  %_locRef4520 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4497
  %_locRef4521 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4498
  %_locRef4522 = load i64, i64* %_localId4503
  %_locRef4523 = load i64, i64* %_localId4509
  %_callUID4524 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef4520, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4521, i64 %_locRef4522, i64 %_locRef4523)
  %_arridx4525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID4518, i32 0, i32 1, i64 %_locRef4519
  store i64 %_callUID4524, i64* %_arridx4525
  %_locRef4527 = load i64, i64* %_localId4509
  %_bop4528 = add i64 %_locRef4527, 1
  store i64 %_bop4528, i64* %_localId4509
  %_locRef4530 = load i64, i64* %_localId4509
  %_bop4531 = icmp slt i64 %_locRef4530, 4
  br i1 %_bop4531, label %_while_body_jmp4514, label %_while_end_jmp4513
_while_end_jmp4513:
  %_locRef4532 = load i64, i64* %_localId4503
  %_bop4533 = add i64 %_locRef4532, 1
  store i64 %_bop4533, i64* %_localId4503
  %_locRef4535 = load i64, i64* %_localId4503
  %_bop4536 = icmp slt i64 %_locRef4535, 2
  br i1 %_bop4536, label %_while_body_jmp4508, label %_while_end_jmp4507
_while_end_jmp4507:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_args4457 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_args4458 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_args4459 = alloca i64
  %_args4460 = alloca i64
  %_localId4465 = alloca i64
  %_localId4467 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_args4457
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_args4458
  store i64 %row, i64* %_args4459
  store i64 %col, i64* %_args4460
  store i64 0, i64* %_localId4465
  store i64 0, i64* %_localId4467
  %_locRef4469 = load i64, i64* %_localId4467
  %_bop4470 = icmp slt i64 %_locRef4469, 3
  br i1 %_bop4470, label %_while_body_jmp4472, label %_while_end_jmp4471
_while_body_jmp4472:
  %_locRef4473 = load i64, i64* %_localId4465
  %_locRef4474 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4457
  %_locRef4475 = load i64, i64* %_args4459
  %_idxUID4476 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4474, i32 0, i32 1, i64 %_locRef4475
  %_getArrUID4477 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID4476
  %_locRef4478 = load i64, i64* %_localId4467
  %_idxUID4479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID4477, i32 0, i32 1, i64 %_locRef4478
  %_getArrUID4480 = load i64, i64* %_idxUID4479
  %_locRef4481 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4458
  %_locRef4482 = load i64, i64* %_localId4467
  %_idxUID4483 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4481, i32 0, i32 1, i64 %_locRef4482
  %_getArrUID4484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID4483
  %_locRef4485 = load i64, i64* %_args4460
  %_idxUID4486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID4484, i32 0, i32 1, i64 %_locRef4485
  %_getArrUID4487 = load i64, i64* %_idxUID4486
  %_bop4488 = mul i64 %_getArrUID4480, %_getArrUID4487
  %_bop4489 = add i64 %_locRef4473, %_bop4488
  store i64 %_bop4489, i64* %_localId4465
  %_locRef4491 = load i64, i64* %_localId4467
  %_bop4492 = add i64 %_locRef4491, 1
  store i64 %_bop4492, i64* %_localId4467
  %_locRef4494 = load i64, i64* %_localId4467
  %_bop4495 = icmp slt i64 %_locRef4494, 3
  br i1 %_bop4495, label %_while_body_jmp4472, label %_while_end_jmp4471
_while_end_jmp4471:
  %_locRef4496 = load i64, i64* %_localId4465
  ret i64 %_locRef4496
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_args4413 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_args4414 = alloca i64
  %_localId4417 = alloca i64
  %_localId4424 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_args4413
  store i64 %n, i64* %_args4414
  store i64 0, i64* %_localId4417
  %_locRef4419 = load i64, i64* %_localId4417
  %_locRef4420 = load i64, i64* %_args4414
  %_bop4421 = icmp slt i64 %_locRef4419, %_locRef4420
  br i1 %_bop4421, label %_while_body_jmp4423, label %_while_end_jmp4422
_while_body_jmp4423:
  store i64 0, i64* %_localId4424
  %_locRef4426 = load i64, i64* %_localId4424
  %_bop4427 = icmp slt i64 %_locRef4426, 4
  br i1 %_bop4427, label %_while_body_jmp4429, label %_while_end_jmp4428
_while_body_jmp4429:
  %_locRef4430 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args4413
  %_locRef4431 = load i64, i64* %_localId4417
  %_idxUID4432 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef4430, i32 0, i32 1, i64 %_locRef4431
  %_getArrUID4433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID4432
  %_locRef4434 = load i64, i64* %_localId4424
  %_idxUID4435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID4433, i32 0, i32 1, i64 %_locRef4434
  %_getArrUID4436 = load i64, i64* %_idxUID4435
  call void @print_int(i64 %_getArrUID4436)
  %_stringp4438 = load i8*, i8** @_string4439
  call void @print_string(i8* %_stringp4438)
  %_locRef4442 = load i64, i64* %_localId4424
  %_bop4443 = add i64 %_locRef4442, 1
  store i64 %_bop4443, i64* %_localId4424
  %_locRef4445 = load i64, i64* %_localId4424
  %_bop4446 = icmp slt i64 %_locRef4445, 4
  br i1 %_bop4446, label %_while_body_jmp4429, label %_while_end_jmp4428
_while_end_jmp4428:
  %_stringp4447 = load i8*, i8** @_string4448
  call void @print_string(i8* %_stringp4447)
  %_locRef4451 = load i64, i64* %_localId4417
  %_bop4452 = add i64 %_locRef4451, 1
  store i64 %_bop4452, i64* %_localId4417
  %_locRef4454 = load i64, i64* %_localId4417
  %_locRef4455 = load i64, i64* %_args4414
  %_bop4456 = icmp slt i64 %_locRef4454, %_locRef4455
  br i1 %_bop4456, label %_while_body_jmp4423, label %_while_end_jmp4422
_while_end_jmp4422:
  ret void
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
