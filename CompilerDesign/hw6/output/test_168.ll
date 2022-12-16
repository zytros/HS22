; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %_argc8300, { i64, [0 x i8*] }* %_argv8297) {
  %_i8303 = alloca i64
  store i64 0, i64* %_i8303
  %_b8305 = load i1, i1* @b
  br i1 %_b8305, label %_then8309, label %_else8308
_else8308:
  br label %_merge8307
_merge8307:
  %_i8310 = load i64, i64* %_i8303
  ret i64 %_i8310
_then8309:
  store i64 1, i64* %_i8303
  br label %_merge8307
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
