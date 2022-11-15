; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args34 = alloca i64
  %_args35 = alloca { i64, [0 x i8*] }*
  %_localId38 = alloca i64
  %_localId40 = alloca i64
  store i64 %argc, i64* %_args34
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args35
  store i64 0, i64* %_localId38
  store i64 0, i64* %_localId40
  %_locRef42 = load i64, i64* %_localId40
  %_bop43 = icmp slt i64 %_locRef42, 3
  br i1 %_bop43, label %_while_body_jmp45, label %_while_end_jmp44
_while_body_jmp45:
  %_locRef46 = load i64, i64* %_localId38
  %_bop47 = add i64 %_locRef46, 2
  store i64 %_bop47, i64* %_localId38
  %_locRef49 = load i64, i64* %_localId40
  %_bop50 = add i64 %_locRef49, 1
  store i64 %_bop50, i64* %_localId40
  %_locRef52 = load i64, i64* %_localId40
  %_bop53 = icmp slt i64 %_locRef52, 3
  br i1 %_bop53, label %_while_body_jmp45, label %_while_end_jmp44
_while_end_jmp44:
  %_locRef54 = load i64, i64* %_localId38
  ret i64 %_locRef54
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
