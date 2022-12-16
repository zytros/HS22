; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_str_arr1737 = global [4 x i8] c"abc\00"
@_str_arr1741 = global [4 x i8] c"def\00"
@_str_arr1749 = global [4 x i8] c"789\00"
@_str_arr1753 = global [4 x i8] c"123\00"

define i64 @program(i64 %_argc1730, { i64, [0 x i8*] }* %_argv1727) {
  %_strs1759 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1733 = call i64* @oat_alloc_array(i64 2)
  %_array1734 = bitcast i64* %_raw_array1733 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1735 = call i64* @oat_alloc_array(i64 2)
  %_array1736 = bitcast i64* %_raw_array1735 to { i64, [0 x i8*] }*
  %_str1738 = getelementptr [4 x i8], [4 x i8]* @_str_arr1737, i32 0, i32 0
  %_ind1739 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1736, i32 0, i32 1, i32 0
  store i8* %_str1738, i8** %_ind1739
  %_str1742 = getelementptr [4 x i8], [4 x i8]* @_str_arr1741, i32 0, i32 0
  %_ind1743 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1736, i32 0, i32 1, i32 1
  store i8* %_str1742, i8** %_ind1743
  %_ind1745 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1734, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1736, { i64, [0 x i8*] }** %_ind1745
  %_raw_array1747 = call i64* @oat_alloc_array(i64 2)
  %_array1748 = bitcast i64* %_raw_array1747 to { i64, [0 x i8*] }*
  %_str1750 = getelementptr [4 x i8], [4 x i8]* @_str_arr1749, i32 0, i32 0
  %_ind1751 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1748, i32 0, i32 1, i32 0
  store i8* %_str1750, i8** %_ind1751
  %_str1754 = getelementptr [4 x i8], [4 x i8]* @_str_arr1753, i32 0, i32 0
  %_ind1755 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1748, i32 0, i32 1, i32 1
  store i8* %_str1754, i8** %_ind1755
  %_ind1757 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1734, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1748, { i64, [0 x i8*] }** %_ind1757
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1734, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1759
  %_strs1761 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1759
  %_tmp1763 = bitcast { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1761 to i64*
  call void @oat_assert_array_length(i64* %_tmp1763, i64 1)
  %_index_ptr1764 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1761, i32 0, i32 1, i32 1
  %_index1765 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_ptr1764
  %_tmp1767 = bitcast { i64, [0 x i8*] }* %_index1765 to i64*
  call void @oat_assert_array_length(i64* %_tmp1767, i64 1)
  %_index_ptr1768 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index1765, i32 0, i32 1, i32 1
  %_index1769 = load i8*, i8** %_index_ptr1768
  call void @print_string(i8* %_index1769)
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
