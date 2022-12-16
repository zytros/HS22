; generated from: hw5programs/ifq1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc7219, { i64, [0 x i8*] }* %_argv7216) {
  %_x7222 = alloca { i64, [0 x i64] }*
  %_i7228 = alloca i64
  %_z7248 = alloca i64
  store { i64, [0 x i64] }* null, { i64, [0 x i64] }** %_x7222
  %_raw_array7226 = call i64* @oat_alloc_array(i64 3)
  %_array7227 = bitcast i64* %_raw_array7226 to { i64, [0 x i64] }*
  %_bnd_7225 = alloca i64
  store i64 3, i64* %_bnd_7225
  %_ptr_7224 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7227, { i64, [0 x i64] }** %_ptr_7224
  store i64 0, i64* %_i7228
  br label %_cond7235
_body7234:
  %__ptr_72247236 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7224
  %_i7237 = load i64, i64* %_i7228
  %_tmp7239 = bitcast { i64, [0 x i64] }* %__ptr_72247236 to i64*
  call void @oat_assert_array_length(i64* %_tmp7239, i64 %_i7237)
  %_index_ptr7240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_72247236, i32 0, i32 1, i64 %_i7237
  store i64 0, i64* %_index_ptr7240
  %_i7242 = load i64, i64* %_i7228
  %_bop7243 = add i64 %_i7242, 1
  store i64 %_bop7243, i64* %_i7228
  br label %_cond7235
_cond7235:
  %_i7230 = load i64, i64* %_i7228
  %__bnd_72257231 = load i64, i64* %_bnd_7225
  %_bop7232 = icmp slt i64 %_i7230, %__bnd_72257231
  br i1 %_bop7232, label %_body7234, label %_post7233
_merge7255:
  %_z7259 = load i64, i64* %_z7248
  ret i64 %_z7259
_notnull7256:
  store i64 4, i64* %_z7248
  br label %_merge7255
_null7257:
  store i64 5, i64* %_z7248
  br label %_merge7255
_post7233:
  store { i64, [0 x i64] }* %_array7227, { i64, [0 x i64] }** %_x7222
  store i64 0, i64* %_z7248
  %_x7250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7222
  %_cast7254 = icmp eq { i64, [0 x i64] }* %_x7250, null
  br i1 %_cast7254, label %_null7257, label %_notnull7256
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
