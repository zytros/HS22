; generated from: hw5programs/length1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc8618, { i64, [0 x i8*] }* %_argv8615) {
  %_x8633 = alloca { i64, [0 x i64] }*
  %_raw_array8621 = call i64* @oat_alloc_array(i64 5)
  %_array8622 = bitcast i64* %_raw_array8621 to { i64, [0 x i64] }*
  %_ind8623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8622, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind8623
  %_ind8625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8622, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind8625
  %_ind8627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8622, i32 0, i32 1, i32 2
  store i64 5, i64* %_ind8627
  %_ind8629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8622, i32 0, i32 1, i32 3
  store i64 6, i64* %_ind8629
  %_ind8631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8622, i32 0, i32 1, i32 4
  store i64 7, i64* %_ind8631
  store { i64, [0 x i64] }* %_array8622, { i64, [0 x i64] }** %_x8633
  %_x8635 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x8633
  %_index_ptr8637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x8635, i32 0, i32 0
  %_len8638 = load i64, i64* %_index_ptr8637
  ret i64 %_len8638
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
