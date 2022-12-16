; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_global_arr5170 to { i64, [0 x i1] }*)
@_global_arr5170 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_str_arr5148 = global [2 x i8] c"T\00"
@_str_arr5150 = global [2 x i8] c"F\00"
@_str_arr5113 = global [2 x i8] c" \00"

define i1 @xor(i1 %_x5158, i1 %_y5155) {
  %_x5159 = alloca i1
  %_y5156 = alloca i1
  store i1 %_x5158, i1* %_x5159
  store i1 %_y5155, i1* %_y5156
  %_x5161 = load i1, i1* %_x5159
  %_y5162 = load i1, i1* %_y5156
  %_unop5163 = icmp eq i1 %_y5162, 0
  %_bop5164 = and i1 %_x5161, %_unop5163
  %_x5165 = load i1, i1* %_x5159
  %_unop5166 = icmp eq i1 %_x5165, 0
  %_y5167 = load i1, i1* %_y5156
  %_bop5168 = and i1 %_unop5166, %_y5167
  %_bop5169 = or i1 %_bop5164, %_bop5168
  ret i1 %_bop5169
}

define i8* @string_of_bool(i1 %_b5144) {
  %_b5145 = alloca i1
  store i1 %_b5144, i1* %_b5145
  %_b5147 = load i1, i1* %_b5145
  br i1 %_b5147, label %_then5154, label %_else5153
_else5153:
  %_str5151 = getelementptr [2 x i8], [2 x i8]* @_str_arr5150, i32 0, i32 0
  ret i8* %_str5151
_merge5152:
  ret i8* null
_then5154:
  %_str5149 = getelementptr [2 x i8], [2 x i8]* @_str_arr5148, i32 0, i32 0
  ret i8* %_str5149
}

define void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register5122, i64 %_len5119) {
  %_lfsr_register5123 = alloca { i64, [0 x i1] }*
  %_len5120 = alloca i64
  %_i5125 = alloca i64
  store { i64, [0 x i1] }* %_lfsr_register5122, { i64, [0 x i1] }** %_lfsr_register5123
  store i64 %_len5119, i64* %_len5120
  store i64 0, i64* %_i5125
  br label %_cond5132
_body5131:
  %_lfsr_register5133 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5123
  %_i5134 = load i64, i64* %_i5125
  %_tmp5136 = bitcast { i64, [0 x i1] }* %_lfsr_register5133 to i64*
  call void @oat_assert_array_length(i64* %_tmp5136, i64 %_i5134)
  %_index_ptr5137 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5133, i32 0, i32 1, i64 %_i5134
  %_index5138 = load i1, i1* %_index_ptr5137
  %_result5139 = call i8* @string_of_bool(i1 %_index5138)
  call void @print_string(i8* %_result5139)
  %_i5141 = load i64, i64* %_i5125
  %_bop5142 = add i64 %_i5141, 1
  store i64 %_bop5142, i64* %_i5125
  br label %_cond5132
_cond5132:
  %_i5127 = load i64, i64* %_i5125
  %_len5128 = load i64, i64* %_len5120
  %_bop5129 = icmp slt i64 %_i5127, %_len5128
  br i1 %_bop5129, label %_body5131, label %_post5130
_post5130:
  ret void
}

