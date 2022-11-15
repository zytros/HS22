; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3237 = alloca i64
  %_args3238 = alloca { i64, [0 x i8*] }*
  %_localId3255 = alloca { i64, [0 x i64] }*
  %_localId3259 = alloca i8*
  %_localId3263 = alloca { i64, [0 x i64] }*
  %_localId3265 = alloca i64
  %_localId3267 = alloca i64
  store i64 %argc, i64* %_args3237
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3238
  %_atomArrUID3242 = alloca { i64, [5 x i64] }
  %_idxUID3253 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3242, i32 0, i32 0
  store i64 5, i64* %_idxUID3253
  %_gep3243 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3242, i32 0, i32 1, i32 0
  %_gep3244 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3242, i32 0, i32 1, i32 1
  %_gep3245 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3242, i32 0, i32 1, i32 2
  %_gep3246 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3242, i32 0, i32 1, i32 3
  %_gep3247 = getelementptr { i64, [5 x i64] }, { i64, [5 x i64] }* %_atomArrUID3242, i32 0, i32 1, i32 4
  store i64 111, i64* %_gep3243
  store i64 112, i64* %_gep3244
  store i64 113, i64* %_gep3245
  store i64 114, i64* %_gep3246
  store i64 115, i64* %_gep3247
  %_arrayUID3241 = bitcast { i64, [5 x i64] }* %_atomArrUID3242 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID3241, { i64, [0 x i64] }** %_localId3255
  %_locRef3257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3255
  %_callUID3258 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef3257)
  store i8* %_callUID3258, i8** %_localId3259
  %_locRef3261 = load i8*, i8** %_localId3259
  %_callUID3262 = call { i64, [0 x i64] }* @array_of_string(i8* %_locRef3261)
  store { i64, [0 x i64] }* %_callUID3262, { i64, [0 x i64] }** %_localId3263
  store i64 0, i64* %_localId3265
  store i64 0, i64* %_localId3267
  %_locRef3269 = load i64, i64* %_localId3267
  %_bop3270 = icmp slt i64 %_locRef3269, 5
  br i1 %_bop3270, label %_while_body_jmp3272, label %_while_end_jmp3271
_while_body_jmp3272:
  %_locRef3273 = load i64, i64* %_localId3265
  %_locRef3274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3263
  %_locRef3275 = load i64, i64* %_localId3267
  %_idxUID3276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3274, i32 0, i32 1, i64 %_locRef3275
  %_getArrUID3277 = load i64, i64* %_idxUID3276
  %_bop3278 = add i64 %_locRef3273, %_getArrUID3277
  store i64 %_bop3278, i64* %_localId3265
  %_locRef3280 = load i64, i64* %_localId3267
  %_bop3281 = add i64 %_locRef3280, 1
  store i64 %_bop3281, i64* %_localId3267
  %_locRef3283 = load i64, i64* %_localId3267
  %_bop3284 = icmp slt i64 %_locRef3283, 5
  br i1 %_bop3284, label %_while_body_jmp3272, label %_while_end_jmp3271
_while_end_jmp3271:
  %_locRef3285 = load i64, i64* %_localId3265
  call void @print_int(i64 %_locRef3285)
  %_locRef3287 = load i64, i64* %_localId3265
  ret i64 %_locRef3287
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
