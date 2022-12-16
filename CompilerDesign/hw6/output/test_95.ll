; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2286, { i64, [0 x i8*] }* %_argv2283) {
  %_arr12301 = alloca { i64, [0 x i64] }*
  %_str2305 = alloca i8*
  %_arr22309 = alloca { i64, [0 x i64] }*
  %_s2311 = alloca i64
  %_i2313 = alloca i64
  %_raw_array2289 = call i64* @oat_alloc_array(i64 5)
  %_array2290 = bitcast i64* %_raw_array2289 to { i64, [0 x i64] }*
  %_ind2291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2290, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2291
  %_ind2293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2290, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2293
  %_ind2295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2290, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2295
  %_ind2297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2290, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2297
  %_ind2299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2290, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2299
  store { i64, [0 x i64] }* %_array2290, { i64, [0 x i64] }** %_arr12301
  %_arr12303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12301
  %_result2304 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12303)
  store i8* %_result2304, i8** %_str2305
  %_str2307 = load i8*, i8** %_str2305
  %_result2308 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2307)
  store { i64, [0 x i64] }* %_result2308, { i64, [0 x i64] }** %_arr22309
  store i64 0, i64* %_s2311
  store i64 0, i64* %_i2313
  br label %_cond2319
_body2318:
  %_s2320 = load i64, i64* %_s2311
  %_arr22321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22309
  %_i2322 = load i64, i64* %_i2313
  %_tmp2324 = bitcast { i64, [0 x i64] }* %_arr22321 to i64*
  call void @oat_assert_array_length(i64* %_tmp2324, i64 %_i2322)
  %_index_ptr2325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22321, i32 0, i32 1, i64 %_i2322
  %_index2326 = load i64, i64* %_index_ptr2325
  %_bop2327 = add i64 %_s2320, %_index2326
  store i64 %_bop2327, i64* %_s2311
  %_i2329 = load i64, i64* %_i2313
  %_bop2330 = add i64 %_i2329, 1
  store i64 %_bop2330, i64* %_i2313
  br label %_cond2319
_cond2319:
  %_i2315 = load i64, i64* %_i2313
  %_bop2316 = icmp slt i64 %_i2315, 5
  br i1 %_bop2316, label %_body2318, label %_post2317
_post2317:
  %_s2332 = load i64, i64* %_s2311
  ret i64 %_s2332
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
