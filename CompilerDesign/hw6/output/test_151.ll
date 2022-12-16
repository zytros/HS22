; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %_a7820, i64 %_l7817, i64 %_r7814) {
  %_a7821 = alloca { i64, [0 x i64] }*
  %_l7818 = alloca i64
  %_r7815 = alloca i64
  %_j7823 = alloca i64
  store { i64, [0 x i64] }* %_a7820, { i64, [0 x i64] }** %_a7821
  store i64 %_l7817, i64* %_l7818
  store i64 %_r7814, i64* %_r7815
  store i64 0, i64* %_j7823
  %_l7825 = load i64, i64* %_l7818
  %_r7826 = load i64, i64* %_r7815
  %_bop7827 = icmp slt i64 %_l7825, %_r7826
  br i1 %_bop7827, label %_then7845, label %_else7844
_else7844:
  br label %_merge7843
_merge7843:
  ret void
_then7845:
  %_r7828 = load i64, i64* %_r7815
  %_l7829 = load i64, i64* %_l7818
  %_a7830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7821
  %_result7831 = call i64 @partition({ i64, [0 x i64] }* %_a7830, i64 %_l7829, i64 %_r7828)
  store i64 %_result7831, i64* %_j7823
  %_j7833 = load i64, i64* %_j7823
  %_bop7834 = sub i64 %_j7833, 1
  %_l7835 = load i64, i64* %_l7818
  %_a7836 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7821
  call void @quick_sort({ i64, [0 x i64] }* %_a7836, i64 %_l7835, i64 %_bop7834)
  %_r7838 = load i64, i64* %_r7815
  %_j7839 = load i64, i64* %_j7823
  %_bop7840 = add i64 %_j7839, 1
  %_a7841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7821
  call void @quick_sort({ i64, [0 x i64] }* %_a7841, i64 %_bop7840, i64 %_r7838)
  br label %_merge7843
}

