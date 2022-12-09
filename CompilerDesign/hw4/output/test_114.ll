; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args105 = alloca i64
  %_args106 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args105
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args106
  %_bop112 = icmp ne i64 6, 5
  br i1 %_bop112, label %_ifTruelbl109, label %_ifFalselbl110
_ifTruelbl109:
  %_bop113 = shl i64 5, 17
  %_bop114 = lshr i64 %_bop113, 2
  %_bop115 = ashr i64 %_bop114, 10
  %_uopUID116 = xor i64 -1, %_bop115
  %_bop117 = mul i64 %_uopUID116, 2
  %_bop118 = sub i64 %_bop117, 100
  %_bop119 = add i64 %_bop118, 6
  ret i64 %_bop119
_ifFalselbl110:
  ret i64 2
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
