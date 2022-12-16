; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %_i483) {
  %_i484 = alloca i64
  store i64 %_i483, i64* %_i484
  %_i486 = load i64, i64* %_i484
  %_result487 = call i64 @f2(i64 %_i486)
  ret i64 %_result487
}

define i64 @f2(i64 %_i478) {
  %_i479 = alloca i64
  store i64 %_i478, i64* %_i479
  %_i481 = load i64, i64* %_i479
  %_result482 = call i64 @f3(i64 %_i481)
  ret i64 %_result482
}

define i64 @f3(i64 %_i473) {
  %_i474 = alloca i64
  store i64 %_i473, i64* %_i474
  %_i476 = load i64, i64* %_i474
  %_result477 = call i64 @f4(i64 %_i476)
  ret i64 %_result477
}

define i64 @f4(i64 %_i468) {
  %_i469 = alloca i64
  store i64 %_i468, i64* %_i469
  %_i471 = load i64, i64* %_i469
  %_result472 = call i64 @f5(i64 %_i471)
  ret i64 %_result472
}

define i64 @f5(i64 %_i463) {
  %_i464 = alloca i64
  store i64 %_i463, i64* %_i464
  %_i466 = load i64, i64* %_i464
  %_result467 = call i64 @f6(i64 %_i466)
  ret i64 %_result467
}

define i64 @f6(i64 %_i458) {
  %_i459 = alloca i64
  store i64 %_i458, i64* %_i459
  %_i461 = load i64, i64* %_i459
  %_result462 = call i64 @f7(i64 %_i461)
  ret i64 %_result462
}

define i64 @f7(i64 %_i453) {
  %_i454 = alloca i64
  store i64 %_i453, i64* %_i454
  %_i456 = load i64, i64* %_i454
  %_result457 = call i64 @f8(i64 %_i456)
  ret i64 %_result457
}

define i64 @f8(i64 %_i448) {
  %_i449 = alloca i64
  store i64 %_i448, i64* %_i449
  %_i451 = load i64, i64* %_i449
  %_result452 = call i64 @f9(i64 %_i451)
  ret i64 %_result452
}

define i64 @f9(i64 %_i444) {
  %_i445 = alloca i64
  store i64 %_i444, i64* %_i445
  %_i447 = load i64, i64* %_i445
  ret i64 %_i447
}

define i64 @program(i64 %_argc439, { i64, [0 x i8*] }* %_argv436) {
  %_argc440 = alloca i64
  store i64 %_argc439, i64* %_argc440
  %_argc442 = load i64, i64* %_argc440
  %_result443 = call i64 @f1(i64 %_argc442)
  ret i64 %_result443
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
