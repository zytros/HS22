; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_a1618) {
  %_a1619 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1618, { i64, [0 x { i64, [0 x i64] }*] }** %_a1619
  %_a1621 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1619
  %_tmp1623 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a1621 to i64*
  call void @oat_assert_array_length(i64* %_tmp1623, i64 1)
  %_index_ptr1624 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1621, i32 0, i32 1, i32 1
  %_index1625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1624
  %_tmp1627 = bitcast { i64, [0 x i64] }* %_index1625 to i64*
  call void @oat_assert_array_length(i64* %_tmp1627, i64 1)
  %_index_ptr1628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1625, i32 0, i32 1, i32 1
  %_index1629 = load i64, i64* %_index_ptr1628
  ret i64 %_index1629
}

define i64 @g(i64 %_x1557) {
  %_x1558 = alloca i64
  %_i1564 = alloca i64
  %_j1581 = alloca i64
  %_arr1607 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_x1557, i64* %_x1558
  %_raw_array1562 = call i64* @oat_alloc_array(i64 3)
  %_array1563 = bitcast i64* %_raw_array1562 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_1561 = alloca i64
  store i64 3, i64* %_bnd_1561
  %_ptr_1560 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1563, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1560
  store i64 0, i64* %_i1564
  br label %_cond1571
_body1570:
  %__ptr_15601572 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1560
  %_i1573 = load i64, i64* %_i1564
  %_tmp1575 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_15601572 to i64*
  call void @oat_assert_array_length(i64* %_tmp1575, i64 %_i1573)
  %_index_ptr1576 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_15601572, i32 0, i32 1, i64 %_i1573
  %_raw_array1579 = call i64* @oat_alloc_array(i64 3)
  %_array1580 = bitcast i64* %_raw_array1579 to { i64, [0 x i64] }*
  %_bnd_1578 = alloca i64
  store i64 3, i64* %_bnd_1578
  %_ptr_1577 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1580, { i64, [0 x i64] }** %_ptr_1577
  store i64 0, i64* %_j1581
  br label %_cond1588
_body1587:
  %__ptr_15771589 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1577
  %_j1590 = load i64, i64* %_j1581
  %_tmp1592 = bitcast { i64, [0 x i64] }* %__ptr_15771589 to i64*
  call void @oat_assert_array_length(i64* %_tmp1592, i64 %_j1590)
  %_index_ptr1593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_15771589, i32 0, i32 1, i64 %_j1590
  %_x1594 = load i64, i64* %_x1558
  store i64 %_x1594, i64* %_index_ptr1593
  %_j1596 = load i64, i64* %_j1581
  %_bop1597 = add i64 %_j1596, 1
  store i64 %_bop1597, i64* %_j1581
  br label %_cond1588
_cond1571:
  %_i1566 = load i64, i64* %_i1564
  %__bnd_15611567 = load i64, i64* %_bnd_1561
  %_bop1568 = icmp slt i64 %_i1566, %__bnd_15611567
  br i1 %_bop1568, label %_body1570, label %_post1569
_cond1588:
  %_j1583 = load i64, i64* %_j1581
  %__bnd_15781584 = load i64, i64* %_bnd_1578
  %_bop1585 = icmp slt i64 %_j1583, %__bnd_15781584
  br i1 %_bop1585, label %_body1587, label %_post1586
_post1569:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1563, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1607
  %_arr1609 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1607
  %_tmp1611 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr1609 to i64*
  call void @oat_assert_array_length(i64* %_tmp1611, i64 1)
  %_index_ptr1612 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1609, i32 0, i32 1, i32 1
  %_index1613 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1612
  %_tmp1615 = bitcast { i64, [0 x i64] }* %_index1613 to i64*
  call void @oat_assert_array_length(i64* %_tmp1615, i64 1)
  %_index_ptr1616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1613, i32 0, i32 1, i32 1
  %_index1617 = load i64, i64* %_index_ptr1616
  ret i64 %_index1617
_post1586:
  store { i64, [0 x i64] }* %_array1580, { i64, [0 x i64] }** %_index_ptr1576
  %_i1602 = load i64, i64* %_i1564
  %_bop1603 = add i64 %_i1602, 1
  store i64 %_bop1603, i64* %_i1564
  br label %_cond1571
}

