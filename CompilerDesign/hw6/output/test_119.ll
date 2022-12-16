; generated from: oatprograms/conquest.oat
target triple = "x86_64-unknown-linux"
@meaning_of_life = global i64 42
@kesha_to_fling = global i1 1
@professor = global i8* bitcast ([11 x i8]* @_str6184 to i8*)
@_str6184 = global [11 x i8] c"Zdancewic!\00"
@global_arr = global { i64, [0 x i64] }* bitcast ({ i64, [7 x i64] }* @_global_arr6183 to { i64, [0 x i64] }*)
@_global_arr6183 = global { i64, [7 x i64] } { i64 7, [7 x i64] [ i64 1, i64 1, i64 2, i64 3, i64 5, i64 8, i64 13 ] }
@null_arr = global { i64, [0 x i64] }* null
@ideal_341_midterm_score = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_global_arr6182 to { i64, [0 x i64] }*)
@_global_arr6182 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 100 ] }
@actual_341_midterm_score = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_global_arr6181 to { i64, [0 x i64] }*)
@_global_arr6181 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_str_arr6151 = global [16 x i8] c"Meaning of Life\00"
@_str_arr5678 = global [20 x i8] c"My name is Jeff...
\00"
@_str_arr5729 = global [38 x i8] c"Charizard is the BEST Pokemon ever!!!\00"

define i64 @four() {
  %_what_rhymes_with_moore6177 = alloca i64
  %_meaning_of_life6158 = load i64, i64* @meaning_of_life
  %_global_arr6159 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @global_arr
  %_tmp6161 = bitcast { i64, [0 x i64] }* %_global_arr6159 to i64*
  call void @oat_assert_array_length(i64* %_tmp6161, i64 5)
  %_index_ptr6162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_global_arr6159, i32 0, i32 1, i32 5
  %_index6163 = load i64, i64* %_index_ptr6162
  %_global_arr6164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @global_arr
  %_tmp6166 = bitcast { i64, [0 x i64] }* %_global_arr6164 to i64*
  call void @oat_assert_array_length(i64* %_tmp6166, i64 4)
  %_index_ptr6167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_global_arr6164, i32 0, i32 1, i32 4
  %_index6168 = load i64, i64* %_index_ptr6167
  %_bop6169 = mul i64 %_index6163, %_index6168
  %_bop6170 = sub i64 %_meaning_of_life6158, %_bop6169
  %_global_arr6171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @global_arr
  %_tmp6173 = bitcast { i64, [0 x i64] }* %_global_arr6171 to i64*
  call void @oat_assert_array_length(i64* %_tmp6173, i64 2)
  %_index_ptr6174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_global_arr6171, i32 0, i32 1, i32 2
  %_index6175 = load i64, i64* %_index_ptr6174
  %_bop6176 = add i64 %_bop6170, %_index6175
  store i64 %_bop6176, i64* %_what_rhymes_with_moore6177
  %_what_rhymes_with_moore6179 = load i64, i64* %_what_rhymes_with_moore6177
  %_bop6180 = add i64 0, %_what_rhymes_with_moore6179
  ret i64 %_bop6180
}

define { i64, [0 x i64] }* @asian_brother_of_foo_named_fui(i8* %_s6144, i1 %_b6141, i64 %_i6138) {
  %_fui6148 = alloca { i64, [0 x i64] }*
  %_global_arr6147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @global_arr
  store { i64, [0 x i64] }* %_global_arr6147, { i64, [0 x i64] }** %_fui6148
  %_fui6150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_fui6148
  ret { i64, [0 x i64] }* %_fui6150
}

define void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr5901, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5898, i64 %_row5895, i64 %_col5892, i64 %_i5889, i64 %_j5886) {
  %_arr5902 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_visited5899 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row5896 = alloca i64
  %_col5893 = alloca i64
  %_i5890 = alloca i64
  %_j5887 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arr5901, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5902
  store { i64, [0 x { i64, [0 x i64] }*] }* %_visited5898, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  store i64 %_row5895, i64* %_row5896
  store i64 %_col5892, i64* %_col5893
  store i64 %_i5889, i64* %_i5890
  store i64 %_j5886, i64* %_j5887
  %_i5904 = load i64, i64* %_i5890
  %_bop5905 = sub i64 %_i5904, 1
  %_bop5906 = icmp sge i64 %_bop5905, 0
  br i1 %_bop5906, label %_then5961, label %_else5960
_else5954:
  br label %_merge5953
_else5957:
  br label %_merge5956
_else5960:
  br label %_merge5959
_else6013:
  br label %_merge6012
_else6016:
  br label %_merge6015
_else6019:
  br label %_merge6018
_else6071:
  br label %_merge6070
_else6074:
  br label %_merge6073
_else6077:
  br label %_merge6076
_else6130:
  br label %_merge6129
_else6133:
  br label %_merge6132
_else6136:
  br label %_merge6135
_merge5953:
  br label %_merge5956
_merge5956:
  br label %_merge5959
_merge5959:
  %_i5962 = load i64, i64* %_i5890
  %_bop5963 = add i64 %_i5962, 1
  %_row5964 = load i64, i64* %_row5896
  %_bop5965 = icmp slt i64 %_bop5963, %_row5964
  br i1 %_bop5965, label %_then6020, label %_else6019
_merge6012:
  br label %_merge6015
_merge6015:
  br label %_merge6018
_merge6018:
  %_j6021 = load i64, i64* %_j5887
  %_bop6022 = sub i64 %_j6021, 1
  %_bop6023 = icmp sge i64 %_bop6022, 0
  br i1 %_bop6023, label %_then6078, label %_else6077
_merge6070:
  br label %_merge6073
_merge6073:
  br label %_merge6076
_merge6076:
  %_j6079 = load i64, i64* %_j5887
  %_bop6080 = add i64 %_j6079, 1
  %_col6081 = load i64, i64* %_col5893
  %_bop6082 = icmp slt i64 %_bop6080, %_col6081
  br i1 %_bop6082, label %_then6137, label %_else6136
_merge6129:
  br label %_merge6132
_merge6132:
  br label %_merge6135
_merge6135:
  ret void
_then5955:
  %_j5945 = load i64, i64* %_j5887
  %_i5946 = load i64, i64* %_i5890
  %_bop5947 = sub i64 %_i5946, 1
  %_col5948 = load i64, i64* %_col5893
  %_row5949 = load i64, i64* %_row5896
  %_visited5950 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_arr5951 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5902
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr5951, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5950, i64 %_row5949, i64 %_col5948, i64 %_bop5947, i64 %_j5945)
  br label %_merge5953
