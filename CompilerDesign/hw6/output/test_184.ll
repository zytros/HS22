; generated from: oatprograms/run55.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x19034, i64 %_x29031, i64 %_x39028, i64 %_x49025, i64 %_x59022, i64 %_x69019, i64 %_x79016, i64 %_x89013) {
  %_x19035 = alloca i64
  %_x29032 = alloca i64
  %_x39029 = alloca i64
  store i64 %_x19034, i64* %_x19035
  store i64 %_x29031, i64* %_x29032
  store i64 %_x39028, i64* %_x39029
  %_x19037 = load i64, i64* %_x19035
  %_x29038 = load i64, i64* %_x29032
  %_bop9039 = add i64 %_x19037, %_x29038
  %_x39040 = load i64, i64* %_x39029
  %_bop9041 = add i64 %_bop9039, %_x39040
  ret i64 %_bop9041
}

define i64 @program(i64 %_argc9006, { i64, [0 x i8*] }* %_argv9003) {
  %_result9012 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result9012
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
