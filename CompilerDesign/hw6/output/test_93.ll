; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str_arr2201 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2198, { i64, [0 x i8*] }* %_argv2195) {
  %_str2203 = alloca i8*
  %_arr2207 = alloca { i64, [0 x i64] }*
  %_s2209 = alloca i64
  %_i2211 = alloca i64
  %_str2202 = getelementptr [6 x i8], [6 x i8]* @_str_arr2201, i32 0, i32 0
  store i8* %_str2202, i8** %_str2203
  %_str2205 = load i8*, i8** %_str2203
  %_result2206 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2205)
  store { i64, [0 x i64] }* %_result2206, { i64, [0 x i64] }** %_arr2207
  store i64 0, i64* %_s2209
  store i64 0, i64* %_i2211
  br label %_cond2217
_body2216:
  %_s2218 = load i64, i64* %_s2209
  %_arr2219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2207
  %_i2220 = load i64, i64* %_i2211
  %_tmp2222 = bitcast { i64, [0 x i64] }* %_arr2219 to i64*
  call void @oat_assert_array_length(i64* %_tmp2222, i64 %_i2220)
  %_index_ptr2223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2219, i32 0, i32 1, i64 %_i2220
  %_index2224 = load i64, i64* %_index_ptr2223
  %_bop2225 = add i64 %_s2218, %_index2224
  store i64 %_bop2225, i64* %_s2209
  %_i2227 = load i64, i64* %_i2211
  %_bop2228 = add i64 %_i2227, 1
  store i64 %_bop2228, i64* %_i2211
  br label %_cond2217
_cond2217:
  %_i2213 = load i64, i64* %_i2211
  %_bop2214 = icmp slt i64 %_i2213, 5
  br i1 %_bop2214, label %_body2216, label %_post2215
_post2215:
  %_s2230 = load i64, i64* %_s2209
  ret i64 %_s2230
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