_then5958:
  %_visited5920 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_i5921 = load i64, i64* %_i5890
  %_bop5922 = sub i64 %_i5921, 1
  %_tmp5924 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5920 to i64*
  call void @oat_assert_array_length(i64* %_tmp5924, i64 %_bop5922)
  %_index_ptr5925 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5920, i32 0, i32 1, i64 %_bop5922
  %_index5926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5925
  %_j5927 = load i64, i64* %_j5887
  %_tmp5929 = bitcast { i64, [0 x i64] }* %_index5926 to i64*
  call void @oat_assert_array_length(i64* %_tmp5929, i64 %_j5927)
  %_index_ptr5930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5926, i32 0, i32 1, i64 %_j5927
  store i64 1, i64* %_index_ptr5930
  %_arr5932 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5902
  %_i5933 = load i64, i64* %_i5890
  %_bop5934 = sub i64 %_i5933, 1
  %_tmp5936 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr5932 to i64*
  call void @oat_assert_array_length(i64* %_tmp5936, i64 %_bop5934)
  %_index_ptr5937 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr5932, i32 0, i32 1, i64 %_bop5934
  %_index5938 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5937
  %_j5939 = load i64, i64* %_j5887
  %_tmp5941 = bitcast { i64, [0 x i64] }* %_index5938 to i64*
  call void @oat_assert_array_length(i64* %_tmp5941, i64 %_j5939)
  %_index_ptr5942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5938, i32 0, i32 1, i64 %_j5939
  %_index5943 = load i64, i64* %_index_ptr5942
  %_bop5944 = icmp eq i64 %_index5943, 1
  br i1 %_bop5944, label %_then5955, label %_else5954
_then5961:
  %_visited5907 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_i5908 = load i64, i64* %_i5890
  %_bop5909 = sub i64 %_i5908, 1
  %_tmp5911 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5907 to i64*
  call void @oat_assert_array_length(i64* %_tmp5911, i64 %_bop5909)
  %_index_ptr5912 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5907, i32 0, i32 1, i64 %_bop5909
  %_index5913 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5912
  %_j5914 = load i64, i64* %_j5887
  %_tmp5916 = bitcast { i64, [0 x i64] }* %_index5913 to i64*
  call void @oat_assert_array_length(i64* %_tmp5916, i64 %_j5914)
  %_index_ptr5917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5913, i32 0, i32 1, i64 %_j5914
  %_index5918 = load i64, i64* %_index_ptr5917
  %_bop5919 = icmp ne i64 %_index5918, 1
  br i1 %_bop5919, label %_then5958, label %_else5957
_then6014:
  %_j6004 = load i64, i64* %_j5887
  %_i6005 = load i64, i64* %_i5890
  %_bop6006 = add i64 %_i6005, 1
  %_col6007 = load i64, i64* %_col5893
  %_row6008 = load i64, i64* %_row5896
  %_visited6009 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_arr6010 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5902
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr6010, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6009, i64 %_row6008, i64 %_col6007, i64 %_bop6006, i64 %_j6004)
  br label %_merge6012
_then6017:
  %_visited5979 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_i5980 = load i64, i64* %_i5890
  %_bop5981 = add i64 %_i5980, 1
  %_tmp5983 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5979 to i64*
  call void @oat_assert_array_length(i64* %_tmp5983, i64 %_bop5981)
  %_index_ptr5984 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5979, i32 0, i32 1, i64 %_bop5981
  %_index5985 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5984
  %_j5986 = load i64, i64* %_j5887
  %_tmp5988 = bitcast { i64, [0 x i64] }* %_index5985 to i64*
  call void @oat_assert_array_length(i64* %_tmp5988, i64 %_j5986)
  %_index_ptr5989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5985, i32 0, i32 1, i64 %_j5986
  store i64 1, i64* %_index_ptr5989
  %_arr5991 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5902
  %_i5992 = load i64, i64* %_i5890
  %_bop5993 = add i64 %_i5992, 1
  %_tmp5995 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr5991 to i64*
  call void @oat_assert_array_length(i64* %_tmp5995, i64 %_bop5993)
  %_index_ptr5996 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr5991, i32 0, i32 1, i64 %_bop5993
  %_index5997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5996
  %_j5998 = load i64, i64* %_j5887
  %_tmp6000 = bitcast { i64, [0 x i64] }* %_index5997 to i64*
  call void @oat_assert_array_length(i64* %_tmp6000, i64 %_j5998)
  %_index_ptr6001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5997, i32 0, i32 1, i64 %_j5998
  %_index6002 = load i64, i64* %_index_ptr6001
  %_bop6003 = icmp eq i64 %_index6002, 1
  br i1 %_bop6003, label %_then6014, label %_else6013
