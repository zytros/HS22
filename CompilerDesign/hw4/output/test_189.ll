; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_stringd3377 = global [11 x i8] c"1234967890\00"
@_string3376 = global i8* bitcast ([11 x i8]* @_stringd3377 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3371 = alloca i64
  %_args3372 = alloca { i64, [0 x i8*] }*
  %_localId3379 = alloca { i64, [0 x i64] }*
  %_localId3381 = alloca i64
  %_localId3383 = alloca i64
  %_localId3399 = alloca i64
  store i64 %argc, i64* %_args3371
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3372
  %_stringp3375 = load i8*, i8** @_string3376
  %_callUID3378 = call { i64, [0 x i64] }* @array_of_string(i8* %_stringp3375)
  store { i64, [0 x i64] }* %_callUID3378, { i64, [0 x i64] }** %_localId3379
  store i64 0, i64* %_localId3381
  store i64 0, i64* %_localId3383
  %_locRef3385 = load i64, i64* %_localId3383
  %_bop3386 = icmp slt i64 %_locRef3385, 10
  br i1 %_bop3386, label %_while_body_jmp3388, label %_while_end_jmp3387
_while_body_jmp3388:
  %_locRef3389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3379
  %_locRef3390 = load i64, i64* %_localId3383
  %_locRef3391 = load i64, i64* %_localId3383
  %_arridx3392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3389, i32 0, i32 1, i64 %_locRef3390
  store i64 %_locRef3391, i64* %_arridx3392
  %_locRef3394 = load i64, i64* %_localId3383
  %_bop3395 = add i64 %_locRef3394, 1
  store i64 %_bop3395, i64* %_localId3383
  %_locRef3397 = load i64, i64* %_localId3383
  %_bop3398 = icmp slt i64 %_locRef3397, 10
  br i1 %_bop3398, label %_while_body_jmp3388, label %_while_end_jmp3387
_while_end_jmp3387:
  store i64 0, i64* %_localId3399
  %_locRef3401 = load i64, i64* %_localId3399
  %_bop3402 = icmp slt i64 %_locRef3401, 10
  br i1 %_bop3402, label %_while_body_jmp3404, label %_while_end_jmp3403
_while_body_jmp3404:
  %_locRef3405 = load i64, i64* %_localId3381
  %_locRef3406 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3379
  %_locRef3407 = load i64, i64* %_localId3399
  %_idxUID3408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3406, i32 0, i32 1, i64 %_locRef3407
  %_getArrUID3409 = load i64, i64* %_idxUID3408
  %_bop3410 = add i64 %_locRef3405, %_getArrUID3409
  store i64 %_bop3410, i64* %_localId3381
  %_locRef3412 = load i64, i64* %_localId3399
  %_bop3413 = add i64 %_locRef3412, 1
  store i64 %_bop3413, i64* %_localId3399
  %_locRef3415 = load i64, i64* %_localId3399
  %_bop3416 = icmp slt i64 %_locRef3415, 10
  br i1 %_bop3416, label %_while_body_jmp3404, label %_while_end_jmp3403
_while_end_jmp3403:
  %_locRef3417 = load i64, i64* %_localId3381
  ret i64 %_locRef3417
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
