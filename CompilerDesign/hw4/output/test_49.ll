; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_args1198 = alloca i64
  %_args1199 = alloca i64
  %_localId1202 = alloca i64
  store i64 %x, i64* %_args1198
  store i64 %y, i64* %_args1199
  store i64 0, i64* %_localId1202
  %_locRef1207 = load i64, i64* %_args1198
  %_bop1208 = icmp sge i64 %_locRef1207, 1
  br i1 %_bop1208, label %_ifTruelbl1204, label %_ifFalselbl1205
_ifTruelbl1204:
  %_locRef1209 = load i64, i64* %_args1198
  %_bop1210 = sub i64 %_locRef1209, 1
  %_locRef1211 = load i64, i64* %_args1199
  %_callUID1212 = call i64 @f(i64 %_bop1210, i64 %_locRef1211)
  %_bop1213 = add i64 1, %_callUID1212
  store i64 %_bop1213, i64* %_localId1202
  br label %_ifEndlbl1206
_ifFalselbl1205:
  %_locRef1215 = load i64, i64* %_args1198
  %_locRef1216 = load i64, i64* %_args1199
  %_bop1217 = add i64 %_locRef1215, %_locRef1216
  store i64 %_bop1217, i64* %_localId1202
  br label %_ifEndlbl1206
_ifEndlbl1206:
  %_locRef1219 = load i64, i64* %_localId1202
  ret i64 %_locRef1219
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1185 = alloca i64
  %_args1186 = alloca { i64, [0 x i8*] }*
  %_localId1189 = alloca i64
  %_localId1191 = alloca i64
  store i64 %argc, i64* %_args1185
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1186
  store i64 3, i64* %_localId1189
  store i64 3, i64* %_localId1191
  %_locRef1193 = load i64, i64* %_localId1189
  %_locRef1194 = load i64, i64* %_localId1191
  %_callUID1195 = call i64 @f(i64 %_locRef1193, i64 %_locRef1194)
  %_locRef1196 = load i64, i64* @i
  %_bop1197 = add i64 %_callUID1195, %_locRef1196
  ret i64 %_bop1197
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
