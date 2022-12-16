; generated from: hw5programs/compile_global_fptr_unordered.oat
target triple = "x86_64-unknown-linux"
@plus = global i64 (i64, i64)* @add

define i64 @add(i64 %_x7046, i64 %_y7043) {
  %_x7047 = alloca i64
  %_y7044 = alloca i64
  store i64 %_x7046, i64* %_x7047
  store i64 %_y7043, i64* %_y7044
  %_x7049 = load i64, i64* %_x7047
  %_y7050 = load i64, i64* %_y7044
  %_bop7051 = add i64 %_x7049, %_y7050
  ret i64 %_bop7051
}

define i64 @program(i64 %_argc7038, { i64, [0 x i8*] }* %_argv7035) {
  %_plus7041 = load i64 (i64, i64)*, i64 (i64, i64)** @plus
  %_result7042 = call i64 %_plus7041(i64 1, i64 1)
  ret i64 %_result7042
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
