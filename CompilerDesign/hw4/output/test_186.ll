; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3288 = alloca i64
  %_args3289 = alloca { i64, [0 x i8*] }*
  %_localId3306 = alloca { i64, [0 x i64] }*
  %_localId3310 = alloca i8*
  %_localId3314 = alloca { i64, [0 x i64] }*
  %_localId3316 = alloca i64
  %_localId3318 = alloca i64
  store i64 %argc, i64* %_args3288
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3289
  %_atomArrUID3293 = alloca { i64, [5 x i64] }
  %_idxUID3304 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3293, i32 0, i32 0
  store i64 5, i64* %_idxUID3304
  %_gep3294 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3293, i32 0, i32 1, i32 0
  %_gep3295 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3293, i32 0, i32 1, i32 1
  %_gep3296 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3293, i32 0, i32 1, i32 2
  %_gep3297 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3293, i32 0, i32 1, i32 3
  %_gep3298 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3293, i32 0, i32 1, i32 4
  store i64 111, i64* %_gep3294
  store i64 112, i64* %_gep3295
  store i64 113, i64* %_gep3296
  store i64 114, i64* %_gep3297
  store i64 115, i64* %_gep3298
  %_arrayUID3292 = bitcast { i64, [5 x i64] }* %_atomArrUID3293 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID3292, { i64, [0 x i64] }** %_localId3306
  %_locRef3308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3306
  %_callUID3309 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef3308)
  store i8* %_callUID3309, i8** %_localId3310
  %_locRef3312 = load i8*, i8** %_localId3310
  %_callUID3313 = call { i64, [0 x i64] }* @array_of_string(i8* %_locRef3312)
  store { i64, [0 x i64] }* %_callUID3313, { i64, [0 x i64] }** %_localId3314
  store i64 0, i64* %_localId3316
  store i64 0, i64* %_localId3318
  %_locRef3320 = load i64, i64* %_localId3318
  %_bop3321 = icmp slt i64 %_locRef3320, 5
  br i1 %_bop3321, label %_while_body_jmp3323, label %_while_end_jmp3322
_while_body_jmp3323:
  %_locRef3324 = load i64, i64* %_localId3316
  %_locRef3325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3314
  %_locRef3326 = load i64, i64* %_localId3318
  %_idxUID3327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3325, i32 0, i32 1, i64 %_locRef3326
  %_getArrUID3328 = load i64, i64* %_idxUID3327
  %_bop3329 = add i64 %_locRef3324, %_getArrUID3328
  store i64 %_bop3329, i64* %_localId3316
  %_locRef3331 = load i64, i64* %_localId3318
  %_bop3332 = add i64 %_locRef3331, 1
  store i64 %_bop3332, i64* %_localId3318
  %_locRef3334 = load i64, i64* %_localId3318
  %_bop3335 = icmp slt i64 %_locRef3334, 5
  br i1 %_bop3335, label %_while_body_jmp3323, label %_while_end_jmp3322
_while_end_jmp3322:
  %_locRef3336 = load i64, i64* %_localId3316
  ret i64 %_locRef3336
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
