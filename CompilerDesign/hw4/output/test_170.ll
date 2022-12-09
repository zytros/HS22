; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args2113 = alloca i64
  %_args2114 = alloca { i64, [0 x i8*] }*
  %_localId2117 = alloca i64
  %_localId2129 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args2113
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args2114
  store i64 999, i64* %_localId2117
  %_atomArrUID2120 = alloca { i64, [3 x i64] }
  %_idxUID2127 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2120, i32 0, i32 0
  store i64 3, i64* %_idxUID2127
  %_gep2121 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2120, i32 0, i32 1, i32 0
  %_gep2122 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2120, i32 0, i32 1, i32 1
  %_gep2123 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2120, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep2121
  store i64 100, i64* %_gep2122
  store i64 999, i64* %_gep2123
  %_arrayUID2119 = bitcast { i64, [3 x i64] }* %_atomArrUID2120 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID2119, { i64, [0 x i64] }** %_localId2129
  %_locRef2131 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId2129
  %_idxUID2132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef2131, i32 0, i32 1, i32 2
  %_getArrUID2133 = load i64, i64* %_idxUID2132
  ret i64 %_getArrUID2133
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