define i64 @program(i64 %_argc1379, { i64, [0 x i8*] }* %_argv1376) {
  %_i1386 = alloca i64
  %_j1403 = alloca i64
  %_a1429 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i1435 = alloca i64
  %_j1452 = alloca i64
  %_arr1480 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i1486 = alloca i64
  %_j1503 = alloca i64
  %_arr01531 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1384 = call i64* @oat_alloc_array(i64 3)
  %_array1385 = bitcast i64* %_raw_array1384 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_1383 = alloca i64
  store i64 3, i64* %_bnd_1383
  %_ptr_1382 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1385, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1382
  store i64 0, i64* %_i1386
  br label %_cond1393
_body1392:
  %__ptr_13821394 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1382
  %_i1395 = load i64, i64* %_i1386
  %_tmp1397 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_13821394 to i64*
  call void @oat_assert_array_length(i64* %_tmp1397, i64 %_i1395)
  %_index_ptr1398 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_13821394, i32 0, i32 1, i64 %_i1395
  %_raw_array1401 = call i64* @oat_alloc_array(i64 3)
  %_array1402 = bitcast i64* %_raw_array1401 to { i64, [0 x i64] }*
  %_bnd_1400 = alloca i64
  store i64 3, i64* %_bnd_1400
  %_ptr_1399 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1402, { i64, [0 x i64] }** %_ptr_1399
  store i64 0, i64* %_j1403
  br label %_cond1410
_body1409:
  %__ptr_13991411 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1399
  %_j1412 = load i64, i64* %_j1403
  %_tmp1414 = bitcast { i64, [0 x i64] }* %__ptr_13991411 to i64*
  call void @oat_assert_array_length(i64* %_tmp1414, i64 %_j1412)
  %_index_ptr1415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_13991411, i32 0, i32 1, i64 %_j1412
  %_j1416 = load i64, i64* %_j1403
  store i64 %_j1416, i64* %_index_ptr1415
  %_j1418 = load i64, i64* %_j1403
  %_bop1419 = add i64 %_j1418, 1
  store i64 %_bop1419, i64* %_j1403
  br label %_cond1410
_body1441:
  %__ptr_14311443 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1431
  %_i1444 = load i64, i64* %_i1435
  %_tmp1446 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_14311443 to i64*
  call void @oat_assert_array_length(i64* %_tmp1446, i64 %_i1444)
  %_index_ptr1447 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_14311443, i32 0, i32 1, i64 %_i1444
  %_raw_array1450 = call i64* @oat_alloc_array(i64 5)
  %_array1451 = bitcast i64* %_raw_array1450 to { i64, [0 x i64] }*
  %_bnd_1449 = alloca i64
  store i64 5, i64* %_bnd_1449
  %_ptr_1448 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1451, { i64, [0 x i64] }** %_ptr_1448
  store i64 0, i64* %_j1452
  br label %_cond1459
_body1458:
  %__ptr_14481460 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1448
  %_j1461 = load i64, i64* %_j1452
  %_tmp1463 = bitcast { i64, [0 x i64] }* %__ptr_14481460 to i64*
  call void @oat_assert_array_length(i64* %_tmp1463, i64 %_j1461)
  %_index_ptr1464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_14481460, i32 0, i32 1, i64 %_j1461
  %_i1465 = load i64, i64* %_i1435
  %_j1466 = load i64, i64* %_j1452
  %_bop1467 = mul i64 %_i1465, %_j1466
  store i64 %_bop1467, i64* %_index_ptr1464
  %_j1469 = load i64, i64* %_j1452
  %_bop1470 = add i64 %_j1469, 1
  store i64 %_bop1470, i64* %_j1452
  br label %_cond1459
_body1492:
  %__ptr_14821494 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1482
  %_i1495 = load i64, i64* %_i1486
  %_tmp1497 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_14821494 to i64*
  call void @oat_assert_array_length(i64* %_tmp1497, i64 %_i1495)
  %_index_ptr1498 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_14821494, i32 0, i32 1, i64 %_i1495
  %_raw_array1501 = call i64* @oat_alloc_array(i64 3)
  %_array1502 = bitcast i64* %_raw_array1501 to { i64, [0 x i64] }*
  %_bnd_1500 = alloca i64
  store i64 3, i64* %_bnd_1500
  %_ptr_1499 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1502, { i64, [0 x i64] }** %_ptr_1499
  store i64 0, i64* %_j1503
  br label %_cond1510
_body1509:
  %__ptr_14991511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1499
  %_j1512 = load i64, i64* %_j1503
  %_tmp1514 = bitcast { i64, [0 x i64] }* %__ptr_14991511 to i64*
  call void @oat_assert_array_length(i64* %_tmp1514, i64 %_j1512)
  %_index_ptr1515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_14991511, i32 0, i32 1, i64 %_j1512
  %_i1516 = load i64, i64* %_i1486
  %_j1517 = load i64, i64* %_j1503
  %_bop1518 = mul i64 %_i1516, %_j1517
  store i64 %_bop1518, i64* %_index_ptr1515
  %_j1520 = load i64, i64* %_j1503
  %_bop1521 = add i64 %_j1520, 1
  store i64 %_bop1521, i64* %_j1503
  br label %_cond1510
_cond1393:
  %_i1388 = load i64, i64* %_i1386
  %__bnd_13831389 = load i64, i64* %_bnd_1383
  %_bop1390 = icmp slt i64 %_i1388, %__bnd_13831389
  br i1 %_bop1390, label %_body1392, label %_post1391
_cond1410:
  %_j1405 = load i64, i64* %_j1403
  %__bnd_14001406 = load i64, i64* %_bnd_1400
  %_bop1407 = icmp slt i64 %_j1405, %__bnd_14001406
  br i1 %_bop1407, label %_body1409, label %_post1408
_cond1442:
  %_i1437 = load i64, i64* %_i1435
  %__bnd_14321438 = load i64, i64* %_bnd_1432
  %_bop1439 = icmp slt i64 %_i1437, %__bnd_14321438
  br i1 %_bop1439, label %_body1441, label %_post1440
_cond1459:
  %_j1454 = load i64, i64* %_j1452
  %__bnd_14491455 = load i64, i64* %_bnd_1449
  %_bop1456 = icmp slt i64 %_j1454, %__bnd_14491455
  br i1 %_bop1456, label %_body1458, label %_post1457
_cond1493:
  %_i1488 = load i64, i64* %_i1486
  %__bnd_14831489 = load i64, i64* %_bnd_1483
  %_bop1490 = icmp slt i64 %_i1488, %__bnd_14831489
  br i1 %_bop1490, label %_body1492, label %_post1491
_cond1510:
  %_j1505 = load i64, i64* %_j1503
  %__bnd_15001506 = load i64, i64* %_bnd_1500
  %_bop1507 = icmp slt i64 %_j1505, %__bnd_15001506
  br i1 %_bop1507, label %_body1509, label %_post1508
_post1391:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1385, { i64, [0 x { i64, [0 x i64] }*] }** %_a1429
  %_raw_array1433 = call i64* @oat_alloc_array(i64 4)
  %_array1434 = bitcast i64* %_raw_array1433 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_1432 = alloca i64
  store i64 4, i64* %_bnd_1432
  %_ptr_1431 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1434, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1431
  store i64 0, i64* %_i1435
  br label %_cond1442
_post1408:
  store { i64, [0 x i64] }* %_array1402, { i64, [0 x i64] }** %_index_ptr1398
  %_i1424 = load i64, i64* %_i1386
  %_bop1425 = add i64 %_i1424, 1
  store i64 %_bop1425, i64* %_i1386
  br label %_cond1393
_post1440:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1434, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1480
  %_raw_array1484 = call i64* @oat_alloc_array(i64 3)
  %_array1485 = bitcast i64* %_raw_array1484 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_1483 = alloca i64
  store i64 3, i64* %_bnd_1483
  %_ptr_1482 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1485, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1482
  store i64 0, i64* %_i1486
  br label %_cond1493
_post1457:
  store { i64, [0 x i64] }* %_array1451, { i64, [0 x i64] }** %_index_ptr1447
  %_i1475 = load i64, i64* %_i1435
  %_bop1476 = add i64 %_i1475, 1
  store i64 %_bop1476, i64* %_i1435
  br label %_cond1442
_post1491:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1485, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01531
  %_arr1533 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1480
  %_tmp1535 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr1533 to i64*
  call void @oat_assert_array_length(i64* %_tmp1535, i64 3)
  %_index_ptr1536 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1533, i32 0, i32 1, i32 3
  %_index1537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1536
  %_tmp1539 = bitcast { i64, [0 x i64] }* %_index1537 to i64*
  call void @oat_assert_array_length(i64* %_tmp1539, i64 4)
  %_index_ptr1540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1537, i32 0, i32 1, i32 4
  %_index1541 = load i64, i64* %_index_ptr1540
  %_a1542 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1429
  %_tmp1544 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a1542 to i64*
  call void @oat_assert_array_length(i64* %_tmp1544, i64 1)
  %_index_ptr1545 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1542, i32 0, i32 1, i32 1
  %_index1546 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1545
  %_tmp1548 = bitcast { i64, [0 x i64] }* %_index1546 to i64*
  call void @oat_assert_array_length(i64* %_tmp1548, i64 2)
  %_index_ptr1549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1546, i32 0, i32 1, i32 2
  %_index1550 = load i64, i64* %_index_ptr1549
  %_bop1551 = add i64 %_index1541, %_index1550
  %_arr01552 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01531
  %_result1553 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01552)
  %_bop1554 = add i64 %_bop1551, %_result1553
  %_result1555 = call i64 @g(i64 4)
  %_bop1556 = add i64 %_bop1554, %_result1555
  ret i64 %_bop1556
_post1508:
  store { i64, [0 x i64] }* %_array1502, { i64, [0 x i64] }** %_index_ptr1498
  %_i1526 = load i64, i64* %_i1486
  %_bop1527 = add i64 %_i1526, 1
  store i64 %_bop1527, i64* %_i1486
  br label %_cond1493
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
