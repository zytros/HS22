; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1252 = alloca i64
  %_args1253 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args1252
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1253
  %_atomArrUID1257 = alloca { i64, [2 x i64] }
  %_idxUID1262 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1257, i32 0, i32 0
  store i64 2, i64* %_idxUID1262
  %_gep1258 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1257, i32 0, i32 1, i32 0
  %_gep1259 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1257, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1258
  store i64 2, i64* %_gep1259
  %_arrayUID1256 = bitcast { i64, [2 x i64] }* %_atomArrUID1257 to { i64, [0 x i64] }*
  %_atomArrUID1265 = alloca { i64, [2 x i64] }
  %_idxUID1270 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1265, i32 0, i32 0
  store i64 2, i64* %_idxUID1270
  %_gep1266 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1265, i32 0, i32 1, i32 0
  %_gep1267 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1265, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep1266
  store i64 4, i64* %_gep1267
  %_arrayUID1264 = bitcast { i64, [2 x i64] }* %_atomArrUID1265 to { i64, [0 x i64] }*
  %_atomArrUID1273 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID1278 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1273, i32 0, i32 0
  store i64 2, i64* %_idxUID1278
  %_gep1274 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1273, i32 0, i32 1, i32 0
  %_gep1275 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1273, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID1256, { i64, [0 x i64] }** %_gep1274
  store { i64, [0 x i64] }* %_arrayUID1264, { i64, [0 x i64] }** %_gep1275
  %_arrayUID1272 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1273 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1272, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_locRef1281 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_idxUID1282 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1281, i32 0, i32 1, i32 1
  %_getArrUID1283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1282
  %_idxUID1284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1283, i32 0, i32 1, i32 1
  %_getArrUID1285 = load i64, i64* %_idxUID1284
  ret i64 %_getArrUID1285
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
