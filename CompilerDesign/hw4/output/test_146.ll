; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_args875 = alloca i64
  store i64 %i, i64* %_args875
  %_locRef877 = load i64, i64* %_args875
  %_callUID878 = call i64 @f2(i64 %_locRef877)
  ret i64 %_callUID878
}

define i64 @f2(i64 %i) {
  %_args871 = alloca i64
  store i64 %i, i64* %_args871
  %_locRef873 = load i64, i64* %_args871
  %_callUID874 = call i64 @f3(i64 %_locRef873)
  ret i64 %_callUID874
}

define i64 @f3(i64 %i) {
  %_args867 = alloca i64
  store i64 %i, i64* %_args867
  %_locRef869 = load i64, i64* %_args867
  %_callUID870 = call i64 @f4(i64 %_locRef869)
  ret i64 %_callUID870
}

define i64 @f4(i64 %i) {
  %_args863 = alloca i64
  store i64 %i, i64* %_args863
  %_locRef865 = load i64, i64* %_args863
  %_callUID866 = call i64 @f5(i64 %_locRef865)
  ret i64 %_callUID866
}

define i64 @f5(i64 %i) {
  %_args859 = alloca i64
  store i64 %i, i64* %_args859
  %_locRef861 = load i64, i64* %_args859
  %_callUID862 = call i64 @f6(i64 %_locRef861)
  ret i64 %_callUID862
}

define i64 @f6(i64 %i) {
  %_args855 = alloca i64
  store i64 %i, i64* %_args855
  %_locRef857 = load i64, i64* %_args855
  %_callUID858 = call i64 @f7(i64 %_locRef857)
  ret i64 %_callUID858
}

define i64 @f7(i64 %i) {
  %_args851 = alloca i64
  store i64 %i, i64* %_args851
  %_locRef853 = load i64, i64* %_args851
  %_callUID854 = call i64 @f8(i64 %_locRef853)
  ret i64 %_callUID854
}

define i64 @f8(i64 %i) {
  %_args847 = alloca i64
  store i64 %i, i64* %_args847
  %_locRef849 = load i64, i64* %_args847
  %_callUID850 = call i64 @f9(i64 %_locRef849)
  ret i64 %_callUID850
}

define i64 @f9(i64 %i) {
  %_args844 = alloca i64
  store i64 %i, i64* %_args844
  %_locRef846 = load i64, i64* %_args844
  ret i64 %_locRef846
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args838 = alloca i64
  %_args839 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args838
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args839
  %_locRef842 = load i64, i64* %_args838
  %_callUID843 = call i64 @f1(i64 %_locRef842)
  ret i64 %_callUID843
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
