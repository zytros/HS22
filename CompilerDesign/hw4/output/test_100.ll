; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_args5865 = alloca { i64, [0 x i64] }*
  %_args5866 = alloca i64
  %_localId5869 = alloca i64
  %_localId5871 = alloca i64
  %_localId5901 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args5865
  store i64 %len, i64* %_args5866
  store i64 1, i64* %_localId5869
  store i64 2, i64* %_localId5871
  %_locRef5873 = load i64, i64* %_localId5869
  %_locRef5874 = load i64, i64* %_args5866
  %_bop5875 = icmp slt i64 %_locRef5873, %_locRef5874
  br i1 %_bop5875, label %_while_body_jmp5877, label %_while_end_jmp5876
_while_body_jmp5877:
  %_locRef5881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5865
  %_locRef5882 = load i64, i64* %_localId5869
  %_bop5883 = sub i64 %_locRef5882, 1
  %_idxUID5884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5881, i32 0, i32 1, i64 %_bop5883
  %_getArrUID5885 = load i64, i64* %_idxUID5884
  %_locRef5886 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5865
  %_locRef5887 = load i64, i64* %_localId5869
  %_idxUID5888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5886, i32 0, i32 1, i64 %_locRef5887
  %_getArrUID5889 = load i64, i64* %_idxUID5888
  %_bop5890 = icmp sle i64 %_getArrUID5885, %_getArrUID5889
  br i1 %_bop5890, label %_ifTruelbl5878, label %_ifFalselbl5879
_ifTruelbl5878:
  %_locRef5891 = load i64, i64* %_localId5871
  store i64 %_locRef5891, i64* %_localId5869
  %_locRef5893 = load i64, i64* %_localId5871
  %_bop5894 = add i64 %_locRef5893, 1
  store i64 %_bop5894, i64* %_localId5871
  br label %_ifEndlbl5880
_ifFalselbl5879:
  %_locRef5896 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5865
  %_locRef5897 = load i64, i64* %_localId5869
  %_bop5898 = sub i64 %_locRef5897, 1
  %_idxUID5899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5896, i32 0, i32 1, i64 %_bop5898
  %_getArrUID5900 = load i64, i64* %_idxUID5899
  store i64 %_getArrUID5900, i64* %_localId5901
  %_locRef5903 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5865
  %_locRef5904 = load i64, i64* %_localId5869
  %_bop5905 = sub i64 %_locRef5904, 1
  %_locRef5906 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5865
  %_locRef5907 = load i64, i64* %_localId5869
  %_idxUID5908 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5906, i32 0, i32 1, i64 %_locRef5907
  %_getArrUID5909 = load i64, i64* %_idxUID5908
  %_arridx5910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5903, i32 0, i32 1, i64 %_bop5905
  store i64 %_getArrUID5909, i64* %_arridx5910
  %_locRef5912 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5865
  %_locRef5913 = load i64, i64* %_localId5869
  %_locRef5914 = load i64, i64* %_localId5901
  %_arridx5915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5912, i32 0, i32 1, i64 %_locRef5913
  store i64 %_locRef5914, i64* %_arridx5915
  %_locRef5917 = load i64, i64* %_localId5869
  %_bop5918 = sub i64 %_locRef5917, 1
  store i64 %_bop5918, i64* %_localId5869
  %_locRef5923 = load i64, i64* %_localId5869
  %_bop5924 = icmp eq i64 %_locRef5923, 0
  br i1 %_bop5924, label %_ifTruelbl5920, label %_ifFalselbl5921
_ifTruelbl5920:
  %_locRef5925 = load i64, i64* %_localId5871
  store i64 %_locRef5925, i64* %_localId5869
  %_locRef5927 = load i64, i64* %_localId5871
  %_bop5928 = add i64 %_locRef5927, 1
  store i64 %_bop5928, i64* %_localId5871
  br label %_ifEndlbl5922
_ifFalselbl5921:
  br label %_ifEndlbl5922
_ifEndlbl5922:
  br label %_ifEndlbl5880
_ifEndlbl5880:
  %_locRef5930 = load i64, i64* %_localId5869
  %_locRef5931 = load i64, i64* %_args5866
  %_bop5932 = icmp slt i64 %_locRef5930, %_locRef5931
  br i1 %_bop5932, label %_while_body_jmp5877, label %_while_end_jmp5876
_while_end_jmp5876:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args5818 = alloca i64
  %_args5819 = alloca { i64, [0 x i8*] }*
  %_localId5842 = alloca { i64, [0 x i64] }*
  %_localId5844 = alloca i64
  %_localId5849 = alloca i64
  store i64 %argc, i64* %_args5818
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args5819
  %_atomArrUID5823 = alloca { i64, [8 x i64] }
  %_idxUID5840 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID5823, i32 0, i32 0
  store i64 8, i64* %_idxUID5840
  %_gep5824 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID5823, i32 0, i32 1, i32 0
  %_gep5825 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID5823, i32 0, i32 1, i32 1
  %_gep5826 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID5823, i32 0, i32 1, i32 2
  %_gep5827 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID5823, i32 0, i32 1, i32 3
  %_gep5828 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID5823, i32 0, i32 1, i32 4
  %_gep5829 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID5823, i32 0, i32 1, i32 5
  %_gep5830 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID5823, i32 0, i32 1, i32 6
  %_gep5831 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID5823, i32 0, i32 1, i32 7
  store i64 5, i64* %_gep5824
  store i64 200, i64* %_gep5825
  store i64 1, i64* %_gep5826
  store i64 65, i64* %_gep5827
  store i64 30, i64* %_gep5828
  store i64 99, i64* %_gep5829
  store i64 2, i64* %_gep5830
  store i64 0, i64* %_gep5831
  %_arrayUID5822 = bitcast { i64, [8 x i64] }* %_atomArrUID5823 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID5822, { i64, [0 x i64] }** %_localId5842
  store i64 8, i64* %_localId5844
  %_locRef5846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5842
  %_locRef5847 = load i64, i64* %_localId5844
  call void @gnomeSort({ i64, [0 x i64] }* %_locRef5846, i64 %_locRef5847)
  store i64 0, i64* %_localId5849
  %_locRef5851 = load i64, i64* %_localId5849
  %_bop5852 = icmp slt i64 %_locRef5851, 8
  br i1 %_bop5852, label %_while_body_jmp5854, label %_while_end_jmp5853
_while_body_jmp5854:
  %_locRef5855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5842
  %_locRef5856 = load i64, i64* %_localId5849
  %_idxUID5857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5855, i32 0, i32 1, i64 %_locRef5856
  %_getArrUID5858 = load i64, i64* %_idxUID5857
  call void @print_int(i64 %_getArrUID5858)
  %_locRef5860 = load i64, i64* %_localId5849
  %_bop5861 = add i64 %_locRef5860, 1
  store i64 %_bop5861, i64* %_localId5849
  %_locRef5863 = load i64, i64* %_localId5849
  %_bop5864 = icmp slt i64 %_locRef5863, 8
  br i1 %_bop5864, label %_while_body_jmp5854, label %_while_end_jmp5853
_while_end_jmp5853:
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
