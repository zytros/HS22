; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc29, { i64, [0 x i8*] }* %_argv26) {
  %_x32 = alloca i64
  %_i34 = alloca i64
  store i64 0, i64* %_x32
  store i64 0, i64* %_i34
  br label %_cond40
_body39:
  %_x41 = load i64, i64* %_x32
  %_bop42 = add i64 %_x41, 2
  store i64 %_bop42, i64* %_x32
  %_i44 = load i64, i64* %_i34
  %_bop45 = add i64 %_i44, 1
  store i64 %_bop45, i64* %_i34
  br label %_cond40
_cond40:
  %_i36 = load i64, i64* %_i34
  %_bop37 = icmp slt i64 %_i36, 3
  br i1 %_bop37, label %_body39, label %_post38
_post38:
  %_x47 = load i64, i64* %_x32
  ret i64 %_x47
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
