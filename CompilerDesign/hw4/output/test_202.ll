; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_stringd5128 = global [2 x i8] c"
\00"
@_string5127 = global i8* bitcast ([2 x i8]* @_stringd5128 to i8*)

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_args5282 = alloca { i64, [0 x i64] }*
  %_args5283 = alloca i64
  %_localId5289 = alloca i64
  %_localId5291 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_args5282
  store i64 %len, i64* %_args5283
  %_locRef5286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5282
  %_idxUID5287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5286, i32 0, i32 1, i32 0
  %_getArrUID5288 = load i64, i64* %_idxUID5287
  store i64 %_getArrUID5288, i64* %_localId5289
  store i64 0, i64* %_localId5291
  %_locRef5293 = load i64, i64* %_localId5291
  %_locRef5294 = load i64, i64* %_args5283
  %_bop5295 = icmp slt i64 %_locRef5293, %_locRef5294
  br i1 %_bop5295, label %_while_body_jmp5297, label %_while_end_jmp5296
_while_body_jmp5297:
  %_locRef5301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5282
  %_locRef5302 = load i64, i64* %_localId5291
  %_idxUID5303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5301, i32 0, i32 1, i64 %_locRef5302
  %_getArrUID5304 = load i64, i64* %_idxUID5303
  %_locRef5305 = load i64, i64* %_localId5289
  %_bop5306 = icmp slt i64 %_getArrUID5304, %_locRef5305
  br i1 %_bop5306, label %_ifTruelbl5298, label %_ifFalselbl5299
_ifTruelbl5298:
  %_locRef5307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5282
  %_locRef5308 = load i64, i64* %_localId5291
  %_idxUID5309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5307, i32 0, i32 1, i64 %_locRef5308
  %_getArrUID5310 = load i64, i64* %_idxUID5309
  store i64 %_getArrUID5310, i64* %_localId5289
  br label %_ifEndlbl5300
_ifFalselbl5299:
  br label %_ifEndlbl5300
_ifEndlbl5300:
  %_locRef5312 = load i64, i64* %_localId5291
  %_bop5313 = add i64 %_locRef5312, 1
  store i64 %_bop5313, i64* %_localId5291
  %_locRef5315 = load i64, i64* %_localId5291
  %_locRef5316 = load i64, i64* %_args5283
  %_bop5317 = icmp slt i64 %_locRef5315, %_locRef5316
  br i1 %_bop5317, label %_while_body_jmp5297, label %_while_end_jmp5296
_while_end_jmp5296:
  %_locRef5318 = load i64, i64* %_localId5289
  ret i64 %_locRef5318
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_args5245 = alloca { i64, [0 x i64] }*
  %_args5246 = alloca i64
  %_localId5252 = alloca i64
  %_localId5254 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_args5245
  store i64 %len, i64* %_args5246
  %_locRef5249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5245
  %_idxUID5250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5249, i32 0, i32 1, i32 0
  %_getArrUID5251 = load i64, i64* %_idxUID5250
  store i64 %_getArrUID5251, i64* %_localId5252
  store i64 0, i64* %_localId5254
  %_locRef5256 = load i64, i64* %_localId5254
  %_locRef5257 = load i64, i64* %_args5246
  %_bop5258 = icmp slt i64 %_locRef5256, %_locRef5257
  br i1 %_bop5258, label %_while_body_jmp5260, label %_while_end_jmp5259
_while_body_jmp5260:
  %_locRef5264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5245
  %_locRef5265 = load i64, i64* %_localId5254
  %_idxUID5266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5264, i32 0, i32 1, i64 %_locRef5265
  %_getArrUID5267 = load i64, i64* %_idxUID5266
  %_locRef5268 = load i64, i64* %_localId5252
  %_bop5269 = icmp sgt i64 %_getArrUID5267, %_locRef5268
  br i1 %_bop5269, label %_ifTruelbl5261, label %_ifFalselbl5262
_ifTruelbl5261:
  %_locRef5270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5245
  %_locRef5271 = load i64, i64* %_localId5254
  %_idxUID5272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5270, i32 0, i32 1, i64 %_locRef5271
  %_getArrUID5273 = load i64, i64* %_idxUID5272
  store i64 %_getArrUID5273, i64* %_localId5252
  br label %_ifEndlbl5263
_ifFalselbl5262:
  br label %_ifEndlbl5263
_ifEndlbl5263:
  %_locRef5275 = load i64, i64* %_localId5254
  %_bop5276 = add i64 %_locRef5275, 1
  store i64 %_bop5276, i64* %_localId5254
  %_locRef5278 = load i64, i64* %_localId5254
  %_locRef5279 = load i64, i64* %_args5246
  %_bop5280 = icmp slt i64 %_locRef5278, %_locRef5279
  br i1 %_bop5280, label %_while_body_jmp5260, label %_while_end_jmp5259
