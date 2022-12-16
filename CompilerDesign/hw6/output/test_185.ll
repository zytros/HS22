; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %_a9220, i64 %_l9217, i64 %_r9214) {
  %_a9221 = alloca { i64, [0 x i64] }*
  %_l9218 = alloca i64
  %_r9215 = alloca i64
  %_j9223 = alloca i64
  store { i64, [0 x i64] }* %_a9220, { i64, [0 x i64] }** %_a9221
  store i64 %_l9217, i64* %_l9218
  store i64 %_r9214, i64* %_r9215
  store i64 0, i64* %_j9223
  %_l9225 = load i64, i64* %_l9218
  %_r9226 = load i64, i64* %_r9215
  %_bop9227 = icmp slt i64 %_l9225, %_r9226
  br i1 %_bop9227, label %_then9245, label %_else9244
_else9244:
  br label %_merge9243
_merge9243:
  ret void
_then9245:
  %_r9228 = load i64, i64* %_r9215
  %_l9229 = load i64, i64* %_l9218
  %_a9230 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9221
  %_result9231 = call i64 @partition({ i64, [0 x i64] }* %_a9230, i64 %_l9229, i64 %_r9228)
  store i64 %_result9231, i64* %_j9223
  %_j9233 = load i64, i64* %_j9223
  %_bop9234 = sub i64 %_j9233, 1
  %_l9235 = load i64, i64* %_l9218
  %_a9236 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9221
  call void @quick_sort({ i64, [0 x i64] }* %_a9236, i64 %_l9235, i64 %_bop9234)
  %_r9238 = load i64, i64* %_r9215
  %_j9239 = load i64, i64* %_j9223
  %_bop9240 = add i64 %_j9239, 1
  %_a9241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9221
  call void @quick_sort({ i64, [0 x i64] }* %_a9241, i64 %_bop9240, i64 %_r9238)
  br label %_merge9243
}

