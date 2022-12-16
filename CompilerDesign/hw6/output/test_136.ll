; generated from: hw5programs/compile_var_fptr.oat
target triple = "x86_64-unknown-linux"
define i64 @id(i64 %_x7099) {
  %_x7100 = alloca i64
  store i64 %_x7099, i64* %_x7100
  %_x7102 = load i64, i64* %_x7100
  ret i64 %_x7102
}

define i64 @program(i64 %_argc7092, { i64, [0 x i8*] }* %_argv7089) {
  %_id_local7095 = alloca i64 (i64)*
  store i64 (i64)* @id, i64 (i64)** %_id_local7095
  %_id_local7097 = load i64 (i64)*, i64 (i64)** %_id_local7095
  %_result7098 = call i64 %_id_local7097(i64 1)
  ret i64 %_result7098
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
