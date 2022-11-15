; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args163 = alloca i64
  %_args164 = alloca { i64, [0 x i8*] }*
  %_localId203 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId205 = alloca i64
  %_localId207 = alloca i64
  store i64 %argc, i64* %_args163
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args164
  %_atomArrUID168 = alloca { i64, [1 x i64] }
  %_idxUID171 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID168, i32 0, i32 0
  store i64 1, i64* %_idxUID171
  %_gep169 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID168, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep169
  %_arrayUID167 = bitcast { i64, [1 x i64] }* %_atomArrUID168 to { i64, [0 x i64] }*
  %_atomArrUID174 = alloca { i64, [1 x i64] }
  %_idxUID177 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID174, i32 0, i32 0
  store i64 1, i64* %_idxUID177
  %_gep175 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID174, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep175
  %_arrayUID173 = bitcast { i64, [1 x i64] }* %_atomArrUID174 to { i64, [0 x i64] }*
  %_atomArrUID180 = alloca { i64, [1 x i64] }
  %_idxUID183 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID180, i32 0, i32 0
  store i64 1, i64* %_idxUID183
  %_gep181 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID180, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep181
  %_arrayUID179 = bitcast { i64, [1 x i64] }* %_atomArrUID180 to { i64, [0 x i64] }*
  %_atomArrUID186 = alloca { i64, [1 x i64] }
  %_idxUID189 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID186, i32 0, i32 0
  store i64 1, i64* %_idxUID189
  %_gep187 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_atomArrUID186, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep187
  %_arrayUID185 = bitcast { i64, [1 x i64] }* %_atomArrUID186 to { i64, [0 x i64] }*
  %_atomArrUID192 = alloca { i64, [4 x { i64, [0 x i64] }*] }
  %_idxUID201 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID192, i32 0, i32 0
  store i64 4, i64* %_idxUID201
  %_gep193 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID192, i32 0, i32 1, i32 0
  %_gep194 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID192, i32 0, i32 1, i32 1
  %_gep195 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID192, i32 0, i32 1, i32 2
  %_gep196 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID192, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_arrayUID167, { i64, [0 x i64] }** %_gep193
  store { i64, [0 x i64] }* %_arrayUID173, { i64, [0 x i64] }** %_gep194
  store { i64, [0 x i64] }* %_arrayUID179, { i64, [0 x i64] }** %_gep195
  store { i64, [0 x i64] }* %_arrayUID185, { i64, [0 x i64] }** %_gep196
  %_arrayUID191 = bitcast { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID192 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID191, { i64, [0 x { i64, [0 x i64] }*] }** %_localId203
  store i64 0, i64* %_localId205
  store i64 0, i64* %_localId207
  %_locRef209 = load i64, i64* %_localId207
  %_bop210 = icmp slt i64 %_locRef209, 4
  br i1 %_bop210, label %_while_body_jmp212, label %_while_end_jmp211
_while_body_jmp212:
  %_locRef213 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId203
  %_locRef214 = load i64, i64* %_localId207
  %_idxUID215 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef213, i32 0, i32 1, i64 %_locRef214
  %_getArrUID216 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID215
  %_idxUID217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID216, i32 0, i32 1, i32 0
  %_getArrUID218 = load i64, i64* %_idxUID217
  %_locRef219 = load i64, i64* %_localId205
  %_bop220 = sub i64 %_getArrUID218, %_locRef219
  store i64 %_bop220, i64* %_localId205
  %_locRef222 = load i64, i64* %_localId207
  %_bop223 = add i64 %_locRef222, 1
  store i64 %_bop223, i64* %_localId207
  %_locRef225 = load i64, i64* %_localId207
  %_bop226 = icmp slt i64 %_locRef225, 4
  br i1 %_bop226, label %_while_body_jmp212, label %_while_end_jmp211
_while_end_jmp211:
  %_uopUID230 = xor i64 -1, 5
  %_bop231 = and i64 5, %_uopUID230
  %_bop232 = or i64 %_bop231, 0
  %_bop233 = icmp ne i64 %_bop232, 0
  br i1 %_bop233, label %_ifTruelbl227, label %_ifFalselbl228
_ifTruelbl227:
  %_locRef234 = load i64, i64* %_localId205
  ret i64 %_locRef234
_ifFalselbl228:
  %_locRef235 = load i64, i64* %_localId205
  %_uopUID236 = sub i64 0, %_locRef235
  ret i64 %_uopUID236
_ifEndlbl229:
  %_locRef237 = load i64, i64* %_localId205
  ret i64 %_locRef237
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
