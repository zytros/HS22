; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_arr1029) {
  %_arr1030 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1029, { i64, [0 x i64] }** %_arr1030
  %_arr1032 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1030
  ret { i64, [0 x i64] }* %_arr1032
}

define i64 @program(i64 %_argc989, { i64, [0 x i8*] }* %_argv986) {
  %_garr1014 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1022 = alloca { i64, [0 x i64] }*
  %_raw_array992 = call i64* @oat_alloc_array(i64 2)
  %_array993 = bitcast i64* %_raw_array992 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array994 = call i64* @oat_alloc_array(i64 3)
  %_array995 = bitcast i64* %_raw_array994 to { i64, [0 x i64] }*
  %_ind996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array995, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind996
  %_ind998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array995, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind998
  %_ind1000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array995, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind1000
  %_ind1002 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array993, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array995, { i64, [0 x i64] }** %_ind1002
  %_raw_array1004 = call i64* @oat_alloc_array(i64 3)
  %_array1005 = bitcast i64* %_raw_array1004 to { i64, [0 x i64] }*
  %_ind1006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1005, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind1006
  %_ind1008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1005, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind1008
  %_ind1010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1005, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind1010
  %_ind1012 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array993, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1005, { i64, [0 x i64] }** %_ind1012
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array993, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1014
  %_garr1016 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1014
  %_tmp1018 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_garr1016 to i64*
  call void @oat_assert_array_length(i64* %_tmp1018, i64 1)
  %_index_ptr1019 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1016, i32 0, i32 1, i32 1
  %_index1020 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1019
  %_result1021 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index1020)
  store { i64, [0 x i64] }* %_result1021, { i64, [0 x i64] }** %_arr1022
  %_arr1024 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1022
  %_tmp1026 = bitcast { i64, [0 x i64] }* %_arr1024 to i64*
  call void @oat_assert_array_length(i64* %_tmp1026, i64 1)
  %_index_ptr1027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1024, i32 0, i32 1, i32 1
  %_index1028 = load i64, i64* %_index_ptr1027
  ret i64 %_index1028
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
