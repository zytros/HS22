; generated from: hw5programs/compile_nested_struct.oat
target triple = "x86_64-unknown-linux"
%RGB = type { i64, i64, i64 }
%Point = type { %RGB*, %RGB*, %RGB* }

@red = global %RGB* @_global_struct6783
@_global_struct6783 = global %RGB { i64 255, i64 0, i64 0 }
@green = global %RGB* @_global_struct6782
@_global_struct6782 = global %RGB { i64 0, i64 255, i64 0 }
@blue = global %RGB* @_global_struct6781
@_global_struct6781 = global %RGB { i64 0, i64 0, i64 255 }
@points = global { i64, [0 x %Point*] }* bitcast ({ i64, [1 x %Point*] }* @_global_arr6780 to { i64, [0 x %Point*] }*)
@_global_arr6780 = global { i64, [1 x %Point*] } { i64 1, [1 x %Point*] [ %Point* @_global_struct6779 ] }
@_global_struct6779 = global %Point { %RGB* @_global_struct6778, %RGB* @_global_struct6777, %RGB* @_global_struct6776 }
@_global_struct6778 = global %RGB { i64 255, i64 0, i64 0 }
@_global_struct6777 = global %RGB { i64 0, i64 255, i64 0 }
@_global_struct6776 = global %RGB { i64 0, i64 0, i64 255 }

define i64 @program(i64 %_argc6717, { i64, [0 x i8*] }* %_argv6714) {
  %_points6720 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6722 = bitcast { i64, [0 x %Point*] }* %_points6720 to i64*
  call void @oat_assert_array_length(i64* %_tmp6722, i64 0)
  %_index_ptr6723 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6720, i32 0, i32 1, i32 0
  %_index6724 = load %Point*, %Point** %_index_ptr6723
  %_index6725 = getelementptr %Point, %Point* %_index6724, i32 0, i32 0
  %_proj6726 = load %RGB*, %RGB** %_index6725
  %_index6727 = getelementptr %RGB, %RGB* %_proj6726, i32 0, i32 0
  store i64 3, i64* %_index6727
  %_points6729 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6731 = bitcast { i64, [0 x %Point*] }* %_points6729 to i64*
  call void @oat_assert_array_length(i64* %_tmp6731, i64 0)
  %_index_ptr6732 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6729, i32 0, i32 1, i32 0
  %_index6733 = load %Point*, %Point** %_index_ptr6732
  %_index6734 = getelementptr %Point, %Point* %_index6733, i32 0, i32 0
  %_proj6735 = load %RGB*, %RGB** %_index6734
  %_index6736 = getelementptr %RGB, %RGB* %_proj6735, i32 0, i32 1
  store i64 2, i64* %_index6736
  %_points6738 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6740 = bitcast { i64, [0 x %Point*] }* %_points6738 to i64*
  call void @oat_assert_array_length(i64* %_tmp6740, i64 0)
  %_index_ptr6741 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6738, i32 0, i32 1, i32 0
  %_index6742 = load %Point*, %Point** %_index_ptr6741
  %_index6743 = getelementptr %Point, %Point* %_index6742, i32 0, i32 0
  %_proj6744 = load %RGB*, %RGB** %_index6743
  %_index6745 = getelementptr %RGB, %RGB* %_proj6744, i32 0, i32 2
  store i64 4, i64* %_index6745
  %_points6747 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6749 = bitcast { i64, [0 x %Point*] }* %_points6747 to i64*
  call void @oat_assert_array_length(i64* %_tmp6749, i64 0)
  %_index_ptr6750 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6747, i32 0, i32 1, i32 0
  %_index6751 = load %Point*, %Point** %_index_ptr6750
  %_index6752 = getelementptr %Point, %Point* %_index6751, i32 0, i32 0
  %_proj6753 = load %RGB*, %RGB** %_index6752
  %_index6754 = getelementptr %RGB, %RGB* %_proj6753, i32 0, i32 0
  %_proj6755 = load i64, i64* %_index6754
  %_points6756 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6758 = bitcast { i64, [0 x %Point*] }* %_points6756 to i64*
  call void @oat_assert_array_length(i64* %_tmp6758, i64 0)
  %_index_ptr6759 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6756, i32 0, i32 1, i32 0
  %_index6760 = load %Point*, %Point** %_index_ptr6759
  %_index6761 = getelementptr %Point, %Point* %_index6760, i32 0, i32 0
  %_proj6762 = load %RGB*, %RGB** %_index6761
  %_index6763 = getelementptr %RGB, %RGB* %_proj6762, i32 0, i32 1
  %_proj6764 = load i64, i64* %_index6763
  %_bop6765 = mul i64 %_proj6755, %_proj6764
  %_points6766 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6768 = bitcast { i64, [0 x %Point*] }* %_points6766 to i64*
  call void @oat_assert_array_length(i64* %_tmp6768, i64 0)
  %_index_ptr6769 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6766, i32 0, i32 1, i32 0
  %_index6770 = load %Point*, %Point** %_index_ptr6769
  %_index6771 = getelementptr %Point, %Point* %_index6770, i32 0, i32 0
  %_proj6772 = load %RGB*, %RGB** %_index6771
  %_index6773 = getelementptr %RGB, %RGB* %_proj6772, i32 0, i32 2
  %_proj6774 = load i64, i64* %_index6773
  %_bop6775 = add i64 %_bop6765, %_proj6774
  ret i64 %_bop6775
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
