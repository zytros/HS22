; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args515 = alloca i64
  %_args516 = alloca { i64, [0 x i8*] }*
  %_localId519 = alloca i64
  %_localId524 = alloca i64
  store i64 %argc, i64* %_args515
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args516
  store i64 9, i64* %_localId519
  %_locRef521 = load i64, i64* %_localId519
  %_locRef522 = load i64, i64* %_localId519
  %_bop523 = add i64 %_locRef521, %_locRef522
  store i64 %_bop523, i64* %_localId524
  %_locRef526 = load i64, i64* %_localId519
  %_locRef527 = load i64, i64* %_localId519
  %_locRef528 = load i64, i64* %_localId519
  %_bop529 = mul i64 %_locRef527, %_locRef528
  %_bop530 = add i64 %_locRef526, %_bop529
  %_locRef531 = load i64, i64* %_localId524
  %_bop532 = sub i64 %_bop530, %_locRef531
  %_bop533 = lshr i64 %_bop532, 2
  %_bop534 = shl i64 %_bop533, 2
  %_bop535 = ashr i64 %_bop534, 2
  ret i64 %_bop535
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
