; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc8202, { i64, [0 x i8*] }* %_argv8199) {
  %_x8206 = alloca i64
  %_y8209 = alloca i64
  store i64 12, i64* %_x8206
  store i64 800, i64* %_y8209
  %_x8211 = load i64, i64* %_x8206
  %_y8212 = load i64, i64* %_y8209
  %_bop8213 = sub i64 %_x8211, %_y8212
  %_bop8214 = icmp sle i64 %_bop8213, 0
  br i1 %_bop8214, label %_then8224, label %_else8223
_else8223:
  %_x8219 = load i64, i64* %_x8206
  %_y8220 = load i64, i64* %_y8209
  %_bop8221 = sub i64 %_x8219, %_y8220
  ret i64 %_bop8221
_merge8222:
  ret i64 0
_then8224:
  %_x8215 = load i64, i64* %_x8206
  %_unop8216 = sub i64 0, %_x8215
  %_y8217 = load i64, i64* %_y8209
  %_bop8218 = sub i64 %_unop8216, %_y8217
  ret i64 %_bop8218
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
