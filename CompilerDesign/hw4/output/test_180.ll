; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_locRef3118 = load i64, i64* @a
  %_bop3119 = add i64 %_locRef3118, 1
  store i64 %_bop3119, i64* @a
  %_locRef3121 = load i64, i64* @a
  ret i64 %_locRef3121
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3094 = alloca i64
  %_args3095 = alloca { i64, [0 x i8*] }*
  %_localId3101 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args3094
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3095
  %_callUID3098 = call i64 @f()
  %_raw_array3099 = call i64* @oat_alloc_array(i64 %_callUID3098)
  %_array3100 = bitcast i64* %_raw_array3099 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3100, { i64, [0 x i64] }** %_localId3101
  %_locRef3103 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3101
  %_arridx3104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3103, i32 0, i32 1, i32 0
  store i64 0, i64* %_arridx3104
  %_locRef3106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3101
  %_arridx3107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3106, i32 0, i32 1, i32 1
  store i64 1, i64* %_arridx3107
  %_locRef3109 = load i64, i64* @a
  %_locRef3110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3101
  %_idxUID3111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3110, i32 0, i32 1, i32 0
  %_getArrUID3112 = load i64, i64* %_idxUID3111
  %_bop3113 = add i64 %_locRef3109, %_getArrUID3112
  %_locRef3114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3101
  %_idxUID3115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3114, i32 0, i32 1, i32 1
  %_getArrUID3116 = load i64, i64* %_idxUID3115
  %_bop3117 = add i64 %_bop3113, %_getArrUID3116
  ret i64 %_bop3117
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
