; generated from: oatprograms/path3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr118 to { i64, [0 x i64] }*)
@_global_arr118 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

define i64 @program(i64 %_argc110, { i64, [0 x i8*] }* %_args107) {
  %_arr113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_tmp115 = bitcast { i64, [0 x i64] }* %_arr113 to i64*
  call void @oat_assert_array_length(i64* %_tmp115, i64 2)
  %_index_ptr116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr113, i32 0, i32 1, i32 2
  %_index117 = load i64, i64* %_index_ptr116
  ret i64 %_index117
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
