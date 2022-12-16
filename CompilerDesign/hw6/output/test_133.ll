; generated from: hw5programs/compile_global_fptr.oat
target triple = "x86_64-unknown-linux"
@x = global i64 (i64, i64)* @add

define i64 @add(i64 %_x7029, i64 %_y7026) {
  %_x7030 = alloca i64
  %_y7027 = alloca i64
  store i64 %_x7029, i64* %_x7030
  store i64 %_y7026, i64* %_y7027
  %_x7032 = load i64, i64* %_x7030
  %_y7033 = load i64, i64* %_y7027
  %_bop7034 = add i64 %_x7032, %_y7033
  ret i64 %_bop7034
}

define i64 @program(i64 %_argc7021, { i64, [0 x i8*] }* %_argv7018) {
  %_x7024 = load i64 (i64, i64)*, i64 (i64, i64)** @x
  %_result7025 = call i64 %_x7024(i64 3, i64 4)
  ret i64 %_result7025
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
