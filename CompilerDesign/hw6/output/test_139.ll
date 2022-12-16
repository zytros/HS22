; generated from: hw5programs/compile_global_struct_fptr.oat
target triple = "x86_64-unknown-linux"
%Color = type { i64, i64, i64, %Color* (%Color*)* }

@c = global %Color* @_global_struct7166
@_global_struct7166 = global %Color { i64 10, i64 20, i64 30, %Color* (%Color*)* @rot }

define %Color* @rot(%Color* %_c17167) {
  %_c17168 = alloca %Color*
  %_c27192 = alloca %Color*
  store %Color* %_c17167, %Color** %_c17168
  %_raw_struct7170 = call i64* @oat_malloc(i64 32)
  %_struct7171 = bitcast i64* %_raw_struct7170 to %Color*
  %_c17172 = load %Color*, %Color** %_c17168
  %_index7173 = getelementptr %Color, %Color* %_c17172, i32 0, i32 1
  %_proj7174 = load i64, i64* %_index7173
  %_ind7175 = getelementptr %Color, %Color* %_struct7171, i32 0, i32 0
  store i64 %_proj7174, i64* %_ind7175
  %_c17177 = load %Color*, %Color** %_c17168
  %_index7178 = getelementptr %Color, %Color* %_c17177, i32 0, i32 2
  %_proj7179 = load i64, i64* %_index7178
  %_ind7180 = getelementptr %Color, %Color* %_struct7171, i32 0, i32 1
  store i64 %_proj7179, i64* %_ind7180
  %_c17182 = load %Color*, %Color** %_c17168
  %_index7183 = getelementptr %Color, %Color* %_c17182, i32 0, i32 0
  %_proj7184 = load i64, i64* %_index7183
  %_ind7185 = getelementptr %Color, %Color* %_struct7171, i32 0, i32 2
  store i64 %_proj7184, i64* %_ind7185
  %_c17187 = load %Color*, %Color** %_c17168
  %_index7188 = getelementptr %Color, %Color* %_c17187, i32 0, i32 3
  %_proj7189 = load %Color* (%Color*)*, %Color* (%Color*)** %_index7188
  %_ind7190 = getelementptr %Color, %Color* %_struct7171, i32 0, i32 3
  store %Color* (%Color*)* %_proj7189, %Color* (%Color*)** %_ind7190
  store %Color* %_struct7171, %Color** %_c27192
  %_c27194 = load %Color*, %Color** %_c27192
  ret %Color* %_c27194
}

define i64 @program(i64 %_argc7156, { i64, [0 x i8*] }* %_argv7153) {
  %_c7159 = load %Color*, %Color** @c
  %_index7160 = getelementptr %Color, %Color* %_c7159, i32 0, i32 3
  %_proj7161 = load %Color* (%Color*)*, %Color* (%Color*)** %_index7160
  %_c7162 = load %Color*, %Color** @c
  %_result7163 = call %Color* %_proj7161(%Color* %_c7162)
  %_index7164 = getelementptr %Color, %Color* %_result7163, i32 0, i32 0
  %_proj7165 = load i64, i64* %_index7164
  ret i64 %_proj7165
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
