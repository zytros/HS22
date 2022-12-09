; generated from: oatprograms/run24.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args2225 = alloca i64
  %_args2226 = alloca { i64, [0 x i8*] }*
  %_localId2233 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args2225
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args2226
  %_atomArrUID2230 = alloca { i64, [0 x i64] }
  %_idxUID2231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_atomArrUID2230, i32 0, i32 0
  store i64 0, i64* %_idxUID2231
  %_arrayUID2229 = bitcast { i64, [0 x i64] }* %_atomArrUID2230 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID2229, { i64, [0 x i64] }** %_localId2233
  ret i64 0
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