_then6020:
  %_visited5966 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_i5967 = load i64, i64* %_i5890
  %_bop5968 = add i64 %_i5967, 1
  %_tmp5970 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5966 to i64*
  call void @oat_assert_array_length(i64* %_tmp5970, i64 %_bop5968)
  %_index_ptr5971 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5966, i32 0, i32 1, i64 %_bop5968
  %_index5972 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5971
  %_j5973 = load i64, i64* %_j5887
  %_tmp5975 = bitcast { i64, [0 x i64] }* %_index5972 to i64*
  call void @oat_assert_array_length(i64* %_tmp5975, i64 %_j5973)
  %_index_ptr5976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5972, i32 0, i32 1, i64 %_j5973
  %_index5977 = load i64, i64* %_index_ptr5976
  %_bop5978 = icmp ne i64 %_index5977, 1
  br i1 %_bop5978, label %_then6017, label %_else6016
_then6072:
  %_j6062 = load i64, i64* %_j5887
  %_bop6063 = sub i64 %_j6062, 1
  %_i6064 = load i64, i64* %_i5890
  %_col6065 = load i64, i64* %_col5893
  %_row6066 = load i64, i64* %_row5896
  %_visited6067 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_arr6068 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5902
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr6068, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6067, i64 %_row6066, i64 %_col6065, i64 %_i6064, i64 %_bop6063)
  br label %_merge6070
_then6075:
  %_visited6037 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_i6038 = load i64, i64* %_i5890
  %_tmp6040 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited6037 to i64*
  call void @oat_assert_array_length(i64* %_tmp6040, i64 %_i6038)
  %_index_ptr6041 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6037, i32 0, i32 1, i64 %_i6038
  %_index6042 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6041
  %_j6043 = load i64, i64* %_j5887
  %_bop6044 = sub i64 %_j6043, 1
  %_tmp6046 = bitcast { i64, [0 x i64] }* %_index6042 to i64*
  call void @oat_assert_array_length(i64* %_tmp6046, i64 %_bop6044)
  %_index_ptr6047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6042, i32 0, i32 1, i64 %_bop6044
  store i64 1, i64* %_index_ptr6047
  %_arr6049 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5902
  %_i6050 = load i64, i64* %_i5890
  %_tmp6052 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr6049 to i64*
  call void @oat_assert_array_length(i64* %_tmp6052, i64 %_i6050)
  %_index_ptr6053 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr6049, i32 0, i32 1, i64 %_i6050
  %_index6054 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6053
  %_j6055 = load i64, i64* %_j5887
  %_bop6056 = sub i64 %_j6055, 1
  %_tmp6058 = bitcast { i64, [0 x i64] }* %_index6054 to i64*
  call void @oat_assert_array_length(i64* %_tmp6058, i64 %_bop6056)
  %_index_ptr6059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6054, i32 0, i32 1, i64 %_bop6056
  %_index6060 = load i64, i64* %_index_ptr6059
  %_bop6061 = icmp eq i64 %_index6060, 1
  br i1 %_bop6061, label %_then6072, label %_else6071
_then6078:
  %_visited6024 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_i6025 = load i64, i64* %_i5890
  %_tmp6027 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited6024 to i64*
  call void @oat_assert_array_length(i64* %_tmp6027, i64 %_i6025)
  %_index_ptr6028 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6024, i32 0, i32 1, i64 %_i6025
  %_index6029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6028
  %_j6030 = load i64, i64* %_j5887
  %_bop6031 = sub i64 %_j6030, 1
  %_tmp6033 = bitcast { i64, [0 x i64] }* %_index6029 to i64*
  call void @oat_assert_array_length(i64* %_tmp6033, i64 %_bop6031)
  %_index_ptr6034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6029, i32 0, i32 1, i64 %_bop6031
  %_index6035 = load i64, i64* %_index_ptr6034
  %_bop6036 = icmp ne i64 %_index6035, 1
  br i1 %_bop6036, label %_then6075, label %_else6074
_then6131:
  %_j6121 = load i64, i64* %_j5887
  %_bop6122 = add i64 %_j6121, 1
  %_i6123 = load i64, i64* %_i5890
  %_col6124 = load i64, i64* %_col5893
  %_row6125 = load i64, i64* %_row5896
  %_visited6126 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_arr6127 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5902
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr6127, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6126, i64 %_row6125, i64 %_col6124, i64 %_i6123, i64 %_bop6122)
  br label %_merge6129
_then6134:
  %_visited6096 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_i6097 = load i64, i64* %_i5890
  %_tmp6099 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited6096 to i64*
  call void @oat_assert_array_length(i64* %_tmp6099, i64 %_i6097)
  %_index_ptr6100 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6096, i32 0, i32 1, i64 %_i6097
  %_index6101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6100
  %_j6102 = load i64, i64* %_j5887
  %_bop6103 = add i64 %_j6102, 1
  %_tmp6105 = bitcast { i64, [0 x i64] }* %_index6101 to i64*
  call void @oat_assert_array_length(i64* %_tmp6105, i64 %_bop6103)
  %_index_ptr6106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6101, i32 0, i32 1, i64 %_bop6103
  store i64 1, i64* %_index_ptr6106
  %_arr6108 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5902
  %_i6109 = load i64, i64* %_i5890
  %_tmp6111 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr6108 to i64*
  call void @oat_assert_array_length(i64* %_tmp6111, i64 %_i6109)
  %_index_ptr6112 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr6108, i32 0, i32 1, i64 %_i6109
  %_index6113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6112
  %_j6114 = load i64, i64* %_j5887
  %_bop6115 = add i64 %_j6114, 1
  %_tmp6117 = bitcast { i64, [0 x i64] }* %_index6113 to i64*
  call void @oat_assert_array_length(i64* %_tmp6117, i64 %_bop6115)
  %_index_ptr6118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6113, i32 0, i32 1, i64 %_bop6115
  %_index6119 = load i64, i64* %_index_ptr6118
  %_bop6120 = icmp eq i64 %_index6119, 1
  br i1 %_bop6120, label %_then6131, label %_else6130
