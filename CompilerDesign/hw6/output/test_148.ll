; generated from: oatprograms/run52.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17550, i64 %_x27547, i64 %_x37544, i64 %_x47541, i64 %_x57538, i64 %_x67535, i64 %_x77532, i64 %_x87529) {
  %_x17551 = alloca i64
  %_x27548 = alloca i64
  %_x37545 = alloca i64
  %_x47542 = alloca i64
  %_x57539 = alloca i64
  store i64 %_x17550, i64* %_x17551
  store i64 %_x27547, i64* %_x27548
  store i64 %_x37544, i64* %_x37545
  store i64 %_x47541, i64* %_x47542
  store i64 %_x57538, i64* %_x57539
  %_x17553 = load i64, i64* %_x17551
  %_x27554 = load i64, i64* %_x27548
  %_bop7555 = add i64 %_x17553, %_x27554
  %_x37556 = load i64, i64* %_x37545
  %_bop7557 = add i64 %_bop7555, %_x37556
  %_x47558 = load i64, i64* %_x47542
  %_bop7559 = add i64 %_bop7557, %_x47558
  %_x57560 = load i64, i64* %_x57539
  %_bop7561 = add i64 %_bop7559, %_x57560
  ret i64 %_bop7561
}

define i64 @program(i64 %_argc7522, { i64, [0 x i8*] }* %_argv7519) {
  %_result7528 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result7528
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
