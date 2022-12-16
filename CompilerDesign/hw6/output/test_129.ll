; generated from: hw5programs/compile_struct_fptr.oat
target triple = "x86_64-unknown-linux"
%S = type { i64, i64, i64 (i64, i64)* }

define i64 @add(i64 %_x6881, i64 %_y6878) {
  %_x6882 = alloca i64
  %_y6879 = alloca i64
  store i64 %_x6881, i64* %_x6882
  store i64 %_y6878, i64* %_y6879
  %_x6884 = load i64, i64* %_x6882
  %_y6885 = load i64, i64* %_y6879
  %_bop6886 = add i64 %_x6884, %_y6885
  ret i64 %_bop6886
}

define i64 @program(i64 %_argc6855, { i64, [0 x i8*] }* %_argv6852) {
  %_x6866 = alloca %S*
  %_raw_struct6858 = call i64* @oat_malloc(i64 24)
  %_struct6859 = bitcast i64* %_raw_struct6858 to %S*
  %_ind6860 = getelementptr %S, %S* %_struct6859, i32 0, i32 0
  store i64 3, i64* %_ind6860
  %_ind6862 = getelementptr %S, %S* %_struct6859, i32 0, i32 1
  store i64 4, i64* %_ind6862
  %_ind6864 = getelementptr %S, %S* %_struct6859, i32 0, i32 2
  store i64 (i64, i64)* @add, i64 (i64, i64)** %_ind6864
  store %S* %_struct6859, %S** %_x6866
  %_x6868 = load %S*, %S** %_x6866
  %_index6869 = getelementptr %S, %S* %_x6868, i32 0, i32 2
  %_proj6870 = load i64 (i64, i64)*, i64 (i64, i64)** %_index6869
  %_x6871 = load %S*, %S** %_x6866
  %_index6872 = getelementptr %S, %S* %_x6871, i32 0, i32 1
  %_proj6873 = load i64, i64* %_index6872
  %_x6874 = load %S*, %S** %_x6866
  %_index6875 = getelementptr %S, %S* %_x6874, i32 0, i32 0
  %_proj6876 = load i64, i64* %_index6875
  %_result6877 = call i64 %_proj6870(i64 %_proj6876, i64 %_proj6873)
  ret i64 %_result6877
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
