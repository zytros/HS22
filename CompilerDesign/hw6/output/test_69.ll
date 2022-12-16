; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc330, { i64, [0 x i8*] }* %_argv327) {
  %_b339 = alloca { i64, [0 x i1] }*
  %_i341 = alloca i64
  %_raw_array333 = call i64* @oat_alloc_array(i64 2)
  %_array334 = bitcast i64* %_raw_array333 to { i64, [0 x i1] }*
  %_ind335 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array334, i32 0, i32 1, i32 0
  store i1 1, i1* %_ind335
  %_ind337 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array334, i32 0, i32 1, i32 1
  store i1 0, i1* %_ind337
  store { i64, [0 x i1] }* %_array334, { i64, [0 x i1] }** %_b339
  store i64 0, i64* %_i341
  %_b343 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b339
  %_tmp345 = bitcast { i64, [0 x i1] }* %_b343 to i64*
  call void @oat_assert_array_length(i64* %_tmp345, i64 0)
  %_index_ptr346 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b343, i32 0, i32 1, i32 0
  %_index347 = load i1, i1* %_index_ptr346
  br i1 %_index347, label %_then351, label %_else350
_else350:
  br label %_merge349
_merge349:
  %_i352 = load i64, i64* %_i341
  ret i64 %_i352
_then351:
  store i64 1, i64* %_i341
  br label %_merge349
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
