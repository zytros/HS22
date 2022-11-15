; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_args6558 = alloca { i64, [0 x i64] }*
  %_args6559 = alloca i64
  %_args6560 = alloca i64
  %_localId6568 = alloca { i64, [0 x i64] }*
  %_localId6570 = alloca i64
  %_localId6590 = alloca i1
  %_localId6605 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_args6558
  store i64 %len, i64* %_args6559
  store i64 %insertee, i64* %_args6560
  %_locRef6564 = load i64, i64* %_args6559
  %_bop6565 = add i64 %_locRef6564, 1
  %_raw_array6566 = call i64* @oat_alloc_array(i64 %_bop6565)
  %_array6567 = bitcast i64* %_raw_array6566 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6567, { i64, [0 x i64] }** %_localId6568
  store i64 0, i64* %_localId6570
  %_locRef6572 = load i64, i64* %_localId6570
  %_locRef6573 = load i64, i64* %_args6559
  %_bop6574 = add i64 %_locRef6573, 1
  %_bop6575 = icmp slt i64 %_locRef6572, %_bop6574
  br i1 %_bop6575, label %_while_body_jmp6577, label %_while_end_jmp6576
_while_body_jmp6577:
  %_locRef6578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6568
  %_locRef6579 = load i64, i64* %_localId6570
  %_uopUID6580 = sub i64 0, 1
  %_arridx6581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6578, i32 0, i32 1, i64 %_locRef6579
  store i64 %_uopUID6580, i64* %_arridx6581
  %_locRef6583 = load i64, i64* %_localId6570
  %_bop6584 = add i64 %_locRef6583, 1
  store i64 %_bop6584, i64* %_localId6570
  %_locRef6586 = load i64, i64* %_localId6570
  %_locRef6587 = load i64, i64* %_args6559
  %_bop6588 = add i64 %_locRef6587, 1
  %_bop6589 = icmp slt i64 %_locRef6586, %_bop6588
  br i1 %_bop6589, label %_while_body_jmp6577, label %_while_end_jmp6576
_while_end_jmp6576:
  store i1 1, i1* %_localId6590
  %_locRef6595 = load i64, i64* %_args6560
  %_locRef6596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6558
  %_idxUID6597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6596, i32 0, i32 1, i32 0
  %_getArrUID6598 = load i64, i64* %_idxUID6597
  %_bop6599 = icmp slt i64 %_locRef6595, %_getArrUID6598
  br i1 %_bop6599, label %_ifTruelbl6592, label %_ifFalselbl6593
_ifTruelbl6592:
  store i1 0, i1* %_localId6590
  %_locRef6601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6568
  %_locRef6602 = load i64, i64* %_args6560
  %_arridx6603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6601, i32 0, i32 1, i32 0
  store i64 %_locRef6602, i64* %_arridx6603
  br label %_ifEndlbl6594
_ifFalselbl6593:
  br label %_ifEndlbl6594
_ifEndlbl6594:
  store i64 0, i64* %_localId6605
  %_locRef6607 = load i64, i64* %_localId6605
  %_locRef6608 = load i64, i64* %_args6559
  %_bop6609 = icmp slt i64 %_locRef6607, %_locRef6608
  br i1 %_bop6609, label %_while_body_jmp6611, label %_while_end_jmp6610
_while_body_jmp6611:
  %_locRef6615 = load i1, i1* %_localId6590
  br i1 %_locRef6615, label %_ifTruelbl6612, label %_ifFalselbl6613
_ifTruelbl6612:
  %_locRef6619 = load i64, i64* %_args6560
  %_locRef6620 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6558
  %_locRef6621 = load i64, i64* %_localId6605
  %_idxUID6622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6620, i32 0, i32 1, i64 %_locRef6621
  %_getArrUID6623 = load i64, i64* %_idxUID6622
  %_bop6624 = icmp sgt i64 %_locRef6619, %_getArrUID6623
  br i1 %_bop6624, label %_ifTruelbl6616, label %_ifFalselbl6617
