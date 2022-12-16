; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i305 = alloca i64
  store i64 12, i64* %_i305
  %_i307 = load i64, i64* %_i305
  ret i64 %_i307
}

define i64 @g() {
  %_i302 = alloca i64
  store i64 10, i64* %_i302
  %_i304 = load i64, i64* %_i302
  ret i64 %_i304
}

define i64 @program(i64 %_argc294, { i64, [0 x i8*] }* %_argv291) {
  %_result297 = call i64 @f()
  %_result298 = call i64 @g()
  %_bop299 = add i64 %_result297, %_result298
  %_i300 = load i64, i64* @i
  %_bop301 = add i64 %_bop299, %_i300
  ret i64 %_bop301
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
