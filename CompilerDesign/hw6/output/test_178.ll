; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_global_arr8768 to { i64, [0 x i64] }*)
@_global_arr8768 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_str_arr8674 = global [1 x i8] c"\00"
@_str_arr8645 = global [7 x i8] c"TOMATO\00"
@_str_arr8649 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %_i8666, i64 %_j8663, i8* %_a8660, i8* %_b8657) {
  %_i8667 = alloca i64
  %_j8664 = alloca i64
  %_a8661 = alloca i8*
  %_b8658 = alloca i8*
  %_a_chars8681 = alloca { i64, [0 x i64] }*
  %_b_chars8685 = alloca { i64, [0 x i64] }*
  %_last_char_a8693 = alloca i64
  %_last_char_b8701 = alloca i64
  %_prev_lcs8713 = alloca i8*
  %_next_char8728 = alloca i8*
  %_left_lcs8742 = alloca i8*
  %_right_lcs8750 = alloca i8*
  %_left_len8754 = alloca i64
  %_right_len8758 = alloca i64
  store i64 %_i8666, i64* %_i8667
  store i64 %_j8663, i64* %_j8664
  store i8* %_a8660, i8** %_a8661
  store i8* %_b8657, i8** %_b8658
  %_i8669 = load i64, i64* %_i8667
  %_bop8670 = icmp slt i64 %_i8669, 0
  %_j8671 = load i64, i64* %_j8664
  %_bop8672 = icmp slt i64 %_j8671, 0
  %_bop8673 = or i1 %_bop8670, %_bop8672
  br i1 %_bop8673, label %_then8678, label %_else8677
_else8677:
  br label %_merge8676
_else8734:
  br label %_merge8733
_else8766:
  %_left_lcs8764 = load i8*, i8** %_left_lcs8742
  ret i8* %_left_lcs8764
_merge8676:
  %_a8679 = load i8*, i8** %_a8661
  %_result8680 = call { i64, [0 x i64] }* @array_of_string(i8* %_a8679)
  store { i64, [0 x i64] }* %_result8680, { i64, [0 x i64] }** %_a_chars8681
  %_b8683 = load i8*, i8** %_b8658
  %_result8684 = call { i64, [0 x i64] }* @array_of_string(i8* %_b8683)
  store { i64, [0 x i64] }* %_result8684, { i64, [0 x i64] }** %_b_chars8685
  %_a_chars8687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars8681
  %_i8688 = load i64, i64* %_i8667
  %_tmp8690 = bitcast { i64, [0 x i64] }* %_a_chars8687 to i64*
  call void @oat_assert_array_length(i64* %_tmp8690, i64 %_i8688)
  %_index_ptr8691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars8687, i32 0, i32 1, i64 %_i8688
  %_index8692 = load i64, i64* %_index_ptr8691
  store i64 %_index8692, i64* %_last_char_a8693
  %_b_chars8695 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars8685
  %_j8696 = load i64, i64* %_j8664
  %_tmp8698 = bitcast { i64, [0 x i64] }* %_b_chars8695 to i64*
  call void @oat_assert_array_length(i64* %_tmp8698, i64 %_j8696)
  %_index_ptr8699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars8695, i32 0, i32 1, i64 %_j8696
  %_index8700 = load i64, i64* %_index_ptr8699
  store i64 %_index8700, i64* %_last_char_b8701
  %_last_char_a8703 = load i64, i64* %_last_char_a8693
  %_last_char_b8704 = load i64, i64* %_last_char_b8701
  %_bop8705 = icmp eq i64 %_last_char_a8703, %_last_char_b8704
  br i1 %_bop8705, label %_then8735, label %_else8734
_merge8733:
  %_b8736 = load i8*, i8** %_b8658
  %_a8737 = load i8*, i8** %_a8661
  %_j8738 = load i64, i64* %_j8664
  %_bop8739 = sub i64 %_j8738, 1
  %_i8740 = load i64, i64* %_i8667
  %_result8741 = call i8* @lcs(i64 %_i8740, i64 %_bop8739, i8* %_a8737, i8* %_b8736)
  store i8* %_result8741, i8** %_left_lcs8742
  %_b8744 = load i8*, i8** %_b8658
  %_a8745 = load i8*, i8** %_a8661
  %_j8746 = load i64, i64* %_j8664
  %_i8747 = load i64, i64* %_i8667
  %_bop8748 = sub i64 %_i8747, 1
  %_result8749 = call i8* @lcs(i64 %_bop8748, i64 %_j8746, i8* %_a8745, i8* %_b8744)
  store i8* %_result8749, i8** %_right_lcs8750
  %_left_lcs8752 = load i8*, i8** %_left_lcs8742
  %_result8753 = call i64 @length_of_string(i8* %_left_lcs8752)
  store i64 %_result8753, i64* %_left_len8754
  %_right_lcs8756 = load i8*, i8** %_right_lcs8750
  %_result8757 = call i64 @length_of_string(i8* %_right_lcs8756)
  store i64 %_result8757, i64* %_right_len8758
  %_left_len8760 = load i64, i64* %_left_len8754
  %_right_len8761 = load i64, i64* %_right_len8758
  %_bop8762 = icmp slt i64 %_left_len8760, %_right_len8761
  br i1 %_bop8762, label %_then8767, label %_else8766
_merge8765:
  ret i8* null
_then8678:
  %_str8675 = getelementptr [1 x i8], [1 x i8]* @_str_arr8674, i32 0, i32 0
  ret i8* %_str8675
_then8735:
  %_b8706 = load i8*, i8** %_b8658
  %_a8707 = load i8*, i8** %_a8661
  %_j8708 = load i64, i64* %_j8664
  %_bop8709 = sub i64 %_j8708, 1
  %_i8710 = load i64, i64* %_i8667
  %_bop8711 = sub i64 %_i8710, 1
  %_result8712 = call i8* @lcs(i64 %_bop8711, i64 %_bop8709, i8* %_a8707, i8* %_b8706)
  store i8* %_result8712, i8** %_prev_lcs8713
  %_buf8715 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_tmp8717 = bitcast { i64, [0 x i64] }* %_buf8715 to i64*
  call void @oat_assert_array_length(i64* %_tmp8717, i64 0)
  %_index_ptr8718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_buf8715, i32 0, i32 1, i32 0
  %_a_chars8719 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars8681
  %_i8720 = load i64, i64* %_i8667
  %_tmp8722 = bitcast { i64, [0 x i64] }* %_a_chars8719 to i64*
  call void @oat_assert_array_length(i64* %_tmp8722, i64 %_i8720)
  %_index_ptr8723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars8719, i32 0, i32 1, i64 %_i8720
  %_index8724 = load i64, i64* %_index_ptr8723
  store i64 %_index8724, i64* %_index_ptr8718
  %_buf8726 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_result8727 = call i8* @string_of_array({ i64, [0 x i64] }* %_buf8726)
  store i8* %_result8727, i8** %_next_char8728
  %_next_char8730 = load i8*, i8** %_next_char8728
  %_prev_lcs8731 = load i8*, i8** %_prev_lcs8713
  %_result8732 = call i8* @string_cat(i8* %_prev_lcs8731, i8* %_next_char8730)
  ret i8* %_result8732
_then8767:
  %_right_lcs8763 = load i8*, i8** %_right_lcs8750
  ret i8* %_right_lcs8763
}

define i64 @program(i64 %_argc8642, { i64, [0 x i8*] }* %_argv8639) {
  %_tomato8647 = alloca i8*
  %_orating8651 = alloca i8*
  %_str8646 = getelementptr [7 x i8], [7 x i8]* @_str_arr8645, i32 0, i32 0
  store i8* %_str8646, i8** %_tomato8647
  %_str8650 = getelementptr [8 x i8], [8 x i8]* @_str_arr8649, i32 0, i32 0
  store i8* %_str8650, i8** %_orating8651
  %_orating8653 = load i8*, i8** %_orating8651
  %_tomato8654 = load i8*, i8** %_tomato8647
  %_result8655 = call i8* @lcs(i64 5, i64 6, i8* %_tomato8654, i8* %_orating8653)
  call void @print_string(i8* %_result8655)
  ret i64 0
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
