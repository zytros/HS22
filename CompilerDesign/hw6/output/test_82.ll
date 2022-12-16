; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %_arr1159) {
  %_arr1160 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1159, { i64, [0 x i64] }** %_arr1160
  %_arr1162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1160
  %_tmp1164 = bitcast { i64, [0 x i64] }* %_arr1162 to i64*
  call void @oat_assert_array_length(i64* %_tmp1164, i64 3)
  %_index_ptr1165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1162, i32 0, i32 1, i32 3
  %_index1166 = load i64, i64* %_index_ptr1165
  ret i64 %_index1166
}

define { i64, [0 x i64] }* @g() {
  %_arr1156 = alloca { i64, [0 x i64] }*
  %_raw_array1146 = call i64* @oat_alloc_array(i64 4)
  %_array1147 = bitcast i64* %_raw_array1146 to { i64, [0 x i64] }*
  %_ind1148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1148
  %_ind1150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1150
  %_ind1152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1152
  %_ind1154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 3
  store i64 99, i64* %_ind1154
  store { i64, [0 x i64] }* %_array1147, { i64, [0 x i64] }** %_arr1156
  %_arr1158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1156
  ret { i64, [0 x i64] }* %_arr1158
}

define i64 @program(i64 %_argc1036, { i64, [0 x i8*] }* %_argv1033) {
  %_arr11047 = alloca { i64, [0 x i64] }*
  %_arr21081 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1083 = alloca i64
  %_arr41086 = alloca { i64, [0 x i64] }*
  %_arr31098 = alloca { i64, [0 x i64] }*
  %_raw_array1039 = call i64* @oat_alloc_array(i64 3)
  %_array1040 = bitcast i64* %_raw_array1039 to { i64, [0 x i64] }*
  %_ind1041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1040, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1041
  %_ind1043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1040, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1043
  %_ind1045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1040, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1045
  store { i64, [0 x i64] }* %_array1040, { i64, [0 x i64] }** %_arr11047
  %_raw_array1049 = call i64* @oat_alloc_array(i64 3)
  %_array1050 = bitcast i64* %_raw_array1049 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1051 = call i64* @oat_alloc_array(i64 3)
  %_array1052 = bitcast i64* %_raw_array1051 to { i64, [0 x i64] }*
  %_ind1053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1052, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1053
  %_ind1055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1052, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1055
  %_ind1057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1052, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1057
  %_ind1059 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1050, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1052, { i64, [0 x i64] }** %_ind1059
  %_raw_array1061 = call i64* @oat_alloc_array(i64 3)
  %_array1062 = bitcast i64* %_raw_array1061 to { i64, [0 x i64] }*
  %_ind1063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1063
  %_ind1065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1065
  %_ind1067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1067
  %_ind1069 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1050, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1062, { i64, [0 x i64] }** %_ind1069
  %_raw_array1071 = call i64* @oat_alloc_array(i64 3)
  %_array1072 = bitcast i64* %_raw_array1071 to { i64, [0 x i64] }*
  %_ind1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1072, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1073
  %_ind1075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1072, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1075
  %_ind1077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1072, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1077
  %_ind1079 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1050, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1072, { i64, [0 x i64] }** %_ind1079
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1050, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21081
  store i64 1, i64* %_c1083
  %_result1085 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_result1085, { i64, [0 x i64] }** %_arr41086
  %_raw_array1088 = call i64* @oat_alloc_array(i64 4)
  %_array1089 = bitcast i64* %_raw_array1088 to { i64, [0 x i64] }*
  %_ind1090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1089, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1090
  %_ind1092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1089, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1092
  %_ind1094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1089, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1094
  %_ind1096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1089, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind1096
  store { i64, [0 x i64] }* %_array1089, { i64, [0 x i64] }** %_arr31098
  %_c1100 = load i64, i64* %_c1083
  %_i1101 = load i64, i64* @i
  %_bop1102 = add i64 %_c1100, %_i1101
  store i64 %_bop1102, i64* %_c1083
  %_c1104 = load i64, i64* %_c1083
  %_arr11105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11047
  %_tmp1107 = bitcast { i64, [0 x i64] }* %_arr11105 to i64*
  call void @oat_assert_array_length(i64* %_tmp1107, i64 1)
  %_index_ptr1108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11105, i32 0, i32 1, i32 1
  %_index1109 = load i64, i64* %_index_ptr1108
  %_bop1110 = add i64 %_c1104, %_index1109
  store i64 %_bop1110, i64* %_c1083
  %_c1112 = load i64, i64* %_c1083
  %_arr21113 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21081
  %_tmp1115 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr21113 to i64*
  call void @oat_assert_array_length(i64* %_tmp1115, i64 1)
  %_index_ptr1116 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21113, i32 0, i32 1, i32 1
  %_index1117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1116
  %_tmp1119 = bitcast { i64, [0 x i64] }* %_index1117 to i64*
  call void @oat_assert_array_length(i64* %_tmp1119, i64 1)
  %_index_ptr1120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1117, i32 0, i32 1, i32 1
  %_index1121 = load i64, i64* %_index_ptr1120
  %_bop1122 = add i64 %_c1112, %_index1121
  store i64 %_bop1122, i64* %_c1083
  %_c1124 = load i64, i64* %_c1083
  %_arr31125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31098
  %_tmp1127 = bitcast { i64, [0 x i64] }* %_arr31125 to i64*
  call void @oat_assert_array_length(i64* %_tmp1127, i64 3)
  %_index_ptr1128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31125, i32 0, i32 1, i32 3
  %_index1129 = load i64, i64* %_index_ptr1128
  %_bop1130 = add i64 %_c1124, %_index1129
  store i64 %_bop1130, i64* %_c1083
  %_c1132 = load i64, i64* %_c1083
  %_arr31133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31098
  %_result1134 = call i64 @f({ i64, [0 x i64] }* %_arr31133)
  %_bop1135 = add i64 %_c1132, %_result1134
  store i64 %_bop1135, i64* %_c1083
  %_c1137 = load i64, i64* %_c1083
  %_arr41138 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41086
  %_tmp1140 = bitcast { i64, [0 x i64] }* %_arr41138 to i64*
  call void @oat_assert_array_length(i64* %_tmp1140, i64 1)
  %_index_ptr1141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41138, i32 0, i32 1, i32 1
  %_index1142 = load i64, i64* %_index_ptr1141
  %_bop1143 = add i64 %_c1137, %_index1142
  store i64 %_bop1143, i64* %_c1083
  %_c1145 = load i64, i64* %_c1083
  ret i64 %_c1145
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
