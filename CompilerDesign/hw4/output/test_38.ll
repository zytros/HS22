; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_callUID837 = call i64 @f2()
  ret i64 %_callUID837
}

define i64 @f2() {
  %_callUID836 = call i64 @f3()
  ret i64 %_callUID836
}

define i64 @f3() {
  %_callUID835 = call i64 @f4()
  ret i64 %_callUID835
}

define i64 @f4() {
  %_callUID834 = call i64 @f5()
  ret i64 %_callUID834
}

define i64 @f5() {
  %_callUID833 = call i64 @f6()
  ret i64 %_callUID833
}

define i64 @f6() {
  %_callUID832 = call i64 @f7()
  ret i64 %_callUID832
}

define i64 @f7() {
  %_callUID831 = call i64 @f8()
  ret i64 %_callUID831
}

define i64 @f8() {
  %_callUID830 = call i64 @f9()
  ret i64 %_callUID830
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args825 = alloca i64
  %_args826 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args825
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args826
  %_callUID829 = call i64 @f1()
  ret i64 %_callUID829
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
