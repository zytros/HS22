; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17448, i64 %_x27445, i64 %_x37442, i64 %_x47439, i64 %_x57436, i64 %_x67433, i64 %_x77430, i64 %_x87427) {
  %_x17449 = alloca i64
  %_x27446 = alloca i64
  %_x37443 = alloca i64
  %_x47440 = alloca i64
  %_x57437 = alloca i64
  %_x67434 = alloca i64
  %_x77431 = alloca i64
  %_x87428 = alloca i64
  store i64 %_x17448, i64* %_x17449
  store i64 %_x27445, i64* %_x27446
  store i64 %_x37442, i64* %_x37443
  store i64 %_x47439, i64* %_x47440
  store i64 %_x57436, i64* %_x57437
  store i64 %_x67433, i64* %_x67434
  store i64 %_x77430, i64* %_x77431
  store i64 %_x87427, i64* %_x87428
  %_x17451 = load i64, i64* %_x17449
  %_x27452 = load i64, i64* %_x27446
  %_bop7453 = add i64 %_x17451, %_x27452
  %_x37454 = load i64, i64* %_x37443
  %_bop7455 = add i64 %_bop7453, %_x37454
  %_x47456 = load i64, i64* %_x47440
  %_bop7457 = add i64 %_bop7455, %_x47456
  %_x57458 = load i64, i64* %_x57437
  %_bop7459 = add i64 %_bop7457, %_x57458
  %_x67460 = load i64, i64* %_x67434
  %_bop7461 = add i64 %_bop7459, %_x67460
  %_x77462 = load i64, i64* %_x77431
  %_bop7463 = add i64 %_bop7461, %_x77462
  %_x87464 = load i64, i64* %_x87428
  %_bop7465 = add i64 %_bop7463, %_x87464
  ret i64 %_bop7465
}

define i64 @program(i64 %_argc7420, { i64, [0 x i8*] }* %_argv7417) {
  %_result7426 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result7426
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
