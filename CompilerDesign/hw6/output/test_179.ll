; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr8801 to { i64, [0 x i64] }*)
@_global_arr8801 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr8800 to { i64, [0 x i64] }*)
@_global_arr8800 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x8808, { i64, [0 x i64] }* %_y8805, i1 %_b8802) {
  %_x8809 = alloca { i64, [0 x i64] }*
  %_y8806 = alloca { i64, [0 x i64] }*
  %_b8803 = alloca i1
  store { i64, [0 x i64] }* %_x8808, { i64, [0 x i64] }** %_x8809
  store { i64, [0 x i64] }* %_y8805, { i64, [0 x i64] }** %_y8806
  store i1 %_b8802, i1* %_b8803
  %_b8811 = load i1, i1* %_b8803
  br i1 %_b8811, label %_then8816, label %_else8815
_else8815:
  %_y8813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y8806
  ret { i64, [0 x i64] }* %_y8813
_merge8814:
  ret { i64, [0 x i64] }* null
_then8816:
  %_x8812 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x8809
  ret { i64, [0 x i64] }* %_x8812
}

define i64 @program(i64 %_argc8772, { i64, [0 x i8*] }* %_argv8769) {
  %_z8797 = alloca i64
  %_y8775 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x8776 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_result8777 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x8776, { i64, [0 x i64] }* %_y8775, i1 1)
  %_tmp8779 = bitcast { i64, [0 x i64] }* %_result8777 to i64*
  call void @oat_assert_array_length(i64* %_tmp8779, i64 0)
  %_index_ptr8780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result8777, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr8780
  %_y8782 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x8783 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_result8784 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x8783, { i64, [0 x i64] }* %_y8782, i1 1)
  %_tmp8786 = bitcast { i64, [0 x i64] }* %_result8784 to i64*
  call void @oat_assert_array_length(i64* %_tmp8786, i64 0)
  %_index_ptr8787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result8784, i32 0, i32 1, i32 0
  %_index8788 = load i64, i64* %_index_ptr8787
  %_x8789 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y8790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_result8791 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y8790, { i64, [0 x i64] }* %_x8789, i1 0)
  %_tmp8793 = bitcast { i64, [0 x i64] }* %_result8791 to i64*
  call void @oat_assert_array_length(i64* %_tmp8793, i64 0)
  %_index_ptr8794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result8791, i32 0, i32 1, i32 0
  %_index8795 = load i64, i64* %_index_ptr8794
  %_bop8796 = add i64 %_index8788, %_index8795
  store i64 %_bop8796, i64* %_z8797
  %_z8799 = load i64, i64* %_z8797
  ret i64 %_z8799
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
