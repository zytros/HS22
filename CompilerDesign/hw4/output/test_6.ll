; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args94 = alloca i64
  %_args95 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args94
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args95
  %_uopUID101 = xor i64 -1, 5
  %_bop102 = and i64 %_uopUID101, 6
  %_bop103 = or i64 2, 0
  %_bop104 = icmp sge i64 %_bop102, %_bop103
  br i1 %_bop104, label %_ifTruelbl98, label %_ifFalselbl99
_ifTruelbl98:
  ret i64 23
_ifFalselbl99:
  ret i64 46
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
