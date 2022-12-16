; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc954, { i64, [0 x i8*] }* %_argv951) {
  %_arr975 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array957 = call i64* @oat_alloc_array(i64 2)
  %_array958 = bitcast i64* %_raw_array957 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array959 = call i64* @oat_alloc_array(i64 2)
  %_array960 = bitcast i64* %_raw_array959 to { i64, [0 x i64] }*
  %_ind961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array960, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind961
  %_ind963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array960, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind963
  %_ind965 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array958, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array960, { i64, [0 x i64] }** %_ind965
  %_raw_array967 = call i64* @oat_alloc_array(i64 2)
  %_array968 = bitcast i64* %_raw_array967 to { i64, [0 x i64] }*
  %_ind969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind969
  %_ind971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind971
  %_ind973 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array958, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array968, { i64, [0 x i64] }** %_ind973
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array958, { i64, [0 x { i64, [0 x i64] }*] }** %_arr975
  %_arr977 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr975
  %_tmp979 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr977 to i64*
  call void @oat_assert_array_length(i64* %_tmp979, i64 1)
  %_index_ptr980 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr977, i32 0, i32 1, i32 1
  %_index981 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr980
  %_tmp983 = bitcast { i64, [0 x i64] }* %_index981 to i64*
  call void @oat_assert_array_length(i64* %_tmp983, i64 1)
  %_index_ptr984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index981, i32 0, i32 1, i32 1
  %_index985 = load i64, i64* %_index_ptr984
  ret i64 %_index985
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
