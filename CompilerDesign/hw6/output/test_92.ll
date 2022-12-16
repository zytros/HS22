; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_str2194 to i8*)
@_str2194 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2163, { i64, [0 x i8*] }* %_argv2160) {
  %_arr2168 = alloca { i64, [0 x i64] }*
  %_s2170 = alloca i64
  %_i2172 = alloca i64
  %_str2166 = load i8*, i8** @str
  %_result2167 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2166)
  store { i64, [0 x i64] }* %_result2167, { i64, [0 x i64] }** %_arr2168
  store i64 0, i64* %_s2170
  store i64 0, i64* %_i2172
  br label %_cond2178
_body2177:
  %_s2179 = load i64, i64* %_s2170
  %_arr2180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2168
  %_i2181 = load i64, i64* %_i2172
  %_tmp2183 = bitcast { i64, [0 x i64] }* %_arr2180 to i64*
  call void @oat_assert_array_length(i64* %_tmp2183, i64 %_i2181)
  %_index_ptr2184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2180, i32 0, i32 1, i64 %_i2181
  %_index2185 = load i64, i64* %_index_ptr2184
  %_bop2186 = add i64 %_s2179, %_index2185
  store i64 %_bop2186, i64* %_s2170
  %_i2188 = load i64, i64* %_i2172
  %_bop2189 = add i64 %_i2188, 1
  store i64 %_bop2189, i64* %_i2172
  br label %_cond2178
_cond2178:
  %_i2174 = load i64, i64* %_i2172
  %_bop2175 = icmp slt i64 %_i2174, 5
  br i1 %_bop2175, label %_body2177, label %_post2176
_post2176:
  %_s2191 = load i64, i64* %_s2170
  call void @print_int(i64 %_s2191)
  %_s2193 = load i64, i64* %_s2170
  ret i64 %_s2193
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
