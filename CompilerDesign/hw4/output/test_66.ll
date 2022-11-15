; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_stringd2183 = global [4 x i8] c"abc\00"
@_string2182 = global i8* bitcast ([4 x i8]* @_stringd2183 to i8*)
@_stringd2186 = global [4 x i8] c"def\00"
@_string2185 = global i8* bitcast ([4 x i8]* @_stringd2186 to i8*)
@_stringd2197 = global [4 x i8] c"789\00"
@_string2196 = global i8* bitcast ([4 x i8]* @_stringd2197 to i8*)
@_stringd2200 = global [4 x i8] c"123\00"
@_string2199 = global i8* bitcast ([4 x i8]* @_stringd2200 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args2177 = alloca i64
  %_args2178 = alloca { i64, [0 x i8*] }*
  %_localId2217 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_args2177
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args2178
  %_stringp2181 = load i8*, i8** @_string2182
  %_stringp2184 = load i8*, i8** @_string2185
  %_atomArrUID2188 = alloca { i64, [2 x i8*] }
  %_idxUID2193 = getelementptr { i64, [2 x i8*] }, { i64, [2 x i8*] }* %_atomArrUID2188, i32 0, i32 0
  store i64 2, i64* %_idxUID2193
  %_gep2189 = getelementptr { i64, [2 x i8*] }, { i64, [2 x i8*] }* %_atomArrUID2188, i32 0, i32 1, i32 0
  %_gep2190 = getelementptr { i64, [2 x i8*] }, { i64, [2 x i8*] }* %_atomArrUID2188, i32 0, i32 1, i32 1
  store i8* %_stringp2181, i8** %_gep2189
  store i8* %_stringp2184, i8** %_gep2190
  %_arrayUID2187 = bitcast { i64, [2 x i8*] }* %_atomArrUID2188 to { i64, [0 x i8*] }*
  %_stringp2195 = load i8*, i8** @_string2196
  %_stringp2198 = load i8*, i8** @_string2199
  %_atomArrUID2202 = alloca { i64, [2 x i8*] }
  %_idxUID2207 = getelementptr { i64, [2 x i8*] }, { i64, [2 x i8*] }* %_atomArrUID2202, i32 0, i32 0
  store i64 2, i64* %_idxUID2207
  %_gep2203 = getelementptr { i64, [2 x i8*] }, { i64, [2 x i8*] }* %_atomArrUID2202, i32 0, i32 1, i32 0
  %_gep2204 = getelementptr { i64, [2 x i8*] }, { i64, [2 x i8*] }* %_atomArrUID2202, i32 0, i32 1, i32 1
  store i8* %_stringp2195, i8** %_gep2203
  store i8* %_stringp2198, i8** %_gep2204
  %_arrayUID2201 = bitcast { i64, [2 x i8*] }* %_atomArrUID2202 to { i64, [0 x i8*] }*
  %_atomArrUID2210 = alloca { i64, [2 x { i64, [0 x i8*] }*] }
  %_idxUID2215 = getelementptr { i64, [2 x { i64, [0 x i8*] }*] }, { i64, [2 x { i64, [0 x i8*] }*] }* %_atomArrUID2210, i32 0, i32 0
  store i64 2, i64* %_idxUID2215
  %_gep2211 = getelementptr { i64, [2 x { i64, [0 x i8*] }*] }, { i64, [2 x { i64, [0 x i8*] }*] }* %_atomArrUID2210, i32 0, i32 1, i32 0
  %_gep2212 = getelementptr { i64, [2 x { i64, [0 x i8*] }*] }, { i64, [2 x { i64, [0 x i8*] }*] }* %_atomArrUID2210, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_arrayUID2187, { i64, [0 x i8*] }** %_gep2211
  store { i64, [0 x i8*] }* %_arrayUID2201, { i64, [0 x i8*] }** %_gep2212
  %_arrayUID2209 = bitcast { i64, [2 x { i64, [0 x i8*] }*] }* %_atomArrUID2210 to { i64, [0 x { i64, [0 x i8*] }*] }*
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_arrayUID2209, { i64, [0 x { i64, [0 x i8*] }*] }** %_localId2217
  %_locRef2219 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_localId2217
  %_idxUID2220 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_locRef2219, i32 0, i32 1, i32 1
  %_getArrUID2221 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_idxUID2220
  %_idxUID2222 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_getArrUID2221, i32 0, i32 1, i32 1
  %_getArrUID2223 = load i8*, i8** %_idxUID2222
  call void @print_string(i8* %_getArrUID2223)
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
