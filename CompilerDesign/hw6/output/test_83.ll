; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %_a1368) {
  %_a1369 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a1368, { i64, [0 x i64] }** %_a1369
  %_a1371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1369
  %_tmp1373 = bitcast { i64, [0 x i64] }* %_a1371 to i64*
  call void @oat_assert_array_length(i64* %_tmp1373, i64 1)
  %_index_ptr1374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1371, i32 0, i32 1, i32 1
  %_index1375 = load i64, i64* %_index_ptr1374
  ret i64 %_index1375
}

define i64 @g(i64 %_x1318) {
  %_x1319 = alloca i64
  %_i1325 = alloca i64
  %_arr1344 = alloca { i64, [0 x i64] }*
  %_i1346 = alloca i64
  store i64 %_x1318, i64* %_x1319
  %_raw_array1323 = call i64* @oat_alloc_array(i64 3)
  %_array1324 = bitcast i64* %_raw_array1323 to { i64, [0 x i64] }*
  %_bnd_1322 = alloca i64
  store i64 3, i64* %_bnd_1322
  %_ptr_1321 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1324, { i64, [0 x i64] }** %_ptr_1321
  store i64 0, i64* %_i1325
  br label %_cond1332
_body1331:
  %__ptr_13211333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1321
  %_i1334 = load i64, i64* %_i1325
  %_tmp1336 = bitcast { i64, [0 x i64] }* %__ptr_13211333 to i64*
  call void @oat_assert_array_length(i64* %_tmp1336, i64 %_i1334)
  %_index_ptr1337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_13211333, i32 0, i32 1, i64 %_i1334
  store i64 0, i64* %_index_ptr1337
  %_i1339 = load i64, i64* %_i1325
  %_bop1340 = add i64 %_i1339, 1
  store i64 %_bop1340, i64* %_i1325
  br label %_cond1332
_body1351:
  %_arr1353 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1344
  %_i1354 = load i64, i64* %_i1346
  %_tmp1356 = bitcast { i64, [0 x i64] }* %_arr1353 to i64*
  call void @oat_assert_array_length(i64* %_tmp1356, i64 %_i1354)
  %_index_ptr1357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1353, i32 0, i32 1, i64 %_i1354
  %_x1358 = load i64, i64* %_x1319
  store i64 %_x1358, i64* %_index_ptr1357
  %_i1360 = load i64, i64* %_i1346
  %_bop1361 = add i64 %_i1360, 1
  store i64 %_bop1361, i64* %_i1346
  br label %_cond1352
_cond1332:
  %_i1327 = load i64, i64* %_i1325
  %__bnd_13221328 = load i64, i64* %_bnd_1322
  %_bop1329 = icmp slt i64 %_i1327, %__bnd_13221328
  br i1 %_bop1329, label %_body1331, label %_post1330
_cond1352:
  %_i1348 = load i64, i64* %_i1346
  %_bop1349 = icmp slt i64 %_i1348, 3
  br i1 %_bop1349, label %_body1351, label %_post1350
_post1330:
  store { i64, [0 x i64] }* %_array1324, { i64, [0 x i64] }** %_arr1344
  store i64 0, i64* %_i1346
  br label %_cond1352
_post1350:
  %_arr1363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1344
  %_tmp1365 = bitcast { i64, [0 x i64] }* %_arr1363 to i64*
  call void @oat_assert_array_length(i64* %_tmp1365, i64 1)
  %_index_ptr1366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1363, i32 0, i32 1, i32 1
  %_index1367 = load i64, i64* %_index_ptr1366
  ret i64 %_index1367
}

