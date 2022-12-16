; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc4, { i64, [0 x i8*] }* %_argv1) {
  %_x7 = alloca i64
  %_i9 = alloca i64
  store i64 0, i64* %_x7
  store i64 0, i64* %_i9
  br label %_cond15
_body14:
  %_x16 = load i64, i64* %_x7
  %_i17 = load i64, i64* %_i9
  %_bop18 = add i64 %_x16, %_i17
  %_i19 = load i64, i64* %_i9
  %_bop20 = mul i64 %_bop18, %_i19
  store i64 %_bop20, i64* %_x7
  %_i22 = load i64, i64* %_i9
  %_bop23 = add i64 %_i22, 1
  store i64 %_bop23, i64* %_i9
  br label %_cond15
_cond15:
  %_i11 = load i64, i64* %_i9
  %_bop12 = icmp slt i64 %_i11, 10
  br i1 %_bop12, label %_body14, label %_post13
_post13:
  %_x25 = load i64, i64* %_x7
  ret i64 %_x25
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
