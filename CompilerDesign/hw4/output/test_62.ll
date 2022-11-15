; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args2094 = alloca i64
  %_args2095 = alloca { i64, [0 x i8*] }*
  %_localId2108 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args2094
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args2095
  %_atomArrUID2099 = alloca { i64, [3 x i64] }
  %_idxUID2106 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2099, i32 0, i32 0
  store i64 3, i64* %_idxUID2106
  %_gep2100 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2099, i32 0, i32 1, i32 0
  %_gep2101 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2099, i32 0, i32 1, i32 1
  %_gep2102 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2099, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep2100
  store i64 100, i64* %_gep2101
  store i64 999, i64* %_gep2102
  %_arrayUID2098 = bitcast { i64, [3 x i64] }* %_atomArrUID2099 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID2098, { i64, [0 x i64] }** %_localId2108
  %_locRef2110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId2108
  %_idxUID2111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef2110, i32 0, i32 1, i32 2
  %_getArrUID2112 = load i64, i64* %_idxUID2111
  ret i64 %_getArrUID2112
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
