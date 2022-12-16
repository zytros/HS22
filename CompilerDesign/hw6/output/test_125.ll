; generated from: hw5programs/compile_global_struct.oat
target triple = "x86_64-unknown-linux"
%Color = type { i64, i64, i64 }

@white = global %Color* @_global_struct6713
@_global_struct6713 = global %Color { i64 255, i64 254, i64 253 }

define i64 @program(i64 %_argc6696, { i64, [0 x i8*] }* %_argv6693) {
  %_raw_struct6699 = call i64* @oat_malloc(i64 24)
  %_struct6700 = bitcast i64* %_raw_struct6699 to %Color*
  %_ind6701 = getelementptr %Color, %Color* %_struct6700, i32 0, i32 0
  store i64 3, i64* %_ind6701
  %_ind6703 = getelementptr %Color, %Color* %_struct6700, i32 0, i32 1
  store i64 5, i64* %_ind6703
  %_ind6705 = getelementptr %Color, %Color* %_struct6700, i32 0, i32 2
  store i64 7, i64* %_ind6705
  %_white6709 = load %Color*, %Color** @white
  %_index6710 = getelementptr %Color, %Color* %_white6709, i32 0, i32 2
  %_proj6711 = load i64, i64* %_index6710
  %_bop6712 = add i64 %_proj6711, 1
  ret i64 %_bop6712
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
