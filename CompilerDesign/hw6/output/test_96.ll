; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_str_arr2339 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %_argc2336, { i64, [0 x i8*] }* %_argv2333) {
  %_str2341 = alloca i8*
  %_str2340 = getelementptr [13 x i8], [13 x i8]* @_str_arr2339, i32 0, i32 0
  store i8* %_str2340, i8** %_str2341
  %_str2343 = load i8*, i8** %_str2341
  call void @print_string(i8* %_str2343)
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
