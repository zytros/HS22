; generated from: oatprograms/run52.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x18950, i64 %_x28947, i64 %_x38944, i64 %_x48941, i64 %_x58938, i64 %_x68935, i64 %_x78932, i64 %_x88929) {
  %_x18951 = alloca i64
  %_x28948 = alloca i64
  %_x38945 = alloca i64
  %_x48942 = alloca i64
  %_x58939 = alloca i64
  store i64 %_x18950, i64* %_x18951
  store i64 %_x28947, i64* %_x28948
  store i64 %_x38944, i64* %_x38945
  store i64 %_x48941, i64* %_x48942
  store i64 %_x58938, i64* %_x58939
  %_x18953 = load i64, i64* %_x18951
  %_x28954 = load i64, i64* %_x28948
  %_bop8955 = add i64 %_x18953, %_x28954
  %_x38956 = load i64, i64* %_x38945
  %_bop8957 = add i64 %_bop8955, %_x38956
  %_x48958 = load i64, i64* %_x48942
  %_bop8959 = add i64 %_bop8957, %_x48958
  %_x58960 = load i64, i64* %_x58939
  %_bop8961 = add i64 %_bop8959, %_x58960
  ret i64 %_bop8961
}

define i64 @program(i64 %_argc8922, { i64, [0 x i8*] }* %_argv8919) {
  %_result8928 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result8928
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
