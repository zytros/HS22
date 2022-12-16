; generated from: oatprograms/bubble_sort.oat
target triple = "x86_64-unknown-linux"
define void @bubble_sort({ i64, [0 x i64] }* %_arr4837, i64 %_len4834) {
  %_arr4838 = alloca { i64, [0 x i64] }*
  %_len4835 = alloca i64
  %_swapped4840 = alloca i1
  %_i4847 = alloca i64
  %_temp4876 = alloca i64
  store { i64, [0 x i64] }* %_arr4837, { i64, [0 x i64] }** %_arr4838
  store i64 %_len4834, i64* %_len4835
  store i1 1, i1* %_swapped4840
  br label %_cond4845
_body4844:
  store i1 0, i1* %_swapped4840
  store i64 0, i64* %_i4847
  br label %_cond4855
_body4854:
  %_arr4856 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4838
  %_i4857 = load i64, i64* %_i4847
  %_tmp4859 = bitcast { i64, [0 x i64] }* %_arr4856 to i64*
  call void @oat_assert_array_length(i64* %_tmp4859, i64 %_i4857)
  %_index_ptr4860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4856, i32 0, i32 1, i64 %_i4857
  %_index4861 = load i64, i64* %_index_ptr4860
  %_arr4862 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4838
  %_i4863 = load i64, i64* %_i4847
  %_bop4864 = add i64 %_i4863, 1
  %_tmp4866 = bitcast { i64, [0 x i64] }* %_arr4862 to i64*
  call void @oat_assert_array_length(i64* %_tmp4866, i64 %_bop4864)
  %_index_ptr4867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4862, i32 0, i32 1, i64 %_bop4864
  %_index4868 = load i64, i64* %_index_ptr4867
  %_bop4869 = icmp sgt i64 %_index4861, %_index4868
  br i1 %_bop4869, label %_then4902, label %_else4901
_cond4845:
  %_swapped4842 = load i1, i1* %_swapped4840
  br i1 %_swapped4842, label %_body4844, label %_post4843
_cond4855:
  %_i4849 = load i64, i64* %_i4847
  %_len4850 = load i64, i64* %_len4835
  %_bop4851 = sub i64 %_len4850, 1
  %_bop4852 = icmp slt i64 %_i4849, %_bop4851
  br i1 %_bop4852, label %_body4854, label %_post4853
_else4901:
  br label %_merge4900
_merge4900:
  %_i4903 = load i64, i64* %_i4847
  %_bop4904 = add i64 %_i4903, 1
  store i64 %_bop4904, i64* %_i4847
  br label %_cond4855
_post4843:
  ret void
_post4853:
  br label %_cond4845
_then4902:
  %_arr4870 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4838
  %_i4871 = load i64, i64* %_i4847
  %_tmp4873 = bitcast { i64, [0 x i64] }* %_arr4870 to i64*
  call void @oat_assert_array_length(i64* %_tmp4873, i64 %_i4871)
  %_index_ptr4874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4870, i32 0, i32 1, i64 %_i4871
  %_index4875 = load i64, i64* %_index_ptr4874
  store i64 %_index4875, i64* %_temp4876
  %_arr4878 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4838
  %_i4879 = load i64, i64* %_i4847
  %_tmp4881 = bitcast { i64, [0 x i64] }* %_arr4878 to i64*
  call void @oat_assert_array_length(i64* %_tmp4881, i64 %_i4879)
  %_index_ptr4882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4878, i32 0, i32 1, i64 %_i4879
  %_arr4883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4838
  %_i4884 = load i64, i64* %_i4847
  %_bop4885 = add i64 %_i4884, 1
  %_tmp4887 = bitcast { i64, [0 x i64] }* %_arr4883 to i64*
  call void @oat_assert_array_length(i64* %_tmp4887, i64 %_bop4885)
  %_index_ptr4888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4883, i32 0, i32 1, i64 %_bop4885
  %_index4889 = load i64, i64* %_index_ptr4888
  store i64 %_index4889, i64* %_index_ptr4882
  %_arr4891 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4838
  %_i4892 = load i64, i64* %_i4847
  %_bop4893 = add i64 %_i4892, 1
  %_tmp4895 = bitcast { i64, [0 x i64] }* %_arr4891 to i64*
  call void @oat_assert_array_length(i64* %_tmp4895, i64 %_bop4893)
  %_index_ptr4896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4891, i32 0, i32 1, i64 %_bop4893
  %_temp4897 = load i64, i64* %_temp4876
  store i64 %_temp4897, i64* %_index_ptr4896
  store i1 1, i1* %_swapped4840
  br label %_merge4900
}