define i64 @partition({ i64, [0 x i64] }* %_a9084, i64 %_l9081, i64 %_r9078) {
  %_a9085 = alloca { i64, [0 x i64] }*
  %_l9082 = alloca i64
  %_r9079 = alloca i64
  %_pivot9093 = alloca i64
  %_i9096 = alloca i64
  %_j9100 = alloca i64
  %_t9102 = alloca i64
  %_done9104 = alloca i64
  store { i64, [0 x i64] }* %_a9084, { i64, [0 x i64] }** %_a9085
  store i64 %_l9081, i64* %_l9082
  store i64 %_r9078, i64* %_r9079
  %_a9087 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_l9088 = load i64, i64* %_l9082
  %_tmp9090 = bitcast { i64, [0 x i64] }* %_a9087 to i64*
  call void @oat_assert_array_length(i64* %_tmp9090, i64 %_l9088)
  %_index_ptr9091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9087, i32 0, i32 1, i64 %_l9088
  %_index9092 = load i64, i64* %_index_ptr9091
  store i64 %_index9092, i64* %_pivot9093
  %_l9095 = load i64, i64* %_l9082
  store i64 %_l9095, i64* %_i9096
  %_r9098 = load i64, i64* %_r9079
  %_bop9099 = add i64 %_r9098, 1
  store i64 %_bop9099, i64* %_j9100
  store i64 0, i64* %_t9102
  store i64 0, i64* %_done9104
  br label %_cond9110
_body9109:
  %_i9111 = load i64, i64* %_i9096
  %_bop9112 = add i64 %_i9111, 1
  store i64 %_bop9112, i64* %_i9096
  br label %_cond9128
_body9127:
  %_i9129 = load i64, i64* %_i9096
  %_bop9130 = add i64 %_i9129, 1
  store i64 %_bop9130, i64* %_i9096
  br label %_cond9128
_body9144:
  %_j9146 = load i64, i64* %_j9100
  %_bop9147 = sub i64 %_j9146, 1
  store i64 %_bop9147, i64* %_j9100
  br label %_cond9145
_cond9110:
  %_done9106 = load i64, i64* %_done9104
  %_bop9107 = icmp eq i64 %_done9106, 0
  br i1 %_bop9107, label %_body9109, label %_post9108
_cond9128:
  %_a9114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_i9115 = load i64, i64* %_i9096
  %_tmp9117 = bitcast { i64, [0 x i64] }* %_a9114 to i64*
  call void @oat_assert_array_length(i64* %_tmp9117, i64 %_i9115)
  %_index_ptr9118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9114, i32 0, i32 1, i64 %_i9115
  %_index9119 = load i64, i64* %_index_ptr9118
  %_pivot9120 = load i64, i64* %_pivot9093
  %_bop9121 = icmp sle i64 %_index9119, %_pivot9120
  %_i9122 = load i64, i64* %_i9096
  %_r9123 = load i64, i64* %_r9079
  %_bop9124 = icmp sle i64 %_i9122, %_r9123
  %_bop9125 = and i1 %_bop9121, %_bop9124
  br i1 %_bop9125, label %_body9127, label %_post9126
_cond9145:
  %_a9135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_j9136 = load i64, i64* %_j9100
  %_tmp9138 = bitcast { i64, [0 x i64] }* %_a9135 to i64*
  call void @oat_assert_array_length(i64* %_tmp9138, i64 %_j9136)
  %_index_ptr9139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9135, i32 0, i32 1, i64 %_j9136
  %_index9140 = load i64, i64* %_index_ptr9139
  %_pivot9141 = load i64, i64* %_pivot9093
  %_bop9142 = icmp sgt i64 %_index9140, %_pivot9141
  br i1 %_bop9142, label %_body9144, label %_post9143
_else9154:
  br label %_merge9153
_else9185:
  br label %_merge9184
_merge9153:
  %_done9156 = load i64, i64* %_done9104
  %_bop9157 = icmp eq i64 %_done9156, 0
  br i1 %_bop9157, label %_then9186, label %_else9185
_merge9184:
  br label %_cond9110
_post9108:
  %_a9187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_l9188 = load i64, i64* %_l9082
  %_tmp9190 = bitcast { i64, [0 x i64] }* %_a9187 to i64*
  call void @oat_assert_array_length(i64* %_tmp9190, i64 %_l9188)
  %_index_ptr9191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9187, i32 0, i32 1, i64 %_l9188
  %_index9192 = load i64, i64* %_index_ptr9191
  store i64 %_index9192, i64* %_t9102
  %_a9194 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_l9195 = load i64, i64* %_l9082
  %_tmp9197 = bitcast { i64, [0 x i64] }* %_a9194 to i64*
  call void @oat_assert_array_length(i64* %_tmp9197, i64 %_l9195)
  %_index_ptr9198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9194, i32 0, i32 1, i64 %_l9195
  %_a9199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_j9200 = load i64, i64* %_j9100
  %_tmp9202 = bitcast { i64, [0 x i64] }* %_a9199 to i64*
  call void @oat_assert_array_length(i64* %_tmp9202, i64 %_j9200)
  %_index_ptr9203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9199, i32 0, i32 1, i64 %_j9200
  %_index9204 = load i64, i64* %_index_ptr9203
  store i64 %_index9204, i64* %_index_ptr9198
  %_a9206 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_j9207 = load i64, i64* %_j9100
  %_tmp9209 = bitcast { i64, [0 x i64] }* %_a9206 to i64*
  call void @oat_assert_array_length(i64* %_tmp9209, i64 %_j9207)
  %_index_ptr9210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9206, i32 0, i32 1, i64 %_j9207
  %_t9211 = load i64, i64* %_t9102
  store i64 %_t9211, i64* %_index_ptr9210
  %_j9213 = load i64, i64* %_j9100
  ret i64 %_j9213
_post9126:
  %_j9132 = load i64, i64* %_j9100
  %_bop9133 = sub i64 %_j9132, 1
  store i64 %_bop9133, i64* %_j9100
  br label %_cond9145
_post9143:
  %_i9149 = load i64, i64* %_i9096
  %_j9150 = load i64, i64* %_j9100
  %_bop9151 = icmp sge i64 %_i9149, %_j9150
  br i1 %_bop9151, label %_then9155, label %_else9154
_then9155:
  store i64 1, i64* %_done9104
  br label %_merge9153
_then9186:
  %_a9158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_i9159 = load i64, i64* %_i9096
  %_tmp9161 = bitcast { i64, [0 x i64] }* %_a9158 to i64*
  call void @oat_assert_array_length(i64* %_tmp9161, i64 %_i9159)
  %_index_ptr9162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9158, i32 0, i32 1, i64 %_i9159
  %_index9163 = load i64, i64* %_index_ptr9162
  store i64 %_index9163, i64* %_t9102
  %_a9165 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_i9166 = load i64, i64* %_i9096
  %_tmp9168 = bitcast { i64, [0 x i64] }* %_a9165 to i64*
  call void @oat_assert_array_length(i64* %_tmp9168, i64 %_i9166)
  %_index_ptr9169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9165, i32 0, i32 1, i64 %_i9166
  %_a9170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_j9171 = load i64, i64* %_j9100
  %_tmp9173 = bitcast { i64, [0 x i64] }* %_a9170 to i64*
  call void @oat_assert_array_length(i64* %_tmp9173, i64 %_j9171)
  %_index_ptr9174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9170, i32 0, i32 1, i64 %_j9171
  %_index9175 = load i64, i64* %_index_ptr9174
  store i64 %_index9175, i64* %_index_ptr9169
  %_a9177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9085
  %_j9178 = load i64, i64* %_j9100
  %_tmp9180 = bitcast { i64, [0 x i64] }* %_a9177 to i64*
  call void @oat_assert_array_length(i64* %_tmp9180, i64 %_j9178)
  %_index_ptr9181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9177, i32 0, i32 1, i64 %_j9178
  %_t9182 = load i64, i64* %_t9102
  store i64 %_t9182, i64* %_index_ptr9181
  br label %_merge9184
}

define i64 @program(i64 %_argc9045, { i64, [0 x i8*] }* %_argv9042) {
  %_a9068 = alloca { i64, [0 x i64] }*
  %_raw_array9048 = call i64* @oat_alloc_array(i64 9)
  %_array9049 = bitcast i64* %_raw_array9048 to { i64, [0 x i64] }*
  %_ind9050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9049, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind9050
  %_ind9052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9049, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind9052
  %_ind9054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9049, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind9054
  %_ind9056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9049, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind9056
  %_ind9058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9049, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind9058
  %_ind9060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9049, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind9060
  %_ind9062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9049, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind9062
  %_ind9064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9049, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind9064
  %_ind9066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9049, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind9066
  store { i64, [0 x i64] }* %_array9049, { i64, [0 x i64] }** %_a9068
  %_a9070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9068
  %_result9071 = call i8* @string_of_array({ i64, [0 x i64] }* %_a9070)
  call void @print_string(i8* %_result9071)
  %_a9073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9068
  call void @quick_sort({ i64, [0 x i64] }* %_a9073, i64 0, i64 8)
  %_a9075 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9068
  %_result9076 = call i8* @string_of_array({ i64, [0 x i64] }* %_a9075)
  call void @print_string(i8* %_result9076)
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
