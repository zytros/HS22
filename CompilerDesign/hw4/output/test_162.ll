; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1403 = alloca i64
  %_args1404 = alloca { i64, [0 x i8*] }*
  %_localId1415 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args1403
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1404
  %_atomArrUID1408 = alloca { i64, [2 x i64] }
  %_idxUID1413 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1408, i32 0, i32 0
  store i64 2, i64* %_idxUID1413
  %_gep1409 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1408, i32 0, i32 1, i32 0
  %_gep1410 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1408, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1409
  store i64 2, i64* %_gep1410
  %_arrayUID1407 = bitcast { i64, [2 x i64] }* %_atomArrUID1408 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID1407, { i64, [0 x i64] }** %_localId1415
  %_locRef1417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1415
  %_idxUID1418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1417, i32 0, i32 1, i32 1
  %_getArrUID1419 = load i64, i64* %_idxUID1418
  ret i64 %_getArrUID1419
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
