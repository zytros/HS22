; generated from: oatprograms/run54.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17593, i64 %_x27590, i64 %_x37587, i64 %_x47584, i64 %_x57581, i64 %_x67578, i64 %_x77575, i64 %_x87572) {
  %_x17594 = alloca i64
  %_x27591 = alloca i64
  %_x37588 = alloca i64
  %_x47585 = alloca i64
  store i64 %_x17593, i64* %_x17594
  store i64 %_x27590, i64* %_x27591
  store i64 %_x37587, i64* %_x37588
  store i64 %_x47584, i64* %_x47585
  %_x17596 = load i64, i64* %_x17594
  %_x27597 = load i64, i64* %_x27591
  %_bop7598 = add i64 %_x17596, %_x27597
  %_x37599 = load i64, i64* %_x37588
  %_bop7600 = add i64 %_bop7598, %_x37599
  %_x47601 = load i64, i64* %_x47585
  %_bop7602 = add i64 %_bop7600, %_x47601
  ret i64 %_bop7602
}

define i64 @program(i64 %_argc7565, { i64, [0 x i8*] }* %_argv7562) {
  %_result7571 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result7571
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
