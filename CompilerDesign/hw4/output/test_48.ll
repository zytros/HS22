; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_args1182 = alloca i64
  store i64 %x, i64* %_args1182
  %_locRef1184 = load i64, i64* %_args1182
  ret i64 %_locRef1184
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_args1177 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_args1177
  %_locRef1179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args1177
  %_idxUID1180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1179, i32 0, i32 1, i32 2
  %_getArrUID1181 = load i64, i64* %_idxUID1180
  ret i64 %_getArrUID1181
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args1097 = alloca i64
  %_args1098 = alloca { i64, [0 x i8*] }*
  %_localId1125 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId1139 = alloca { i64, [0 x i64] }*
  %_localId1141 = alloca i64
  %_localId1143 = alloca i64
  store i64 %argc, i64* %_args1097
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args1098
  %_atomArrUID1102 = alloca { i64, [2 x i64] }
  %_idxUID1107 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1102, i32 0, i32 0
  store i64 2, i64* %_idxUID1107
  %_gep1103 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1102, i32 0, i32 1, i32 0
  %_gep1104 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1102, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1103
  store i64 2, i64* %_gep1104
  %_arrayUID1101 = bitcast { i64, [2 x i64] }* %_atomArrUID1102 to { i64, [0 x i64] }*
  %_atomArrUID1110 = alloca { i64, [2 x i64] }
  %_idxUID1115 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1110, i32 0, i32 0
  store i64 2, i64* %_idxUID1115
  %_gep1111 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1110, i32 0, i32 1, i32 0
  %_gep1112 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID1110, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep1111
  store i64 4, i64* %_gep1112
  %_arrayUID1109 = bitcast { i64, [2 x i64] }* %_atomArrUID1110 to { i64, [0 x i64] }*
  %_atomArrUID1118 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID1123 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1118, i32 0, i32 0
  store i64 2, i64* %_idxUID1123
  %_gep1119 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1118, i32 0, i32 1, i32 0
  %_gep1120 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1118, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID1101, { i64, [0 x i64] }** %_gep1119
  store { i64, [0 x i64] }* %_arrayUID1109, { i64, [0 x i64] }** %_gep1120
  %_arrayUID1117 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID1118 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID1117, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1125
  %_atomArrUID1128 = alloca { i64, [4 x i64] }
  %_idxUID1137 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1128, i32 0, i32 0
  store i64 4, i64* %_idxUID1137
  %_gep1129 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1128, i32 0, i32 1, i32 0
  %_gep1130 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1128, i32 0, i32 1, i32 1
  %_gep1131 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1128, i32 0, i32 1, i32 2
  %_gep1132 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID1128, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep1129
  store i64 2, i64* %_gep1130
  store i64 3, i64* %_gep1131
  store i64 4, i64* %_gep1132
  %_arrayUID1127 = bitcast { i64, [4 x i64] }* %_atomArrUID1128 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID1127, { i64, [0 x i64] }** %_localId1139
  store i64 0, i64* %_localId1141
  store i64 0, i64* %_localId1143
  %_locRef1145 = load i64, i64* %_localId1143
  %_bop1146 = icmp slt i64 %_locRef1145, 100
  br i1 %_bop1146, label %_while_body_jmp1148, label %_while_end_jmp1147
_while_body_jmp1148:
  %_locRef1149 = load i64, i64* %_localId1141
  %_bop1150 = add i64 %_locRef1149, 1
  store i64 %_bop1150, i64* %_localId1141
  %_locRef1152 = load i64, i64* %_localId1143
  %_bop1153 = add i64 %_locRef1152, 1
  store i64 %_bop1153, i64* %_localId1143
  %_locRef1155 = load i64, i64* %_localId1143
  %_bop1156 = icmp slt i64 %_locRef1155, 100
  br i1 %_bop1156, label %_while_body_jmp1148, label %_while_end_jmp1147
_while_end_jmp1147:
  %_locRef1157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1139
  %_callUID1158 = call i64 @g({ i64, [0 x i64] }* %_locRef1157)
  %_locRef1159 = load i64, i64* @i
  %_callUID1160 = call i64 @f(i64 %_locRef1159)
  %_bop1161 = add i64 %_callUID1158, %_callUID1160
  %_locRef1162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1139
  %_idxUID1163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef1162, i32 0, i32 1, i32 3
  %_getArrUID1164 = load i64, i64* %_idxUID1163
  %_callUID1165 = call i64 @f(i64 %_getArrUID1164)
  %_bop1166 = add i64 %_bop1161, %_callUID1165
  %_locRef1167 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1125
  %_idxUID1168 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1167, i32 0, i32 1, i32 1
  %_getArrUID1169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1168
  %_idxUID1170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1169, i32 0, i32 1, i32 1
  %_getArrUID1171 = load i64, i64* %_idxUID1170
  %_callUID1172 = call i64 @f(i64 %_getArrUID1171)
  %_bop1173 = add i64 %_bop1166, %_callUID1172
  %_locRef1174 = load i64, i64* %_localId1141
  %_callUID1175 = call i64 @f(i64 %_locRef1174)
  %_bop1176 = add i64 %_bop1173, %_callUID1175
  ret i64 %_bop1176
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
