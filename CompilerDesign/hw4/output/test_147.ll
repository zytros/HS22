; generated from: oatprograms/run40.oat
target triple = "x86_64-unknown-linux"
@i = global i64 8

define i64 @f() {
  %_localId885 = alloca i64
  store i64 0, i64* %_localId885
  %_callUID887 = call i64 @g()
  store i64 %_callUID887, i64* %_localId885
  %_locRef889 = load i64, i64* %_localId885
  ret i64 %_locRef889
}

define i64 @g() {
  %_locRef884 = load i64, i64* @i
  ret i64 %_locRef884
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args879 = alloca i64
  %_args880 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args879
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args880
  %_callUID883 = call i64 @f()
  ret i64 %_callUID883
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
