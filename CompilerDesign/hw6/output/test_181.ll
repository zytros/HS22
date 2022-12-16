; generated from: oatprograms/run51.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x18901, i64 %_x28898, i64 %_x38895, i64 %_x48892, i64 %_x58889, i64 %_x68886, i64 %_x78883, i64 %_x88880) {
  %_x18902 = alloca i64
  %_x28899 = alloca i64
  %_x38896 = alloca i64
  %_x48893 = alloca i64
  %_x58890 = alloca i64
  %_x68887 = alloca i64
  %_x78884 = alloca i64
  %_x88881 = alloca i64
  store i64 %_x18901, i64* %_x18902
  store i64 %_x28898, i64* %_x28899
  store i64 %_x38895, i64* %_x38896
  store i64 %_x48892, i64* %_x48893
  store i64 %_x58889, i64* %_x58890
  store i64 %_x68886, i64* %_x68887
  store i64 %_x78883, i64* %_x78884
  store i64 %_x88880, i64* %_x88881
  %_x18904 = load i64, i64* %_x18902
  %_x28905 = load i64, i64* %_x28899
  %_bop8906 = add i64 %_x18904, %_x28905
  %_x38907 = load i64, i64* %_x38896
  %_bop8908 = add i64 %_bop8906, %_x38907
  %_x48909 = load i64, i64* %_x48893
  %_bop8910 = add i64 %_bop8908, %_x48909
  %_x58911 = load i64, i64* %_x58890
  %_bop8912 = add i64 %_bop8910, %_x58911
  %_x68913 = load i64, i64* %_x68887
  %_bop8914 = add i64 %_bop8912, %_x68913
  %_x78915 = load i64, i64* %_x78884
  %_bop8916 = add i64 %_bop8914, %_x78915
  %_x88917 = load i64, i64* %_x88881
  %_bop8918 = add i64 %_bop8916, %_x88917
  ret i64 %_bop8918
}

define i64 @program(i64 %_argc8869, { i64, [0 x i8*] }* %_argv8866) {
  %_x8876 = alloca i64
  %_result8875 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  store i64 %_result8875, i64* %_x8876
  %_x8878 = load i64, i64* %_x8876
  call void @print_int(i64 %_x8878)
  ret i64 41
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
