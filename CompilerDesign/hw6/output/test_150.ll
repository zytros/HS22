; generated from: oatprograms/run55.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17634, i64 %_x27631, i64 %_x37628, i64 %_x47625, i64 %_x57622, i64 %_x67619, i64 %_x77616, i64 %_x87613) {
  %_x17635 = alloca i64
  %_x27632 = alloca i64
  %_x37629 = alloca i64
  store i64 %_x17634, i64* %_x17635
  store i64 %_x27631, i64* %_x27632
  store i64 %_x37628, i64* %_x37629
  %_x17637 = load i64, i64* %_x17635
  %_x27638 = load i64, i64* %_x27632
  %_bop7639 = add i64 %_x17637, %_x27638
  %_x37640 = load i64, i64* %_x37629
  %_bop7641 = add i64 %_bop7639, %_x37640
  ret i64 %_bop7641
}

define i64 @program(i64 %_argc7606, { i64, [0 x i8*] }* %_argv7603) {
  %_result7612 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result7612
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
