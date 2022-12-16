; generated from: hw5programs/compile_array_fptr.oat
target triple = "x86_64-unknown-linux"
define i64 @add(i64 %_x6991, i64 %_y6988) {
  %_x6992 = alloca i64
  %_y6989 = alloca i64
  store i64 %_x6991, i64* %_x6992
  store i64 %_y6988, i64* %_y6989
  %_x6994 = load i64, i64* %_x6992
  %_y6995 = load i64, i64* %_y6989
  %_bop6996 = add i64 %_x6994, %_y6995
  ret i64 %_bop6996
}

define i64 @sub(i64 %_x6982, i64 %_y6979) {
  %_x6983 = alloca i64
  %_y6980 = alloca i64
  store i64 %_x6982, i64* %_x6983
  store i64 %_y6979, i64* %_y6980
  %_x6985 = load i64, i64* %_x6983
  %_y6986 = load i64, i64* %_y6980
  %_bop6987 = sub i64 %_x6985, %_y6986
  ret i64 %_bop6987
}

define i64 @program(i64 %_argc6962, { i64, [0 x i8*] }* %_argv6959) {
  %_ops6971 = alloca { i64, [0 x i64 (i64, i64)*] }*
  %_raw_array6965 = call i64* @oat_alloc_array(i64 2)
  %_array6966 = bitcast i64* %_raw_array6965 to { i64, [0 x i64 (i64, i64)*] }*
  %_ind6967 = getelementptr { i64, [0 x i64 (i64, i64)*] }, { i64, [0 x i64 (i64, i64)*] }* %_array6966, i32 0, i32 1, i32 0
  store i64 (i64, i64)* @add, i64 (i64, i64)** %_ind6967
  %_ind6969 = getelementptr { i64, [0 x i64 (i64, i64)*] }, { i64, [0 x i64 (i64, i64)*] }* %_array6966, i32 0, i32 1, i32 1
  store i64 (i64, i64)* @sub, i64 (i64, i64)** %_ind6969
  store { i64, [0 x i64 (i64, i64)*] }* %_array6966, { i64, [0 x i64 (i64, i64)*] }** %_ops6971
  %_ops6973 = load { i64, [0 x i64 (i64, i64)*] }*, { i64, [0 x i64 (i64, i64)*] }** %_ops6971
  %_tmp6975 = bitcast { i64, [0 x i64 (i64, i64)*] }* %_ops6973 to i64*
  call void @oat_assert_array_length(i64* %_tmp6975, i64 0)
  %_index_ptr6976 = getelementptr { i64, [0 x i64 (i64, i64)*] }, { i64, [0 x i64 (i64, i64)*] }* %_ops6973, i32 0, i32 1, i32 0
  %_index6977 = load i64 (i64, i64)*, i64 (i64, i64)** %_index_ptr6976
  %_result6978 = call i64 %_index6977(i64 1, i64 1)
  ret i64 %_result6978
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
