; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_stringd2159 = global [4 x i8] c"abc\00"
@_string2158 = global i8* bitcast ([4 x i8]* @_stringd2159 to i8*)
@_stringd2162 = global [4 x i8] c"def\00"
@_string2161 = global i8* bitcast ([4 x i8]* @_stringd2162 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args2153 = alloca i64
  %_args2154 = alloca { i64, [0 x i8*] }*
  %_localId2171 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args2153
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args2154
  %_stringp2157 = load i8*, i8** @_string2158
  %_stringp2160 = load i8*, i8** @_string2161
  %_atomArrUID2164 = alloca { i64, [2 x i8*] }
  %_idxUID2169 = getelementptr { i64, [2 x i8*] }, { i64, [2 x i8*] }* %_atomArrUID2164, i32 0, i32 0
  store i64 2, i64* %_idxUID2169
  %_gep2165 = getelementptr { i64, [2 x i8*] }, { i64, [2 x i8*] }* %_atomArrUID2164, i32 0, i32 1, i32 0
  %_gep2166 = getelementptr { i64, [2 x i8*] }, { i64, [2 x i8*] }* %_atomArrUID2164, i32 0, i32 1, i32 1
  store i8* %_stringp2157, i8** %_gep2165
  store i8* %_stringp2160, i8** %_gep2166
  %_arrayUID2163 = bitcast { i64, [2 x i8*] }* %_atomArrUID2164 to { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_arrayUID2163, { i64, [0 x i8*] }** %_localId2171
  %_locRef2173 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_localId2171
  %_idxUID2174 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_locRef2173, i32 0, i32 1, i32 0
  %_getArrUID2175 = load i8*, i8** %_idxUID2174
  call void @print_string(i8* %_getArrUID2175)
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
