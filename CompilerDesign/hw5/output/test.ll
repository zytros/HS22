; generated from: hw5programs/compile_struct_array.oat
target triple = "x86_64-unknown-linux"
%Test = type { { i64, [0 x i64] }*, i64, { i64, [0 x i64] }* }

@arr_x = global { i64, [3 x i64] }* @_global_arr203
@_global_arr203 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 4, i64 5 ] }
@arr_z = global { i64, [3 x i64] }* @_global_arr202
@_global_arr202 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define i64 @program(i64 %_argc172, { i64, [0 x i8*] }* %_argv170) {
  %_argc173 = alloca i64
  %_argv171 = alloca { i64, [0 x i8*] }*
  %_t184 = alloca %Test*
  store i64 %_argc172, i64* %_argc173
  store { i64, [0 x i8*] }* %_argv170, { i64, [0 x i8*] }** %_argv171
  %_atomStrID175 = call i64* @oat_malloc(i64 24)
  %_structID174 = bitcast i64* %_atomStrID175 to %Test*
  %_arr_z181 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @arr_z
  %_SgepId182 = getelementptr %Test, %Test* %_structID174, i32 0, i32 2
  store { i64, [3 x i64] }* %_arr_z181, { i64, [3 x i64] }** %_SgepId182
  %_SgepId179 = getelementptr %Test, %Test* %_structID174, i32 0, i32 1
  store i64 3, i64* %_SgepId179
  %_arr_x176 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @arr_x
  %_SgepId177 = getelementptr %Test, %Test* %_structID174, i32 0, i32 0
  store { i64, [3 x i64] }* %_arr_x176, { i64, [3 x i64] }** %_SgepId177
  store %Test* %_structID174, %Test** %_t184
  %_t185 = load %Test*, %Test** %_t184
  %_identP186 = getelementptr %Test, %Test* %_t185, i32 0, i32 0
  %_proj187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_identP186
  %_arrPIdent190 = bitcast { i64, [0 x i64] }* %_proj187 to i64*
  call void @oat_assert_array_length(i64* %_arrPIdent190, i64 0)
  %_index_ptr189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_proj187, i32 0, i32 1, i32 0
  %_index192 = load i64, i64* %_index_ptr189
  %_t193 = load %Test*, %Test** %_t184
  %_identP194 = getelementptr %Test, %Test* %_t193, i32 0, i32 2
  %_proj195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_identP194
  %_arrPIdent198 = bitcast { i64, [0 x i64] }* %_proj195 to i64*
  call void @oat_assert_array_length(i64* %_arrPIdent198, i64 1)
  %_index_ptr197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_proj195, i32 0, i32 1, i32 1
  %_index200 = load i64, i64* %_index_ptr197
  %_bop201 = mul i64 %_index192, %_index200
  ret i64 %_bop201
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
