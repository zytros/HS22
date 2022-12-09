; generated from: oatprograms/run49.oat
target triple = "x86_64-unknown-linux"
@_stringd1049 = global [4 x i8] c"abc\00"
@_string1048 = global i8* bitcast ([4 x i8]* @_stringd1049 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1043 = alloca i64
  %_args1044 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args1043
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1044
  %_stringp1047 = load i8*, i8** @_string1048
  call void @print_string(i8* %_stringp1047)
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
