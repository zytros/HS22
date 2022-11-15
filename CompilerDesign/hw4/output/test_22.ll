; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_args428 = alloca { i64, [0 x i64] }*
  %_args429 = alloca { i64, [0 x i64] }*
  %_args430 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_args428
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_args429
  store i1 %b, i1* %_args430
  %_locRef437 = load i1, i1* %_args430
  br i1 %_locRef437, label %_ifTruelbl434, label %_ifFalselbl435
_ifTruelbl434:
  %_locRef438 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args428
  ret { i64, [0 x i64] }* %_locRef438
_ifFalselbl435:
  %_locRef439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args429
  ret { i64, [0 x i64] }* %_locRef439
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args408 = alloca i64
  %_args409 = alloca { i64, [0 x i8*] }*
  %_localId414 = alloca { i64, [0 x i64] }*
  %_localId418 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args408
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args409
  %_raw_array412 = call i64* @oat_alloc_array(i64 3)
  %_array413 = bitcast i64* %_raw_array412 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array413, { i64, [0 x i64] }** %_localId414
  %_raw_array416 = call i64* @oat_alloc_array(i64 3)
  %_array417 = bitcast i64* %_raw_array416 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array417, { i64, [0 x i64] }** %_localId418
  %_locRef420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId414
  %_locRef421 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId418
  %_callUID422 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_locRef420, { i64, [0 x i64] }* %_locRef421, i1 1)
  %_arridx423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_callUID422, i32 0, i32 1, i32 0
  store i64 17, i64* %_arridx423
  %_locRef425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId414
  %_idxUID426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef425, i32 0, i32 1, i32 0
  %_getArrUID427 = load i64, i64* %_idxUID426
  ret i64 %_getArrUID427
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
