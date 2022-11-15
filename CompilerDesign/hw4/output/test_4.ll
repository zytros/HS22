; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args55 = alloca i64
  %_args56 = alloca { i64, [0 x i8*] }*
  %_localId60 = alloca i64
  %_localId63 = alloca i64
  store i64 %argc, i64* %_args55
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args56
  %_bop59 = lshr i64 100, 3
  store i64 %_bop59, i64* %_localId60
  %_bop62 = shl i64 100, 3
  store i64 %_bop62, i64* %_localId63
  %_locRef68 = load i64, i64* %_localId60
  %_locRef69 = load i64, i64* %_localId63
  %_bop70 = sub i64 %_locRef68, %_locRef69
  %_bop71 = icmp sle i64 %_bop70, 0
  br i1 %_bop71, label %_ifTruelbl65, label %_ifFalselbl66
_ifTruelbl65:
  %_locRef72 = load i64, i64* %_localId60
  %_uopUID73 = sub i64 0, %_locRef72
  %_locRef74 = load i64, i64* %_localId63
  %_bop75 = sub i64 %_uopUID73, %_locRef74
  ret i64 %_bop75
_ifFalselbl66:
  %_locRef76 = load i64, i64* %_localId60
  %_locRef77 = load i64, i64* %_localId63
  %_bop78 = sub i64 %_locRef76, %_locRef77
  ret i64 %_bop78
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
