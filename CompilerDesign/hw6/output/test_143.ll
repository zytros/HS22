; generated from: hw5programs/initarr1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc7298, { i64, [0 x i8*] }* %_argv7295) {
  %_i7305 = alloca i64
  %_x7326 = alloca { i64, [0 x i64] }*
  %_raw_array7303 = call i64* @oat_alloc_array(i64 3)
  %_array7304 = bitcast i64* %_raw_array7303 to { i64, [0 x i64] }*
  %_bnd_7302 = alloca i64
  store i64 3, i64* %_bnd_7302
  %_ptr_7301 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7304, { i64, [0 x i64] }** %_ptr_7301
  store i64 0, i64* %_i7305
  br label %_cond7312
_body7311:
  %__ptr_73017313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7301
  %_i7314 = load i64, i64* %_i7305
  %_tmp7316 = bitcast { i64, [0 x i64] }* %__ptr_73017313 to i64*
  call void @oat_assert_array_length(i64* %_tmp7316, i64 %_i7314)
  %_index_ptr7317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_73017313, i32 0, i32 1, i64 %_i7314
  %_i7318 = load i64, i64* %_i7305
  %_bop7319 = add i64 %_i7318, 1
  store i64 %_bop7319, i64* %_index_ptr7317
  %_i7321 = load i64, i64* %_i7305
  %_bop7322 = add i64 %_i7321, 1
  store i64 %_bop7322, i64* %_i7305
  br label %_cond7312
_cond7312:
  %_i7307 = load i64, i64* %_i7305
  %__bnd_73027308 = load i64, i64* %_bnd_7302
  %_bop7309 = icmp slt i64 %_i7307, %__bnd_73027308
  br i1 %_bop7309, label %_body7311, label %_post7310
_post7310:
  store { i64, [0 x i64] }* %_array7304, { i64, [0 x i64] }** %_x7326
  %_x7328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7326
  %_tmp7330 = bitcast { i64, [0 x i64] }* %_x7328 to i64*
  call void @oat_assert_array_length(i64* %_tmp7330, i64 0)
  %_index_ptr7331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7328, i32 0, i32 1, i32 0
  %_index7332 = load i64, i64* %_index_ptr7331
  ret i64 %_index7332
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
