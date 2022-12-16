; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc51, { i64, [0 x i8*] }* %_argv48) {
  %_x64 = alloca { i64, [0 x i64] }*
  %_ans66 = alloca i64
  %_i68 = alloca i64
  %_raw_array54 = call i64* @oat_alloc_array(i64 4)
  %_array55 = bitcast i64* %_raw_array54 to { i64, [0 x i64] }*
  %_ind56 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array55, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind56
  %_ind58 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array55, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind58
  %_ind60 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array55, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind60
  %_ind62 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array55, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind62
  store { i64, [0 x i64] }* %_array55, { i64, [0 x i64] }** %_x64
  store i64 0, i64* %_ans66
  store i64 0, i64* %_i68
  br label %_cond74
_body73:
  %_x75 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x64
  %_i76 = load i64, i64* %_i68
  %_tmp78 = bitcast { i64, [0 x i64] }* %_x75 to i64*
  call void @oat_assert_array_length(i64* %_tmp78, i64 %_i76)
  %_index_ptr79 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x75, i32 0, i32 1, i64 %_i76
  %_index80 = load i64, i64* %_index_ptr79
  %_x81 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x64
  %_i82 = load i64, i64* %_i68
  %_tmp84 = bitcast { i64, [0 x i64] }* %_x81 to i64*
  call void @oat_assert_array_length(i64* %_tmp84, i64 %_i82)
  %_index_ptr85 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x81, i32 0, i32 1, i64 %_i82
  %_index86 = load i64, i64* %_index_ptr85
  %_unop87 = xor i64 %_index86, -1
  %_bop88 = mul i64 %_index80, %_unop87
  store i64 %_bop88, i64* %_ans66
  %_i90 = load i64, i64* %_i68
  %_bop91 = add i64 %_i90, 1
  store i64 %_bop91, i64* %_i68
  br label %_cond74
_cond74:
  %_i70 = load i64, i64* %_i68
  %_bop71 = icmp slt i64 %_i70, 4
  br i1 %_bop71, label %_body73, label %_post72
_post72:
  %_ans93 = load i64, i64* %_ans66
  ret i64 %_ans93
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
