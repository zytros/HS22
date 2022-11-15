; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args120 = alloca i64
  %_args121 = alloca { i64, [0 x i8*] }*
  %_localId136 = alloca { i64, [0 x i64] }*
  %_localId138 = alloca i64
  %_localId140 = alloca i64
  store i64 %argc, i64* %_args120
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args121
  %_atomArrUID125 = alloca { i64, [4 x i64] }
  %_idxUID134 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID125, i32 0, i32 0
  store i64 4, i64* %_idxUID134
  %_gep126 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID125, i32 0, i32 1, i32 0
  %_gep127 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID125, i32 0, i32 1, i32 1
  %_gep128 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID125, i32 0, i32 1, i32 2
  %_gep129 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID125, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep126
  store i64 2, i64* %_gep127
  store i64 3, i64* %_gep128
  store i64 4, i64* %_gep129
  %_arrayUID124 = bitcast { i64, [4 x i64] }* %_atomArrUID125 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID124, { i64, [0 x i64] }** %_localId136
  store i64 0, i64* %_localId138
  store i64 0, i64* %_localId140
  %_locRef142 = load i64, i64* %_localId140
  %_bop143 = icmp slt i64 %_locRef142, 4
  br i1 %_bop143, label %_while_body_jmp145, label %_while_end_jmp144
_while_body_jmp145:
  %_locRef146 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId136
  %_locRef147 = load i64, i64* %_localId140
  %_idxUID148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef146, i32 0, i32 1, i64 %_locRef147
  %_getArrUID149 = load i64, i64* %_idxUID148
  %_locRef150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId136
  %_locRef151 = load i64, i64* %_localId140
  %_idxUID152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef150, i32 0, i32 1, i64 %_locRef151
  %_getArrUID153 = load i64, i64* %_idxUID152
  %_uopUID154 = xor i64 -1, %_getArrUID153
  %_bop155 = mul i64 %_getArrUID149, %_uopUID154
  store i64 %_bop155, i64* %_localId138
  %_locRef157 = load i64, i64* %_localId140
  %_bop158 = add i64 %_locRef157, 1
  store i64 %_bop158, i64* %_localId140
  %_locRef160 = load i64, i64* %_localId140
  %_bop161 = icmp slt i64 %_locRef160, 4
  br i1 %_bop161, label %_while_body_jmp145, label %_while_end_jmp144
_while_end_jmp144:
  %_locRef162 = load i64, i64* %_localId138
  ret i64 %_locRef162
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
