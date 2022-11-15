; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1220 = alloca i64
  %_args1221 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args1220
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1221
  %_atomArrUID1225 = alloca { i64, [2 x i64] }
  %_idxUID1230 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1225, i32 0, i32 0
  store i64 2, i64* %_idxUID1230
  %_gep1226 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1225, i32 0, i32 1, i32 0
  %_gep1227 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1225, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1226
  store i64 2, i64* %_gep1227
  %_arrayUID1224 = bitcast { i64, [2 x i64] }* %_atomArrUID1225 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID1224, { i64, [0 x i64] }** @arr
  %_locRef1233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_idxUID1234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1233, i32 0, i32 1, i32 1
  %_getArrUID1235 = load i64, i64* %_idxUID1234
  ret i64 %_getArrUID1235
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