define i64 @partition({ i64, [0 x i64] }* %_a7684, i64 %_l7681, i64 %_r7678) {
  %_a7685 = alloca { i64, [0 x i64] }*
  %_l7682 = alloca i64
  %_r7679 = alloca i64
  %_pivot7693 = alloca i64
  %_i7696 = alloca i64
  %_j7700 = alloca i64
  %_t7702 = alloca i64
  %_done7704 = alloca i64
  store { i64, [0 x i64] }* %_a7684, { i64, [0 x i64] }** %_a7685
  store i64 %_l7681, i64* %_l7682
  store i64 %_r7678, i64* %_r7679
  %_a7687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_l7688 = load i64, i64* %_l7682
  %_tmp7690 = bitcast { i64, [0 x i64] }* %_a7687 to i64*
  call void @oat_assert_array_length(i64* %_tmp7690, i64 %_l7688)
  %_index_ptr7691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7687, i32 0, i32 1, i64 %_l7688
  %_index7692 = load i64, i64* %_index_ptr7691
  store i64 %_index7692, i64* %_pivot7693
  %_l7695 = load i64, i64* %_l7682
  store i64 %_l7695, i64* %_i7696
  %_r7698 = load i64, i64* %_r7679
  %_bop7699 = add i64 %_r7698, 1
  store i64 %_bop7699, i64* %_j7700
  store i64 0, i64* %_t7702
  store i64 0, i64* %_done7704
  br label %_cond7710
_body7709:
  %_i7711 = load i64, i64* %_i7696
  %_bop7712 = add i64 %_i7711, 1
  store i64 %_bop7712, i64* %_i7696
  br label %_cond7728
_body7727:
  %_i7729 = load i64, i64* %_i7696
  %_bop7730 = add i64 %_i7729, 1
  store i64 %_bop7730, i64* %_i7696
  br label %_cond7728
_body7744:
  %_j7746 = load i64, i64* %_j7700
  %_bop7747 = sub i64 %_j7746, 1
  store i64 %_bop7747, i64* %_j7700
  br label %_cond7745
_cond7710:
  %_done7706 = load i64, i64* %_done7704
  %_bop7707 = icmp eq i64 %_done7706, 0
  br i1 %_bop7707, label %_body7709, label %_post7708
_cond7728:
  %_a7714 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_i7715 = load i64, i64* %_i7696
  %_tmp7717 = bitcast { i64, [0 x i64] }* %_a7714 to i64*
  call void @oat_assert_array_length(i64* %_tmp7717, i64 %_i7715)
  %_index_ptr7718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7714, i32 0, i32 1, i64 %_i7715
  %_index7719 = load i64, i64* %_index_ptr7718
  %_pivot7720 = load i64, i64* %_pivot7693
  %_bop7721 = icmp sle i64 %_index7719, %_pivot7720
  %_i7722 = load i64, i64* %_i7696
  %_r7723 = load i64, i64* %_r7679
  %_bop7724 = icmp sle i64 %_i7722, %_r7723
  %_bop7725 = and i1 %_bop7721, %_bop7724
  br i1 %_bop7725, label %_body7727, label %_post7726
_cond7745:
  %_a7735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_j7736 = load i64, i64* %_j7700
  %_tmp7738 = bitcast { i64, [0 x i64] }* %_a7735 to i64*
  call void @oat_assert_array_length(i64* %_tmp7738, i64 %_j7736)
  %_index_ptr7739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7735, i32 0, i32 1, i64 %_j7736
  %_index7740 = load i64, i64* %_index_ptr7739
  %_pivot7741 = load i64, i64* %_pivot7693
  %_bop7742 = icmp sgt i64 %_index7740, %_pivot7741
  br i1 %_bop7742, label %_body7744, label %_post7743
_else7754:
  br label %_merge7753
_else7785:
  br label %_merge7784
_merge7753:
  %_done7756 = load i64, i64* %_done7704
  %_bop7757 = icmp eq i64 %_done7756, 0
  br i1 %_bop7757, label %_then7786, label %_else7785
_merge7784:
  br label %_cond7710
_post7708:
  %_a7787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_l7788 = load i64, i64* %_l7682
  %_tmp7790 = bitcast { i64, [0 x i64] }* %_a7787 to i64*
  call void @oat_assert_array_length(i64* %_tmp7790, i64 %_l7788)
  %_index_ptr7791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7787, i32 0, i32 1, i64 %_l7788
  %_index7792 = load i64, i64* %_index_ptr7791
  store i64 %_index7792, i64* %_t7702
  %_a7794 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_l7795 = load i64, i64* %_l7682
  %_tmp7797 = bitcast { i64, [0 x i64] }* %_a7794 to i64*
  call void @oat_assert_array_length(i64* %_tmp7797, i64 %_l7795)
  %_index_ptr7798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7794, i32 0, i32 1, i64 %_l7795
  %_a7799 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_j7800 = load i64, i64* %_j7700
  %_tmp7802 = bitcast { i64, [0 x i64] }* %_a7799 to i64*
  call void @oat_assert_array_length(i64* %_tmp7802, i64 %_j7800)
  %_index_ptr7803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7799, i32 0, i32 1, i64 %_j7800
  %_index7804 = load i64, i64* %_index_ptr7803
  store i64 %_index7804, i64* %_index_ptr7798
  %_a7806 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_j7807 = load i64, i64* %_j7700
  %_tmp7809 = bitcast { i64, [0 x i64] }* %_a7806 to i64*
  call void @oat_assert_array_length(i64* %_tmp7809, i64 %_j7807)
  %_index_ptr7810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7806, i32 0, i32 1, i64 %_j7807
  %_t7811 = load i64, i64* %_t7702
  store i64 %_t7811, i64* %_index_ptr7810
  %_j7813 = load i64, i64* %_j7700
  ret i64 %_j7813
_post7726:
  %_j7732 = load i64, i64* %_j7700
  %_bop7733 = sub i64 %_j7732, 1
  store i64 %_bop7733, i64* %_j7700
  br label %_cond7745
_post7743:
  %_i7749 = load i64, i64* %_i7696
  %_j7750 = load i64, i64* %_j7700
  %_bop7751 = icmp sge i64 %_i7749, %_j7750
  br i1 %_bop7751, label %_then7755, label %_else7754
_then7755:
  store i64 1, i64* %_done7704
  br label %_merge7753
_then7786:
  %_a7758 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_i7759 = load i64, i64* %_i7696
  %_tmp7761 = bitcast { i64, [0 x i64] }* %_a7758 to i64*
  call void @oat_assert_array_length(i64* %_tmp7761, i64 %_i7759)
  %_index_ptr7762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7758, i32 0, i32 1, i64 %_i7759
  %_index7763 = load i64, i64* %_index_ptr7762
  store i64 %_index7763, i64* %_t7702
  %_a7765 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_i7766 = load i64, i64* %_i7696
  %_tmp7768 = bitcast { i64, [0 x i64] }* %_a7765 to i64*
  call void @oat_assert_array_length(i64* %_tmp7768, i64 %_i7766)
  %_index_ptr7769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7765, i32 0, i32 1, i64 %_i7766
  %_a7770 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_j7771 = load i64, i64* %_j7700
  %_tmp7773 = bitcast { i64, [0 x i64] }* %_a7770 to i64*
  call void @oat_assert_array_length(i64* %_tmp7773, i64 %_j7771)
  %_index_ptr7774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7770, i32 0, i32 1, i64 %_j7771
  %_index7775 = load i64, i64* %_index_ptr7774
  store i64 %_index7775, i64* %_index_ptr7769
  %_a7777 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7685
  %_j7778 = load i64, i64* %_j7700
  %_tmp7780 = bitcast { i64, [0 x i64] }* %_a7777 to i64*
  call void @oat_assert_array_length(i64* %_tmp7780, i64 %_j7778)
  %_index_ptr7781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7777, i32 0, i32 1, i64 %_j7778
  %_t7782 = load i64, i64* %_t7702
  store i64 %_t7782, i64* %_index_ptr7781
  br label %_merge7784
}

define i64 @program(i64 %_argc7645, { i64, [0 x i8*] }* %_argv7642) {
  %_a7668 = alloca { i64, [0 x i64] }*
  %_raw_array7648 = call i64* @oat_alloc_array(i64 9)
  %_array7649 = bitcast i64* %_raw_array7648 to { i64, [0 x i64] }*
  %_ind7650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7649, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind7650
  %_ind7652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7649, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind7652
  %_ind7654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7649, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind7654
  %_ind7656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7649, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind7656
  %_ind7658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7649, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind7658
  %_ind7660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7649, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind7660
  %_ind7662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7649, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind7662
  %_ind7664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7649, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind7664
  %_ind7666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7649, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind7666
  store { i64, [0 x i64] }* %_array7649, { i64, [0 x i64] }** %_a7668
  %_a7670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7668
  %_result7671 = call i8* @string_of_array({ i64, [0 x i64] }* %_a7670)
  call void @print_string(i8* %_result7671)
  %_a7673 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7668
  call void @quick_sort({ i64, [0 x i64] }* %_a7673, i64 0, i64 8)
  %_a7675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7668
  %_result7676 = call i8* @string_of_array({ i64, [0 x i64] }* %_a7675)
  call void @print_string(i8* %_result7676)
  ret i64 255
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
