; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_stringd3202 to i8*)
@_stringd3202 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3171 = alloca i64
  %_args3172 = alloca { i64, [0 x i8*] }*
  %_localId3177 = alloca { i64, [0 x i64] }*
  %_localId3179 = alloca i64
  %_localId3181 = alloca i64
  store i64 %argc, i64* %_args3171
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3172
  %_locRef3175 = load i8*, i8** @str
  %_callUID3176 = call { i64, [0 x i64] }* @array_of_string(i8* %_locRef3175)
  store { i64, [0 x i64] }* %_callUID3176, { i64, [0 x i64] }** %_localId3177
  store i64 0, i64* %_localId3179
  store i64 0, i64* %_localId3181
  %_locRef3183 = load i64, i64* %_localId3181
  %_bop3184 = icmp slt i64 %_locRef3183, 5
  br i1 %_bop3184, label %_while_body_jmp3186, label %_while_end_jmp3185
_while_body_jmp3186:
  %_locRef3187 = load i64, i64* %_localId3179
  %_locRef3188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3177
  %_locRef3189 = load i64, i64* %_localId3181
  %_idxUID3190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3188, i32 0, i32 1, i64 %_locRef3189
  %_getArrUID3191 = load i64, i64* %_idxUID3190
  %_bop3192 = add i64 %_locRef3187, %_getArrUID3191
  store i64 %_bop3192, i64* %_localId3179
  %_locRef3194 = load i64, i64* %_localId3181
  %_bop3195 = add i64 %_locRef3194, 1
  store i64 %_bop3195, i64* %_localId3181
  %_locRef3197 = load i64, i64* %_localId3181
  %_bop3198 = icmp slt i64 %_locRef3197, 5
  br i1 %_bop3198, label %_while_body_jmp3186, label %_while_end_jmp3185
_while_end_jmp3185:
  %_locRef3199 = load i64, i64* %_localId3179
  call void @print_int(i64 %_locRef3199)
  %_locRef3201 = load i64, i64* %_localId3179
  ret i64 %_locRef3201
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
