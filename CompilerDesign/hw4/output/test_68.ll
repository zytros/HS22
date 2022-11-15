; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args2235 = alloca i64
  %_args2236 = alloca { i64, [0 x i8*] }*
  %_localId2249 = alloca { i64, [0 x i64] }*
  %_localId2253 = alloca i8*
  store i64 %argc, i64* %_args2235
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args2236
  %_atomArrUID2240 = alloca { i64, [3 x i64] }
  %_idxUID2247 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2240, i32 0, i32 0
  store i64 3, i64* %_idxUID2247
  %_gep2241 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2240, i32 0, i32 1, i32 0
  %_gep2242 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2240, i32 0, i32 1, i32 1
  %_gep2243 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2240, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep2241
  store i64 110, i64* %_gep2242
  store i64 110, i64* %_gep2243
  %_arrayUID2239 = bitcast { i64, [3 x i64] }* %_atomArrUID2240 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID2239, { i64, [0 x i64] }** %_localId2249
  %_locRef2251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId2249
  %_callUID2252 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef2251)
  store i8* %_callUID2252, i8** %_localId2253
  %_locRef2255 = load i8*, i8** %_localId2253
  call void @print_string(i8* %_locRef2255)
  ret i64 0
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
