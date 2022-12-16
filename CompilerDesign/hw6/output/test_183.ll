; generated from: oatprograms/run54.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x18993, i64 %_x28990, i64 %_x38987, i64 %_x48984, i64 %_x58981, i64 %_x68978, i64 %_x78975, i64 %_x88972) {
  %_x18994 = alloca i64
  %_x28991 = alloca i64
  %_x38988 = alloca i64
  %_x48985 = alloca i64
  store i64 %_x18993, i64* %_x18994
  store i64 %_x28990, i64* %_x28991
  store i64 %_x38987, i64* %_x38988
  store i64 %_x48984, i64* %_x48985
  %_x18996 = load i64, i64* %_x18994
  %_x28997 = load i64, i64* %_x28991
  %_bop8998 = add i64 %_x18996, %_x28997
  %_x38999 = load i64, i64* %_x38988
  %_bop9000 = add i64 %_bop8998, %_x38999
  %_x49001 = load i64, i64* %_x48985
  %_bop9002 = add i64 %_bop9000, %_x49001
  ret i64 %_bop9002
}

define i64 @program(i64 %_argc8965, { i64, [0 x i8*] }* %_argv8962) {
  %_result8971 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result8971
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
