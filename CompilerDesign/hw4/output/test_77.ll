; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_stringd3209 = global [6 x i8] c"hello\00"
@_string3208 = global i8* bitcast ([6 x i8]* @_stringd3209 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3203 = alloca i64
  %_args3204 = alloca { i64, [0 x i8*] }*
  %_localId3210 = alloca i8*
  %_localId3214 = alloca { i64, [0 x i64] }*
  %_localId3216 = alloca i64
  %_localId3218 = alloca i64
  store i64 %argc, i64* %_args3203
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3204
  %_stringp3207 = load i8*, i8** @_string3208
  store i8* %_stringp3207, i8** %_localId3210
  %_locRef3212 = load i8*, i8** %_localId3210
  %_callUID3213 = call { i64, [0 x i64] }* @array_of_string(i8* %_locRef3212)
  store { i64, [0 x i64] }* %_callUID3213, { i64, [0 x i64] }** %_localId3214
  store i64 0, i64* %_localId3216
  store i64 0, i64* %_localId3218
  %_locRef3220 = load i64, i64* %_localId3218
  %_bop3221 = icmp slt i64 %_locRef3220, 5
  br i1 %_bop3221, label %_while_body_jmp3223, label %_while_end_jmp3222
_while_body_jmp3223:
  %_locRef3224 = load i64, i64* %_localId3216
  %_locRef3225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3214
  %_locRef3226 = load i64, i64* %_localId3218
  %_idxUID3227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3225, i32 0, i32 1, i64 %_locRef3226
  %_getArrUID3228 = load i64, i64* %_idxUID3227
  %_bop3229 = add i64 %_locRef3224, %_getArrUID3228
  store i64 %_bop3229, i64* %_localId3216
  %_locRef3231 = load i64, i64* %_localId3218
  %_bop3232 = add i64 %_locRef3231, 1
  store i64 %_bop3232, i64* %_localId3218
  %_locRef3234 = load i64, i64* %_localId3218
  %_bop3235 = icmp slt i64 %_locRef3234, 5
  br i1 %_bop3235, label %_while_body_jmp3223, label %_while_end_jmp3222
_while_end_jmp3222:
  %_locRef3236 = load i64, i64* %_localId3216
  ret i64 %_locRef3236
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
