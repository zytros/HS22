; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_atomArrUID464 to { i64, [0 x i64] }*)
@_atomArrUID464 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_atomArrUID463 to { i64, [0 x i64] }*)
@_atomArrUID463 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_args465 = alloca { i64, [0 x i64] }*
  %_args466 = alloca { i64, [0 x i64] }*
  %_args467 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_args465
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_args466
  store i1 %b, i1* %_args467
  %_locRef474 = load i1, i1* %_args467
  br i1 %_locRef474, label %_ifTruelbl471, label %_ifFalselbl472
_ifTruelbl471:
  %_locRef475 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args465
  ret { i64, [0 x i64] }* %_locRef475
_ifFalselbl472:
  %_locRef476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args466
  ret { i64, [0 x i64] }* %_locRef476
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args440 = alloca i64
  %_args441 = alloca { i64, [0 x i8*] }*
  %_localId460 = alloca i64
  store i64 %argc, i64* %_args440
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args441
  %_locRef444 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_locRef445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_callUID446 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_locRef444, { i64, [0 x i64] }* %_locRef445, i1 1)
  %_arridx447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_callUID446, i32 0, i32 1, i32 0
  store i64 17, i64* %_arridx447
  %_locRef449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_locRef450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_callUID451 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_locRef449, { i64, [0 x i64] }* %_locRef450, i1 1)
  %_idxUID452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_callUID451, i32 0, i32 1, i32 0
  %_getArrUID453 = load i64, i64* %_idxUID452
  %_locRef454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_locRef455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_callUID456 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_locRef454, { i64, [0 x i64] }* %_locRef455, i1 0)
  %_idxUID457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_callUID456, i32 0, i32 1, i32 0
  %_getArrUID458 = load i64, i64* %_idxUID457
  %_bop459 = add i64 %_getArrUID453, %_getArrUID458
  store i64 %_bop459, i64* %_localId460
  %_locRef462 = load i64, i64* %_localId460
  ret i64 %_locRef462
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