define i64 @program(i64 %_argc4999, { i64, [0 x i8*] }* %_argv4996) {
  %_i5007 = alloca i64
  %_lfsr_register5026 = alloca { i64, [0 x i1] }*
  %_i5028 = alloca i64
  %_i5051 = alloca i64
  %_new_first5074 = alloca i1
  %_j5078 = alloca i64
  %_lfsr_length5004 = load i64, i64* @lfsr_length
  %_raw_array5005 = call i64* @oat_alloc_array(i64 %_lfsr_length5004)
  %_array5006 = bitcast i64* %_raw_array5005 to { i64, [0 x i1] }*
  %_bnd_5003 = alloca i64
  store i64 %_lfsr_length5004, i64* %_bnd_5003
  %_ptr_5002 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array5006, { i64, [0 x i1] }** %_ptr_5002
  store i64 0, i64* %_i5007
  br label %_cond5014
_body5013:
  %__ptr_50025015 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_ptr_5002
  %_i5016 = load i64, i64* %_i5007
  %_tmp5018 = bitcast { i64, [0 x i1] }* %__ptr_50025015 to i64*
  call void @oat_assert_array_length(i64* %_tmp5018, i64 %_i5016)
  %_index_ptr5019 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %__ptr_50025015, i32 0, i32 1, i64 %_i5016
  store i1 0, i1* %_index_ptr5019
  %_i5021 = load i64, i64* %_i5007
  %_bop5022 = add i64 %_i5021, 1
  store i64 %_bop5022, i64* %_i5007
  br label %_cond5014
_body5034:
  %_lfsr_register5036 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5026
  %_i5037 = load i64, i64* %_i5028
  %_tmp5039 = bitcast { i64, [0 x i1] }* %_lfsr_register5036 to i64*
  call void @oat_assert_array_length(i64* %_tmp5039, i64 %_i5037)
  %_index_ptr5040 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5036, i32 0, i32 1, i64 %_i5037
  %_lfsr_init_values5041 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_i5042 = load i64, i64* %_i5028
  %_tmp5044 = bitcast { i64, [0 x i1] }* %_lfsr_init_values5041 to i64*
  call void @oat_assert_array_length(i64* %_tmp5044, i64 %_i5042)
  %_index_ptr5045 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_init_values5041, i32 0, i32 1, i64 %_i5042
  %_index5046 = load i1, i1* %_index_ptr5045
  store i1 %_index5046, i1* %_index_ptr5040
  %_i5048 = load i64, i64* %_i5028
  %_bop5049 = add i64 %_i5048, 1
  store i64 %_bop5049, i64* %_i5028
  br label %_cond5035
_body5057:
  %_lfsr_register5059 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5026
  %_lfsr_length5060 = load i64, i64* @lfsr_length
  %_bop5061 = sub i64 %_lfsr_length5060, 2
  %_tmp5063 = bitcast { i64, [0 x i1] }* %_lfsr_register5059 to i64*
  call void @oat_assert_array_length(i64* %_tmp5063, i64 %_bop5061)
  %_index_ptr5064 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5059, i32 0, i32 1, i64 %_bop5061
  %_index5065 = load i1, i1* %_index_ptr5064
  %_lfsr_register5066 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5026
  %_lfsr_length5067 = load i64, i64* @lfsr_length
  %_bop5068 = sub i64 %_lfsr_length5067, 1
  %_tmp5070 = bitcast { i64, [0 x i1] }* %_lfsr_register5066 to i64*
  call void @oat_assert_array_length(i64* %_tmp5070, i64 %_bop5068)
  %_index_ptr5071 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5066, i32 0, i32 1, i64 %_bop5068
  %_index5072 = load i1, i1* %_index_ptr5071
  %_result5073 = call i1 @xor(i1 %_index5072, i1 %_index5065)
  store i1 %_result5073, i1* %_new_first5074
  %_lfsr_length5076 = load i64, i64* @lfsr_length
  %_bop5077 = sub i64 %_lfsr_length5076, 1
  store i64 %_bop5077, i64* %_j5078
  br label %_cond5084
_body5083:
  %_lfsr_register5085 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5026
  %_j5086 = load i64, i64* %_j5078
  %_tmp5088 = bitcast { i64, [0 x i1] }* %_lfsr_register5085 to i64*
  call void @oat_assert_array_length(i64* %_tmp5088, i64 %_j5086)
  %_index_ptr5089 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5085, i32 0, i32 1, i64 %_j5086
  %_lfsr_register5090 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5026
  %_j5091 = load i64, i64* %_j5078
  %_bop5092 = sub i64 %_j5091, 1
  %_tmp5094 = bitcast { i64, [0 x i1] }* %_lfsr_register5090 to i64*
  call void @oat_assert_array_length(i64* %_tmp5094, i64 %_bop5092)
  %_index_ptr5095 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5090, i32 0, i32 1, i64 %_bop5092
  %_index5096 = load i1, i1* %_index_ptr5095
  store i1 %_index5096, i1* %_index_ptr5089
  %_j5098 = load i64, i64* %_j5078
  %_bop5099 = sub i64 %_j5098, 1
  store i64 %_bop5099, i64* %_j5078
  br label %_cond5084
_cond5014:
  %_i5009 = load i64, i64* %_i5007
  %__bnd_50035010 = load i64, i64* %_bnd_5003
  %_bop5011 = icmp slt i64 %_i5009, %__bnd_50035010
  br i1 %_bop5011, label %_body5013, label %_post5012
_cond5035:
  %_i5030 = load i64, i64* %_i5028
  %_lfsr_length5031 = load i64, i64* @lfsr_length
  %_bop5032 = icmp slt i64 %_i5030, %_lfsr_length5031
  br i1 %_bop5032, label %_body5034, label %_post5033
_cond5058:
  %_i5053 = load i64, i64* %_i5051
  %_lfsr_iterations5054 = load i64, i64* @lfsr_iterations
  %_bop5055 = icmp slt i64 %_i5053, %_lfsr_iterations5054
  br i1 %_bop5055, label %_body5057, label %_post5056
_cond5084:
  %_j5080 = load i64, i64* %_j5078
  %_bop5081 = icmp sgt i64 %_j5080, 0
  br i1 %_bop5081, label %_body5083, label %_post5082
_post5012:
  store { i64, [0 x i1] }* %_array5006, { i64, [0 x i1] }** %_lfsr_register5026
  store i64 0, i64* %_i5028
  br label %_cond5035
_post5033:
  store i64 0, i64* %_i5051
  br label %_cond5058
_post5056:
  %_lfsr_length5110 = load i64, i64* @lfsr_length
  %_lfsr_init_values5111 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_init_values5111, i64 %_lfsr_length5110)
  %_str5114 = getelementptr [2 x i8], [2 x i8]* @_str_arr5113, i32 0, i32 0
  call void @print_string(i8* %_str5114)
  %_lfsr_length5116 = load i64, i64* @lfsr_length
  %_lfsr_register5117 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5026
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register5117, i64 %_lfsr_length5116)
  ret i64 0
_post5082:
  %_lfsr_register5101 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5026
  %_tmp5103 = bitcast { i64, [0 x i1] }* %_lfsr_register5101 to i64*
  call void @oat_assert_array_length(i64* %_tmp5103, i64 0)
  %_index_ptr5104 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5101, i32 0, i32 1, i32 0
  %_new_first5105 = load i1, i1* %_new_first5074
  store i1 %_new_first5105, i1* %_index_ptr5104
  %_i5107 = load i64, i64* %_i5051
  %_bop5108 = add i64 %_i5107, 1
  store i64 %_bop5108, i64* %_i5051
  br label %_cond5058
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
