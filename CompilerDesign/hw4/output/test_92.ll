; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_stringd4781 = global [9 x i8] c"Correct!\00"
@_string4780 = global i8* bitcast ([9 x i8]* @_stringd4781 to i8*)

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_args4833 = alloca i64
  %_args4834 = alloca i64
  %_localId4847 = alloca i64
  %_localId4850 = alloca i64
  store i64 %numerator, i64* %_args4833
  store i64 %denominator, i64* %_args4834
  %_locRef4840 = load i64, i64* %_args4834
  %_bop4841 = icmp slt i64 %_locRef4840, 0
  br i1 %_bop4841, label %_ifTruelbl4837, label %_ifFalselbl4838
_ifTruelbl4837:
  %_locRef4842 = load i64, i64* %_args4833
  %_locRef4843 = load i64, i64* %_args4834
  %_uopUID4844 = sub i64 0, %_locRef4843
  %_callUID4845 = call i64 @euclid_division(i64 %_locRef4842, i64 %_uopUID4844)
  %_uopUID4846 = sub i64 0, %_callUID4845
  ret i64 %_uopUID4846
_ifFalselbl4838:
  br label %_ifEndlbl4839
_ifEndlbl4839:
  store i64 0, i64* %_localId4847
  %_locRef4849 = load i64, i64* %_args4833
  store i64 %_locRef4849, i64* %_localId4850
  %_locRef4855 = load i64, i64* %_args4833
  %_bop4856 = icmp slt i64 %_locRef4855, 0
  br i1 %_bop4856, label %_ifTruelbl4852, label %_ifFalselbl4853
_ifTruelbl4852:
  %_locRef4857 = load i64, i64* %_args4833
  %_uopUID4858 = sub i64 0, %_locRef4857
  store i64 %_uopUID4858, i64* %_localId4850
  %_locRef4860 = load i64, i64* %_localId4850
  %_locRef4861 = load i64, i64* %_args4834
  %_bop4862 = icmp sge i64 %_locRef4860, %_locRef4861
  br i1 %_bop4862, label %_while_body_jmp4864, label %_while_end_jmp4863
_while_body_jmp4864:
  %_locRef4865 = load i64, i64* %_localId4847
  %_bop4866 = add i64 %_locRef4865, 1
  store i64 %_bop4866, i64* %_localId4847
  %_locRef4868 = load i64, i64* %_localId4850
  %_locRef4869 = load i64, i64* %_args4834
  %_bop4870 = sub i64 %_locRef4868, %_locRef4869
  store i64 %_bop4870, i64* %_localId4850
  %_locRef4872 = load i64, i64* %_localId4850
  %_locRef4873 = load i64, i64* %_args4834
  %_bop4874 = icmp sge i64 %_locRef4872, %_locRef4873
  br i1 %_bop4874, label %_while_body_jmp4864, label %_while_end_jmp4863
_while_end_jmp4863:
  %_locRef4878 = load i64, i64* %_localId4850
  %_bop4879 = icmp eq i64 %_locRef4878, 0
  br i1 %_bop4879, label %_ifTruelbl4875, label %_ifFalselbl4876
_ifTruelbl4875:
  %_locRef4880 = load i64, i64* %_localId4847
  %_uopUID4881 = sub i64 0, %_locRef4880
  ret i64 %_uopUID4881
_ifFalselbl4876:
  %_locRef4882 = load i64, i64* %_localId4847
  %_uopUID4883 = sub i64 0, %_locRef4882
  %_bop4884 = sub i64 %_uopUID4883, 1
  ret i64 %_bop4884
_ifEndlbl4877:
  br label %_ifEndlbl4854
_ifFalselbl4853:
  br label %_ifEndlbl4854
_ifEndlbl4854:
  %_locRef4885 = load i64, i64* %_localId4850
  %_locRef4886 = load i64, i64* %_args4834
  %_bop4887 = icmp sge i64 %_locRef4885, %_locRef4886
  br i1 %_bop4887, label %_while_body_jmp4889, label %_while_end_jmp4888
_while_body_jmp4889:
  %_locRef4890 = load i64, i64* %_localId4847
  %_bop4891 = add i64 %_locRef4890, 1
  store i64 %_bop4891, i64* %_localId4847
  %_locRef4893 = load i64, i64* %_localId4850
  %_locRef4894 = load i64, i64* %_args4834
  %_bop4895 = sub i64 %_locRef4893, %_locRef4894
  store i64 %_bop4895, i64* %_localId4850
  %_locRef4897 = load i64, i64* %_localId4850
  %_locRef4898 = load i64, i64* %_args4834
  %_bop4899 = icmp sge i64 %_locRef4897, %_locRef4898
  br i1 %_bop4899, label %_while_body_jmp4889, label %_while_end_jmp4888
_while_end_jmp4888:
  %_locRef4900 = load i64, i64* %_localId4847
  ret i64 %_locRef4900
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_args4783 = alloca { i64, [0 x i64] }*
  %_args4784 = alloca i64
  %_args4785 = alloca i64
  %_args4786 = alloca i64
  %_localId4801 = alloca i64
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_args4783
  store i64 %key, i64* %_args4784
  store i64 %min, i64* %_args4785
  store i64 %max, i64* %_args4786
  %_locRef4794 = load i64, i64* %_args4786
  %_locRef4795 = load i64, i64* %_args4785
  %_bop4796 = icmp slt i64 %_locRef4794, %_locRef4795
  br i1 %_bop4796, label %_ifTruelbl4791, label %_ifFalselbl4792
_ifTruelbl4791:
  ret i1 0
