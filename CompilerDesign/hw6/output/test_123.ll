; generated from: hw5programs/compile_assign_struct.oat
target triple = "x86_64-unknown-linux"
%Point = type { i64, i64 }

define i64 @program(i64 %_argc6635, { i64, [0 x i8*] }* %_argv6632) {
  %_p6644 = alloca %Point*
  %_raw_struct6638 = call i64* @oat_malloc(i64 16)
  %_struct6639 = bitcast i64* %_raw_struct6638 to %Point*
  %_ind6640 = getelementptr %Point, %Point* %_struct6639, i32 0, i32 0
  store i64 3, i64* %_ind6640
  %_ind6642 = getelementptr %Point, %Point* %_struct6639, i32 0, i32 1
  store i64 4, i64* %_ind6642
  store %Point* %_struct6639, %Point** %_p6644
  %_p6646 = load %Point*, %Point** %_p6644
  %_index6647 = getelementptr %Point, %Point* %_p6646, i32 0, i32 0
  store i64 5, i64* %_index6647
  %_p6649 = load %Point*, %Point** %_p6644
  %_index6650 = getelementptr %Point, %Point* %_p6649, i32 0, i32 1
  %_p6651 = load %Point*, %Point** %_p6644
  %_index6652 = getelementptr %Point, %Point* %_p6651, i32 0, i32 0
  %_proj6653 = load i64, i64* %_index6652
  %_p6654 = load %Point*, %Point** %_p6644
  %_index6655 = getelementptr %Point, %Point* %_p6654, i32 0, i32 1
  %_proj6656 = load i64, i64* %_index6655
  %_bop6657 = add i64 %_proj6653, %_proj6656
  %_bop6658 = add i64 %_bop6657, 3
  store i64 %_bop6658, i64* %_index6650
  %_p6660 = load %Point*, %Point** %_p6644
  %_index6661 = getelementptr %Point, %Point* %_p6660, i32 0, i32 0
  %_p6662 = load %Point*, %Point** %_p6644
  %_index6663 = getelementptr %Point, %Point* %_p6662, i32 0, i32 1
  %_proj6664 = load i64, i64* %_index6663
  %_bop6665 = add i64 %_proj6664, 4
  store i64 %_bop6665, i64* %_index6661
  %_p6667 = load %Point*, %Point** %_p6644
  %_index6668 = getelementptr %Point, %Point* %_p6667, i32 0, i32 0
  %_proj6669 = load i64, i64* %_index6668
  ret i64 %_proj6669
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
