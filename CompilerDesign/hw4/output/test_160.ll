; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1286 = alloca i64
  %_args1287 = alloca { i64, [0 x i8*] }*
  %_localId1314 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_args1286
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1287
  %_atomArrUID1291 = alloca { i64, [2 x i64] }
  %_idxUID1296 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1291, i32 0, i32 0
  store i64 2, i64* %_idxUID1296
  %_gep1292 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1291, i32 0, i32 1, i32 0
  %_gep1293 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1291, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1292
  store i64 2, i64* %_gep1293
  %_arrayUID1290 = bitcast { i64, [2 x i64] }* %_atomArrUID1291 to { i64, [0 x i64] }*
  %_atomArrUID1299 = alloca { i64, [2 x i64] }
  %_idxUID1304 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1299, i32 0, i32 0
  store i64 2, i64* %_idxUID1304
  %_gep1300 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1299, i32 0, i32 1, i32 0
  %_gep1301 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1299, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep1300
  store i64 4, i64* %_gep1301
  %_arrayUID1298 = bitcast { i64, [2 x i64] }* %_atomArrUID1299 to { i64, [0 x i64] }*
  %_atomArrUID1307 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID1312 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1307, i32 0, i32 0
  store i64 2, i64* %_idxUID1312
  %_gep1308 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1307, i32 0, i32 1, i32 0
  %_gep1309 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1307, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID1290, { i64, [0 x i64] }** %_gep1308
  store { i64, [0 x i64] }* %_arrayUID1298, { i64, [0 x i64] }** %_gep1309
  %_arrayUID1306 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1307 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1306, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1314
  %_locRef1316 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1314
  %_idxUID1317 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1316, i32 0, i32 1, i32 0
  %_getArrUID1318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1317
  %_idxUID1319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1318, i32 0, i32 1, i32 0
  %_getArrUID1320 = load i64, i64* %_idxUID1319
  ret i64 %_getArrUID1320
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
