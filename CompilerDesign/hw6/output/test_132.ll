; generated from: hw5programs/compile_func_argument.oat
target triple = "x86_64-unknown-linux"
define i64 @call(i64 (i64)* %_f7012, i64 %_arg7009) {
  %_f7013 = alloca i64 (i64)*
  %_arg7010 = alloca i64
  store i64 (i64)* %_f7012, i64 (i64)** %_f7013
  store i64 %_arg7009, i64* %_arg7010
  %_f7015 = load i64 (i64)*, i64 (i64)** %_f7013
  %_arg7016 = load i64, i64* %_arg7010
  %_result7017 = call i64 %_f7015(i64 %_arg7016)
  ret i64 %_result7017
}

define i64 @inc(i64 %_x7004) {
  %_x7005 = alloca i64
  store i64 %_x7004, i64* %_x7005
  %_x7007 = load i64, i64* %_x7005
  %_bop7008 = add i64 %_x7007, 1
  ret i64 %_bop7008
}

define i64 @program(i64 %_argc7000, { i64, [0 x i8*] }* %_argv6997) {
  %_result7003 = call i64 @call(i64 (i64)* @inc, i64 3)
  ret i64 %_result7003
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
