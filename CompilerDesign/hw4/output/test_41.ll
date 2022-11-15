; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_args898 = alloca i64
  %_args899 = alloca i64
  %_args900 = alloca i64
  %_args901 = alloca i64
  %_args902 = alloca i64
  %_args903 = alloca i64
  %_args904 = alloca i64
  %_args905 = alloca i64
  store i64 %x1, i64* %_args898
  store i64 %x2, i64* %_args899
  store i64 %x3, i64* %_args900
  store i64 %x4, i64* %_args901
  store i64 %x5, i64* %_args902
  store i64 %x6, i64* %_args903
  store i64 %x7, i64* %_args904
  store i64 %x8, i64* %_args905
  %_locRef914 = load i64, i64* %_args898
  %_locRef915 = load i64, i64* %_args899
  %_bop916 = add i64 %_locRef914, %_locRef915
  %_locRef917 = load i64, i64* %_args900
  %_bop918 = add i64 %_bop916, %_locRef917
  %_locRef919 = load i64, i64* %_args901
  %_bop920 = add i64 %_bop918, %_locRef919
  %_locRef921 = load i64, i64* %_args902
  %_bop922 = add i64 %_bop920, %_locRef921
  %_locRef923 = load i64, i64* %_args903
  %_bop924 = add i64 %_bop922, %_locRef923
  %_locRef925 = load i64, i64* %_args904
  %_bop926 = add i64 %_bop924, %_locRef925
  %_locRef927 = load i64, i64* %_args905
  %_bop928 = add i64 %_bop926, %_locRef927
  ret i64 %_bop928
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args890 = alloca i64
  %_args891 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args890
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args891
  %_uopUID894 = sub i64 0, 5
  %_uopUID895 = sub i64 0, 4
  %_uopUID896 = sub i64 0, 3
  %_callUID897 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uopUID894, i64 %_uopUID895, i64 %_uopUID896)
  ret i64 %_callUID897
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