define i64 @program(i64 %_argc1170, { i64, [0 x i8*] }* %_argv1167) {
  %_i1177 = alloca i64
  %_a1196 = alloca { i64, [0 x i64] }*
  %_i1198 = alloca i64
  %_i1219 = alloca i64
  %_arr1238 = alloca { i64, [0 x i64] }*
  %_i1240 = alloca i64
  %_i1263 = alloca i64
  %_arr01282 = alloca { i64, [0 x i64] }*
  %_i1284 = alloca i64
  %_raw_array1175 = call i64* @oat_alloc_array(i64 3)
  %_array1176 = bitcast i64* %_raw_array1175 to { i64, [0 x i64] }*
  %_bnd_1174 = alloca i64
  store i64 3, i64* %_bnd_1174
  %_ptr_1173 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1176, { i64, [0 x i64] }** %_ptr_1173
  store i64 0, i64* %_i1177
  br label %_cond1184
_body1183:
  %__ptr_11731185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1173
  %_i1186 = load i64, i64* %_i1177
  %_tmp1188 = bitcast { i64, [0 x i64] }* %__ptr_11731185 to i64*
  call void @oat_assert_array_length(i64* %_tmp1188, i64 %_i1186)
  %_index_ptr1189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_11731185, i32 0, i32 1, i64 %_i1186
  store i64 0, i64* %_index_ptr1189
  %_i1191 = load i64, i64* %_i1177
  %_bop1192 = add i64 %_i1191, 1
  store i64 %_bop1192, i64* %_i1177
  br label %_cond1184
_body1203:
  %_a1205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1196
  %_i1206 = load i64, i64* %_i1198
  %_tmp1208 = bitcast { i64, [0 x i64] }* %_a1205 to i64*
  call void @oat_assert_array_length(i64* %_tmp1208, i64 %_i1206)
  %_index_ptr1209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1205, i32 0, i32 1, i64 %_i1206
  %_i1210 = load i64, i64* %_i1198
  store i64 %_i1210, i64* %_index_ptr1209
  %_i1212 = load i64, i64* %_i1198
  %_bop1213 = add i64 %_i1212, 1
  store i64 %_bop1213, i64* %_i1198
  br label %_cond1204
_body1225:
  %__ptr_12151227 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1215
  %_i1228 = load i64, i64* %_i1219
  %_tmp1230 = bitcast { i64, [0 x i64] }* %__ptr_12151227 to i64*
  call void @oat_assert_array_length(i64* %_tmp1230, i64 %_i1228)
  %_index_ptr1231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_12151227, i32 0, i32 1, i64 %_i1228
  store i64 0, i64* %_index_ptr1231
  %_i1233 = load i64, i64* %_i1219
  %_bop1234 = add i64 %_i1233, 1
  store i64 %_bop1234, i64* %_i1219
  br label %_cond1226
_body1245:
  %_arr1247 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1238
  %_i1248 = load i64, i64* %_i1240
  %_tmp1250 = bitcast { i64, [0 x i64] }* %_arr1247 to i64*
  call void @oat_assert_array_length(i64* %_tmp1250, i64 %_i1248)
  %_index_ptr1251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1247, i32 0, i32 1, i64 %_i1248
  %_i1252 = load i64, i64* %_i1240
  %_i1253 = load i64, i64* %_i1240
  %_bop1254 = mul i64 %_i1252, %_i1253
  store i64 %_bop1254, i64* %_index_ptr1251
  %_i1256 = load i64, i64* %_i1240
  %_bop1257 = add i64 %_i1256, 1
  store i64 %_bop1257, i64* %_i1240
  br label %_cond1246
_body1269:
  %__ptr_12591271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_1259
  %_i1272 = load i64, i64* %_i1263
  %_tmp1274 = bitcast { i64, [0 x i64] }* %__ptr_12591271 to i64*
  call void @oat_assert_array_length(i64* %_tmp1274, i64 %_i1272)
  %_index_ptr1275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_12591271, i32 0, i32 1, i64 %_i1272
  store i64 0, i64* %_index_ptr1275
  %_i1277 = load i64, i64* %_i1263
  %_bop1278 = add i64 %_i1277, 1
  store i64 %_bop1278, i64* %_i1263
  br label %_cond1270
_body1289:
  %_arr01291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01282
  %_i1292 = load i64, i64* %_i1284
  %_tmp1294 = bitcast { i64, [0 x i64] }* %_arr01291 to i64*
  call void @oat_assert_array_length(i64* %_tmp1294, i64 %_i1292)
  %_index_ptr1295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01291, i32 0, i32 1, i64 %_i1292
  %_i1296 = load i64, i64* %_i1284
  %_bop1297 = mul i64 2, %_i1296
  store i64 %_bop1297, i64* %_index_ptr1295
  %_i1299 = load i64, i64* %_i1284
  %_bop1300 = add i64 %_i1299, 1
  store i64 %_bop1300, i64* %_i1284
  br label %_cond1290
_cond1184:
  %_i1179 = load i64, i64* %_i1177
  %__bnd_11741180 = load i64, i64* %_bnd_1174
  %_bop1181 = icmp slt i64 %_i1179, %__bnd_11741180
  br i1 %_bop1181, label %_body1183, label %_post1182
_cond1204:
  %_i1200 = load i64, i64* %_i1198
  %_bop1201 = icmp slt i64 %_i1200, 3
  br i1 %_bop1201, label %_body1203, label %_post1202
_cond1226:
  %_i1221 = load i64, i64* %_i1219
  %__bnd_12161222 = load i64, i64* %_bnd_1216
  %_bop1223 = icmp slt i64 %_i1221, %__bnd_12161222
  br i1 %_bop1223, label %_body1225, label %_post1224
_cond1246:
  %_i1242 = load i64, i64* %_i1240
  %_bop1243 = icmp slt i64 %_i1242, 4
  br i1 %_bop1243, label %_body1245, label %_post1244
_cond1270:
  %_i1265 = load i64, i64* %_i1263
  %__bnd_12601266 = load i64, i64* %_bnd_1260
  %_bop1267 = icmp slt i64 %_i1265, %__bnd_12601266
  br i1 %_bop1267, label %_body1269, label %_post1268
_cond1290:
  %_i1286 = load i64, i64* %_i1284
  %_bop1287 = icmp slt i64 %_i1286, 3
  br i1 %_bop1287, label %_body1289, label %_post1288
_post1182:
  store { i64, [0 x i64] }* %_array1176, { i64, [0 x i64] }** %_a1196
  store i64 0, i64* %_i1198
  br label %_cond1204
_post1202:
  %_raw_array1217 = call i64* @oat_alloc_array(i64 4)
  %_array1218 = bitcast i64* %_raw_array1217 to { i64, [0 x i64] }*
  %_bnd_1216 = alloca i64
  store i64 4, i64* %_bnd_1216
  %_ptr_1215 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1218, { i64, [0 x i64] }** %_ptr_1215
  store i64 0, i64* %_i1219
  br label %_cond1226
_post1224:
  store { i64, [0 x i64] }* %_array1218, { i64, [0 x i64] }** %_arr1238
  store i64 0, i64* %_i1240
  br label %_cond1246
_post1244:
  %_raw_array1261 = call i64* @oat_alloc_array(i64 3)
  %_array1262 = bitcast i64* %_raw_array1261 to { i64, [0 x i64] }*
  %_bnd_1260 = alloca i64
  store i64 3, i64* %_bnd_1260
  %_ptr_1259 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1262, { i64, [0 x i64] }** %_ptr_1259
  store i64 0, i64* %_i1263
  br label %_cond1270
_post1268:
  store { i64, [0 x i64] }* %_array1262, { i64, [0 x i64] }** %_arr01282
  store i64 0, i64* %_i1284
  br label %_cond1290
_post1288:
  %_arr1302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1238
  %_tmp1304 = bitcast { i64, [0 x i64] }* %_arr1302 to i64*
  call void @oat_assert_array_length(i64* %_tmp1304, i64 3)
  %_index_ptr1305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1302, i32 0, i32 1, i32 3
  %_index1306 = load i64, i64* %_index_ptr1305
  %_a1307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1196
  %_tmp1309 = bitcast { i64, [0 x i64] }* %_a1307 to i64*
  call void @oat_assert_array_length(i64* %_tmp1309, i64 1)
  %_index_ptr1310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1307, i32 0, i32 1, i32 1
  %_index1311 = load i64, i64* %_index_ptr1310
  %_bop1312 = add i64 %_index1306, %_index1311
  %_arr01313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01282
  %_result1314 = call i64 @f({ i64, [0 x i64] }* %_arr01313)
  %_bop1315 = add i64 %_bop1312, %_result1314
  %_result1316 = call i64 @g(i64 4)
  %_bop1317 = add i64 %_bop1315, %_result1316
  ret i64 %_bop1317
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
