; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc271, { i64, [0 x i8*] }* %_argv268) {
  %_i274 = alloca i64
  %_j279 = alloca i64
  store i64 9, i64* %_i274
  %_i276 = load i64, i64* %_i274
  %_i277 = load i64, i64* %_i274
  %_bop278 = add i64 %_i276, %_i277
  store i64 %_bop278, i64* %_j279
  %_i281 = load i64, i64* %_i274
  %_i282 = load i64, i64* %_i274
  %_i283 = load i64, i64* %_i274
  %_bop284 = mul i64 %_i282, %_i283
  %_bop285 = add i64 %_i281, %_bop284
  %_j286 = load i64, i64* %_j279
  %_bop287 = sub i64 %_bop285, %_j286
  %_bop288 = lshr i64 %_bop287, 2
  %_bop289 = shl i64 %_bop288, 2
  %_bop290 = ashr i64 %_bop289, 2
  ret i64 %_bop290
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
