; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args79 = alloca i64
  %_args80 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args79
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args80
  %_uopUID86 = xor i1 1, 1
  %_uopUID87 = sub i64 0, 4
  %_bop88 = add i64 %_uopUID87, 5
  %_bop89 = icmp sgt i64 %_bop88, 0
  %_bop90 = mul i64 6, 4
  %_bop91 = icmp slt i64 %_bop90, 25
  %_bop92 = and i1 %_bop89, %_bop91
  %_bop93 = or i1 %_uopUID86, %_bop92
  br i1 %_bop93, label %_ifTruelbl83, label %_ifFalselbl84
_ifTruelbl83:
  ret i64 9
_ifFalselbl84:
  ret i64 4
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
