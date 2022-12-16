; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7401 to { i64, [0 x i64] }*)
@_global_arr7401 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7400 to { i64, [0 x i64] }*)
@_global_arr7400 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x7408, { i64, [0 x i64] }* %_y7405, i1 %_b7402) {
  %_x7409 = alloca { i64, [0 x i64] }*
  %_y7406 = alloca { i64, [0 x i64] }*
  %_b7403 = alloca i1
  store { i64, [0 x i64] }* %_x7408, { i64, [0 x i64] }** %_x7409
  store { i64, [0 x i64] }* %_y7405, { i64, [0 x i64] }** %_y7406
  store i1 %_b7402, i1* %_b7403
  %_b7411 = load i1, i1* %_b7403
  br i1 %_b7411, label %_then7416, label %_else7415
_else7415:
  %_y7413 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y7406
  ret { i64, [0 x i64] }* %_y7413
_merge7414:
  ret { i64, [0 x i64] }* null
_then7416:
  %_x7412 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7409
  ret { i64, [0 x i64] }* %_x7412
}

define i64 @program(i64 %_argc7372, { i64, [0 x i8*] }* %_argv7369) {
  %_z7397 = alloca i64
  %_y7375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x7376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_result7377 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x7376, { i64, [0 x i64] }* %_y7375, i1 1)
  %_tmp7379 = bitcast { i64, [0 x i64] }* %_result7377 to i64*
  call void @oat_assert_array_length(i64* %_tmp7379, i64 0)
  %_index_ptr7380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result7377, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr7380
  %_y7382 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x7383 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_result7384 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x7383, { i64, [0 x i64] }* %_y7382, i1 1)
  %_tmp7386 = bitcast { i64, [0 x i64] }* %_result7384 to i64*
  call void @oat_assert_array_length(i64* %_tmp7386, i64 0)
  %_index_ptr7387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result7384, i32 0, i32 1, i32 0
  %_index7388 = load i64, i64* %_index_ptr7387
  %_x7389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y7390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_result7391 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y7390, { i64, [0 x i64] }* %_x7389, i1 0)
  %_tmp7393 = bitcast { i64, [0 x i64] }* %_result7391 to i64*
  call void @oat_assert_array_length(i64* %_tmp7393, i64 0)
  %_index_ptr7394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result7391, i32 0, i32 1, i32 0
  %_index7395 = load i64, i64* %_index_ptr7394
  %_bop7396 = add i64 %_index7388, %_index7395
  store i64 %_bop7396, i64* %_z7397
  %_z7399 = load i64, i64* %_z7397
  ret i64 %_z7399
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
