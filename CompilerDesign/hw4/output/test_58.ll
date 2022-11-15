; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_args1629 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_args1629
  %_locRef1631 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args1629
  %_idxUID1632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1631, i32 0, i32 1, i32 3
  %_getArrUID1633 = load i64, i64* %_idxUID1632
  ret i64 %_getArrUID1633
}

define { i64, [0 x i64] }* @g() {
  %_localId1626 = alloca { i64, [0 x i64] }*
  %_atomArrUID1615 = alloca { i64, [4 x i64] }
  %_idxUID1624 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1615, i32 0, i32 0
  store i64 4, i64* %_idxUID1624
  %_gep1616 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1615, i32 0, i32 1, i32 0
  %_gep1617 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1615, i32 0, i32 1, i32 1
  %_gep1618 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1615, i32 0, i32 1, i32 2
  %_gep1619 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1615, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep1616
  store i64 1, i64* %_gep1617
  store i64 99, i64* %_gep1618
  store i64 99, i64* %_gep1619
  %_arrayUID1614 = bitcast { i64, [4 x i64] }* %_atomArrUID1615 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID1614, { i64, [0 x i64] }** %_localId1626
  %_locRef1628 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1626
  ret { i64, [0 x i64] }* %_locRef1628
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1501 = alloca i64
  %_args1502 = alloca { i64, [0 x i8*] }*
  %_localId1515 = alloca { i64, [0 x i64] }*
  %_localId1557 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId1559 = alloca i64
  %_localId1562 = alloca { i64, [0 x i64] }*
  %_localId1576 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args1501
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1502
  %_atomArrUID1506 = alloca { i64, [3 x i64] }
  %_idxUID1513 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1506, i32 0, i32 0
  store i64 3, i64* %_idxUID1513
  %_gep1507 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1506, i32 0, i32 1, i32 0
  %_gep1508 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1506, i32 0, i32 1, i32 1
  %_gep1509 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1506, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1507
  store i64 1, i64* %_gep1508
  store i64 99, i64* %_gep1509
  %_arrayUID1505 = bitcast { i64, [3 x i64] }* %_atomArrUID1506 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID1505, { i64, [0 x i64] }** %_localId1515
  %_atomArrUID1518 = alloca { i64, [3 x i64] }
  %_idxUID1525 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1518, i32 0, i32 0
  store i64 3, i64* %_idxUID1525
  %_gep1519 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1518, i32 0, i32 1, i32 0
  %_gep1520 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1518, i32 0, i32 1, i32 1
  %_gep1521 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1518, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1519
  store i64 99, i64* %_gep1520
  store i64 99, i64* %_gep1521
  %_arrayUID1517 = bitcast { i64, [3 x i64] }* %_atomArrUID1518 to { i64, [0 x i64] }*
  %_atomArrUID1528 = alloca { i64, [3 x i64] }
  %_idxUID1535 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1528, i32 0, i32 0
  store i64 3, i64* %_idxUID1535
  %_gep1529 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1528, i32 0, i32 1, i32 0
  %_gep1530 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1528, i32 0, i32 1, i32 1
  %_gep1531 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1528, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1529
  store i64 1, i64* %_gep1530
  store i64 99, i64* %_gep1531
  %_arrayUID1527 = bitcast { i64, [3 x i64] }* %_atomArrUID1528 to { i64, [0 x i64] }*
  %_atomArrUID1538 = alloca { i64, [3 x i64] }
  %_idxUID1545 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1538, i32 0, i32 0
  store i64 3, i64* %_idxUID1545
  %_gep1539 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1538, i32 0, i32 1, i32 0
  %_gep1540 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1538, i32 0, i32 1, i32 1
  %_gep1541 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1538, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1539
  store i64 99, i64* %_gep1540
  store i64 99, i64* %_gep1541
  %_arrayUID1537 = bitcast { i64, [3 x i64] }* %_atomArrUID1538 to { i64, [0 x i64] }*
  %_atomArrUID1548 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID1555 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1548, i32 0, i32 0
  store i64 3, i64* %_idxUID1555
  %_gep1549 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1548, i32 0, i32 1, i32 0
  %_gep1550 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1548, i32 0, i32 1, i32 1
  %_gep1551 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1548, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_arrayUID1517, { i64, [0 x i64] }** %_gep1549
  store { i64, [0 x i64] }* %_arrayUID1527, { i64, [0 x i64] }** %_gep1550
  store { i64, [0 x i64] }* %_arrayUID1537, { i64, [0 x i64] }** %_gep1551
  %_arrayUID1547 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID1548 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1547, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1557
  store i64 1, i64* %_localId1559
  %_callUID1561 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_callUID1561, { i64, [0 x i64] }** %_localId1562
  %_atomArrUID1565 = alloca { i64, [4 x i64] }
  %_idxUID1574 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1565, i32 0, i32 0
  store i64 4, i64* %_idxUID1574
  %_gep1566 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1565, i32 0, i32 1, i32 0
  %_gep1567 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1565, i32 0, i32 1, i32 1
  %_gep1568 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1565, i32 0, i32 1, i32 2
  %_gep1569 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1565, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep1566
  store i64 99, i64* %_gep1567
  store i64 99, i64* %_gep1568
  store i64 1, i64* %_gep1569
  %_arrayUID1564 = bitcast { i64, [4 x i64] }* %_atomArrUID1565 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID1564, { i64, [0 x i64] }** %_localId1576
  %_locRef1578 = load i64, i64* %_localId1559
  %_locRef1579 = load i64, i64* @i
  %_bop1580 = add i64 %_locRef1578, %_locRef1579
  store i64 %_bop1580, i64* %_localId1559
  %_locRef1582 = load i64, i64* %_localId1559
  %_locRef1583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1515
  %_idxUID1584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1583, i32 0, i32 1, i32 1
  %_getArrUID1585 = load i64, i64* %_idxUID1584
  %_bop1586 = add i64 %_locRef1582, %_getArrUID1585
  store i64 %_bop1586, i64* %_localId1559
  %_locRef1588 = load i64, i64* %_localId1559
  %_locRef1589 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1557
  %_idxUID1590 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1589, i32 0, i32 1, i32 1
  %_getArrUID1591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1590
  %_idxUID1592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1591, i32 0, i32 1, i32 1
  %_getArrUID1593 = load i64, i64* %_idxUID1592
  %_bop1594 = add i64 %_locRef1588, %_getArrUID1593
  store i64 %_bop1594, i64* %_localId1559
  %_locRef1596 = load i64, i64* %_localId1559
  %_locRef1597 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1576
  %_idxUID1598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1597, i32 0, i32 1, i32 3
  %_getArrUID1599 = load i64, i64* %_idxUID1598
  %_bop1600 = add i64 %_locRef1596, %_getArrUID1599
  store i64 %_bop1600, i64* %_localId1559
  %_locRef1602 = load i64, i64* %_localId1559
  %_locRef1603 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1576
  %_callUID1604 = call i64 @f({ i64, [0 x i64] }* %_locRef1603)
  %_bop1605 = add i64 %_locRef1602, %_callUID1604
  store i64 %_bop1605, i64* %_localId1559
  %_locRef1607 = load i64, i64* %_localId1559
  %_locRef1608 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1562
  %_idxUID1609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1608, i32 0, i32 1, i32 1
  %_getArrUID1610 = load i64, i64* %_idxUID1609
  %_bop1611 = add i64 %_locRef1607, %_getArrUID1610
  store i64 %_bop1611, i64* %_localId1559
  %_locRef1613 = load i64, i64* %_localId1559
  ret i64 %_locRef1613
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
