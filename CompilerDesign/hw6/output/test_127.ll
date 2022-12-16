; generated from: hw5programs/compile_return_struct.oat
target triple = "x86_64-unknown-linux"
%Pair = type { i1, i1 }

define %Pair* @create_pair(i1 %_a6806, i1 %_b6803) {
  %_a6807 = alloca i1
  %_b6804 = alloca i1
  store i1 %_a6806, i1* %_a6807
  store i1 %_b6803, i1* %_b6804
  %_raw_struct6809 = call i64* @oat_malloc(i64 16)
  %_struct6810 = bitcast i64* %_raw_struct6809 to %Pair*
  %_a6811 = load i1, i1* %_a6807
  %_ind6812 = getelementptr %Pair, %Pair* %_struct6810, i32 0, i32 0
  store i1 %_a6811, i1* %_ind6812
  %_b6814 = load i1, i1* %_b6804
  %_ind6815 = getelementptr %Pair, %Pair* %_struct6810, i32 0, i32 1
  store i1 %_b6814, i1* %_ind6815
  ret %Pair* %_struct6810
}

define i64 @program(i64 %_argc6787, { i64, [0 x i8*] }* %_argv6784) {
  %_p6791 = alloca %Pair*
  %_result6790 = call %Pair* @create_pair(i1 1, i1 0)
  store %Pair* %_result6790, %Pair** %_p6791
  %_p6793 = load %Pair*, %Pair** %_p6791
  %_index6794 = getelementptr %Pair, %Pair* %_p6793, i32 0, i32 0
  %_proj6795 = load i1, i1* %_index6794
  %_p6796 = load %Pair*, %Pair** %_p6791
  %_index6797 = getelementptr %Pair, %Pair* %_p6796, i32 0, i32 1
  %_proj6798 = load i1, i1* %_index6797
  %_bop6799 = and i1 %_proj6795, %_proj6798
  br i1 %_bop6799, label %_then6802, label %_else6801
_else6801:
  ret i64 0
_merge6800:
  ret i64 0
_then6802:
  ret i64 1
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
