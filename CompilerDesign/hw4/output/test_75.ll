; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3152 = alloca i64
  %_args3153 = alloca { i64, [0 x i8*] }*
  %_localId3167 = alloca i8*
  store i64 %argc, i64* %_args3152
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3153
  %_atomArrUID3157 = alloca { i64, [3 x i64] }
  %_idxUID3164 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID3157, i32 0, i32 0
  store i64 3, i64* %_idxUID3164
  %_gep3158 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID3157, i32 0, i32 1, i32 0
  %_gep3159 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID3157, i32 0, i32 1, i32 1
  %_gep3160 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID3157, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep3158
  store i64 110, i64* %_gep3159
  store i64 110, i64* %_gep3160
  %_arrayUID3156 = bitcast { i64, [3 x i64] }* %_atomArrUID3157 to { i64, [0 x i64] }*
  %_callUID3166 = call i8* @string_of_array({ i64, [0 x i64] }* %_arrayUID3156)
  store i8* %_callUID3166, i8** %_localId3167
  %_locRef3169 = load i8*, i8** %_localId3167
  call void @print_string(i8* %_locRef3169)
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
