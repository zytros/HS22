; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %_a6222, i64 %_b6219) {
  %_a6223 = alloca i64
  %_b6220 = alloca i64
  %_t6231 = alloca i64
  store i64 %_a6222, i64* %_a6223
  store i64 %_b6219, i64* %_b6220
  br label %_cond6229
_body6228:
  %_b6230 = load i64, i64* %_b6220
  store i64 %_b6230, i64* %_t6231
  %_b6233 = load i64, i64* %_b6220
  %_a6234 = load i64, i64* %_a6223
  %_result6235 = call i64 @mod(i64 %_a6234, i64 %_b6233)
  store i64 %_result6235, i64* %_b6220
  %_t6237 = load i64, i64* %_t6231
  store i64 %_t6237, i64* %_a6223
  br label %_cond6229
_cond6229:
  %_b6225 = load i64, i64* %_b6220
  %_bop6226 = icmp ne i64 %_b6225, 0
  br i1 %_bop6226, label %_body6228, label %_post6227
_post6227:
  %_a6239 = load i64, i64* %_a6223
  ret i64 %_a6239
}

define i64 @mod(i64 %_a6201, i64 %_b6198) {
  %_a6202 = alloca i64
  %_b6199 = alloca i64
  %_t6205 = alloca i64
  store i64 %_a6201, i64* %_a6202
  store i64 %_b6198, i64* %_b6199
  %_a6204 = load i64, i64* %_a6202
  store i64 %_a6204, i64* %_t6205
  br label %_cond6213
_body6212:
  %_t6214 = load i64, i64* %_t6205
  %_b6215 = load i64, i64* %_b6199
  %_bop6216 = sub i64 %_t6214, %_b6215
  store i64 %_bop6216, i64* %_t6205
  br label %_cond6213
_cond6213:
  %_t6207 = load i64, i64* %_t6205
  %_b6208 = load i64, i64* %_b6199
  %_bop6209 = sub i64 %_t6207, %_b6208
  %_bop6210 = icmp sge i64 %_bop6209, 0
  br i1 %_bop6210, label %_body6212, label %_post6211
_post6211:
  %_t6218 = load i64, i64* %_t6205
  ret i64 %_t6218
}

define i64 @program(i64 %_argc6188, { i64, [0 x i8*] }* %_argv6185) {
  %_a6191 = alloca i64
  %_b6193 = alloca i64
  store i64 64, i64* %_a6191
  store i64 48, i64* %_b6193
  %_b6195 = load i64, i64* %_b6193
  %_a6196 = load i64, i64* %_a6191
  %_result6197 = call i64 @gcd(i64 %_a6196, i64 %_b6195)
  ret i64 %_result6197
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