_ifTruelbl6616:
  store i1 0, i1* %_localId6590
  %_locRef6626 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6568
  %_locRef6627 = load i64, i64* %_localId6605
  %_bop6628 = add i64 %_locRef6627, 1
  %_locRef6629 = load i64, i64* %_args6560
  %_arridx6630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6626, i32 0, i32 1, i64 %_bop6628
  store i64 %_locRef6629, i64* %_arridx6630
  %_locRef6632 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6568
  %_locRef6633 = load i64, i64* %_localId6605
  %_locRef6634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6558
  %_locRef6635 = load i64, i64* %_localId6605
  %_idxUID6636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6634, i32 0, i32 1, i64 %_locRef6635
  %_getArrUID6637 = load i64, i64* %_idxUID6636
  %_arridx6638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6632, i32 0, i32 1, i64 %_locRef6633
  store i64 %_getArrUID6637, i64* %_arridx6638
  br label %_ifEndlbl6618
_ifFalselbl6617:
  %_locRef6640 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6568
  %_locRef6641 = load i64, i64* %_localId6605
  %_locRef6642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6558
  %_locRef6643 = load i64, i64* %_localId6605
  %_idxUID6644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6642, i32 0, i32 1, i64 %_locRef6643
  %_getArrUID6645 = load i64, i64* %_idxUID6644
  %_arridx6646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6640, i32 0, i32 1, i64 %_locRef6641
  store i64 %_getArrUID6645, i64* %_arridx6646
  br label %_ifEndlbl6618
_ifEndlbl6618:
  br label %_ifEndlbl6614
_ifFalselbl6613:
  %_locRef6648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6568
  %_locRef6649 = load i64, i64* %_localId6605
  %_bop6650 = add i64 %_locRef6649, 1
  %_locRef6651 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6558
  %_locRef6652 = load i64, i64* %_localId6605
  %_idxUID6653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6651, i32 0, i32 1, i64 %_locRef6652
  %_getArrUID6654 = load i64, i64* %_idxUID6653
  %_arridx6655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6648, i32 0, i32 1, i64 %_bop6650
  store i64 %_getArrUID6654, i64* %_arridx6655
  br label %_ifEndlbl6614
_ifEndlbl6614:
  %_locRef6657 = load i64, i64* %_localId6605
  %_bop6658 = add i64 %_locRef6657, 1
  store i64 %_bop6658, i64* %_localId6605
  %_locRef6660 = load i64, i64* %_localId6605
  %_locRef6661 = load i64, i64* %_args6559
  %_bop6662 = icmp slt i64 %_locRef6660, %_locRef6661
  br i1 %_bop6662, label %_while_body_jmp6611, label %_while_end_jmp6610
_while_end_jmp6610:
  %_locRef6663 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6568
  ret { i64, [0 x i64] }* %_locRef6663
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_args6518 = alloca { i64, [0 x i64] }*
  %_args6519 = alloca i64
  %_localId6528 = alloca { i64, [0 x i64] }*
  %_localId6536 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_args6518
  store i64 %len, i64* %_args6519
  %_atomArrUID6523 = alloca { i64, [1 x i64] }
  %_idxUID6526 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID6523, i32 0, i32 0
  store i64 1, i64* %_idxUID6526
  %_gep6524 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID6523, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep6524
  %_arrayUID6522 = bitcast { i64, [1 x i64] }* %_atomArrUID6523 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID6522, { i64, [0 x i64] }** %_localId6528
  %_locRef6530 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6528
  %_locRef6531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6518
  %_idxUID6532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6531, i32 0, i32 1, i32 0
  %_getArrUID6533 = load i64, i64* %_idxUID6532
  %_arridx6534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6530, i32 0, i32 1, i32 0
  store i64 %_getArrUID6533, i64* %_arridx6534
  store i64 1, i64* %_localId6536
  %_locRef6538 = load i64, i64* %_localId6536
  %_locRef6539 = load i64, i64* %_args6519
  %_bop6540 = icmp slt i64 %_locRef6538, %_locRef6539
  br i1 %_bop6540, label %_while_body_jmp6542, label %_while_end_jmp6541
