; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_str_arr3668 = global [2 x i8] c" \00"
@_str_arr3674 = global [2 x i8] c"	\00"

define i64 @program(i64 %_argc3864, { i64, [0 x i8*] }* %_argv3861) {
  %_a3889 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b3929 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c3957 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3867 = call i64* @oat_alloc_array(i64 2)
  %_array3868 = bitcast i64* %_raw_array3867 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3869 = call i64* @oat_alloc_array(i64 3)
  %_array3870 = bitcast i64* %_raw_array3869 to { i64, [0 x i64] }*
  %_ind3871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3870, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3871
  %_ind3873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3870, i32 0, i32 1, i32 1
  store i64 3, i64* %_ind3873
  %_ind3875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3870, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind3875
  %_ind3877 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3868, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3870, { i64, [0 x i64] }** %_ind3877
  %_raw_array3879 = call i64* @oat_alloc_array(i64 3)
  %_array3880 = bitcast i64* %_raw_array3879 to { i64, [0 x i64] }*
  %_ind3881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3880, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3881
  %_ind3883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3880, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3883
  %_ind3885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3880, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3885
  %_ind3887 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3868, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3880, { i64, [0 x i64] }** %_ind3887
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3868, { i64, [0 x { i64, [0 x i64] }*] }** %_a3889
  %_raw_array3891 = call i64* @oat_alloc_array(i64 3)
  %_array3892 = bitcast i64* %_raw_array3891 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3893 = call i64* @oat_alloc_array(i64 4)
  %_array3894 = bitcast i64* %_raw_array3893 to { i64, [0 x i64] }*
  %_ind3895 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3894, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3895
  %_ind3897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3894, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3897
  %_ind3899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3894, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind3899
  %_ind3901 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3894, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind3901
  %_ind3903 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3892, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3894, { i64, [0 x i64] }** %_ind3903
  %_raw_array3905 = call i64* @oat_alloc_array(i64 4)
  %_array3906 = bitcast i64* %_raw_array3905 to { i64, [0 x i64] }*
  %_ind3907 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3906, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3907
  %_ind3909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3906, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3909
  %_ind3911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3906, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind3911
  %_ind3913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3906, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3913
  %_ind3915 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3892, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3906, { i64, [0 x i64] }** %_ind3915
  %_raw_array3917 = call i64* @oat_alloc_array(i64 4)
  %_array3918 = bitcast i64* %_raw_array3917 to { i64, [0 x i64] }*
  %_ind3919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3918, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind3919
  %_ind3921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3918, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3921
  %_ind3923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3918, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3923
  %_ind3925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3918, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind3925
  %_ind3927 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3892, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3918, { i64, [0 x i64] }** %_ind3927
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3892, { i64, [0 x { i64, [0 x i64] }*] }** %_b3929
  %_raw_array3931 = call i64* @oat_alloc_array(i64 2)
  %_array3932 = bitcast i64* %_raw_array3931 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3933 = call i64* @oat_alloc_array(i64 4)
  %_array3934 = bitcast i64* %_raw_array3933 to { i64, [0 x i64] }*
  %_ind3935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3934, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3935
  %_ind3937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3934, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3937
  %_ind3939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3934, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3939
  %_ind3941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3934, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3941
  %_ind3943 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3932, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3934, { i64, [0 x i64] }** %_ind3943
  %_raw_array3945 = call i64* @oat_alloc_array(i64 4)
  %_array3946 = bitcast i64* %_raw_array3945 to { i64, [0 x i64] }*
  %_ind3947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3946, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3947
  %_ind3949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3946, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3949
  %_ind3951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3946, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3951
  %_ind3953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3946, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3953
  %_ind3955 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3932, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3946, { i64, [0 x i64] }** %_ind3955
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3932, { i64, [0 x { i64, [0 x i64] }*] }** %_c3957
  %_c3959 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3957
  %_b3960 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3929
  %_a3961 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3889
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a3961, { i64, [0 x { i64, [0 x i64] }*] }* %_b3960, { i64, [0 x { i64, [0 x i64] }*] }* %_c3959)
  %_c3963 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3957
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3963, i64 2)
  %_c3965 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3957
  %_b3966 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3929
  %_a3967 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3889
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a3967, { i64, [0 x { i64, [0 x i64] }*] }* %_b3966, { i64, [0 x { i64, [0 x i64] }*] }* %_c3965)
  %_c3969 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3957
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3969, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a13782, { i64, [0 x { i64, [0 x i64] }*] }* %_a23779, { i64, [0 x { i64, [0 x i64] }*] }* %_a33776) {
  %_a13783 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23780 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33777 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3785 = alloca i64
  %_j3792 = alloca i64
  %_k3799 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13782, { i64, [0 x { i64, [0 x i64] }*] }** %_a13783
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23779, { i64, [0 x { i64, [0 x i64] }*] }** %_a23780
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33776, { i64, [0 x { i64, [0 x i64] }*] }** %_a33777
  store i64 0, i64* %_i3785
  br label %_cond3791
_body3790:
  store i64 0, i64* %_j3792
  br label %_cond3798
_body3797:
  store i64 0, i64* %_k3799
  br label %_cond3805
_body3804:
  %_a33806 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33777
  %_i3807 = load i64, i64* %_i3785
  %_tmp3809 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a33806 to i64*
  call void @oat_assert_array_length(i64* %_tmp3809, i64 %_i3807)
  %_index_ptr3810 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33806, i32 0, i32 1, i64 %_i3807
  %_index3811 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3810
  %_j3812 = load i64, i64* %_j3792
  %_tmp3814 = bitcast { i64, [0 x i64] }* %_index3811 to i64*
  call void @oat_assert_array_length(i64* %_tmp3814, i64 %_j3812)
  %_index_ptr3815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3811, i32 0, i32 1, i64 %_j3812
  %_a33816 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33777
  %_i3817 = load i64, i64* %_i3785
  %_tmp3819 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a33816 to i64*
  call void @oat_assert_array_length(i64* %_tmp3819, i64 %_i3817)
  %_index_ptr3820 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33816, i32 0, i32 1, i64 %_i3817
  %_index3821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3820
  %_j3822 = load i64, i64* %_j3792
  %_tmp3824 = bitcast { i64, [0 x i64] }* %_index3821 to i64*
  call void @oat_assert_array_length(i64* %_tmp3824, i64 %_j3822)
  %_index_ptr3825 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3821, i32 0, i32 1, i64 %_j3822
  %_index3826 = load i64, i64* %_index_ptr3825
  %_a13827 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13783
  %_i3828 = load i64, i64* %_i3785
  %_tmp3830 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a13827 to i64*
  call void @oat_assert_array_length(i64* %_tmp3830, i64 %_i3828)
  %_index_ptr3831 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13827, i32 0, i32 1, i64 %_i3828
  %_index3832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3831
  %_k3833 = load i64, i64* %_k3799
  %_tmp3835 = bitcast { i64, [0 x i64] }* %_index3832 to i64*
  call void @oat_assert_array_length(i64* %_tmp3835, i64 %_k3833)
  %_index_ptr3836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3832, i32 0, i32 1, i64 %_k3833
  %_index3837 = load i64, i64* %_index_ptr3836
  %_a23838 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23780
  %_k3839 = load i64, i64* %_k3799
  %_tmp3841 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a23838 to i64*
  call void @oat_assert_array_length(i64* %_tmp3841, i64 %_k3839)
  %_index_ptr3842 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23838, i32 0, i32 1, i64 %_k3839
  %_index3843 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3842
  %_j3844 = load i64, i64* %_j3792
  %_tmp3846 = bitcast { i64, [0 x i64] }* %_index3843 to i64*
  call void @oat_assert_array_length(i64* %_tmp3846, i64 %_j3844)
  %_index_ptr3847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3843, i32 0, i32 1, i64 %_j3844
  %_index3848 = load i64, i64* %_index_ptr3847
  %_bop3849 = mul i64 %_index3837, %_index3848
  %_bop3850 = add i64 %_index3826, %_bop3849
  store i64 %_bop3850, i64* %_index_ptr3815
  %_k3852 = load i64, i64* %_k3799
  %_bop3853 = add i64 %_k3852, 1
  store i64 %_bop3853, i64* %_k3799
  br label %_cond3805
_cond3791:
  %_i3787 = load i64, i64* %_i3785
  %_bop3788 = icmp slt i64 %_i3787, 2
  br i1 %_bop3788, label %_body3790, label %_post3789
_cond3798:
  %_j3794 = load i64, i64* %_j3792
  %_bop3795 = icmp slt i64 %_j3794, 4
  br i1 %_bop3795, label %_body3797, label %_post3796
_cond3805:
  %_k3801 = load i64, i64* %_k3799
  %_bop3802 = icmp slt i64 %_k3801, 3
  br i1 %_bop3802, label %_body3804, label %_post3803
_post3789:
  ret void
_post3796:
  %_i3858 = load i64, i64* %_i3785
  %_bop3859 = add i64 %_i3858, 1
  store i64 %_bop3859, i64* %_i3785
  br label %_cond3791
_post3803:
  %_j3855 = load i64, i64* %_j3792
  %_bop3856 = add i64 %_j3855, 1
  store i64 %_bop3856, i64* %_j3792
  br label %_cond3798
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a13737, { i64, [0 x { i64, [0 x i64] }*] }* %_a23734, { i64, [0 x { i64, [0 x i64] }*] }* %_a33731) {
  %_a13738 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23735 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33732 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3740 = alloca i64
  %_j3747 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13737, { i64, [0 x { i64, [0 x i64] }*] }** %_a13738
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23734, { i64, [0 x { i64, [0 x i64] }*] }** %_a23735
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33731, { i64, [0 x { i64, [0 x i64] }*] }** %_a33732
  store i64 0, i64* %_i3740
  br label %_cond3746
_body3745:
  store i64 0, i64* %_j3747
  br label %_cond3753
_body3752:
  %_a33754 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33732
  %_i3755 = load i64, i64* %_i3740
  %_tmp3757 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a33754 to i64*
  call void @oat_assert_array_length(i64* %_tmp3757, i64 %_i3755)
  %_index_ptr3758 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33754, i32 0, i32 1, i64 %_i3755
  %_index3759 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3758
  %_j3760 = load i64, i64* %_j3747
  %_tmp3762 = bitcast { i64, [0 x i64] }* %_index3759 to i64*
  call void @oat_assert_array_length(i64* %_tmp3762, i64 %_j3760)
  %_index_ptr3763 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3759, i32 0, i32 1, i64 %_j3760
  %_j3764 = load i64, i64* %_j3747
  %_i3765 = load i64, i64* %_i3740
  %_a23766 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23735
  %_a13767 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13738
  %_result3768 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13767, { i64, [0 x { i64, [0 x i64] }*] }* %_a23766, i64 %_i3765, i64 %_j3764)
  store i64 %_result3768, i64* %_index_ptr3763
  %_j3770 = load i64, i64* %_j3747
  %_bop3771 = add i64 %_j3770, 1
  store i64 %_bop3771, i64* %_j3747
  br label %_cond3753
