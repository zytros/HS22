; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_args3505 = alloca i64
  %_localId3507 = alloca i64
  store i64 %i, i64* %_args3505
  store i64 0, i64* %_localId3507
  %_locRef3512 = load i64, i64* %_args3505
  %_bop3513 = icmp eq i64 %_locRef3512, 0
  br i1 %_bop3513, label %_ifTruelbl3509, label %_ifFalselbl3510
_ifTruelbl3509:
  store i64 1, i64* %_localId3507
  br label %_ifEndlbl3511
_ifFalselbl3510:
  %_locRef3515 = load i64, i64* %_args3505
  %_locRef3516 = load i64, i64* %_args3505
  %_bop3517 = sub i64 %_locRef3516, 1
  %_callUID3518 = call i64 @f(i64 %_bop3517)
  %_bop3519 = mul i64 %_locRef3515, %_callUID3518
  store i64 %_bop3519, i64* %_localId3507
  br label %_ifEndlbl3511
_ifEndlbl3511:
  %_locRef3521 = load i64, i64* %_localId3507
  ret i64 %_locRef3521
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3500 = alloca i64
  %_args3501 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args3500
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3501
  %_callUID3504 = call i64 @f(i64 5)
  ret i64 %_callUID3504
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
