; generated from: hw5programs/compile_builtin_argument.oat
target triple = "x86_64-unknown-linux"
@_str_arr7201 = global [3 x i8] c"ab\00"

define void @run2(void (i8*)* %_f7207, i8* %_arg7204) {
  %_f7208 = alloca void (i8*)*
  %_arg7205 = alloca i8*
  store void (i8*)* %_f7207, void (i8*)** %_f7208
  store i8* %_arg7204, i8** %_arg7205
  %_f7210 = load void (i8*)*, void (i8*)** %_f7208
  %_arg7211 = load i8*, i8** %_arg7205
  call void %_f7210(i8* %_arg7211)
  %_f7213 = load void (i8*)*, void (i8*)** %_f7208
  %_arg7214 = load i8*, i8** %_arg7205
  call void %_f7213(i8* %_arg7214)
  ret void
}

define i64 @program(i64 %_argc7198, { i64, [0 x i8*] }* %_argv7195) {
  %_str7202 = getelementptr [3 x i8], [3 x i8]* @_str_arr7201, i32 0, i32 0
  call void @run2(void (i8*)* @print_string, i8* %_str7202)
  ret i64 0
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
