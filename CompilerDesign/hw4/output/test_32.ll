; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_localId573 = alloca i64
  store i64 12, i64* %_localId573
  %_locRef575 = load i64, i64* %_localId573
  ret i64 %_locRef575
}

define i64 @g() {
  %_localId570 = alloca i64
  store i64 10, i64* %_localId570
  %_locRef572 = load i64, i64* %_localId570
  ret i64 %_locRef572
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args561 = alloca i64
  %_args562 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args561
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args562
  %_callUID565 = call i64 @f()
  %_callUID566 = call i64 @g()
  %_bop567 = add i64 %_callUID565, %_callUID566
  %_locRef568 = load i64, i64* @i
  %_bop569 = add i64 %_bop567, %_locRef568
  ret i64 %_bop569
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
