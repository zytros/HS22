; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1420 = alloca i64
  %_args1421 = alloca { i64, [0 x i8*] }*
  %_localId1448 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_args1420
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1421
  %_atomArrUID1425 = alloca { i64, [2 x i64] }
  %_idxUID1430 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1425, i32 0, i32 0
  store i64 2, i64* %_idxUID1430
  %_gep1426 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1425, i32 0, i32 1, i32 0
  %_gep1427 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1425, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1426
  store i64 2, i64* %_gep1427
  %_arrayUID1424 = bitcast { i64, [2 x i64] }* %_atomArrUID1425 to { i64, [0 x i64] }*
  %_atomArrUID1433 = alloca { i64, [2 x i64] }
  %_idxUID1438 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1433, i32 0, i32 0
  store i64 2, i64* %_idxUID1438
  %_gep1434 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1433, i32 0, i32 1, i32 0
  %_gep1435 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1433, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep1434
  store i64 4, i64* %_gep1435
  %_arrayUID1432 = bitcast { i64, [2 x i64] }* %_atomArrUID1433 to { i64, [0 x i64] }*
  %_atomArrUID1441 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID1446 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1441, i32 0, i32 0
  store i64 2, i64* %_idxUID1446
  %_gep1442 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1441, i32 0, i32 1, i32 0
  %_gep1443 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1441, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID1424, { i64, [0 x i64] }** %_gep1442
  store { i64, [0 x i64] }* %_arrayUID1432, { i64, [0 x i64] }** %_gep1443
  %_arrayUID1440 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1441 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1440, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1448
  %_locRef1450 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1448
  %_idxUID1451 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1450, i32 0, i32 1, i32 1
  %_getArrUID1452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1451
  %_idxUID1453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1452, i32 0, i32 1, i32 1
  %_getArrUID1454 = load i64, i64* %_idxUID1453
  ret i64 %_getArrUID1454
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
