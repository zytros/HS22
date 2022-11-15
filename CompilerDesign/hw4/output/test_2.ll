; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args10 = alloca i64
  %_args11 = alloca { i64, [0 x i8*] }*
  %_localId14 = alloca i64
  %_localId16 = alloca i64
  store i64 %argc, i64* %_args10
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args11
  store i64 0, i64* %_localId14
  store i64 0, i64* %_localId16
  %_locRef18 = load i64, i64* %_localId16
  %_bop19 = icmp slt i64 %_locRef18, 10
  br i1 %_bop19, label %_while_body_jmp21, label %_while_end_jmp20
_while_body_jmp21:
  %_locRef22 = load i64, i64* %_localId14
  %_locRef23 = load i64, i64* %_localId16
  %_bop24 = add i64 %_locRef22, %_locRef23
  %_locRef25 = load i64, i64* %_localId16
  %_bop26 = mul i64 %_bop24, %_locRef25
  store i64 %_bop26, i64* %_localId14
  %_locRef28 = load i64, i64* %_localId16
  %_bop29 = add i64 %_locRef28, 1
  store i64 %_bop29, i64* %_localId16
  %_locRef31 = load i64, i64* %_localId16
  %_bop32 = icmp slt i64 %_locRef31, 10
  br i1 %_bop32, label %_while_body_jmp21, label %_while_end_jmp20
_while_end_jmp20:
  %_locRef33 = load i64, i64* %_localId14
  ret i64 %_locRef33
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
