; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str_arr2868 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %_numbers2880, i64 %_array_size2877) {
  %_numbers2881 = alloca { i64, [0 x i64] }*
  %_array_size2878 = alloca i64
  %_temp2883 = alloca i64
  %_i2887 = alloca i64
  %_j2894 = alloca i64
  store { i64, [0 x i64] }* %_numbers2880, { i64, [0 x i64] }** %_numbers2881
  store i64 %_array_size2877, i64* %_array_size2878
  store i64 0, i64* %_temp2883
  %_array_size2885 = load i64, i64* %_array_size2878
  %_bop2886 = sub i64 %_array_size2885, 1
  store i64 %_bop2886, i64* %_i2887
  br label %_cond2893
_body2892:
  store i64 1, i64* %_j2894
  br label %_cond2901
_body2900:
  %_numbers2902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2881
  %_j2903 = load i64, i64* %_j2894
  %_bop2904 = sub i64 %_j2903, 1
  %_tmp2906 = bitcast { i64, [0 x i64] }* %_numbers2902 to i64*
  call void @oat_assert_array_length(i64* %_tmp2906, i64 %_bop2904)
  %_index_ptr2907 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2902, i32 0, i32 1, i64 %_bop2904
  %_index2908 = load i64, i64* %_index_ptr2907
  %_numbers2909 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2881
  %_i2910 = load i64, i64* %_i2887
  %_tmp2912 = bitcast { i64, [0 x i64] }* %_numbers2909 to i64*
  call void @oat_assert_array_length(i64* %_tmp2912, i64 %_i2910)
  %_index_ptr2913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2909, i32 0, i32 1, i64 %_i2910
  %_index2914 = load i64, i64* %_index_ptr2913
  %_bop2915 = icmp sgt i64 %_index2908, %_index2914
  br i1 %_bop2915, label %_then2946, label %_else2945
_cond2893:
  %_i2889 = load i64, i64* %_i2887
  %_bop2890 = icmp sgt i64 %_i2889, 0
  br i1 %_bop2890, label %_body2892, label %_post2891
_cond2901:
  %_j2896 = load i64, i64* %_j2894
  %_i2897 = load i64, i64* %_i2887
  %_bop2898 = icmp sle i64 %_j2896, %_i2897
  br i1 %_bop2898, label %_body2900, label %_post2899
_else2945:
  br label %_merge2944
_merge2944:
  %_j2947 = load i64, i64* %_j2894
  %_bop2948 = add i64 %_j2947, 1
  store i64 %_bop2948, i64* %_j2894
  br label %_cond2901
_post2891:
  ret void
_post2899:
  %_i2950 = load i64, i64* %_i2887
  %_bop2951 = sub i64 %_i2950, 1
  store i64 %_bop2951, i64* %_i2887
  br label %_cond2893
_then2946:
  %_numbers2916 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2881
  %_j2917 = load i64, i64* %_j2894
  %_bop2918 = sub i64 %_j2917, 1
  %_tmp2920 = bitcast { i64, [0 x i64] }* %_numbers2916 to i64*
  call void @oat_assert_array_length(i64* %_tmp2920, i64 %_bop2918)
  %_index_ptr2921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2916, i32 0, i32 1, i64 %_bop2918
  %_index2922 = load i64, i64* %_index_ptr2921
  store i64 %_index2922, i64* %_temp2883
  %_numbers2924 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2881
  %_j2925 = load i64, i64* %_j2894
  %_bop2926 = sub i64 %_j2925, 1
  %_tmp2928 = bitcast { i64, [0 x i64] }* %_numbers2924 to i64*
  call void @oat_assert_array_length(i64* %_tmp2928, i64 %_bop2926)
  %_index_ptr2929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2924, i32 0, i32 1, i64 %_bop2926
  %_numbers2930 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2881
  %_i2931 = load i64, i64* %_i2887
  %_tmp2933 = bitcast { i64, [0 x i64] }* %_numbers2930 to i64*
  call void @oat_assert_array_length(i64* %_tmp2933, i64 %_i2931)
  %_index_ptr2934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2930, i32 0, i32 1, i64 %_i2931
  %_index2935 = load i64, i64* %_index_ptr2934
  store i64 %_index2935, i64* %_index_ptr2929
  %_numbers2937 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2881
  %_i2938 = load i64, i64* %_i2887
  %_tmp2940 = bitcast { i64, [0 x i64] }* %_numbers2937 to i64*
  call void @oat_assert_array_length(i64* %_tmp2940, i64 %_i2938)
  %_index_ptr2941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2937, i32 0, i32 1, i64 %_i2938
  %_temp2942 = load i64, i64* %_temp2883
  store i64 %_temp2942, i64* %_index_ptr2941
  br label %_merge2944
}

