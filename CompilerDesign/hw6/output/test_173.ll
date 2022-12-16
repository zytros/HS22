; generated from: oatprograms/run40.oat
target triple = "x86_64-unknown-linux"
@i = global i64 8

define i64 @f() {
  %_j8365 = alloca i64
  store i64 0, i64* %_j8365
  %_result8367 = call i64 @g()
  store i64 %_result8367, i64* %_j8365
  %_j8369 = load i64, i64* %_j8365
  ret i64 %_j8369
}

define i64 @g() {
  %_i8364 = load i64, i64* @i
  ret i64 %_i8364
}

define i64 @program(i64 %_argc8360, { i64, [0 x i8*] }* %_argv8357) {
  %_result8363 = call i64 @f()
  ret i64 %_result8363
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
