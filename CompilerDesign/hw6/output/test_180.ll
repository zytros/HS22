; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x18848, i64 %_x28845, i64 %_x38842, i64 %_x48839, i64 %_x58836, i64 %_x68833, i64 %_x78830, i64 %_x88827) {
  %_x18849 = alloca i64
  %_x28846 = alloca i64
  %_x38843 = alloca i64
  %_x48840 = alloca i64
  %_x58837 = alloca i64
  %_x68834 = alloca i64
  %_x78831 = alloca i64
  %_x88828 = alloca i64
  store i64 %_x18848, i64* %_x18849
  store i64 %_x28845, i64* %_x28846
  store i64 %_x38842, i64* %_x38843
  store i64 %_x48839, i64* %_x48840
  store i64 %_x58836, i64* %_x58837
  store i64 %_x68833, i64* %_x68834
  store i64 %_x78830, i64* %_x78831
  store i64 %_x88827, i64* %_x88828
  %_x18851 = load i64, i64* %_x18849
  %_x28852 = load i64, i64* %_x28846
  %_bop8853 = add i64 %_x18851, %_x28852
  %_x38854 = load i64, i64* %_x38843
  %_bop8855 = add i64 %_bop8853, %_x38854
  %_x48856 = load i64, i64* %_x48840
  %_bop8857 = add i64 %_bop8855, %_x48856
  %_x58858 = load i64, i64* %_x58837
  %_bop8859 = add i64 %_bop8857, %_x58858
  %_x68860 = load i64, i64* %_x68834
  %_bop8861 = add i64 %_bop8859, %_x68860
  %_x78862 = load i64, i64* %_x78831
  %_bop8863 = add i64 %_bop8861, %_x78862
  %_x88864 = load i64, i64* %_x88828
  %_bop8865 = add i64 %_bop8863, %_x88864
  ret i64 %_bop8865
}

define i64 @program(i64 %_argc8820, { i64, [0 x i8*] }* %_argv8817) {
  %_result8826 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result8826
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
