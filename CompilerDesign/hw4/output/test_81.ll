; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3348 = alloca i64
  %_args3349 = alloca { i64, [0 x i8*] }*
  %_localId3352 = alloca i64
  store i64 %argc, i64* %_args3348
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3349
  store i64 1, i64* %_localId3352
  %_locRef3354 = load i64, i64* %_localId3352
  %_locRef3355 = load i64, i64* %_args3348
  %_bop3356 = icmp slt i64 %_locRef3354, %_locRef3355
  br i1 %_bop3356, label %_while_body_jmp3358, label %_while_end_jmp3357
_while_body_jmp3358:
  %_locRef3359 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_args3349
  %_locRef3360 = load i64, i64* %_localId3352
  %_idxUID3361 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_locRef3359, i32 0, i32 1, i64 %_locRef3360
  %_getArrUID3362 = load i8*, i8** %_idxUID3361
  call void @print_string(i8* %_getArrUID3362)
  %_locRef3364 = load i64, i64* %_localId3352
  %_bop3365 = add i64 %_locRef3364, 1
  store i64 %_bop3365, i64* %_localId3352
  %_locRef3367 = load i64, i64* %_localId3352
  %_locRef3368 = load i64, i64* %_args3348
  %_bop3369 = icmp slt i64 %_locRef3367, %_locRef3368
  br i1 %_bop3369, label %_while_body_jmp3358, label %_while_end_jmp3357
_while_end_jmp3357:
  %_locRef3370 = load i64, i64* %_args3348
  ret i64 %_locRef3370
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
