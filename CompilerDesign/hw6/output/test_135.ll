; generated from: hw5programs/compile_scall_fptr.oat
target triple = "x86_64-unknown-linux"
define void @inc_first({ i64, [0 x i64] }* %_x7075) {
  %_x7076 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x7075, { i64, [0 x i64] }** %_x7076
  %_x7078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7076
  %_tmp7080 = bitcast { i64, [0 x i64] }* %_x7078 to i64*
  call void @oat_assert_array_length(i64* %_tmp7080, i64 0)
  %_index_ptr7081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7078, i32 0, i32 1, i32 0
  %_x7082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7076
  %_tmp7084 = bitcast { i64, [0 x i64] }* %_x7082 to i64*
  call void @oat_assert_array_length(i64* %_tmp7084, i64 0)
  %_index_ptr7085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7082, i32 0, i32 1, i32 0
  %_index7086 = load i64, i64* %_index_ptr7085
  %_bop7087 = add i64 %_index7086, 1
  store i64 %_bop7087, i64* %_index_ptr7081
  ret void
}

define i64 @program(i64 %_argc7055, { i64, [0 x i8*] }* %_argv7052) {
  %_x7066 = alloca { i64, [0 x i64] }*
  %_raw_array7058 = call i64* @oat_alloc_array(i64 3)
  %_array7059 = bitcast i64* %_raw_array7058 to { i64, [0 x i64] }*
  %_ind7060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7059, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind7060
  %_ind7062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7059, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind7062
  %_ind7064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7059, i32 0, i32 1, i32 2
  store i64 5, i64* %_ind7064
  store { i64, [0 x i64] }* %_array7059, { i64, [0 x i64] }** %_x7066
  %_x7068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7066
  call void @inc_first({ i64, [0 x i64] }* %_x7068)
  %_x7070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7066
  %_tmp7072 = bitcast { i64, [0 x i64] }* %_x7070 to i64*
  call void @oat_assert_array_length(i64* %_tmp7072, i64 0)
  %_index_ptr7073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7070, i32 0, i32 1, i32 0
  %_index7074 = load i64, i64* %_index_ptr7073
  ret i64 %_index7074
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
