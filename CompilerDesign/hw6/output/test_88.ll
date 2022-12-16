; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1774, { i64, [0 x i8*] }* %_argv1771) {
  %_i1781 = alloca i64
  %_a1800 = alloca { i64, [0 x i64] }*
  %_str1804 = alloca i8*
  %_raw_array1779 = call i64* @oat_alloc_array(i64 3)
  %_array1780 = bitcast i64* %_raw_array1779 to { i64, [0 x i64] }*
  %_bnd_1778 = alloca i64
  store i64 3, i64* %_bnd_1778
  %_ptr_1777 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1780, { i64, [0 x i64] }** %_ptr_1777
  store i64 0, i64* %_i1781
  br label %_cond1788
_body1787:
  %__ptr_17771789 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1777
  %_i1790 = load i64, i64* %_i1781
  %_tmp1792 = bitcast { i64, [0 x i64] }* %__ptr_17771789 to i64*
  call void @oat_assert_array_length(i64* %_tmp1792, i64 %_i1790)
  %_index_ptr1793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_17771789, i32 0, i32 1, i64 %_i1790
  store i64 110, i64* %_index_ptr1793
  %_i1795 = load i64, i64* %_i1781
  %_bop1796 = add i64 %_i1795, 1
  store i64 %_bop1796, i64* %_i1781
  br label %_cond1788
_cond1788:
  %_i1783 = load i64, i64* %_i1781
  %__bnd_17781784 = load i64, i64* %_bnd_1778
  %_bop1785 = icmp slt i64 %_i1783, %__bnd_17781784
  br i1 %_bop1785, label %_body1787, label %_post1786
_post1786:
  store { i64, [0 x i64] }* %_array1780, { i64, [0 x i64] }** %_a1800
  %_a1802 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1800
  %_result1803 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1802)
  store i8* %_result1803, i8** %_str1804
  %_str1806 = load i8*, i8** %_str1804
  call void @print_string(i8* %_str1806)
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
