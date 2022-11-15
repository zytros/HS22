; generated from: oatprograms/globals6.oat
target triple = "x86_64-unknown-linux"
@_stringd271 = global [7 x i8] c"hello!\00"
@_string270 = global i8* bitcast ([7 x i8]* @_stringd271 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_args265 = alloca i64
  %_args266 = alloca { i64, [0 x i8*] }*
  %_localId272 = alloca i8*
  store i64 %argc, i64* %_args265
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args266
  %_stringp269 = load i8*, i8** @_string270
  store i8* %_stringp269, i8** %_localId272
  ret i64 15
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