_while_end_jmp5259:
  %_locRef5281 = load i64, i64* %_localId5252
  ret i64 %_locRef5281
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_args5138 = alloca { i64, [0 x i64] }*
  %_args5139 = alloca i64
  %_localId5145 = alloca i64
  %_localId5150 = alloca i64
  %_localId5158 = alloca { i64, [0 x i64] }*
  %_localId5160 = alloca i64
  %_localId5193 = alloca i64
  %_localId5195 = alloca i64
  %_localId5200 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_args5138
  store i64 %len, i64* %_args5139
  %_locRef5142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5138
  %_locRef5143 = load i64, i64* %_args5139
  %_callUID5144 = call i64 @min({ i64, [0 x i64] }* %_locRef5142, i64 %_locRef5143)
  store i64 %_callUID5144, i64* %_localId5145
  %_locRef5147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5138
  %_locRef5148 = load i64, i64* %_args5139
  %_callUID5149 = call i64 @max({ i64, [0 x i64] }* %_locRef5147, i64 %_locRef5148)
  store i64 %_callUID5149, i64* %_localId5150
  %_locRef5152 = load i64, i64* %_localId5150
  %_locRef5153 = load i64, i64* %_localId5145
  %_bop5154 = sub i64 %_locRef5152, %_locRef5153
  %_bop5155 = add i64 %_bop5154, 1
  %_raw_array5156 = call i64* @oat_alloc_array(i64 %_bop5155)
  %_array5157 = bitcast i64* %_raw_array5156 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5157, { i64, [0 x i64] }** %_localId5158
  store i64 0, i64* %_localId5160
  %_locRef5162 = load i64, i64* %_localId5160
  %_locRef5163 = load i64, i64* %_args5139
  %_bop5164 = icmp slt i64 %_locRef5162, %_locRef5163
  br i1 %_bop5164, label %_while_body_jmp5166, label %_while_end_jmp5165
_while_body_jmp5166:
  %_locRef5167 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5158
  %_locRef5168 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5138
  %_locRef5169 = load i64, i64* %_localId5160
  %_idxUID5170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5168, i32 0, i32 1, i64 %_locRef5169
  %_getArrUID5171 = load i64, i64* %_idxUID5170
  %_locRef5172 = load i64, i64* %_localId5145
  %_bop5173 = sub i64 %_getArrUID5171, %_locRef5172
  %_locRef5174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5158
  %_locRef5175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5138
  %_locRef5176 = load i64, i64* %_localId5160
  %_idxUID5177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5175, i32 0, i32 1, i64 %_locRef5176
  %_getArrUID5178 = load i64, i64* %_idxUID5177
  %_locRef5179 = load i64, i64* %_localId5145
  %_bop5180 = sub i64 %_getArrUID5178, %_locRef5179
  %_idxUID5181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5174, i32 0, i32 1, i64 %_bop5180
  %_getArrUID5182 = load i64, i64* %_idxUID5181
  %_bop5183 = add i64 %_getArrUID5182, 1
  %_arridx5184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5167, i32 0, i32 1, i64 %_bop5173
  store i64 %_bop5183, i64* %_arridx5184
  %_locRef5186 = load i64, i64* %_localId5160
  %_bop5187 = add i64 %_locRef5186, 1
  store i64 %_bop5187, i64* %_localId5160
  %_locRef5189 = load i64, i64* %_localId5160
  %_locRef5190 = load i64, i64* %_args5139
  %_bop5191 = icmp slt i64 %_locRef5189, %_locRef5190
  br i1 %_bop5191, label %_while_body_jmp5166, label %_while_end_jmp5165
_while_end_jmp5165:
  %_locRef5192 = load i64, i64* %_localId5145
  store i64 %_locRef5192, i64* %_localId5193
  store i64 0, i64* %_localId5195
  %_locRef5197 = load i64, i64* %_args5139
  %_raw_array5198 = call i64* @oat_alloc_array(i64 %_locRef5197)
  %_array5199 = bitcast i64* %_raw_array5198 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5199, { i64, [0 x i64] }** %_localId5200
  %_locRef5202 = load i64, i64* %_localId5193
  %_locRef5203 = load i64, i64* %_localId5150
  %_bop5204 = icmp sle i64 %_locRef5202, %_locRef5203
  br i1 %_bop5204, label %_while_body_jmp5206, label %_while_end_jmp5205
