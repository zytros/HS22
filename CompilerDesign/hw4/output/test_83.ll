; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3418 = alloca i64
  %_args3419 = alloca { i64, [0 x i8*] }*
  %_localId3446 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args3418
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3419
  %_atomArrUID3423 = alloca { i64, [10 x i64] }
  %_idxUID3444 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 0
  store i64 10, i64* %_idxUID3444
  %_gep3424 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 0
  %_gep3425 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 1
  %_gep3426 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 2
  %_gep3427 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 3
  %_gep3428 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 4
  %_gep3429 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 5
  %_gep3430 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 6
  %_gep3431 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 7
  %_gep3432 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 8
  %_gep3433 = getelementptr { i64, [10 x i64] }, { i64, [10 x i64] }* %_atomArrUID3423, i32 0, i32 1, i32 9
  store i64 126, i64* %_gep3424
  store i64 125, i64* %_gep3425
  store i64 124, i64* %_gep3426
  store i64 123, i64* %_gep3427
  store i64 122, i64* %_gep3428
  store i64 121, i64* %_gep3429
  store i64 120, i64* %_gep3430
  store i64 119, i64* %_gep3431
  store i64 118, i64* %_gep3432
  store i64 117, i64* %_gep3433
  %_arrayUID3422 = bitcast { i64, [10 x i64] }* %_atomArrUID3423 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID3422, { i64, [0 x i64] }** %_localId3446
  %_locRef3448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3446
  %_callUID3449 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef3448)
  call void @print_string(i8* %_callUID3449)
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
