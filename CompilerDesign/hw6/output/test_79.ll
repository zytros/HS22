; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc935, { i64, [0 x i8*] }* %_argv932) {
  %_arr944 = alloca { i64, [0 x i64] }*
  %_raw_array938 = call i64* @oat_alloc_array(i64 2)
  %_array939 = bitcast i64* %_raw_array938 to { i64, [0 x i64] }*
  %_ind940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array939, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind940
  %_ind942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array939, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind942
  store { i64, [0 x i64] }* %_array939, { i64, [0 x i64] }** %_arr944
  %_arr946 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr944
  %_tmp948 = bitcast { i64, [0 x i64] }* %_arr946 to i64*
  call void @oat_assert_array_length(i64* %_tmp948, i64 1)
  %_index_ptr949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr946, i32 0, i32 1, i32 1
  %_index950 = load i64, i64* %_index_ptr949
  ret i64 %_index950
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
