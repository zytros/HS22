; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc8245, { i64, [0 x i8*] }* %_argv8242) {
  br i1 1, label %_then8254, label %_else8253
_else8253:
  ret i64 46
_merge8252:
  ret i64 0
_then8254:
  ret i64 23
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
