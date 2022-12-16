; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr138 to { i64, [0 x i64] }*)
@_global_arr138 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr137 to { i64, [0 x i64] }*)
@_global_arr137 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x145, { i64, [0 x i64] }* %_y142, i1 %_b139) {
  %_x146 = alloca { i64, [0 x i64] }*
  %_y143 = alloca { i64, [0 x i64] }*
  %_b140 = alloca i1
  store { i64, [0 x i64] }* %_x145, { i64, [0 x i64] }** %_x146
  store { i64, [0 x i64] }* %_y142, { i64, [0 x i64] }** %_y143
  store i1 %_b139, i1* %_b140
  %_b148 = load i1, i1* %_b140
  br i1 %_b148, label %_then153, label %_else152
_else152:
  %_y150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y143
  ret { i64, [0 x i64] }* %_y150
_merge151:
  ret { i64, [0 x i64] }* null
_then153:
  %_x149 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x146
  ret { i64, [0 x i64] }* %_x149
}

define i64 @program(i64 %_argc122, { i64, [0 x i8*] }* %_argv119) {
  %_y125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_result127 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x126, { i64, [0 x i64] }* %_y125, i1 1)
  %_tmp129 = bitcast { i64, [0 x i64] }* %_result127 to i64*
  call void @oat_assert_array_length(i64* %_tmp129, i64 0)
  %_index_ptr130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result127, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr130
  %_x132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_tmp134 = bitcast { i64, [0 x i64] }* %_x132 to i64*
  call void @oat_assert_array_length(i64* %_tmp134, i64 0)
  %_index_ptr135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x132, i32 0, i32 1, i32 0
  %_index136 = load i64, i64* %_index_ptr135
  ret i64 %_index136
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
