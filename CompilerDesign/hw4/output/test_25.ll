; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args487 = alloca i64
  %_args488 = alloca { i64, [0 x i8*] }*
  %_localId499 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args487
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args488
  %_atomArrUID492 = alloca { i64, [2 x i64] }
  %_idxUID497 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID492, i32 0, i32 0
  store i64 2, i64* %_idxUID497
  %_gep493 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID492, i32 0, i32 1, i32 0
  %_gep494 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID492, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep493
  store i64 0, i64* %_gep494
  %_arrayUID491 = bitcast { i64, [2 x i64] }* %_atomArrUID492 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID491, { i64, [0 x i64] }** %_localId499
  %_locRef501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId499
  %_idxUID502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef501, i32 0, i32 1, i32 0
  %_getArrUID503 = load i64, i64* %_idxUID502
  ret i64 %_getArrUID503
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
