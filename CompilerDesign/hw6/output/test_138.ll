; generated from: hw5programs/compile_function_shadow.oat
target triple = "x86_64-unknown-linux"
define i64 @add(i64 %_arg17147, i64 %_arg27144) {
  %_arg17148 = alloca i64
  %_arg27145 = alloca i64
  store i64 %_arg17147, i64* %_arg17148
  store i64 %_arg27144, i64* %_arg27145
  %_arg17150 = load i64, i64* %_arg17148
  %_arg27151 = load i64, i64* %_arg27145
  %_bop7152 = add i64 %_arg17150, %_arg27151
  ret i64 %_bop7152
}

define i64 @mul(i64 %_arg17138, i64 %_arg27135) {
  %_arg17139 = alloca i64
  %_arg27136 = alloca i64
  store i64 %_arg17138, i64* %_arg17139
  store i64 %_arg27135, i64* %_arg27136
  %_arg17141 = load i64, i64* %_arg17139
  %_arg27142 = load i64, i64* %_arg27136
  %_bop7143 = mul i64 %_arg17141, %_arg27142
  ret i64 %_bop7143
}

define i64 @program(i64 %_argc7128, { i64, [0 x i8*] }* %_argv7125) {
  %_add7131 = alloca i64 (i64, i64)*
  store i64 (i64, i64)* @mul, i64 (i64, i64)** %_add7131
  %_add7133 = load i64 (i64, i64)*, i64 (i64, i64)** %_add7131
  %_result7134 = call i64 %_add7133(i64 3, i64 4)
  ret i64 %_result7134
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