_cond3746:
  %_i3742 = load i64, i64* %_i3740
  %_bop3743 = icmp slt i64 %_i3742, 2
  br i1 %_bop3743, label %_body3745, label %_post3744
_cond3753:
  %_j3749 = load i64, i64* %_j3747
  %_bop3750 = icmp slt i64 %_j3749, 4
  br i1 %_bop3750, label %_body3752, label %_post3751
_post3744:
  ret void
_post3751:
  %_i3773 = load i64, i64* %_i3740
  %_bop3774 = add i64 %_i3773, 1
  store i64 %_bop3774, i64* %_i3740
  br label %_cond3746
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13689, { i64, [0 x { i64, [0 x i64] }*] }* %_a23686, i64 %_row3683, i64 %_col3680) {
  %_a13690 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23687 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3684 = alloca i64
  %_col3681 = alloca i64
  %_sum3692 = alloca i64
  %_k3694 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13689, { i64, [0 x { i64, [0 x i64] }*] }** %_a13690
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23686, { i64, [0 x { i64, [0 x i64] }*] }** %_a23687
  store i64 %_row3683, i64* %_row3684
  store i64 %_col3680, i64* %_col3681
  store i64 0, i64* %_sum3692
  store i64 0, i64* %_k3694
  br label %_cond3700
_body3699:
  %_sum3701 = load i64, i64* %_sum3692
  %_a13702 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13690
  %_row3703 = load i64, i64* %_row3684
  %_tmp3705 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a13702 to i64*
  call void @oat_assert_array_length(i64* %_tmp3705, i64 %_row3703)
  %_index_ptr3706 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13702, i32 0, i32 1, i64 %_row3703
  %_index3707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3706
  %_k3708 = load i64, i64* %_k3694
  %_tmp3710 = bitcast { i64, [0 x i64] }* %_index3707 to i64*
  call void @oat_assert_array_length(i64* %_tmp3710, i64 %_k3708)
  %_index_ptr3711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3707, i32 0, i32 1, i64 %_k3708
  %_index3712 = load i64, i64* %_index_ptr3711
  %_a23713 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23687
  %_k3714 = load i64, i64* %_k3694
  %_tmp3716 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a23713 to i64*
  call void @oat_assert_array_length(i64* %_tmp3716, i64 %_k3714)
  %_index_ptr3717 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23713, i32 0, i32 1, i64 %_k3714
  %_index3718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3717
  %_col3719 = load i64, i64* %_col3681
  %_tmp3721 = bitcast { i64, [0 x i64] }* %_index3718 to i64*
  call void @oat_assert_array_length(i64* %_tmp3721, i64 %_col3719)
  %_index_ptr3722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3718, i32 0, i32 1, i64 %_col3719
  %_index3723 = load i64, i64* %_index_ptr3722
  %_bop3724 = mul i64 %_index3712, %_index3723
  %_bop3725 = add i64 %_sum3701, %_bop3724
  store i64 %_bop3725, i64* %_sum3692
  %_k3727 = load i64, i64* %_k3694
  %_bop3728 = add i64 %_k3727, 1
  store i64 %_bop3728, i64* %_k3694
  br label %_cond3700
_cond3700:
  %_k3696 = load i64, i64* %_k3694
  %_bop3697 = icmp slt i64 %_k3696, 3
  br i1 %_bop3697, label %_body3699, label %_post3698
_post3698:
  %_sum3730 = load i64, i64* %_sum3692
  ret i64 %_sum3730
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_ar3638, i64 %_n3635) {
  %_ar3639 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3636 = alloca i64
  %_i3641 = alloca i64
  %_j3649 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_ar3638, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3639
  store i64 %_n3635, i64* %_n3636
  store i64 0, i64* %_i3641
  br label %_cond3648
_body3647:
  store i64 0, i64* %_j3649
  br label %_cond3655
_body3654:
  %_ar3656 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3639
  %_i3657 = load i64, i64* %_i3641
  %_tmp3659 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_ar3656 to i64*
  call void @oat_assert_array_length(i64* %_tmp3659, i64 %_i3657)
  %_index_ptr3660 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3656, i32 0, i32 1, i64 %_i3657
  %_index3661 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3660
  %_j3662 = load i64, i64* %_j3649
  %_tmp3664 = bitcast { i64, [0 x i64] }* %_index3661 to i64*
  call void @oat_assert_array_length(i64* %_tmp3664, i64 %_j3662)
  %_index_ptr3665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3661, i32 0, i32 1, i64 %_j3662
  %_index3666 = load i64, i64* %_index_ptr3665
  call void @print_int(i64 %_index3666)
  %_str3669 = getelementptr [2 x i8], [2 x i8]* @_str_arr3668, i32 0, i32 0
  call void @print_string(i8* %_str3669)
  %_j3671 = load i64, i64* %_j3649
  %_bop3672 = add i64 %_j3671, 1
  store i64 %_bop3672, i64* %_j3649
  br label %_cond3655
_cond3648:
  %_i3643 = load i64, i64* %_i3641
  %_n3644 = load i64, i64* %_n3636
  %_bop3645 = icmp slt i64 %_i3643, %_n3644
  br i1 %_bop3645, label %_body3647, label %_post3646
_cond3655:
  %_j3651 = load i64, i64* %_j3649
  %_bop3652 = icmp slt i64 %_j3651, 4
  br i1 %_bop3652, label %_body3654, label %_post3653
_post3646:
  ret void
_post3653:
  %_str3675 = getelementptr [2 x i8], [2 x i8]* @_str_arr3674, i32 0, i32 0
  call void @print_string(i8* %_str3675)
  %_i3677 = load i64, i64* %_i3641
  %_bop3678 = add i64 %_i3677, 1
  store i64 %_bop3678, i64* %_i3641
  br label %_cond3648
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