_then6137:
  %_visited6083 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5899
  %_i6084 = load i64, i64* %_i5890
  %_tmp6086 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited6083 to i64*
  call void @oat_assert_array_length(i64* %_tmp6086, i64 %_i6084)
  %_index_ptr6087 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6083, i32 0, i32 1, i64 %_i6084
  %_index6088 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6087
  %_j6089 = load i64, i64* %_j5887
  %_bop6090 = add i64 %_j6089, 1
  %_tmp6092 = bitcast { i64, [0 x i64] }* %_index6088 to i64*
  call void @oat_assert_array_length(i64* %_tmp6092, i64 %_bop6090)
  %_index_ptr6093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6088, i32 0, i32 1, i64 %_bop6090
  %_index6094 = load i64, i64* %_index_ptr6093
  %_bop6095 = icmp ne i64 %_index6094, 1
  br i1 %_bop6095, label %_then6134, label %_else6133
}

define i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_arr5757, i64 %_row5754, i64 %_col5751) {
  %_arr5758 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row5755 = alloca i64
  %_col5752 = alloca i64
  %_i5765 = alloca i64
  %_j5783 = alloca i64
  %_visited5808 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_counter5810 = alloca i64
  %_i5812 = alloca i64
  %_j5820 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arr5757, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5758
  store i64 %_row5754, i64* %_row5755
  store i64 %_col5751, i64* %_col5752
  %_row5762 = load i64, i64* %_row5755
  %_raw_array5763 = call i64* @oat_alloc_array(i64 %_row5762)
  %_array5764 = bitcast i64* %_raw_array5763 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_5761 = alloca i64
  store i64 %_row5762, i64* %_bnd_5761
  %_ptr_5760 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5764, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5760
  store i64 0, i64* %_i5765
  br label %_cond5772
_body5771:
  %__ptr_57605773 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5760
  %_i5774 = load i64, i64* %_i5765
  %_tmp5776 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_57605773 to i64*
  call void @oat_assert_array_length(i64* %_tmp5776, i64 %_i5774)
  %_index_ptr5777 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_57605773, i32 0, i32 1, i64 %_i5774
  %_col5780 = load i64, i64* %_col5752
  %_raw_array5781 = call i64* @oat_alloc_array(i64 %_col5780)
  %_array5782 = bitcast i64* %_raw_array5781 to { i64, [0 x i64] }*
  %_bnd_5779 = alloca i64
  store i64 %_col5780, i64* %_bnd_5779
  %_ptr_5778 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5782, { i64, [0 x i64] }** %_ptr_5778
  store i64 0, i64* %_j5783
  br label %_cond5790
_body5789:
  %__ptr_57785791 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_5778
  %_j5792 = load i64, i64* %_j5783
  %_tmp5794 = bitcast { i64, [0 x i64] }* %__ptr_57785791 to i64*
  call void @oat_assert_array_length(i64* %_tmp5794, i64 %_j5792)
  %_index_ptr5795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_57785791, i32 0, i32 1, i64 %_j5792
  store i64 0, i64* %_index_ptr5795
  %_j5797 = load i64, i64* %_j5783
  %_bop5798 = add i64 %_j5797, 1
  store i64 %_bop5798, i64* %_j5783
  br label %_cond5790
_body5818:
  store i64 0, i64* %_j5820
  br label %_cond5827
_body5826:
  %_visited5828 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5808
  %_i5829 = load i64, i64* %_i5812
  %_tmp5831 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5828 to i64*
  call void @oat_assert_array_length(i64* %_tmp5831, i64 %_i5829)
  %_index_ptr5832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5828, i32 0, i32 1, i64 %_i5829
  %_index5833 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5832
  %_j5834 = load i64, i64* %_j5820
  %_tmp5836 = bitcast { i64, [0 x i64] }* %_index5833 to i64*
  call void @oat_assert_array_length(i64* %_tmp5836, i64 %_j5834)
  %_index_ptr5837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5833, i32 0, i32 1, i64 %_j5834
  %_index5838 = load i64, i64* %_index_ptr5837
  %_bop5839 = icmp eq i64 %_index5838, 0
  br i1 %_bop5839, label %_then5878, label %_else5877
_cond5772:
  %_i5767 = load i64, i64* %_i5765
  %__bnd_57615768 = load i64, i64* %_bnd_5761
  %_bop5769 = icmp slt i64 %_i5767, %__bnd_57615768
  br i1 %_bop5769, label %_body5771, label %_post5770
_cond5790:
  %_j5785 = load i64, i64* %_j5783
  %__bnd_57795786 = load i64, i64* %_bnd_5779
  %_bop5787 = icmp slt i64 %_j5785, %__bnd_57795786
  br i1 %_bop5787, label %_body5789, label %_post5788
_cond5819:
  %_i5814 = load i64, i64* %_i5812
  %_row5815 = load i64, i64* %_row5755
  %_bop5816 = icmp slt i64 %_i5814, %_row5815
  br i1 %_bop5816, label %_body5818, label %_post5817
_cond5827:
  %_j5822 = load i64, i64* %_j5820
  %_col5823 = load i64, i64* %_col5752
  %_bop5824 = icmp slt i64 %_j5822, %_col5823
  br i1 %_bop5824, label %_body5826, label %_post5825
_else5874:
  br label %_merge5873
_else5877:
  br label %_merge5876
_merge5873:
  br label %_merge5876
_merge5876:
  %_j5879 = load i64, i64* %_j5820
  %_bop5880 = add i64 %_j5879, 1
  store i64 %_bop5880, i64* %_j5820
  br label %_cond5827
_post5770:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5764, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5808
  store i64 0, i64* %_counter5810
  store i64 0, i64* %_i5812
  br label %_cond5819
_post5788:
  store { i64, [0 x i64] }* %_array5782, { i64, [0 x i64] }** %_index_ptr5777
  %_i5803 = load i64, i64* %_i5765
  %_bop5804 = add i64 %_i5803, 1
  store i64 %_bop5804, i64* %_i5765
  br label %_cond5772
_post5817:
  %_counter5885 = load i64, i64* %_counter5810
  ret i64 %_counter5885
_post5825:
  %_i5882 = load i64, i64* %_i5812
  %_bop5883 = add i64 %_i5882, 1
  store i64 %_bop5883, i64* %_i5812
  br label %_cond5819
_then5875:
  %_counter5863 = load i64, i64* %_counter5810
  %_bop5864 = add i64 %_counter5863, 1
  store i64 %_bop5864, i64* %_counter5810
  %_j5866 = load i64, i64* %_j5820
  %_i5867 = load i64, i64* %_i5812
  %_col5868 = load i64, i64* %_col5752
  %_row5869 = load i64, i64* %_row5755
  %_visited5870 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5808
  %_arr5871 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5758
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr5871, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5870, i64 %_row5869, i64 %_col5868, i64 %_i5867, i64 %_j5866)
  br label %_merge5873
