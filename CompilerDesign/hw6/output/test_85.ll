; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1633, { i64, [0 x i8*] }* %_argv1630) {
  %_x1636 = alloca i64
  %_i1642 = alloca i64
  %_j1659 = alloca i64
  %_a1689 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1692 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 10, i64* %_x1636
  %_raw_array1640 = call i64* @oat_alloc_array(i64 3)
  %_array1641 = bitcast i64* %_raw_array1640 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_1639 = alloca i64
  store i64 3, i64* %_bnd_1639
  %_ptr_1638 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1641, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1638
  store i64 0, i64* %_i1642
  br label %_cond1649
_body1648:
  %__ptr_16381650 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_1638
  %_i1651 = load i64, i64* %_i1642
  %_tmp1653 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_16381650 to i64*
  call void @oat_assert_array_length(i64* %_tmp1653, i64 %_i1651)
  %_index_ptr1654 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_16381650, i32 0, i32 1, i64 %_i1651
  %_raw_array1657 = call i64* @oat_alloc_array(i64 3)
  %_array1658 = bitcast i64* %_raw_array1657 to { i64, [0 x i64] }*
  %_bnd_1656 = alloca i64
  store i64 3, i64* %_bnd_1656
  %_ptr_1655 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1658, { i64, [0 x i64] }** %_ptr_1655
  store i64 0, i64* %_j1659
  br label %_cond1666
_body1665:
  %__ptr_16551667 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1655
  %_j1668 = load i64, i64* %_j1659
  %_tmp1670 = bitcast { i64, [0 x i64] }* %__ptr_16551667 to i64*
  call void @oat_assert_array_length(i64* %_tmp1670, i64 %_j1668)
  %_index_ptr1671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_16551667, i32 0, i32 1, i64 %_j1668
  %_x1672 = load i64, i64* %_x1636
  %_i1673 = load i64, i64* %_i1642
  %_bop1674 = add i64 %_x1672, %_i1673
  %_j1675 = load i64, i64* %_j1659
  %_bop1676 = add i64 %_bop1674, %_j1675
  store i64 %_bop1676, i64* %_index_ptr1671
  %_j1678 = load i64, i64* %_j1659
  %_bop1679 = add i64 %_j1678, 1
  store i64 %_bop1679, i64* %_j1659
  br label %_cond1666
_cond1649:
  %_i1644 = load i64, i64* %_i1642
  %__bnd_16391645 = load i64, i64* %_bnd_1639
  %_bop1646 = icmp slt i64 %_i1644, %__bnd_16391645
  br i1 %_bop1646, label %_body1648, label %_post1647
_cond1666:
  %_j1661 = load i64, i64* %_j1659
  %__bnd_16561662 = load i64, i64* %_bnd_1656
  %_bop1663 = icmp slt i64 %_j1661, %__bnd_16561662
  br i1 %_bop1663, label %_body1665, label %_post1664
_post1647:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1641, { i64, [0 x { i64, [0 x i64] }*] }** %_a1689
  %_a1691 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1689
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1691, { i64, [0 x { i64, [0 x i64] }*] }** %_b1692
  %_b1694 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1692
  %_tmp1696 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_b1694 to i64*
  call void @oat_assert_array_length(i64* %_tmp1696, i64 2)
  %_index_ptr1697 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1694, i32 0, i32 1, i32 2
  %_index1698 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1697
  %_tmp1700 = bitcast { i64, [0 x i64] }* %_index1698 to i64*
  call void @oat_assert_array_length(i64* %_tmp1700, i64 1)
  %_index_ptr1701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1698, i32 0, i32 1, i32 1
  %_index1702 = load i64, i64* %_index_ptr1701
  ret i64 %_index1702
_post1664:
  store { i64, [0 x i64] }* %_array1658, { i64, [0 x i64] }** %_index_ptr1654
  %_i1684 = load i64, i64* %_i1642
  %_bop1685 = add i64 %_i1684, 1
  store i64 %_bop1685, i64* %_i1642
  br label %_cond1649
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
