; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %_a5222, i64 %_len5219) {
  %_a5223 = alloca { i64, [0 x i64] }*
  %_len5220 = alloca i64
  %_i5225 = alloca i64
  %_j5227 = alloca i64
  %_tmp5261 = alloca i64
  store { i64, [0 x i64] }* %_a5222, { i64, [0 x i64] }** %_a5223
  store i64 %_len5219, i64* %_len5220
  store i64 1, i64* %_i5225
  store i64 2, i64* %_j5227
  br label %_cond5234
_body5233:
  %_a5235 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5223
  %_i5236 = load i64, i64* %_i5225
  %_bop5237 = sub i64 %_i5236, 1
  %_tmp5239 = bitcast { i64, [0 x i64] }* %_a5235 to i64*
  call void @oat_assert_array_length(i64* %_tmp5239, i64 %_bop5237)
  %_index_ptr5240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5235, i32 0, i32 1, i64 %_bop5237
  %_index5241 = load i64, i64* %_index_ptr5240
  %_a5242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5223
  %_i5243 = load i64, i64* %_i5225
  %_tmp5245 = bitcast { i64, [0 x i64] }* %_a5242 to i64*
  call void @oat_assert_array_length(i64* %_tmp5245, i64 %_i5243)
  %_index_ptr5246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5242, i32 0, i32 1, i64 %_i5243
  %_index5247 = load i64, i64* %_index_ptr5246
  %_bop5248 = icmp sle i64 %_index5241, %_index5247
  br i1 %_bop5248, label %_then5298, label %_else5297
_cond5234:
  %_i5229 = load i64, i64* %_i5225
  %_len5230 = load i64, i64* %_len5220
  %_bop5231 = icmp slt i64 %_i5229, %_len5230
  br i1 %_bop5231, label %_body5233, label %_post5232
_else5294:
  br label %_merge5293
_else5297:
  %_a5254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5223
  %_i5255 = load i64, i64* %_i5225
  %_bop5256 = sub i64 %_i5255, 1
  %_tmp5258 = bitcast { i64, [0 x i64] }* %_a5254 to i64*
  call void @oat_assert_array_length(i64* %_tmp5258, i64 %_bop5256)
  %_index_ptr5259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5254, i32 0, i32 1, i64 %_bop5256
  %_index5260 = load i64, i64* %_index_ptr5259
  store i64 %_index5260, i64* %_tmp5261
  %_a5263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5223
  %_i5264 = load i64, i64* %_i5225
  %_bop5265 = sub i64 %_i5264, 1
  %_tmp5267 = bitcast { i64, [0 x i64] }* %_a5263 to i64*
  call void @oat_assert_array_length(i64* %_tmp5267, i64 %_bop5265)
  %_index_ptr5268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5263, i32 0, i32 1, i64 %_bop5265
  %_a5269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5223
  %_i5270 = load i64, i64* %_i5225
  %_tmp5272 = bitcast { i64, [0 x i64] }* %_a5269 to i64*
  call void @oat_assert_array_length(i64* %_tmp5272, i64 %_i5270)
  %_index_ptr5273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5269, i32 0, i32 1, i64 %_i5270
  %_index5274 = load i64, i64* %_index_ptr5273
  store i64 %_index5274, i64* %_index_ptr5268
  %_a5276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5223
  %_i5277 = load i64, i64* %_i5225
  %_tmp5279 = bitcast { i64, [0 x i64] }* %_a5276 to i64*
  call void @oat_assert_array_length(i64* %_tmp5279, i64 %_i5277)
  %_index_ptr5280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5276, i32 0, i32 1, i64 %_i5277
  %_tmp5281 = load i64, i64* %_tmp5261
  store i64 %_tmp5281, i64* %_index_ptr5280
  %_i5283 = load i64, i64* %_i5225
  %_bop5284 = sub i64 %_i5283, 1
  store i64 %_bop5284, i64* %_i5225
  %_i5286 = load i64, i64* %_i5225
  %_bop5287 = icmp eq i64 %_i5286, 0
  br i1 %_bop5287, label %_then5295, label %_else5294
_merge5293:
  br label %_merge5296
_merge5296:
  br label %_cond5234
_post5232:
  ret void
_then5295:
  %_j5288 = load i64, i64* %_j5227
  store i64 %_j5288, i64* %_i5225
  %_j5290 = load i64, i64* %_j5227
  %_bop5291 = add i64 %_j5290, 1
  store i64 %_bop5291, i64* %_j5227
  br label %_merge5293
_then5298:
  %_j5249 = load i64, i64* %_j5227
  store i64 %_j5249, i64* %_i5225
  %_j5251 = load i64, i64* %_j5227
  %_bop5252 = add i64 %_j5251, 1
  store i64 %_bop5252, i64* %_j5227
  br label %_merge5296
}

define i64 @program(i64 %_argc5174, { i64, [0 x i8*] }* %_argv5171) {
  %_arr5195 = alloca { i64, [0 x i64] }*
  %_len5197 = alloca i64
  %_i5202 = alloca i64
  %_raw_array5177 = call i64* @oat_alloc_array(i64 8)
  %_array5178 = bitcast i64* %_raw_array5177 to { i64, [0 x i64] }*
  %_ind5179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5178, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind5179
  %_ind5181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5178, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind5181
  %_ind5183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5178, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5183
  %_ind5185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5178, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind5185
  %_ind5187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5178, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind5187
  %_ind5189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5178, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind5189
  %_ind5191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5178, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind5191
  %_ind5193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5178, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind5193
  store { i64, [0 x i64] }* %_array5178, { i64, [0 x i64] }** %_arr5195
  store i64 8, i64* %_len5197
  %_len5199 = load i64, i64* %_len5197
  %_arr5200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5195
  call void @gnomeSort({ i64, [0 x i64] }* %_arr5200, i64 %_len5199)
  store i64 0, i64* %_i5202
  br label %_cond5208
_body5207:
  %_arr5209 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5195
  %_i5210 = load i64, i64* %_i5202
  %_tmp5212 = bitcast { i64, [0 x i64] }* %_arr5209 to i64*
  call void @oat_assert_array_length(i64* %_tmp5212, i64 %_i5210)
  %_index_ptr5213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5209, i32 0, i32 1, i64 %_i5210
  %_index5214 = load i64, i64* %_index_ptr5213
  call void @print_int(i64 %_index5214)
  %_i5216 = load i64, i64* %_i5202
  %_bop5217 = add i64 %_i5216, 1
  store i64 %_bop5217, i64* %_i5202
  br label %_cond5208
_cond5208:
  %_i5204 = load i64, i64* %_i5202
  %_bop5205 = icmp slt i64 %_i5204, 8
  br i1 %_bop5205, label %_body5207, label %_post5206
_post5206:
  ret i64 0
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
