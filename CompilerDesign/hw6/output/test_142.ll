; generated from: hw5programs/length2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc7263, { i64, [0 x i8*] }* %_argv7260) {
  %_i7270 = alloca i64
  %_x7289 = alloca { i64, [0 x i64] }*
  %_raw_array7268 = call i64* @oat_alloc_array(i64 3)
  %_array7269 = bitcast i64* %_raw_array7268 to { i64, [0 x i64] }*
  %_bnd_7267 = alloca i64
  store i64 3, i64* %_bnd_7267
  %_ptr_7266 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7269, { i64, [0 x i64] }** %_ptr_7266
  store i64 0, i64* %_i7270
  br label %_cond7277
_body7276:
  %__ptr_72667278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7266
  %_i7279 = load i64, i64* %_i7270
  %_tmp7281 = bitcast { i64, [0 x i64] }* %__ptr_72667278 to i64*
  call void @oat_assert_array_length(i64* %_tmp7281, i64 %_i7279)
  %_index_ptr7282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_72667278, i32 0, i32 1, i64 %_i7279
  store i64 0, i64* %_index_ptr7282
  %_i7284 = load i64, i64* %_i7270
  %_bop7285 = add i64 %_i7284, 1
  store i64 %_bop7285, i64* %_i7270
  br label %_cond7277
_cond7277:
  %_i7272 = load i64, i64* %_i7270
  %__bnd_72677273 = load i64, i64* %_bnd_7267
  %_bop7274 = icmp slt i64 %_i7272, %__bnd_72677273
  br i1 %_bop7274, label %_body7276, label %_post7275
_post7275:
  store { i64, [0 x i64] }* %_array7269, { i64, [0 x i64] }** %_x7289
  %_x7291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7289
  %_index_ptr7293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7291, i32 0, i32 0
  %_len7294 = load i64, i64* %_index_ptr7293
  ret i64 %_len7294
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
