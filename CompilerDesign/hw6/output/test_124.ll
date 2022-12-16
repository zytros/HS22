; generated from: hw5programs/compile_basic_struct.oat
target triple = "x86_64-unknown-linux"
%Color = type { i64, i64, i64 }

define i64 @program(i64 %_argc6673, { i64, [0 x i8*] }* %_argv6670) {
  %_garr6684 = alloca %Color*
  %_raw_struct6676 = call i64* @oat_malloc(i64 24)
  %_struct6677 = bitcast i64* %_raw_struct6676 to %Color*
  %_ind6678 = getelementptr %Color, %Color* %_struct6677, i32 0, i32 0
  store i64 3, i64* %_ind6678
  %_ind6680 = getelementptr %Color, %Color* %_struct6677, i32 0, i32 1
  store i64 4, i64* %_ind6680
  %_ind6682 = getelementptr %Color, %Color* %_struct6677, i32 0, i32 2
  store i64 5, i64* %_ind6682
  store %Color* %_struct6677, %Color** %_garr6684
  %_garr6686 = load %Color*, %Color** %_garr6684
  %_index6687 = getelementptr %Color, %Color* %_garr6686, i32 0, i32 0
  %_proj6688 = load i64, i64* %_index6687
  %_garr6689 = load %Color*, %Color** %_garr6684
  %_index6690 = getelementptr %Color, %Color* %_garr6689, i32 0, i32 1
  %_proj6691 = load i64, i64* %_index6690
  %_bop6692 = add i64 %_proj6688, %_proj6691
  ret i64 %_bop6692
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