_while_body_jmp5206:
  %_locRef5210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5158
  %_locRef5211 = load i64, i64* %_localId5193
  %_locRef5212 = load i64, i64* %_localId5145
  %_bop5213 = sub i64 %_locRef5211, %_locRef5212
  %_idxUID5214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5210, i32 0, i32 1, i64 %_bop5213
  %_getArrUID5215 = load i64, i64* %_idxUID5214
  %_bop5216 = icmp sgt i64 %_getArrUID5215, 0
  br i1 %_bop5216, label %_ifTruelbl5207, label %_ifFalselbl5208
_ifTruelbl5207:
  %_locRef5217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5200
  %_locRef5218 = load i64, i64* %_localId5195
  %_locRef5219 = load i64, i64* %_localId5193
  %_arridx5220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5217, i32 0, i32 1, i64 %_locRef5218
  store i64 %_locRef5219, i64* %_arridx5220
  %_locRef5222 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5158
  %_locRef5223 = load i64, i64* %_localId5193
  %_locRef5224 = load i64, i64* %_localId5145
  %_bop5225 = sub i64 %_locRef5223, %_locRef5224
  %_locRef5226 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5158
  %_locRef5227 = load i64, i64* %_localId5193
  %_locRef5228 = load i64, i64* %_localId5145
  %_bop5229 = sub i64 %_locRef5227, %_locRef5228
  %_idxUID5230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5226, i32 0, i32 1, i64 %_bop5229
  %_getArrUID5231 = load i64, i64* %_idxUID5230
  %_bop5232 = sub i64 %_getArrUID5231, 1
  %_arridx5233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5222, i32 0, i32 1, i64 %_bop5225
  store i64 %_bop5232, i64* %_arridx5233
  %_locRef5235 = load i64, i64* %_localId5195
  %_bop5236 = add i64 %_locRef5235, 1
  store i64 %_bop5236, i64* %_localId5195
  br label %_ifEndlbl5209
_ifFalselbl5208:
  %_locRef5238 = load i64, i64* %_localId5193
  %_bop5239 = add i64 %_locRef5238, 1
  store i64 %_bop5239, i64* %_localId5193
  br label %_ifEndlbl5209
_ifEndlbl5209:
  %_locRef5241 = load i64, i64* %_localId5193
  %_locRef5242 = load i64, i64* %_localId5150
  %_bop5243 = icmp sle i64 %_locRef5241, %_locRef5242
  br i1 %_bop5243, label %_while_body_jmp5206, label %_while_end_jmp5205
_while_end_jmp5205:
  %_locRef5244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5200
  ret { i64, [0 x i64] }* %_locRef5244
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args5093 = alloca i64
  %_args5094 = alloca { i64, [0 x i8*] }*
  %_localId5119 = alloca { i64, [0 x i64] }*
  %_localId5121 = alloca i64
  %_localId5133 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args5093
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args5094
  %_atomArrUID5098 = alloca { i64, [9 x i64] }
  %_idxUID5117 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 0
  store i64 9, i64* %_idxUID5117
  %_gep5099 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 1, i32 0
  %_gep5100 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 1, i32 1
  %_gep5101 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 1, i32 2
  %_gep5102 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 1, i32 3
  %_gep5103 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 1, i32 4
  %_gep5104 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 1, i32 5
  %_gep5105 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 1, i32 6
  %_gep5106 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 1, i32 7
  %_gep5107 = getelementptr { i64, [9 x i64] }, { i64, [9 x i64] }* %_atomArrUID5098, i32 0, i32 1, i32 8
  store i64 65, i64* %_gep5099
  store i64 70, i64* %_gep5100
  store i64 72, i64* %_gep5101
  store i64 90, i64* %_gep5102
  store i64 65, i64* %_gep5103
  store i64 65, i64* %_gep5104
  store i64 69, i64* %_gep5105
  store i64 89, i64* %_gep5106
  store i64 67, i64* %_gep5107
  %_arrayUID5097 = bitcast { i64, [9 x i64] }* %_atomArrUID5098 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID5097, { i64, [0 x i64] }** %_localId5119
  store i64 9, i64* %_localId5121
  %_locRef5123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5119
  %_callUID5124 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef5123)
  call void @print_string(i8* %_callUID5124)
  %_stringp5126 = load i8*, i8** @_string5127
  call void @print_string(i8* %_stringp5126)
  %_locRef5130 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5119
  %_locRef5131 = load i64, i64* %_localId5121
  %_callUID5132 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_locRef5130, i64 %_locRef5131)
  store { i64, [0 x i64] }* %_callUID5132, { i64, [0 x i64] }** %_localId5133
  %_locRef5135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5133
  %_callUID5136 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef5135)
  call void @print_string(i8* %_callUID5136)
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