_then5878:
  %_visited5840 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5808
  %_i5841 = load i64, i64* %_i5812
  %_tmp5843 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5840 to i64*
  call void @oat_assert_array_length(i64* %_tmp5843, i64 %_i5841)
  %_index_ptr5844 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5840, i32 0, i32 1, i64 %_i5841
  %_index5845 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5844
  %_j5846 = load i64, i64* %_j5820
  %_tmp5848 = bitcast { i64, [0 x i64] }* %_index5845 to i64*
  call void @oat_assert_array_length(i64* %_tmp5848, i64 %_j5846)
  %_index_ptr5849 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5845, i32 0, i32 1, i64 %_j5846
  store i64 1, i64* %_index_ptr5849
  %_arr5851 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5758
  %_i5852 = load i64, i64* %_i5812
  %_tmp5854 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr5851 to i64*
  call void @oat_assert_array_length(i64* %_tmp5854, i64 %_i5852)
  %_index_ptr5855 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr5851, i32 0, i32 1, i64 %_i5852
  %_index5856 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5855
  %_j5857 = load i64, i64* %_j5820
  %_tmp5859 = bitcast { i64, [0 x i64] }* %_index5856 to i64*
  call void @oat_assert_array_length(i64* %_tmp5859, i64 %_j5857)
  %_index_ptr5860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5856, i32 0, i32 1, i64 %_j5857
  %_index5861 = load i64, i64* %_index_ptr5860
  %_bop5862 = icmp eq i64 %_index5861, 1
  br i1 %_bop5862, label %_then5875, label %_else5874
}

