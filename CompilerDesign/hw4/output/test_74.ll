; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_locRef3148 = load i64, i64* @a
  %_bop3149 = add i64 %_locRef3148, 1
  store i64 %_bop3149, i64* @a
  %_locRef3151 = load i64, i64* @a
  ret i64 %_locRef3151
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args3122 = alloca i64
  %_args3123 = alloca { i64, [0 x i8*] }*
  %_localId3129 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args3122
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args3123
  %_callUID3126 = call i64 @f()
  %_raw_array3127 = call i64* @oat_alloc_array(i64 %_callUID3126)
  %_array3128 = bitcast i64* %_raw_array3127 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3128, { i64, [0 x i64] }** %_localId3129
  %_locRef3131 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3129
  %_callUID3132 = call i64 @f()
  %_arridx3133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3131, i32 0, i32 1, i32 0
  store i64 %_callUID3132, i64* %_arridx3133
  %_locRef3135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3129
  %_callUID3136 = call i64 @f()
  %_arridx3137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3135, i32 0, i32 1, i32 1
  store i64 %_callUID3136, i64* %_arridx3137
  %_locRef3139 = load i64, i64* @a
  %_locRef3140 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3129
  %_idxUID3141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3140, i32 0, i32 1, i32 0
  %_getArrUID3142 = load i64, i64* %_idxUID3141
  %_bop3143 = add i64 %_locRef3139, %_getArrUID3142
  %_locRef3144 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId3129
  %_idxUID3145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef3144, i32 0, i32 1, i32 1
  %_getArrUID3146 = load i64, i64* %_idxUID3145
  %_bop3147 = add i64 %_bop3143, %_getArrUID3146
  ret i64 %_bop3147
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
