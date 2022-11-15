; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1236 = alloca i64
  %_args1237 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args1236
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1237
  %_atomArrUID1241 = alloca { i64, [2 x i64] }
  %_idxUID1246 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1241, i32 0, i32 0
  store i64 2, i64* %_idxUID1246
  %_gep1242 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1241, i32 0, i32 1, i32 0
  %_gep1243 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1241, i32 0, i32 1, i32 1
  store i64 17, i64* %_gep1242
  store i64 42, i64* %_gep1243
  %_arrayUID1240 = bitcast { i64, [2 x i64] }* %_atomArrUID1241 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID1240, { i64, [0 x i64] }** @arr
  %_locRef1249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_idxUID1250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1249, i32 0, i32 1, i32 1
  %_getArrUID1251 = load i64, i64* %_idxUID1250
  ret i64 %_getArrUID1251
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
