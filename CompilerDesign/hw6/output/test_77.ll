; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %_x889) {
  %_x890 = alloca i64
  store i64 %_x889, i64* %_x890
  %_x892 = load i64, i64* %_x890
  ret i64 %_x892
}

define i64 @g({ i64, [0 x i64] }* %_y881) {
  %_y882 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y881, { i64, [0 x i64] }** %_y882
  %_y884 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y882
  %_tmp886 = bitcast { i64, [0 x i64] }* %_y884 to i64*
  call void @oat_assert_array_length(i64* %_tmp886, i64 2)
  %_index_ptr887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y884, i32 0, i32 1, i32 2
  %_index888 = load i64, i64* %_index_ptr887
  ret i64 %_index888
}

define i64 @program(i64 %_argc805, { i64, [0 x i8*] }* %_argv802) {
  %_garr826 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr838 = alloca { i64, [0 x i64] }*
  %_p840 = alloca i64
  %_j842 = alloca i64
  %_raw_array808 = call i64* @oat_alloc_array(i64 2)
  %_array809 = bitcast i64* %_raw_array808 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array810 = call i64* @oat_alloc_array(i64 2)
  %_array811 = bitcast i64* %_raw_array810 to { i64, [0 x i64] }*
  %_ind812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array811, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind812
  %_ind814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array811, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind814
  %_ind816 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array809, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array811, { i64, [0 x i64] }** %_ind816
  %_raw_array818 = call i64* @oat_alloc_array(i64 2)
  %_array819 = bitcast i64* %_raw_array818 to { i64, [0 x i64] }*
  %_ind820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array819, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind820
  %_ind822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array819, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind822
  %_ind824 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array809, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array819, { i64, [0 x i64] }** %_ind824
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array809, { i64, [0 x { i64, [0 x i64] }*] }** %_garr826
  %_raw_array828 = call i64* @oat_alloc_array(i64 4)
  %_array829 = bitcast i64* %_raw_array828 to { i64, [0 x i64] }*
  %_ind830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array829, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind830
  %_ind832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array829, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind832
  %_ind834 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array829, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind834
  %_ind836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array829, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind836
  store { i64, [0 x i64] }* %_array829, { i64, [0 x i64] }** %_arr838
  store i64 0, i64* %_p840
  store i64 0, i64* %_j842
  br label %_cond848
_body847:
  %_p849 = load i64, i64* %_p840
  %_bop850 = add i64 %_p849, 1
  store i64 %_bop850, i64* %_p840
  %_j852 = load i64, i64* %_j842
  %_bop853 = add i64 %_j852, 1
  store i64 %_bop853, i64* %_j842
  br label %_cond848
_cond848:
  %_j844 = load i64, i64* %_j842
  %_bop845 = icmp slt i64 %_j844, 100
  br i1 %_bop845, label %_body847, label %_post846
_post846:
  %_arr855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr838
  %_result856 = call i64 @g({ i64, [0 x i64] }* %_arr855)
  %_i857 = load i64, i64* @i
  %_result858 = call i64 @f(i64 %_i857)
  %_bop859 = add i64 %_result856, %_result858
  %_arr860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr838
  %_tmp862 = bitcast { i64, [0 x i64] }* %_arr860 to i64*
  call void @oat_assert_array_length(i64* %_tmp862, i64 3)
  %_index_ptr863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr860, i32 0, i32 1, i32 3
  %_index864 = load i64, i64* %_index_ptr863
  %_result865 = call i64 @f(i64 %_index864)
  %_bop866 = add i64 %_bop859, %_result865
  %_garr867 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr826
  %_tmp869 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_garr867 to i64*
  call void @oat_assert_array_length(i64* %_tmp869, i64 1)
  %_index_ptr870 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr867, i32 0, i32 1, i32 1
  %_index871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr870
  %_tmp873 = bitcast { i64, [0 x i64] }* %_index871 to i64*
  call void @oat_assert_array_length(i64* %_tmp873, i64 1)
  %_index_ptr874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index871, i32 0, i32 1, i32 1
  %_index875 = load i64, i64* %_index_ptr874
  %_result876 = call i64 @f(i64 %_index875)
  %_bop877 = add i64 %_bop866, %_result876
  %_p878 = load i64, i64* %_p840
  %_result879 = call i64 @f(i64 %_p878)
  %_bop880 = add i64 %_bop877, %_result879
  ret i64 %_bop880
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