define i64 @program(i64 %_argc2797, { i64, [0 x i8*] }* %_argv2794) {
  %_i2804 = alloca i64
  %_a2823 = alloca { i64, [0 x i64] }*
  %_raw_array2802 = call i64* @oat_alloc_array(i64 8)
  %_array2803 = bitcast i64* %_raw_array2802 to { i64, [0 x i64] }*
  %_bnd_2801 = alloca i64
  store i64 8, i64* %_bnd_2801
  %_ptr_2800 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2803, { i64, [0 x i64] }** %_ptr_2800
  store i64 0, i64* %_i2804
  br label %_cond2811
_body2810:
  %__ptr_28002812 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_2800
  %_i2813 = load i64, i64* %_i2804
  %_tmp2815 = bitcast { i64, [0 x i64] }* %__ptr_28002812 to i64*
  call void @oat_assert_array_length(i64* %_tmp2815, i64 %_i2813)
  %_index_ptr2816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_28002812, i32 0, i32 1, i64 %_i2813
  store i64 0, i64* %_index_ptr2816
  %_i2818 = load i64, i64* %_i2804
  %_bop2819 = add i64 %_i2818, 1
  store i64 %_bop2819, i64* %_i2804
  br label %_cond2811
_cond2811:
  %_i2806 = load i64, i64* %_i2804
  %__bnd_28012807 = load i64, i64* %_bnd_2801
  %_bop2808 = icmp slt i64 %_i2806, %__bnd_28012807
  br i1 %_bop2808, label %_body2810, label %_post2809
_post2809:
  store { i64, [0 x i64] }* %_array2803, { i64, [0 x i64] }** %_a2823
  %_a2825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_tmp2827 = bitcast { i64, [0 x i64] }* %_a2825 to i64*
  call void @oat_assert_array_length(i64* %_tmp2827, i64 0)
  %_index_ptr2828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2825, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2828
  %_a2830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_tmp2832 = bitcast { i64, [0 x i64] }* %_a2830 to i64*
  call void @oat_assert_array_length(i64* %_tmp2832, i64 1)
  %_index_ptr2833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2830, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2833
  %_a2835 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_tmp2837 = bitcast { i64, [0 x i64] }* %_a2835 to i64*
  call void @oat_assert_array_length(i64* %_tmp2837, i64 2)
  %_index_ptr2838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2835, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2838
  %_a2840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_tmp2842 = bitcast { i64, [0 x i64] }* %_a2840 to i64*
  call void @oat_assert_array_length(i64* %_tmp2842, i64 3)
  %_index_ptr2843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2840, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2843
  %_a2845 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_tmp2847 = bitcast { i64, [0 x i64] }* %_a2845 to i64*
  call void @oat_assert_array_length(i64* %_tmp2847, i64 4)
  %_index_ptr2848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2845, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2848
  %_a2850 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_tmp2852 = bitcast { i64, [0 x i64] }* %_a2850 to i64*
  call void @oat_assert_array_length(i64* %_tmp2852, i64 5)
  %_index_ptr2853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2850, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2853
  %_a2855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_tmp2857 = bitcast { i64, [0 x i64] }* %_a2855 to i64*
  call void @oat_assert_array_length(i64* %_tmp2857, i64 6)
  %_index_ptr2858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2855, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2858
  %_a2860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_tmp2862 = bitcast { i64, [0 x i64] }* %_a2860 to i64*
  call void @oat_assert_array_length(i64* %_tmp2862, i64 7)
  %_index_ptr2863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2860, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2863
  %_a2865 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_result2866 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2865)
  call void @print_string(i8* %_result2866)
  %_str2869 = getelementptr [2 x i8], [2 x i8]* @_str_arr2868, i32 0, i32 0
  call void @print_string(i8* %_str2869)
  %_a2871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  call void @bubble_sort({ i64, [0 x i64] }* %_a2871, i64 8)
  %_a2873 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2823
  %_result2874 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2873)
  call void @print_string(i8* %_result2874)
  ret i64 -1
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
