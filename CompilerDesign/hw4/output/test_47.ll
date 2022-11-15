; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_args1079 = alloca i64
  %_localId1081 = alloca i64
  store i64 %x, i64* %_args1079
  store i64 1, i64* %_localId1081
  %_locRef1083 = load i64, i64* %_args1079
  %_bop1084 = icmp sgt i64 %_locRef1083, 0
  br i1 %_bop1084, label %_while_body_jmp1086, label %_while_end_jmp1085
_while_body_jmp1086:
  %_locRef1087 = load i64, i64* %_localId1081
  %_locRef1088 = load i64, i64* %_args1079
  %_bop1089 = mul i64 %_locRef1087, %_locRef1088
  store i64 %_bop1089, i64* %_localId1081
  %_locRef1091 = load i64, i64* %_args1079
  %_bop1092 = sub i64 %_locRef1091, 1
  store i64 %_bop1092, i64* %_args1079
  %_locRef1094 = load i64, i64* %_args1079
  %_bop1095 = icmp sgt i64 %_locRef1094, 0
  br i1 %_bop1095, label %_while_body_jmp1086, label %_while_end_jmp1085
_while_end_jmp1085:
  %_locRef1096 = load i64, i64* %_localId1081
  ret i64 %_locRef1096
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1072 = alloca i64
  %_args1073 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args1072
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1073
  %_callUID1076 = call i64 @fact(i64 5)
  %_callUID1077 = call i8* @string_of_int(i64 %_callUID1076)
  call void @print_string(i8* %_callUID1077)
  ret i64 0
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