define i64 @program(i64 %_argc5361, { i64, [0 x i8*] }* %_argv5358) {
  %_territory_a5414 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_territory_b5460 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_territory_c5494 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5501 = alloca i64
  %_j5518 = alloca i64
  %_none_conquered5548 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5554 = alloca i64
  %_j5571 = alloca i64
  %_all_conquered5599 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_island5607 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5613 = alloca i64
  %_j5630 = alloca i64
  %_emptyland5667 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_temp5672 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5683 = alloca i64
  %_b5687 = alloca i64
  %_c5691 = alloca i64
  %_none5695 = alloca i64
  %_all5699 = alloca i64
  %_i5703 = alloca i64
  %_e5707 = alloca i64
  %_sum5748 = alloca i64
  %_raw_array5364 = call i64* @oat_alloc_array(i64 4)
  %_array5365 = bitcast i64* %_raw_array5364 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5366 = call i64* @oat_alloc_array(i64 4)
  %_array5367 = bitcast i64* %_raw_array5366 to { i64, [0 x i64] }*
  %_ind5368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5367, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5368
  %_ind5370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5367, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5370
  %_ind5372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5367, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5372
  %_ind5374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5367, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind5374
  %_ind5376 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5365, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5367, { i64, [0 x i64] }** %_ind5376
  %_raw_array5378 = call i64* @oat_alloc_array(i64 4)
  %_array5379 = bitcast i64* %_raw_array5378 to { i64, [0 x i64] }*
  %_ind5380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5379, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5380
  %_ind5382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5379, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5382
  %_ind5384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5379, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind5384
  %_ind5386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5379, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind5386
  %_ind5388 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5365, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5379, { i64, [0 x i64] }** %_ind5388
  %_raw_array5390 = call i64* @oat_alloc_array(i64 4)
  %_array5391 = bitcast i64* %_raw_array5390 to { i64, [0 x i64] }*
  %_ind5392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5391, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5392
  %_ind5394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5391, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5394
  %_ind5396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5391, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5396
  %_ind5398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5391, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind5398
  %_ind5400 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5365, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5391, { i64, [0 x i64] }** %_ind5400
  %_raw_array5402 = call i64* @oat_alloc_array(i64 4)
  %_array5403 = bitcast i64* %_raw_array5402 to { i64, [0 x i64] }*
  %_ind5404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5403, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5404
  %_ind5406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5403, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5406
  %_ind5408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5403, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5408
  %_ind5410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5403, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind5410
  %_ind5412 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5365, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5403, { i64, [0 x i64] }** %_ind5412
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5365, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_a5414
  %_raw_array5416 = call i64* @oat_alloc_array(i64 3)
  %_array5417 = bitcast i64* %_raw_array5416 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5418 = call i64* @oat_alloc_array(i64 5)
  %_array5419 = bitcast i64* %_raw_array5418 to { i64, [0 x i64] }*
  %_ind5420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5419, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5420
  %_ind5422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5419, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5422
  %_ind5424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5419, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5424
  %_ind5426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5419, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind5426
  %_ind5428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5419, i32 0, i32 1, i32 4
  store i64 1, i64* %_ind5428
  %_ind5430 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5417, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5419, { i64, [0 x i64] }** %_ind5430
  %_raw_array5432 = call i64* @oat_alloc_array(i64 5)
  %_array5433 = bitcast i64* %_raw_array5432 to { i64, [0 x i64] }*
  %_ind5434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5434
  %_ind5436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5436
  %_ind5438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5438
  %_ind5440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind5440
  %_ind5442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 4
  store i64 1, i64* %_ind5442
  %_ind5444 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5417, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5433, { i64, [0 x i64] }** %_ind5444
  %_raw_array5446 = call i64* @oat_alloc_array(i64 5)
  %_array5447 = bitcast i64* %_raw_array5446 to { i64, [0 x i64] }*
  %_ind5448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5447, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5448
  %_ind5450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5447, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5450
  %_ind5452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5447, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5452
  %_ind5454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5447, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind5454
  %_ind5456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5447, i32 0, i32 1, i32 4
  store i64 1, i64* %_ind5456
  %_ind5458 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5417, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5447, { i64, [0 x i64] }** %_ind5458
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5417, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_b5460
  %_raw_array5462 = call i64* @oat_alloc_array(i64 3)
  %_array5463 = bitcast i64* %_raw_array5462 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5464 = call i64* @oat_alloc_array(i64 3)
  %_array5465 = bitcast i64* %_raw_array5464 to { i64, [0 x i64] }*
  %_ind5466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5465, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5466
  %_ind5468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5465, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5468
  %_ind5470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5465, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5470
  %_ind5472 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5463, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5465, { i64, [0 x i64] }** %_ind5472
  %_raw_array5474 = call i64* @oat_alloc_array(i64 3)
  %_array5475 = bitcast i64* %_raw_array5474 to { i64, [0 x i64] }*
  %_ind5476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5475, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5476
  %_ind5478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5475, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5478
  %_ind5480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5475, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind5480
  %_ind5482 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5463, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5475, { i64, [0 x i64] }** %_ind5482
  %_raw_array5484 = call i64* @oat_alloc_array(i64 3)
  %_array5485 = bitcast i64* %_raw_array5484 to { i64, [0 x i64] }*
  %_ind5486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5485, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5486
  %_ind5488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5485, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5488
  %_ind5490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5485, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5490
  %_ind5492 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5463, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5485, { i64, [0 x i64] }** %_ind5492
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5463, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_c5494
  %_result5498 = call i64 @four()
  %_raw_array5499 = call i64* @oat_alloc_array(i64 %_result5498)
  %_array5500 = bitcast i64* %_raw_array5499 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_5497 = alloca i64
  store i64 %_result5498, i64* %_bnd_5497
  %_ptr_5496 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5500, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5496
  store i64 0, i64* %_i5501
  br label %_cond5508
_body5507:
  %__ptr_54965509 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5496
  %_i5510 = load i64, i64* %_i5501
  %_tmp5512 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_54965509 to i64*
  call void @oat_assert_array_length(i64* %_tmp5512, i64 %_i5510)
  %_index_ptr5513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_54965509, i32 0, i32 1, i64 %_i5510
  %_raw_array5516 = call i64* @oat_alloc_array(i64 2)
  %_array5517 = bitcast i64* %_raw_array5516 to { i64, [0 x i64] }*
  %_bnd_5515 = alloca i64
  store i64 2, i64* %_bnd_5515
  %_ptr_5514 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5517, { i64, [0 x i64] }** %_ptr_5514
  store i64 0, i64* %_j5518
  br label %_cond5525
_body5524:
  %__ptr_55145526 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_5514
  %_j5527 = load i64, i64* %_j5518
  %_tmp5529 = bitcast { i64, [0 x i64] }* %__ptr_55145526 to i64*
  call void @oat_assert_array_length(i64* %_tmp5529, i64 %_j5527)
  %_index_ptr5530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_55145526, i32 0, i32 1, i64 %_j5527
  %_actual_341_midterm_score5531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @actual_341_midterm_score
  %_tmp5533 = bitcast { i64, [0 x i64] }* %_actual_341_midterm_score5531 to i64*
  call void @oat_assert_array_length(i64* %_tmp5533, i64 0)
  %_index_ptr5534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_actual_341_midterm_score5531, i32 0, i32 1, i32 0
  %_index5535 = load i64, i64* %_index_ptr5534
  store i64 %_index5535, i64* %_index_ptr5530
  %_j5537 = load i64, i64* %_j5518
  %_bop5538 = add i64 %_j5537, 1
  store i64 %_bop5538, i64* %_j5518
  br label %_cond5525
_body5560:
  %__ptr_55505562 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5550
  %_i5563 = load i64, i64* %_i5554
  %_tmp5565 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_55505562 to i64*
  call void @oat_assert_array_length(i64* %_tmp5565, i64 %_i5563)
  %_index_ptr5566 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_55505562, i32 0, i32 1, i64 %_i5563
  %_raw_array5569 = call i64* @oat_alloc_array(i64 6)
  %_array5570 = bitcast i64* %_raw_array5569 to { i64, [0 x i64] }*
  %_bnd_5568 = alloca i64
  store i64 6, i64* %_bnd_5568
  %_ptr_5567 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5570, { i64, [0 x i64] }** %_ptr_5567
  store i64 0, i64* %_j5571
  br label %_cond5578
_body5577:
  %__ptr_55675579 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_5567
  %_j5580 = load i64, i64* %_j5571
  %_tmp5582 = bitcast { i64, [0 x i64] }* %__ptr_55675579 to i64*
  call void @oat_assert_array_length(i64* %_tmp5582, i64 %_j5580)
  %_index_ptr5583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_55675579, i32 0, i32 1, i64 %_j5580
  %_i5584 = load i64, i64* %_i5554
  %_bop5585 = mul i64 %_i5584, 0
  %_bop5586 = add i64 %_bop5585, 1
  store i64 %_bop5586, i64* %_index_ptr5583
  %_j5588 = load i64, i64* %_j5571
  %_bop5589 = add i64 %_j5588, 1
  store i64 %_bop5589, i64* %_j5571
  br label %_cond5578
_body5619:
  %__ptr_56095621 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5609
  %_i5622 = load i64, i64* %_i5613
  %_tmp5624 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_56095621 to i64*
  call void @oat_assert_array_length(i64* %_tmp5624, i64 %_i5622)
  %_index_ptr5625 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_56095621, i32 0, i32 1, i64 %_i5622
  %_raw_array5628 = call i64* @oat_alloc_array(i64 1)
  %_array5629 = bitcast i64* %_raw_array5628 to { i64, [0 x i64] }*
  %_bnd_5627 = alloca i64
  store i64 1, i64* %_bnd_5627
  %_ptr_5626 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5629, { i64, [0 x i64] }** %_ptr_5626
  store i64 0, i64* %_j5630
  br label %_cond5637
_body5636:
  %__ptr_56265638 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_5626
  %_j5639 = load i64, i64* %_j5630
  %_tmp5641 = bitcast { i64, [0 x i64] }* %__ptr_56265638 to i64*
  call void @oat_assert_array_length(i64* %_tmp5641, i64 %_j5639)
  %_index_ptr5642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_56265638, i32 0, i32 1, i64 %_j5639
  %_ideal_341_midterm_score5643 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @ideal_341_midterm_score
  %_tmp5645 = bitcast { i64, [0 x i64] }* %_ideal_341_midterm_score5643 to i64*
  call void @oat_assert_array_length(i64* %_tmp5645, i64 0)
  %_index_ptr5646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ideal_341_midterm_score5643, i32 0, i32 1, i32 0
  %_index5647 = load i64, i64* %_index_ptr5646
  %_kesha_to_fling5648 = load i1, i1* @kesha_to_fling
  %_professor5649 = load i8*, i8** @professor
  %_result5650 = call { i64, [0 x i64] }* @asian_brother_of_foo_named_fui(i8* %_professor5649, i1 %_kesha_to_fling5648, i64 %_index5647)
  %_tmp5652 = bitcast { i64, [0 x i64] }* %_result5650 to i64*
  call void @oat_assert_array_length(i64* %_tmp5652, i64 1)
  %_index_ptr5653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result5650, i32 0, i32 1, i32 1
  %_index5654 = load i64, i64* %_index_ptr5653
  store i64 %_index5654, i64* %_index_ptr5642
  %_j5656 = load i64, i64* %_j5630
  %_bop5657 = add i64 %_j5656, 1
  store i64 %_bop5657, i64* %_j5630
  br label %_cond5637
_cond5508:
  %_i5503 = load i64, i64* %_i5501
  %__bnd_54975504 = load i64, i64* %_bnd_5497
  %_bop5505 = icmp slt i64 %_i5503, %__bnd_54975504
  br i1 %_bop5505, label %_body5507, label %_post5506
_cond5525:
  %_j5520 = load i64, i64* %_j5518
  %__bnd_55155521 = load i64, i64* %_bnd_5515
  %_bop5522 = icmp slt i64 %_j5520, %__bnd_55155521
  br i1 %_bop5522, label %_body5524, label %_post5523
_cond5561:
  %_i5556 = load i64, i64* %_i5554
  %__bnd_55515557 = load i64, i64* %_bnd_5551
  %_bop5558 = icmp slt i64 %_i5556, %__bnd_55515557
  br i1 %_bop5558, label %_body5560, label %_post5559
_cond5578:
  %_j5573 = load i64, i64* %_j5571
  %__bnd_55685574 = load i64, i64* %_bnd_5568
  %_bop5575 = icmp slt i64 %_j5573, %__bnd_55685574
  br i1 %_bop5575, label %_body5577, label %_post5576
_cond5620:
  %_i5615 = load i64, i64* %_i5613
  %__bnd_56105616 = load i64, i64* %_bnd_5610
  %_bop5617 = icmp slt i64 %_i5615, %__bnd_56105616
  br i1 %_bop5617, label %_body5619, label %_post5618
_cond5637:
  %_j5632 = load i64, i64* %_j5630
  %__bnd_56275633 = load i64, i64* %_bnd_5627
  %_bop5634 = icmp slt i64 %_j5632, %__bnd_56275633
  br i1 %_bop5634, label %_body5636, label %_post5635
_else5733:
  br label %_merge5732
_merge5732:
  %_a5735 = load i64, i64* %_a5683
  %_b5736 = load i64, i64* %_b5687
  %_bop5737 = add i64 %_a5735, %_b5736
  %_c5738 = load i64, i64* %_c5691
  %_bop5739 = add i64 %_bop5737, %_c5738
  %_none5740 = load i64, i64* %_none5695
  %_bop5741 = add i64 %_bop5739, %_none5740
  %_all5742 = load i64, i64* %_all5699
  %_bop5743 = add i64 %_bop5741, %_all5742
  %_i5744 = load i64, i64* %_i5703
  %_bop5745 = add i64 %_bop5743, %_i5744
  %_e5746 = load i64, i64* %_e5707
  %_bop5747 = add i64 %_bop5745, %_e5746
  store i64 %_bop5747, i64* %_sum5748
  %_sum5750 = load i64, i64* %_sum5748
  ret i64 %_sum5750
_post5506:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5500, { i64, [0 x { i64, [0 x i64] }*] }** %_none_conquered5548
  %_raw_array5552 = call i64* @oat_alloc_array(i64 6)
  %_array5553 = bitcast i64* %_raw_array5552 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_5551 = alloca i64
  store i64 6, i64* %_bnd_5551
  %_ptr_5550 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5553, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5550
  store i64 0, i64* %_i5554
  br label %_cond5561
_post5523:
  store { i64, [0 x i64] }* %_array5517, { i64, [0 x i64] }** %_index_ptr5513
  %_i5543 = load i64, i64* %_i5501
  %_bop5544 = add i64 %_i5543, 1
  store i64 %_bop5544, i64* %_i5501
  br label %_cond5508
_post5559:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5553, { i64, [0 x { i64, [0 x i64] }*] }** %_all_conquered5599
  %_raw_array5601 = call i64* @oat_alloc_array(i64 1)
  %_array5602 = bitcast i64* %_raw_array5601 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5603 = call i64* @oat_alloc_array(i64 0)
  %_array5604 = bitcast i64* %_raw_array5603 to { i64, [0 x i64] }*
  %_ind5605 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5602, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5604, { i64, [0 x i64] }** %_ind5605
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5602, { i64, [0 x { i64, [0 x i64] }*] }** %_island5607
  %_raw_array5611 = call i64* @oat_alloc_array(i64 1)
  %_array5612 = bitcast i64* %_raw_array5611 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_5610 = alloca i64
  store i64 1, i64* %_bnd_5610
  %_ptr_5609 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5612, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5609
  store i64 0, i64* %_i5613
  br label %_cond5620
_post5576:
  store { i64, [0 x i64] }* %_array5570, { i64, [0 x i64] }** %_index_ptr5566
  %_i5594 = load i64, i64* %_i5554
  %_bop5595 = add i64 %_i5594, 1
  store i64 %_bop5595, i64* %_i5554
  br label %_cond5561
_post5618:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5612, { i64, [0 x { i64, [0 x i64] }*] }** %_emptyland5667
  %_all_conquered5669 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_all_conquered5599
  store { i64, [0 x { i64, [0 x i64] }*] }* %_all_conquered5669, { i64, [0 x { i64, [0 x i64] }*] }** %_all_conquered5599
  %_island5671 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_island5607
  store { i64, [0 x { i64, [0 x i64] }*] }* %_island5671, { i64, [0 x { i64, [0 x i64] }*] }** %_temp5672
  %_emptyland5674 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_emptyland5667
  store { i64, [0 x { i64, [0 x i64] }*] }* %_emptyland5674, { i64, [0 x { i64, [0 x i64] }*] }** %_island5607
  %_temp5676 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_temp5672
  store { i64, [0 x { i64, [0 x i64] }*] }* %_temp5676, { i64, [0 x { i64, [0 x i64] }*] }** %_emptyland5667
  %_str5679 = getelementptr [20 x i8], [20 x i8]* @_str_arr5678, i32 0, i32 0
  call void @print_string(i8* %_str5679)
  %_territory_a5681 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_a5414
  %_result5682 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_territory_a5681, i64 4, i64 4)
  store i64 %_result5682, i64* %_a5683
  %_territory_b5685 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_b5460
  %_result5686 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_territory_b5685, i64 3, i64 5)
  store i64 %_result5686, i64* %_b5687
  %_territory_c5689 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_c5494
  %_result5690 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_territory_c5689, i64 3, i64 3)
  store i64 %_result5690, i64* %_c5691
  %_none_conquered5693 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_none_conquered5548
  %_result5694 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_none_conquered5693, i64 4, i64 2)
  store i64 %_result5694, i64* %_none5695
  %_all_conquered5697 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_all_conquered5599
  %_result5698 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_all_conquered5697, i64 6, i64 6)
  store i64 %_result5698, i64* %_all5699
  %_island5701 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_island5607
  %_result5702 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_island5701, i64 1, i64 1)
  store i64 %_result5702, i64* %_i5703
  %_emptyland5705 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_emptyland5667
  %_result5706 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_emptyland5705, i64 0, i64 0)
  store i64 %_result5706, i64* %_e5707
  %_a5709 = load i64, i64* %_a5683
  %_bop5710 = icmp eq i64 %_a5709, 3
  %_b5711 = load i64, i64* %_b5687
  %_bop5712 = icmp eq i64 %_b5711, 1
  %_bop5713 = and i1 %_bop5710, %_bop5712
  %_c5714 = load i64, i64* %_c5691
  %_bop5715 = icmp eq i64 %_c5714, 5
  %_bop5716 = and i1 %_bop5713, %_bop5715
  %_none5717 = load i64, i64* %_none5695
  %_bop5718 = icmp eq i64 %_none5717, 0
  %_bop5719 = and i1 %_bop5716, %_bop5718
  %_all5720 = load i64, i64* %_all5699
  %_bop5721 = icmp eq i64 %_all5720, 1
  %_bop5722 = and i1 %_bop5719, %_bop5721
  %_i5723 = load i64, i64* %_i5703
  %_bop5724 = icmp eq i64 %_i5723, 1
  %_bop5725 = and i1 %_bop5722, %_bop5724
  %_e5726 = load i64, i64* %_e5707
  %_bop5727 = icmp eq i64 %_e5726, 0
  %_bop5728 = and i1 %_bop5725, %_bop5727
  br i1 %_bop5728, label %_then5734, label %_else5733
_post5635:
  store { i64, [0 x i64] }* %_array5629, { i64, [0 x i64] }** %_index_ptr5625
  %_i5662 = load i64, i64* %_i5613
  %_bop5663 = add i64 %_i5662, 1
  store i64 %_bop5663, i64* %_i5613
  br label %_cond5620
_then5734:
  %_str5730 = getelementptr [38 x i8], [38 x i8]* @_str_arr5729, i32 0, i32 0
  call void @print_string(i8* %_str5730)
  br label %_merge5732
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
