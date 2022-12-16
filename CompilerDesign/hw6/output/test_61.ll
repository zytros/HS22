; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc97, { i64, [0 x i8*] }* %_argv94) {
  %_x100 = alloca i64
  %_y102 = alloca i64
  store i64 17, i64* %_x100
  store i64 18, i64* %_y102
  %_x104 = load i64, i64* %_x100
  %_y105 = load i64, i64* %_y102
  %_bop106 = add i64 %_x104, %_y105
  ret i64 %_bop106
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