_while_body_jmp6542:
  %_locRef6543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6528
  %_locRef6544 = load i64, i64* %_localId6536
  %_locRef6545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args6518
  %_locRef6546 = load i64, i64* %_localId6536
  %_idxUID6547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6545, i32 0, i32 1, i64 %_locRef6546
  %_getArrUID6548 = load i64, i64* %_idxUID6547
  %_callUID6549 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_locRef6543, i64 %_locRef6544, i64 %_getArrUID6548)
  store { i64, [0 x i64] }* %_callUID6549, { i64, [0 x i64] }** %_localId6528
  %_locRef6551 = load i64, i64* %_localId6536
  %_bop6552 = add i64 %_locRef6551, 1
  store i64 %_bop6552, i64* %_localId6536
  %_locRef6554 = load i64, i64* %_localId6536
  %_locRef6555 = load i64, i64* %_args6519
  %_bop6556 = icmp slt i64 %_locRef6554, %_locRef6555
  br i1 %_bop6556, label %_while_body_jmp6542, label %_while_end_jmp6541
_while_end_jmp6541:
  %_locRef6557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6528
  ret { i64, [0 x i64] }* %_locRef6557
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args6489 = alloca i64
  %_args6490 = alloca { i64, [0 x i8*] }*
  %_localId6509 = alloca { i64, [0 x i64] }*
  %_localId6513 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args6489
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args6490
  %_atomArrUID6494 = alloca { i64, [6 x i64] }
  %_idxUID6507 = getelementptr { i64, [6 x i64] }, { i64, [6 x i64] }* %_atomArrUID6494, i32 0, i32 0
  store i64 6, i64* %_idxUID6507
  %_gep6495 = getelementptr { i64, [6 x i64] }, { i64, [6 x i64] }* %_atomArrUID6494, i32 0, i32 1, i32 0
  %_gep6496 = getelementptr { i64, [6 x i64] }, { i64, [6 x i64] }* %_atomArrUID6494, i32 0, i32 1, i32 1
  %_gep6497 = getelementptr { i64, [6 x i64] }, { i64, [6 x i64] }* %_atomArrUID6494, i32 0, i32 1, i32 2
  %_gep6498 = getelementptr { i64, [6 x i64] }, { i64, [6 x i64] }* %_atomArrUID6494, i32 0, i32 1, i32 3
  %_gep6499 = getelementptr { i64, [6 x i64] }, { i64, [6 x i64] }* %_atomArrUID6494, i32 0, i32 1, i32 4
  %_gep6500 = getelementptr { i64, [6 x i64] }, { i64, [6 x i64] }* %_atomArrUID6494, i32 0, i32 1, i32 5
  store i64 13, i64* %_gep6495
  store i64 42, i64* %_gep6496
  store i64 32, i64* %_gep6497
  store i64 3, i64* %_gep6498
  store i64 2, i64* %_gep6499
  store i64 6, i64* %_gep6500
  %_arrayUID6493 = bitcast { i64, [6 x i64] }* %_atomArrUID6494 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID6493, { i64, [0 x i64] }** %_localId6509
  %_locRef6511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6509
  %_callUID6512 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_locRef6511, i64 6)
  store { i64, [0 x i64] }* %_callUID6512, { i64, [0 x i64] }** %_localId6513
  %_locRef6515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6513
  %_idxUID6516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6515, i32 0, i32 1, i32 5
  %_getArrUID6517 = load i64, i64* %_idxUID6516
  ret i64 %_getArrUID6517
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
