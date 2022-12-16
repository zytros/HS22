; generated from: hw5programs/compile_various_fields.oat
target triple = "x86_64-unknown-linux"
%Test = type { i64, i1, i8*, { i64, [0 x i64] }*, %Test*, i64 (i64)* }

@_str_arr6899 = global [6 x i8] c"hello\00"

define i64 @neg(i64 %_x6954) {
  %_x6955 = alloca i64
  store i64 %_x6954, i64* %_x6955
  %_x6957 = load i64, i64* %_x6955
  %_unop6958 = sub i64 0, %_x6957
  ret i64 %_unop6958
}

define i64 @program(i64 %_argc6890, { i64, [0 x i8*] }* %_argv6887) {
  %_j6907 = alloca i64
  %_n6932 = alloca %Test*
  %_raw_struct6893 = call i64* @oat_malloc(i64 48)
  %_struct6894 = bitcast i64* %_raw_struct6893 to %Test*
  %_ind6895 = getelementptr %Test, %Test* %_struct6894, i32 0, i32 0
  store i64 3, i64* %_ind6895
  %_ind6897 = getelementptr %Test, %Test* %_struct6894, i32 0, i32 1
  store i1 1, i1* %_ind6897
  %_str6900 = getelementptr [6 x i8], [6 x i8]* @_str_arr6899, i32 0, i32 0
  %_ind6901 = getelementptr %Test, %Test* %_struct6894, i32 0, i32 2
  store i8* %_str6900, i8** %_ind6901
  %_raw_array6905 = call i64* @oat_alloc_array(i64 3)
  %_array6906 = bitcast i64* %_raw_array6905 to { i64, [0 x i64] }*
  %_bnd_6904 = alloca i64
  store i64 3, i64* %_bnd_6904
  %_ptr_6903 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6906, { i64, [0 x i64] }** %_ptr_6903
  store i64 0, i64* %_j6907
  br label %_cond6914
_body6913:
  %__ptr_69036915 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_6903
  %_j6916 = load i64, i64* %_j6907
  %_tmp6918 = bitcast { i64, [0 x i64] }* %__ptr_69036915 to i64*
  call void @oat_assert_array_length(i64* %_tmp6918, i64 %_j6916)
  %_index_ptr6919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_69036915, i32 0, i32 1, i64 %_j6916
  store i64 0, i64* %_index_ptr6919
  %_j6921 = load i64, i64* %_j6907
  %_bop6922 = add i64 %_j6921, 1
  store i64 %_bop6922, i64* %_j6907
  br label %_cond6914
_cond6914:
  %_j6909 = load i64, i64* %_j6907
  %__bnd_69046910 = load i64, i64* %_bnd_6904
  %_bop6911 = icmp slt i64 %_j6909, %__bnd_69046910
  br i1 %_bop6911, label %_body6913, label %_post6912
_else6952:
  %_n6948 = load %Test*, %Test** %_n6932
  %_index6949 = getelementptr %Test, %Test* %_n6948, i32 0, i32 0
  %_proj6950 = load i64, i64* %_index6949
  ret i64 %_proj6950
_merge6951:
  ret i64 0
_post6912:
  %_ind6926 = getelementptr %Test, %Test* %_struct6894, i32 0, i32 3
  store { i64, [0 x i64] }* %_array6906, { i64, [0 x i64] }** %_ind6926
  %_ind6928 = getelementptr %Test, %Test* %_struct6894, i32 0, i32 4
  store %Test* null, %Test** %_ind6928
  %_ind6930 = getelementptr %Test, %Test* %_struct6894, i32 0, i32 5
  store i64 (i64)* @neg, i64 (i64)** %_ind6930
  store %Test* %_struct6894, %Test** %_n6932
  %_n6934 = load %Test*, %Test** %_n6932
  %_index6935 = getelementptr %Test, %Test* %_n6934, i32 0, i32 2
  %_proj6936 = load i8*, i8** %_index6935
  call void @print_string(i8* %_proj6936)
  %_n6938 = load %Test*, %Test** %_n6932
  %_index6939 = getelementptr %Test, %Test* %_n6938, i32 0, i32 1
  %_proj6940 = load i1, i1* %_index6939
  br i1 %_proj6940, label %_then6953, label %_else6952
_then6953:
  %_n6941 = load %Test*, %Test** %_n6932
  %_index6942 = getelementptr %Test, %Test* %_n6941, i32 0, i32 5
  %_proj6943 = load i64 (i64)*, i64 (i64)** %_index6942
  %_n6944 = load %Test*, %Test** %_n6932
  %_index6945 = getelementptr %Test, %Test* %_n6944, i32 0, i32 0
  %_proj6946 = load i64, i64* %_index6945
  %_result6947 = call i64 %_proj6943(i64 %_proj6946)
  ret i64 %_result6947
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
