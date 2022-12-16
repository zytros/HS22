; generated from: hw5programs/compile_local_fptr.oat
target triple = "x86_64-unknown-linux"
define i64 @add(i64 %_x7119, i64 %_y7116) {
  %_x7120 = alloca i64
  %_y7117 = alloca i64
  store i64 %_x7119, i64* %_x7120
  store i64 %_y7116, i64* %_y7117
  %_x7122 = load i64, i64* %_x7120
  %_y7123 = load i64, i64* %_y7117
  %_bop7124 = add i64 %_x7122, %_y7123
  ret i64 %_bop7124
}

define i64 @program(i64 %_argc7106, { i64, [0 x i8*] }* %_argv7103) {
  %_plus7109 = alloca i64 (i64, i64)*
  %_loc_add7112 = alloca i64 (i64, i64)*
  store i64 (i64, i64)* @add, i64 (i64, i64)** %_plus7109
  %_plus7111 = load i64 (i64, i64)*, i64 (i64, i64)** %_plus7109
  store i64 (i64, i64)* %_plus7111, i64 (i64, i64)** %_loc_add7112
  %_loc_add7114 = load i64 (i64, i64)*, i64 (i64, i64)** %_loc_add7112
  %_result7115 = call i64 %_loc_add7114(i64 2, i64 3)
  ret i64 %_result7115
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
