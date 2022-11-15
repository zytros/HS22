; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1321 = alloca i64
  %_args1322 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args1321
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1322
  %_atomArrUID1326 = alloca { i64, [2 x i64] }
  %_idxUID1331 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1326, i32 0, i32 0
  store i64 2, i64* %_idxUID1331
  %_gep1327 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1326, i32 0, i32 1, i32 0
  %_gep1328 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1326, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1327
  store i64 2, i64* %_gep1328
  %_arrayUID1325 = bitcast { i64, [2 x i64] }* %_atomArrUID1326 to { i64, [0 x i64] }*
  %_atomArrUID1334 = alloca { i64, [2 x i64] }
  %_idxUID1339 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1334, i32 0, i32 0
  store i64 2, i64* %_idxUID1339
  %_gep1335 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1334, i32 0, i32 1, i32 0
  %_gep1336 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1334, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep1335
  store i64 4, i64* %_gep1336
  %_arrayUID1333 = bitcast { i64, [2 x i64] }* %_atomArrUID1334 to { i64, [0 x i64] }*
  %_atomArrUID1342 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID1347 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1342, i32 0, i32 0
  store i64 2, i64* %_idxUID1347
  %_gep1343 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1342, i32 0, i32 1, i32 0
  %_gep1344 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1342, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID1325, { i64, [0 x i64] }** %_gep1343
  store { i64, [0 x i64] }* %_arrayUID1333, { i64, [0 x i64] }** %_gep1344
  %_arrayUID1341 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1342 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_atomArrUID1350 = alloca { i64, [1 x i64] }
  %_idxUID1353 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID1350, i32 0, i32 0
  store i64 1, i64* %_idxUID1353
  %_gep1351 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID1350, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep1351
  %_arrayUID1349 = bitcast { i64, [1 x i64] }* %_atomArrUID1350 to { i64, [0 x i64] }*
  %_atomArrUID1356 = alloca { i64, [1 x { i64, [0 x i64] }*] }
  %_idxUID1359 = getelementptr { i64, [1 x { i64, [0 x i64] }*] }, { i64, [1 x { i64, [0 x i64] }*] }* %_atomArrUID1356, i32 0, i32 0
  store i64 1, i64* %_idxUID1359
  %_gep1357 = getelementptr { i64, [1 x { i64, [0 x i64] }*] }, { i64, [1 x { i64, [0 x i64] }*] }* %_atomArrUID1356, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_arrayUID1349, { i64, [0 x i64] }** %_gep1357
  %_arrayUID1355 = bitcast { i64, [1 x { i64, [0 x i64] }*] }* %_atomArrUID1356 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_atomArrUID1362 = alloca { i64, [2 x i64] }
  %_idxUID1367 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1362, i32 0, i32 0
  store i64 2, i64* %_idxUID1367
  %_gep1363 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1362, i32 0, i32 1, i32 0
  %_gep1364 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1362, i32 0, i32 1, i32 1
  store i64 10, i64* %_gep1363
  store i64 20, i64* %_gep1364
  %_arrayUID1361 = bitcast { i64, [2 x i64] }* %_atomArrUID1362 to { i64, [0 x i64] }*
  %_atomArrUID1370 = alloca { i64, [2 x i64] }
  %_idxUID1375 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1370, i32 0, i32 0
  store i64 2, i64* %_idxUID1375
  %_gep1371 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1370, i32 0, i32 1, i32 0
  %_gep1372 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1370, i32 0, i32 1, i32 1
  store i64 30, i64* %_gep1371
  store i64 40, i64* %_gep1372
  %_arrayUID1369 = bitcast { i64, [2 x i64] }* %_atomArrUID1370 to { i64, [0 x i64] }*
  %_atomArrUID1378 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID1383 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1378, i32 0, i32 0
  store i64 2, i64* %_idxUID1383
  %_gep1379 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1378, i32 0, i32 1, i32 0
  %_gep1380 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1378, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID1361, { i64, [0 x i64] }** %_gep1379
  store { i64, [0 x i64] }* %_arrayUID1369, { i64, [0 x i64] }** %_gep1380
  %_arrayUID1377 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1378 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_atomArrUID1386 = alloca { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }
  %_idxUID1393 = getelementptr { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_atomArrUID1386, i32 0, i32 0
  store i64 3, i64* %_idxUID1393
  %_gep1387 = getelementptr { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_atomArrUID1386, i32 0, i32 1, i32 0
  %_gep1388 = getelementptr { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_atomArrUID1386, i32 0, i32 1, i32 1
  %_gep1389 = getelementptr { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_atomArrUID1386, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1341, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1387
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1355, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1388
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1377, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1389
  %_arrayUID1385 = bitcast { i64, [3 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_atomArrUID1386 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arrayUID1385, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_locRef1396 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_idxUID1397 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_locRef1396, i32 0, i32 1, i32 2
  %_getArrUID1398 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_idxUID1397
  %_idxUID1399 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_getArrUID1398, i32 0, i32 1, i32 0
  %_getArrUID1400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1399
  %_idxUID1401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1400, i32 0, i32 1, i32 1
  %_getArrUID1402 = load i64, i64* %_idxUID1401
  ret i64 %_getArrUID1402
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
