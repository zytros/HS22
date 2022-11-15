; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_args3460 = alloca i8*
  %_args3461 = alloca i64
  %_args3462 = alloca i64
  %_localId3468 = alloca { i64, [0 x i64] }*
  %_localId3473 = alloca { i64, [0 x i64] }*
  %_localId3475 = alloca i64
  store i8* %str, i8** %_args3460
  store i64 %start, i64* %_args3461
  store i64 %len, i64* %_args3462
  %_locRef3466 = load i8*, i8** %_args3460
  %_callUID3467 = call { i64, [0 x i64] }* @array_of_string(i8* %_locRef3466)
  store { i64, [0 x i64] }* %_callUID3467, { i64, [0 x i64] }** %_localId3468
  %_locRef3470 = load i64, i64* %_args3462
  %_raw_array3471 = call i64* @oat_alloc_array(i64 %_locRef3470)
  %_array3472 = bitcast i64* %_raw_array3471 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3472, { i64, [0 x i64] }** %_localId3473
  store i64 0, i64* %_localId3475
  %_locRef3477 = load i64, i64* %_localId3475
  %_locRef3478 = load i64, i64* %_args3462
  %_bop3479 = icmp slt i64 %_locRef3477, %_locRef3478
  br i1 %_bop3479, label %_while_body_jmp3481, label %_while_end_jmp3480
_while_body_jmp3481:
  %_locRef3482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3473
  %_locRef3483 = load i64, i64* %_localId3475
  %_locRef3484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3468
  %_locRef3485 = load i64, i64* %_localId3475
  %_locRef3486 = load i64, i64* %_args3461
  %_bop3487 = add i64 %_locRef3485, %_locRef3486
  %_idxUID3488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3484, i32 0, i32 1, i64 %_bop3487
  %_getArrUID3489 = load i64, i64* %_idxUID3488
  %_arridx3490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3482, i32 0, i32 1, i64 %_locRef3483
  store i64 %_getArrUID3489, i64* %_arridx3490
  %_locRef3492 = load i64, i64* %_localId3475
  %_bop3493 = add i64 %_locRef3492, 1
  store i64 %_bop3493, i64* %_localId3475
  %_locRef3495 = load i64, i64* %_localId3475
  %_locRef3496 = load i64, i64* %_args3462
  %_bop3497 = icmp slt i64 %_locRef3495, %_locRef3496
  br i1 %_bop3497, label %_while_body_jmp3481, label %_while_end_jmp3480
_while_end_jmp3480:
  %_locRef3498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3473
  %_callUID3499 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef3498)
  ret i8* %_callUID3499
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3451 = alloca i64
  %_args3452 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args3451
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3452
  %_locRef3455 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_args3452
  %_idxUID3456 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_locRef3455, i32 0, i32 1, i32 1
  %_getArrUID3457 = load i8*, i8** %_idxUID3456
  %_callUID3458 = call i8* @sub(i8* %_getArrUID3457, i64 3, i64 5)
  call void @print_string(i8* %_callUID3458)
  ret i64 0
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
