; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %_x911, i64 %_y908) {
  %_x912 = alloca i64
  %_y909 = alloca i64
  %_r914 = alloca i64
  store i64 %_x911, i64* %_x912
  store i64 %_y908, i64* %_y909
  store i64 0, i64* %_r914
  %_x916 = load i64, i64* %_x912
  %_bop917 = icmp sge i64 %_x916, 1
  br i1 %_bop917, label %_then930, label %_else929
_else929:
  %_x924 = load i64, i64* %_x912
  %_y925 = load i64, i64* %_y909
  %_bop926 = add i64 %_x924, %_y925
  store i64 %_bop926, i64* %_r914
  br label %_merge928
_merge928:
  %_r931 = load i64, i64* %_r914
  ret i64 %_r931
_then930:
  %_y918 = load i64, i64* %_y909
  %_x919 = load i64, i64* %_x912
  %_bop920 = sub i64 %_x919, 1
  %_result921 = call i64 @f(i64 %_bop920, i64 %_y918)
  %_bop922 = add i64 1, %_result921
  store i64 %_bop922, i64* %_r914
  br label %_merge928
}

define i64 @program(i64 %_argc896, { i64, [0 x i8*] }* %_argv893) {
  %_x899 = alloca i64
  %_y901 = alloca i64
  store i64 3, i64* %_x899
  store i64 3, i64* %_y901
  %_y903 = load i64, i64* %_y901
  %_x904 = load i64, i64* %_x899
  %_result905 = call i64 @f(i64 %_x904, i64 %_y903)
  %_i906 = load i64, i64* @i
  %_bop907 = add i64 %_result905, %_i906
  ret i64 %_bop907
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
