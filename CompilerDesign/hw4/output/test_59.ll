; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_args1738 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args1738
  %_locRef1740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args1738
  %_idxUID1741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1740, i32 0, i32 1, i32 1
  %_getArrUID1742 = load i64, i64* %_idxUID1741
  ret i64 %_getArrUID1742
}

define i64 @g(i64 %x) {
  %_args1713 = alloca i64
  %_localId1717 = alloca { i64, [0 x i64] }*
  %_localId1719 = alloca i64
  store i64 %x, i64* %_args1713
  %_raw_array1715 = call i64* @oat_alloc_array(i64 3)
  %_array1716 = bitcast i64* %_raw_array1715 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1716, { i64, [0 x i64] }** %_localId1717
  store i64 0, i64* %_localId1719
  %_locRef1721 = load i64, i64* %_localId1719
  %_bop1722 = icmp slt i64 %_locRef1721, 3
  br i1 %_bop1722, label %_while_body_jmp1724, label %_while_end_jmp1723
_while_body_jmp1724:
  %_locRef1725 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1717
  %_locRef1726 = load i64, i64* %_localId1719
  %_locRef1727 = load i64, i64* %_args1713
  %_arridx1728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1725, i32 0, i32 1, i64 %_locRef1726
  store i64 %_locRef1727, i64* %_arridx1728
  %_locRef1730 = load i64, i64* %_localId1719
  %_bop1731 = add i64 %_locRef1730, 1
  store i64 %_bop1731, i64* %_localId1719
  %_locRef1733 = load i64, i64* %_localId1719
  %_bop1734 = icmp slt i64 %_locRef1733, 3
  br i1 %_bop1734, label %_while_body_jmp1724, label %_while_end_jmp1723
_while_end_jmp1723:
  %_locRef1735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1717
  %_idxUID1736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1735, i32 0, i32 1, i32 1
  %_getArrUID1737 = load i64, i64* %_idxUID1736
  ret i64 %_getArrUID1737
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1634 = alloca i64
  %_args1635 = alloca { i64, [0 x i8*] }*
  %_localId1640 = alloca { i64, [0 x i64] }*
  %_localId1642 = alloca i64
  %_localId1660 = alloca { i64, [0 x i64] }*
  %_localId1662 = alloca i64
  %_localId1682 = alloca { i64, [0 x i64] }*
  %_localId1684 = alloca i64
  store i64 %argc, i64* %_args1634
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1635
  %_raw_array1638 = call i64* @oat_alloc_array(i64 3)
  %_array1639 = bitcast i64* %_raw_array1638 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1639, { i64, [0 x i64] }** %_localId1640
  store i64 0, i64* %_localId1642
  %_locRef1644 = load i64, i64* %_localId1642
  %_bop1645 = icmp slt i64 %_locRef1644, 3
  br i1 %_bop1645, label %_while_body_jmp1647, label %_while_end_jmp1646
_while_body_jmp1647:
  %_locRef1648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1640
  %_locRef1649 = load i64, i64* %_localId1642
  %_locRef1650 = load i64, i64* %_localId1642
  %_arridx1651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1648, i32 0, i32 1, i64 %_locRef1649
  store i64 %_locRef1650, i64* %_arridx1651
  %_locRef1653 = load i64, i64* %_localId1642
  %_bop1654 = add i64 %_locRef1653, 1
  store i64 %_bop1654, i64* %_localId1642
  %_locRef1656 = load i64, i64* %_localId1642
  %_bop1657 = icmp slt i64 %_locRef1656, 3
  br i1 %_bop1657, label %_while_body_jmp1647, label %_while_end_jmp1646
_while_end_jmp1646:
  %_raw_array1658 = call i64* @oat_alloc_array(i64 4)
  %_array1659 = bitcast i64* %_raw_array1658 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1659, { i64, [0 x i64] }** %_localId1660
  store i64 0, i64* %_localId1662
  %_locRef1664 = load i64, i64* %_localId1662
  %_bop1665 = icmp slt i64 %_locRef1664, 4
  br i1 %_bop1665, label %_while_body_jmp1667, label %_while_end_jmp1666
_while_body_jmp1667:
  %_locRef1668 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1660
  %_locRef1669 = load i64, i64* %_localId1662
  %_locRef1670 = load i64, i64* %_localId1662
  %_locRef1671 = load i64, i64* %_localId1662
  %_bop1672 = mul i64 %_locRef1670, %_locRef1671
  %_arridx1673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1668, i32 0, i32 1, i64 %_locRef1669
  store i64 %_bop1672, i64* %_arridx1673
  %_locRef1675 = load i64, i64* %_localId1662
  %_bop1676 = add i64 %_locRef1675, 1
  store i64 %_bop1676, i64* %_localId1662
  %_locRef1678 = load i64, i64* %_localId1662
  %_bop1679 = icmp slt i64 %_locRef1678, 4
  br i1 %_bop1679, label %_while_body_jmp1667, label %_while_end_jmp1666
_while_end_jmp1666:
  %_raw_array1680 = call i64* @oat_alloc_array(i64 3)
  %_array1681 = bitcast i64* %_raw_array1680 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1681, { i64, [0 x i64] }** %_localId1682
  store i64 0, i64* %_localId1684
  %_locRef1686 = load i64, i64* %_localId1684
  %_bop1687 = icmp slt i64 %_locRef1686, 3
  br i1 %_bop1687, label %_while_body_jmp1689, label %_while_end_jmp1688
_while_body_jmp1689:
  %_locRef1690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1682
  %_locRef1691 = load i64, i64* %_localId1684
  %_locRef1692 = load i64, i64* %_localId1684
  %_bop1693 = mul i64 2, %_locRef1692
  %_arridx1694 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1690, i32 0, i32 1, i64 %_locRef1691
  store i64 %_bop1693, i64* %_arridx1694
  %_locRef1696 = load i64, i64* %_localId1684
  %_bop1697 = add i64 %_locRef1696, 1
  store i64 %_bop1697, i64* %_localId1684
  %_locRef1699 = load i64, i64* %_localId1684
  %_bop1700 = icmp slt i64 %_locRef1699, 3
  br i1 %_bop1700, label %_while_body_jmp1689, label %_while_end_jmp1688
_while_end_jmp1688:
  %_locRef1701 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1660
  %_idxUID1702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1701, i32 0, i32 1, i32 3
  %_getArrUID1703 = load i64, i64* %_idxUID1702
  %_locRef1704 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1640
  %_idxUID1705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1704, i32 0, i32 1, i32 1
  %_getArrUID1706 = load i64, i64* %_idxUID1705
  %_bop1707 = add i64 %_getArrUID1703, %_getArrUID1706
  %_locRef1708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1682
  %_callUID1709 = call i64 @f({ i64, [0 x i64] }* %_locRef1708)
  %_bop1710 = add i64 %_bop1707, %_callUID1709
  %_callUID1711 = call i64 @g(i64 4)
  %_bop1712 = add i64 %_bop1710, %_callUID1711
  ret i64 %_bop1712
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
