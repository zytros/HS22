; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc311, { i64, [0 x i8*] }* %_argv308) {
  %_i320 = alloca { i64, [0 x i64] }*
  %_raw_array314 = call i64* @oat_alloc_array(i64 2)
  %_array315 = bitcast i64* %_raw_array314 to { i64, [0 x i64] }*
  %_ind316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array315, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind316
  %_ind318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array315, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind318
  store { i64, [0 x i64] }* %_array315, { i64, [0 x i64] }** %_i320
  %_i322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i320
  %_tmp324 = bitcast { i64, [0 x i64] }* %_i322 to i64*
  call void @oat_assert_array_length(i64* %_tmp324, i64 0)
  %_index_ptr325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i322, i32 0, i32 1, i32 0
  %_index326 = load i64, i64* %_index_ptr325
  ret i64 %_index326
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
