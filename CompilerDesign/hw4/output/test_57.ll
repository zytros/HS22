; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_args1498 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_args1498
  %_locRef1500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args1498
  ret { i64, [0 x i64] }* %_locRef1500
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1455 = alloca i64
  %_args1456 = alloca { i64, [0 x i8*] }*
  %_localId1487 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId1493 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args1455
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1456
  %_atomArrUID1460 = alloca { i64, [3 x i64] }
  %_idxUID1467 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1460, i32 0, i32 0
  store i64 3, i64* %_idxUID1467
  %_gep1461 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1460, i32 0, i32 1, i32 0
  %_gep1462 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1460, i32 0, i32 1, i32 1
  %_gep1463 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1460, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep1461
  store i64 2, i64* %_gep1462
  store i64 3, i64* %_gep1463
  %_arrayUID1459 = bitcast { i64, [3 x i64] }* %_atomArrUID1460 to { i64, [0 x i64] }*
  %_atomArrUID1470 = alloca { i64, [3 x i64] }
  %_idxUID1477 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1470, i32 0, i32 0
  store i64 3, i64* %_idxUID1477
  %_gep1471 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1470, i32 0, i32 1, i32 0
  %_gep1472 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1470, i32 0, i32 1, i32 1
  %_gep1473 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1470, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep1471
  store i64 5, i64* %_gep1472
  store i64 6, i64* %_gep1473
  %_arrayUID1469 = bitcast { i64, [3 x i64] }* %_atomArrUID1470 to { i64, [0 x i64] }*
  %_atomArrUID1480 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID1485 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1480, i32 0, i32 0
  store i64 2, i64* %_idxUID1485
  %_gep1481 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1480, i32 0, i32 1, i32 0
  %_gep1482 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1480, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID1459, { i64, [0 x i64] }** %_gep1481
  store { i64, [0 x i64] }* %_arrayUID1469, { i64, [0 x i64] }** %_gep1482
  %_arrayUID1479 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1480 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1479, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1487
  %_locRef1489 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1487
  %_idxUID1490 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1489, i32 0, i32 1, i32 1
  %_getArrUID1491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1490
  %_callUID1492 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_getArrUID1491)
  store { i64, [0 x i64] }* %_callUID1492, { i64, [0 x i64] }** %_localId1493
  %_locRef1495 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1493
  %_idxUID1496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1495, i32 0, i32 1, i32 1
  %_getArrUID1497 = load i64, i64* %_idxUID1496
  ret i64 %_getArrUID1497
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
