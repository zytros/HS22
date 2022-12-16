; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2234, { i64, [0 x i8*] }* %_argv2231) {
  %_arr12249 = alloca { i64, [0 x i64] }*
  %_str2253 = alloca i8*
  %_arr22257 = alloca { i64, [0 x i64] }*
  %_s2259 = alloca i64
  %_i2261 = alloca i64
  %_raw_array2237 = call i64* @oat_alloc_array(i64 5)
  %_array2238 = bitcast i64* %_raw_array2237 to { i64, [0 x i64] }*
  %_ind2239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2238, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2239
  %_ind2241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2238, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2241
  %_ind2243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2238, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2243
  %_ind2245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2238, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2245
  %_ind2247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2238, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2247
  store { i64, [0 x i64] }* %_array2238, { i64, [0 x i64] }** %_arr12249
  %_arr12251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12249
  %_result2252 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12251)
  store i8* %_result2252, i8** %_str2253
  %_str2255 = load i8*, i8** %_str2253
  %_result2256 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2255)
  store { i64, [0 x i64] }* %_result2256, { i64, [0 x i64] }** %_arr22257
  store i64 0, i64* %_s2259
  store i64 0, i64* %_i2261
  br label %_cond2267
_body2266:
  %_s2268 = load i64, i64* %_s2259
  %_arr22269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22257
  %_i2270 = load i64, i64* %_i2261
  %_tmp2272 = bitcast { i64, [0 x i64] }* %_arr22269 to i64*
  call void @oat_assert_array_length(i64* %_tmp2272, i64 %_i2270)
  %_index_ptr2273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22269, i32 0, i32 1, i64 %_i2270
  %_index2274 = load i64, i64* %_index_ptr2273
  %_bop2275 = add i64 %_s2268, %_index2274
  store i64 %_bop2275, i64* %_s2259
  %_i2277 = load i64, i64* %_i2261
  %_bop2278 = add i64 %_i2277, 1
  store i64 %_bop2278, i64* %_i2261
  br label %_cond2267
_cond2267:
  %_i2263 = load i64, i64* %_i2261
  %_bop2264 = icmp slt i64 %_i2263, 5
  br i1 %_bop2264, label %_body2266, label %_post2265
_post2265:
  %_s2280 = load i64, i64* %_s2259
  call void @print_int(i64 %_s2280)
  %_s2282 = load i64, i64* %_s2259
  ret i64 %_s2282
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
