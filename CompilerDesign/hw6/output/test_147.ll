; generated from: oatprograms/run51.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17501, i64 %_x27498, i64 %_x37495, i64 %_x47492, i64 %_x57489, i64 %_x67486, i64 %_x77483, i64 %_x87480) {
  %_x17502 = alloca i64
  %_x27499 = alloca i64
  %_x37496 = alloca i64
  %_x47493 = alloca i64
  %_x57490 = alloca i64
  %_x67487 = alloca i64
  %_x77484 = alloca i64
  %_x87481 = alloca i64
  store i64 %_x17501, i64* %_x17502
  store i64 %_x27498, i64* %_x27499
  store i64 %_x37495, i64* %_x37496
  store i64 %_x47492, i64* %_x47493
  store i64 %_x57489, i64* %_x57490
  store i64 %_x67486, i64* %_x67487
  store i64 %_x77483, i64* %_x77484
  store i64 %_x87480, i64* %_x87481
  %_x17504 = load i64, i64* %_x17502
  %_x27505 = load i64, i64* %_x27499
  %_bop7506 = add i64 %_x17504, %_x27505
  %_x37507 = load i64, i64* %_x37496
  %_bop7508 = add i64 %_bop7506, %_x37507
  %_x47509 = load i64, i64* %_x47493
  %_bop7510 = add i64 %_bop7508, %_x47509
  %_x57511 = load i64, i64* %_x57490
  %_bop7512 = add i64 %_bop7510, %_x57511
  %_x67513 = load i64, i64* %_x67487
  %_bop7514 = add i64 %_bop7512, %_x67513
  %_x77515 = load i64, i64* %_x77484
  %_bop7516 = add i64 %_bop7514, %_x77515
  %_x87517 = load i64, i64* %_x87481
  %_bop7518 = add i64 %_bop7516, %_x87517
  ret i64 %_bop7518
}

define i64 @program(i64 %_argc7469, { i64, [0 x i8*] }* %_argv7466) {
  %_x7476 = alloca i64
  %_result7475 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  store i64 %_result7475, i64* %_x7476
  %_x7478 = load i64, i64* %_x7476
  call void @print_int(i64 %_x7478)
  ret i64 41
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
