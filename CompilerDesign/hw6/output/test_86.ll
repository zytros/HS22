; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_str_arr1711 = global [4 x i8] c"abc\00"
@_str_arr1715 = global [4 x i8] c"def\00"

define i64 @program(i64 %_argc1706, { i64, [0 x i8*] }* %_argv1703) {
  %_strs1719 = alloca { i64, [0 x i8*] }*
  %_raw_array1709 = call i64* @oat_alloc_array(i64 2)
  %_array1710 = bitcast i64* %_raw_array1709 to { i64, [0 x i8*] }*
  %_str1712 = getelementptr [4 x i8], [4 x i8]* @_str_arr1711, i32 0, i32 0
  %_ind1713 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1710, i32 0, i32 1, i32 0
  store i8* %_str1712, i8** %_ind1713
  %_str1716 = getelementptr [4 x i8], [4 x i8]* @_str_arr1715, i32 0, i32 0
  %_ind1717 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1710, i32 0, i32 1, i32 1
  store i8* %_str1716, i8** %_ind1717
  store { i64, [0 x i8*] }* %_array1710, { i64, [0 x i8*] }** %_strs1719
  %_strs1721 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1719
  %_tmp1723 = bitcast { i64, [0 x i8*] }* %_strs1721 to i64*
  call void @oat_assert_array_length(i64* %_tmp1723, i64 0)
  %_index_ptr1724 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1721, i32 0, i32 1, i32 0
  %_index1725 = load i8*, i8** %_index_ptr1724
  call void @print_string(i8* %_index1725)
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