define i64 @program(i64 %_argc4741, { i64, [0 x i8*] }* %_argv4738) {
  %_i4748 = alloca i64
  %_j4765 = alloca i64
  %_arr4794 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_val4796 = alloca i64
  %_i4798 = alloca i64
  %_raw_array4746 = call i64* @oat_alloc_array(i64 10)
  %_array4747 = bitcast i64* %_raw_array4746 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_4745 = alloca i64
  store i64 10, i64* %_bnd_4745
  %_ptr_4744 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4747, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_4744
  store i64 0, i64* %_i4748
  br label %_cond4755
_body4754:
  %__ptr_47444756 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_4744
  %_i4757 = load i64, i64* %_i4748
  %_tmp4759 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_47444756 to i64*
  call void @oat_assert_array_length(i64* %_tmp4759, i64 %_i4757)
  %_index_ptr4760 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_47444756, i32 0, i32 1, i64 %_i4757
  %_raw_array4763 = call i64* @oat_alloc_array(i64 10)
  %_array4764 = bitcast i64* %_raw_array4763 to { i64, [0 x i64] }*
  %_bnd_4762 = alloca i64
  store i64 10, i64* %_bnd_4762
  %_ptr_4761 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4764, { i64, [0 x i64] }** %_ptr_4761
  store i64 0, i64* %_j4765
  br label %_cond4772
_body4771:
  %__ptr_47614773 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_4761
  %_j4774 = load i64, i64* %_j4765
  %_tmp4776 = bitcast { i64, [0 x i64] }* %__ptr_47614773 to i64*
  call void @oat_assert_array_length(i64* %_tmp4776, i64 %_j4774)
  %_index_ptr4777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_47614773, i32 0, i32 1, i64 %_j4774
  %_i4778 = load i64, i64* %_i4748
  %_bop4779 = mul i64 10, %_i4778
  %_j4780 = load i64, i64* %_j4765
  %_bop4781 = sub i64 %_bop4779, %_j4780
  store i64 %_bop4781, i64* %_index_ptr4777
  %_j4783 = load i64, i64* %_j4765
  %_bop4784 = add i64 %_j4783, 1
  store i64 %_bop4784, i64* %_j4765
  br label %_cond4772
_body4803:
  %_arr4805 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr4794
  %_i4806 = load i64, i64* %_i4798
  %_tmp4808 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr4805 to i64*
  call void @oat_assert_array_length(i64* %_tmp4808, i64 %_i4806)
  %_index_ptr4809 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr4805, i32 0, i32 1, i64 %_i4806
  %_index4810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4809
  call void @bubble_sort({ i64, [0 x i64] }* %_index4810, i64 10)
  %_val4812 = load i64, i64* %_val4796
  %_arr4813 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr4794
  %_i4814 = load i64, i64* %_i4798
  %_tmp4816 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr4813 to i64*
  call void @oat_assert_array_length(i64* %_tmp4816, i64 %_i4814)
  %_index_ptr4817 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr4813, i32 0, i32 1, i64 %_i4814
  %_index4818 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4817
  %_i4819 = load i64, i64* %_i4798
  %_tmp4821 = bitcast { i64, [0 x i64] }* %_index4818 to i64*
  call void @oat_assert_array_length(i64* %_tmp4821, i64 %_i4819)
  %_index_ptr4822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4818, i32 0, i32 1, i64 %_i4819
  %_index4823 = load i64, i64* %_index_ptr4822
  %_bop4824 = add i64 %_val4812, %_index4823
  store i64 %_bop4824, i64* %_val4796
  %_i4826 = load i64, i64* %_i4798
  %_bop4827 = add i64 %_i4826, 1
  store i64 %_bop4827, i64* %_i4798
  br label %_cond4804
_cond4755:
  %_i4750 = load i64, i64* %_i4748
  %__bnd_47454751 = load i64, i64* %_bnd_4745
  %_bop4752 = icmp slt i64 %_i4750, %__bnd_47454751
  br i1 %_bop4752, label %_body4754, label %_post4753
_cond4772:
  %_j4767 = load i64, i64* %_j4765
  %__bnd_47624768 = load i64, i64* %_bnd_4762
  %_bop4769 = icmp slt i64 %_j4767, %__bnd_47624768
  br i1 %_bop4769, label %_body4771, label %_post4770
_cond4804:
  %_i4800 = load i64, i64* %_i4798
  %_bop4801 = icmp slt i64 %_i4800, 10
  br i1 %_bop4801, label %_body4803, label %_post4802
_else4832:
  ret i64 0
_merge4831:
  ret i64 0
_post4753:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4747, { i64, [0 x { i64, [0 x i64] }*] }** %_arr4794
  store i64 0, i64* %_val4796
  store i64 0, i64* %_i4798
  br label %_cond4804
_post4770:
  store { i64, [0 x i64] }* %_array4764, { i64, [0 x i64] }** %_index_ptr4760
  %_i4789 = load i64, i64* %_i4748
  %_bop4790 = add i64 %_i4789, 1
  store i64 %_bop4790, i64* %_i4748
  br label %_cond4755
_post4802:
  %_val4829 = load i64, i64* %_val4796
  %_bop4830 = icmp eq i64 %_val4829, 405
  br i1 %_bop4830, label %_then4833, label %_else4832
_then4833:
  ret i64 1
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
