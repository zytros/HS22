; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_atomArrUID290 to { i64, [0 x i64] }*)
@_atomArrUID290 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args274 = alloca i64
  %_args275 = alloca { i64, [0 x i8*] }*
  %_localId280 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args274
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args275
  %_raw_array278 = call i64* @oat_alloc_array(i64 3)
  %_array279 = bitcast i64* %_raw_array278 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array279, { i64, [0 x i64] }** %_localId280
  %_locRef282 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId280
  store { i64, [0 x i64] }* %_locRef282, { i64, [0 x i64] }** @arr
  %_locRef284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId280
  %_arridx285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef284, i32 0, i32 1, i32 2
  store i64 3, i64* %_arridx285
  %_locRef287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_idxUID288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef287, i32 0, i32 1, i32 2
  %_getArrUID289 = load i64, i64* %_idxUID288
  ret i64 %_getArrUID289
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
