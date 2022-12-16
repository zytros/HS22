; generated from: hw5programs/compile_struct_array.oat
target triple = "x86_64-unknown-linux"
%Test = type { { i64, [0 x i64] }*, i64, { i64, [0 x i64] }* }

@arr_x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr6851 to { i64, [0 x i64] }*)
@_global_arr6851 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 4, i64 5 ] }
@arr_z = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr6850 to { i64, [0 x i64] }*)
@_global_arr6850 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define i64 @program(i64 %_argc6820, { i64, [0 x i8*] }* %_argv6817) {
  %_t6833 = alloca %Test*
  %_raw_struct6823 = call i64* @oat_malloc(i64 24)
  %_struct6824 = bitcast i64* %_raw_struct6823 to %Test*
  %_arr_x6825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr_x
  %_ind6826 = getelementptr %Test, %Test* %_struct6824, i32 0, i32 0
  store { i64, [0 x i64] }* %_arr_x6825, { i64, [0 x i64] }** %_ind6826
  %_ind6828 = getelementptr %Test, %Test* %_struct6824, i32 0, i32 1
  store i64 3, i64* %_ind6828
  %_arr_z6830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr_z
  %_ind6831 = getelementptr %Test, %Test* %_struct6824, i32 0, i32 2
  store { i64, [0 x i64] }* %_arr_z6830, { i64, [0 x i64] }** %_ind6831
  store %Test* %_struct6824, %Test** %_t6833
  %_t6835 = load %Test*, %Test** %_t6833
  %_index6836 = getelementptr %Test, %Test* %_t6835, i32 0, i32 0
  %_proj6837 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index6836
  %_tmp6839 = bitcast { i64, [0 x i64] }* %_proj6837 to i64*
  call void @oat_assert_array_length(i64* %_tmp6839, i64 0)
  %_index_ptr6840 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_proj6837, i32 0, i32 1, i32 0
  %_index6841 = load i64, i64* %_index_ptr6840
  %_t6842 = load %Test*, %Test** %_t6833
  %_index6843 = getelementptr %Test, %Test* %_t6842, i32 0, i32 2
  %_proj6844 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index6843
  %_tmp6846 = bitcast { i64, [0 x i64] }* %_proj6844 to i64*
  call void @oat_assert_array_length(i64* %_tmp6846, i64 1)
  %_index_ptr6847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_proj6844, i32 0, i32 1, i32 1
  %_index6848 = load i64, i64* %_index_ptr6847
  %_bop6849 = mul i64 %_index6841, %_index6848
  ret i64 %_bop6849
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