_ifFalselbl4792:
  br label %_ifEndlbl4793
_ifEndlbl4793:
  %_locRef4797 = load i64, i64* %_args4786
  %_locRef4798 = load i64, i64* %_args4785
  %_bop4799 = add i64 %_locRef4797, %_locRef4798
  %_callUID4800 = call i64 @euclid_division(i64 %_bop4799, i64 2)
  store i64 %_callUID4800, i64* %_localId4801
  %_locRef4806 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4783
  %_locRef4807 = load i64, i64* %_localId4801
  %_idxUID4808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4806, i32 0, i32 1, i64 %_locRef4807
  %_getArrUID4809 = load i64, i64* %_idxUID4808
  %_locRef4810 = load i64, i64* %_args4784
  %_bop4811 = icmp sgt i64 %_getArrUID4809, %_locRef4810
  br i1 %_bop4811, label %_ifTruelbl4803, label %_ifFalselbl4804
_ifTruelbl4803:
  %_locRef4812 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4783
  %_locRef4813 = load i64, i64* %_args4784
  %_locRef4814 = load i64, i64* %_args4785
  %_locRef4815 = load i64, i64* %_localId4801
  %_bop4816 = sub i64 %_locRef4815, 1
  %_callUID4817 = call i1 @binary_search({ i64, [0 x i64] }* %_locRef4812, i64 %_locRef4813, i64 %_locRef4814, i64 %_bop4816)
  ret i1 %_callUID4817
_ifFalselbl4804:
  br label %_ifEndlbl4805
_ifEndlbl4805:
  %_locRef4821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4783
  %_locRef4822 = load i64, i64* %_localId4801
  %_idxUID4823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4821, i32 0, i32 1, i64 %_locRef4822
  %_getArrUID4824 = load i64, i64* %_idxUID4823
  %_locRef4825 = load i64, i64* %_args4784
  %_bop4826 = icmp slt i64 %_getArrUID4824, %_locRef4825
  br i1 %_bop4826, label %_ifTruelbl4818, label %_ifFalselbl4819
_ifTruelbl4818:
  %_locRef4827 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4783
  %_locRef4828 = load i64, i64* %_args4784
  %_locRef4829 = load i64, i64* %_localId4801
  %_bop4830 = add i64 %_locRef4829, 1
  %_locRef4831 = load i64, i64* %_args4786
  %_callUID4832 = call i1 @binary_search({ i64, [0 x i64] }* %_locRef4827, i64 %_locRef4828, i64 %_bop4830, i64 %_locRef4831)
  ret i1 %_callUID4832
_ifFalselbl4819:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args4734 = alloca i64
  %_args4735 = alloca { i64, [0 x i8*] }*
  %_localId4740 = alloca { i64, [0 x i64] }*
  %_localId4742 = alloca i64
  %_localId4762 = alloca i1
  %_localId4766 = alloca i1
  store i64 %argc, i64* %_args4734
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args4735
  %_raw_array4738 = call i64* @oat_alloc_array(i64 100)
  %_array4739 = bitcast i64* %_raw_array4738 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4739, { i64, [0 x i64] }** %_localId4740
  store i64 0, i64* %_localId4742
  %_locRef4744 = load i64, i64* %_localId4742
  %_bop4745 = icmp slt i64 %_locRef4744, 100
  br i1 %_bop4745, label %_while_body_jmp4747, label %_while_end_jmp4746
_while_body_jmp4747:
  %_locRef4748 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4740
  %_locRef4749 = load i64, i64* %_localId4742
  %_locRef4750 = load i64, i64* %_localId4742
  %_bop4751 = mul i64 2, %_locRef4750
  %_bop4752 = add i64 %_bop4751, 1
  %_arridx4753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4748, i32 0, i32 1, i64 %_locRef4749
  store i64 %_bop4752, i64* %_arridx4753
  %_locRef4755 = load i64, i64* %_localId4742
  %_bop4756 = add i64 %_locRef4755, 1
  store i64 %_bop4756, i64* %_localId4742
  %_locRef4758 = load i64, i64* %_localId4742
  %_bop4759 = icmp slt i64 %_locRef4758, 100
  br i1 %_bop4759, label %_while_body_jmp4747, label %_while_end_jmp4746
_while_end_jmp4746:
  %_locRef4760 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4740
  %_callUID4761 = call i1 @binary_search({ i64, [0 x i64] }* %_locRef4760, i64 80, i64 0, i64 99)
  store i1 %_callUID4761, i1* %_localId4762
  %_locRef4764 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4740
  %_callUID4765 = call i1 @binary_search({ i64, [0 x i64] }* %_locRef4764, i64 81, i64 0, i64 99)
  store i1 %_callUID4765, i1* %_localId4766
  %_locRef4771 = load i1, i1* %_localId4762
  %_locRef4772 = load i1, i1* %_localId4766
  %_bop4773 = and i1 %_locRef4771, %_locRef4772
  %_uopUID4774 = xor i1 1, %_bop4773
  %_locRef4775 = load i1, i1* %_localId4762
  %_locRef4776 = load i1, i1* %_localId4766
  %_bop4777 = or i1 %_locRef4775, %_locRef4776
  %_bop4778 = and i1 %_uopUID4774, %_bop4777
  br i1 %_bop4778, label %_ifTruelbl4768, label %_ifFalselbl4769
_ifTruelbl4768:
  %_stringp4779 = load i8*, i8** @_string4780
  call void @print_string(i8* %_stringp4779)
  br label %_ifEndlbl4770
_ifFalselbl4769:
  br label %_ifEndlbl4770
_ifEndlbl4770:
  ret i64 0
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
