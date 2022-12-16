; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %_x784) {
  %_x785 = alloca i64
  %_acc787 = alloca i64
  store i64 %_x784, i64* %_x785
  store i64 1, i64* %_acc787
  br label %_cond793
_body792:
  %_acc794 = load i64, i64* %_acc787
  %_x795 = load i64, i64* %_x785
  %_bop796 = mul i64 %_acc794, %_x795
  store i64 %_bop796, i64* %_acc787
  %_x798 = load i64, i64* %_x785
  %_bop799 = sub i64 %_x798, 1
  store i64 %_bop799, i64* %_x785
  br label %_cond793
_cond793:
  %_x789 = load i64, i64* %_x785
  %_bop790 = icmp sgt i64 %_x789, 0
  br i1 %_bop790, label %_body792, label %_post791
_post791:
  %_acc801 = load i64, i64* %_acc787
  ret i64 %_acc801
}

define i64 @program(i64 %_argc778, { i64, [0 x i8*] }* %_argv775) {
  %_result781 = call i64 @fact(i64 5)
  %_result782 = call i8* @string_of_int(i64 %_result781)
  call void @print_string(i8* %_result782)
  ret i64 0
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
