; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_args6018 = alloca i64
  %_args6019 = alloca i64
  %_localId6027 = alloca i64
  store i64 %a, i64* %_args6018
  store i64 %b, i64* %_args6019
  %_locRef6022 = load i64, i64* %_args6019
  %_bop6023 = icmp ne i64 %_locRef6022, 0
  br i1 %_bop6023, label %_while_body_jmp6025, label %_while_end_jmp6024
_while_body_jmp6025:
  %_locRef6026 = load i64, i64* %_args6019
  store i64 %_locRef6026, i64* %_localId6027
  %_locRef6029 = load i64, i64* %_args6018
  %_locRef6030 = load i64, i64* %_args6019
  %_callUID6031 = call i64 @mod(i64 %_locRef6029, i64 %_locRef6030)
  store i64 %_callUID6031, i64* %_args6019
  %_locRef6033 = load i64, i64* %_localId6027
  store i64 %_locRef6033, i64* %_args6018
  %_locRef6035 = load i64, i64* %_args6019
  %_bop6036 = icmp ne i64 %_locRef6035, 0
  br i1 %_bop6036, label %_while_body_jmp6025, label %_while_end_jmp6024
_while_end_jmp6024:
  %_locRef6037 = load i64, i64* %_args6018
  ret i64 %_locRef6037
}

define i64 @mod(i64 %a, i64 %b) {
  %_args5996 = alloca i64
  %_args5997 = alloca i64
  %_localId6001 = alloca i64
  store i64 %a, i64* %_args5996
  store i64 %b, i64* %_args5997
  %_locRef6000 = load i64, i64* %_args5996
  store i64 %_locRef6000, i64* %_localId6001
  %_locRef6003 = load i64, i64* %_localId6001
  %_locRef6004 = load i64, i64* %_args5997
  %_bop6005 = sub i64 %_locRef6003, %_locRef6004
  %_bop6006 = icmp sge i64 %_bop6005, 0
  br i1 %_bop6006, label %_while_body_jmp6008, label %_while_end_jmp6007
_while_body_jmp6008:
  %_locRef6009 = load i64, i64* %_localId6001
  %_locRef6010 = load i64, i64* %_args5997
  %_bop6011 = sub i64 %_locRef6009, %_locRef6010
  store i64 %_bop6011, i64* %_localId6001
  %_locRef6013 = load i64, i64* %_localId6001
  %_locRef6014 = load i64, i64* %_args5997
  %_bop6015 = sub i64 %_locRef6013, %_locRef6014
  %_bop6016 = icmp sge i64 %_bop6015, 0
  br i1 %_bop6016, label %_while_body_jmp6008, label %_while_end_jmp6007
_while_end_jmp6007:
  %_locRef6017 = load i64, i64* %_localId6001
  ret i64 %_locRef6017
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args5985 = alloca i64
  %_args5986 = alloca { i64, [0 x i8*] }*
  %_localId5989 = alloca i64
  %_localId5991 = alloca i64
  store i64 %argc, i64* %_args5985
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args5986
  store i64 64, i64* %_localId5989
  store i64 48, i64* %_localId5991
  %_locRef5993 = load i64, i64* %_localId5989
  %_locRef5994 = load i64, i64* %_localId5991
  %_callUID5995 = call i64 @gcd(i64 %_locRef5993, i64 %_locRef5994)
  ret i64 %_callUID5995
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
