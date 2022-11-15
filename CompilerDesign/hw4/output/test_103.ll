; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_args6336 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_args6337 = alloca i64
  %_args6338 = alloca i64
  %_args6339 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_args6336
  store i64 %i, i64* %_args6337
  store i64 %j, i64* %_args6338
  store i64 %count, i64* %_args6339
  %_locRef6347 = load i64, i64* %_args6337
  %_bop6348 = icmp sge i64 %_locRef6347, 0
  %_locRef6349 = load i64, i64* %_args6338
  %_bop6350 = icmp sge i64 %_locRef6349, 0
  %_bop6351 = and i1 %_bop6348, %_bop6350
  %_locRef6352 = load i64, i64* %_args6337
  %_locRef6353 = load i64, i64* @len
  %_bop6354 = icmp slt i64 %_locRef6352, %_locRef6353
  %_bop6355 = and i1 %_bop6351, %_bop6354
  %_locRef6356 = load i64, i64* %_args6338
  %_locRef6357 = load i64, i64* @len
  %_bop6358 = icmp slt i64 %_locRef6356, %_locRef6357
  %_bop6359 = and i1 %_bop6355, %_bop6358
  br i1 %_bop6359, label %_ifTruelbl6344, label %_ifFalselbl6345
_ifTruelbl6344:
  %_locRef6360 = load i64, i64* %_args6339
  %_locRef6361 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6336
  %_locRef6362 = load i64, i64* %_args6337
  %_idxUID6363 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef6361, i32 0, i32 1, i64 %_locRef6362
  %_getArrUID6364 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID6363
  %_locRef6365 = load i64, i64* %_args6338
  %_idxUID6366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID6364, i32 0, i32 1, i64 %_locRef6365
  %_getArrUID6367 = load i64, i64* %_idxUID6366
  %_bop6368 = add i64 %_locRef6360, %_getArrUID6367
  ret i64 %_bop6368
_ifFalselbl6345:
  %_locRef6369 = load i64, i64* %_args6339
  ret i64 %_locRef6369
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_args6239 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_args6240 = alloca i64
  %_args6241 = alloca i64
  %_localId6252 = alloca i64
  %_localId6254 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  store i64 %i, i64* %_args6240
  store i64 %j, i64* %_args6241
  %_locRef6245 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  %_locRef6246 = load i64, i64* %_args6240
  %_idxUID6247 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef6245, i32 0, i32 1, i64 %_locRef6246
  %_getArrUID6248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID6247
  %_locRef6249 = load i64, i64* %_args6241
  %_idxUID6250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID6248, i32 0, i32 1, i64 %_locRef6249
  %_getArrUID6251 = load i64, i64* %_idxUID6250
  store i64 %_getArrUID6251, i64* %_localId6252
  store i64 0, i64* %_localId6254
  %_locRef6256 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  %_locRef6257 = load i64, i64* %_args6240
  %_bop6258 = sub i64 %_locRef6257, 1
  %_locRef6259 = load i64, i64* %_args6241
  %_bop6260 = sub i64 %_locRef6259, 1
  %_locRef6261 = load i64, i64* %_localId6254
  %_callUID6262 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef6256, i64 %_bop6258, i64 %_bop6260, i64 %_locRef6261)
  store i64 %_callUID6262, i64* %_localId6254
  %_locRef6264 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  %_locRef6265 = load i64, i64* %_args6240
  %_bop6266 = sub i64 %_locRef6265, 1
  %_locRef6267 = load i64, i64* %_args6241
  %_locRef6268 = load i64, i64* %_localId6254
  %_callUID6269 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef6264, i64 %_bop6266, i64 %_locRef6267, i64 %_locRef6268)
  store i64 %_callUID6269, i64* %_localId6254
  %_locRef6271 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  %_locRef6272 = load i64, i64* %_args6240
  %_bop6273 = sub i64 %_locRef6272, 1
  %_locRef6274 = load i64, i64* %_args6241
  %_bop6275 = add i64 %_locRef6274, 1
  %_locRef6276 = load i64, i64* %_localId6254
  %_callUID6277 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef6271, i64 %_bop6273, i64 %_bop6275, i64 %_locRef6276)
  store i64 %_callUID6277, i64* %_localId6254
  %_locRef6279 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  %_locRef6280 = load i64, i64* %_args6240
  %_locRef6281 = load i64, i64* %_args6241
  %_bop6282 = sub i64 %_locRef6281, 1
  %_locRef6283 = load i64, i64* %_localId6254
  %_callUID6284 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef6279, i64 %_locRef6280, i64 %_bop6282, i64 %_locRef6283)
  store i64 %_callUID6284, i64* %_localId6254
  %_locRef6286 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  %_locRef6287 = load i64, i64* %_args6240
  %_locRef6288 = load i64, i64* %_args6241
  %_bop6289 = add i64 %_locRef6288, 1
  %_locRef6290 = load i64, i64* %_localId6254
  %_callUID6291 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef6286, i64 %_locRef6287, i64 %_bop6289, i64 %_locRef6290)
  store i64 %_callUID6291, i64* %_localId6254
  %_locRef6293 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  %_locRef6294 = load i64, i64* %_args6240
  %_bop6295 = add i64 %_locRef6294, 1
  %_locRef6296 = load i64, i64* %_args6241
  %_bop6297 = sub i64 %_locRef6296, 1
  %_locRef6298 = load i64, i64* %_localId6254
  %_callUID6299 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef6293, i64 %_bop6295, i64 %_bop6297, i64 %_locRef6298)
  store i64 %_callUID6299, i64* %_localId6254
  %_locRef6301 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  %_locRef6302 = load i64, i64* %_args6240
  %_bop6303 = add i64 %_locRef6302, 1
  %_locRef6304 = load i64, i64* %_args6241
  %_locRef6305 = load i64, i64* %_localId6254
  %_callUID6306 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef6301, i64 %_bop6303, i64 %_locRef6304, i64 %_locRef6305)
  store i64 %_callUID6306, i64* %_localId6254
  %_locRef6308 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_args6239
  %_locRef6309 = load i64, i64* %_args6240
  %_bop6310 = add i64 %_locRef6309, 1
  %_locRef6311 = load i64, i64* %_args6241
  %_bop6312 = add i64 %_locRef6311, 1
  %_locRef6313 = load i64, i64* %_localId6254
  %_callUID6314 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef6308, i64 %_bop6310, i64 %_bop6312, i64 %_locRef6313)
  store i64 %_callUID6314, i64* %_localId6254
  %_locRef6319 = load i64, i64* %_localId6252
  %_bop6320 = icmp eq i64 %_locRef6319, 1
  br i1 %_bop6320, label %_ifTruelbl6316, label %_ifFalselbl6317
_ifTruelbl6316:
  %_locRef6324 = load i64, i64* %_localId6254
  %_bop6325 = icmp slt i64 %_locRef6324, 2
  br i1 %_bop6325, label %_ifTruelbl6321, label %_ifFalselbl6322
_ifTruelbl6321:
  ret i64 0
_ifFalselbl6322:
  %_locRef6329 = load i64, i64* %_localId6254
  %_bop6330 = icmp slt i64 %_locRef6329, 4
  br i1 %_bop6330, label %_ifTruelbl6326, label %_ifFalselbl6327
_ifTruelbl6326:
  ret i64 1
_ifFalselbl6327:
  br label %_ifEndlbl6328
_ifEndlbl6328:
  br label %_ifEndlbl6323
_ifEndlbl6323:
  ret i64 0
_ifFalselbl6317:
  br label %_ifEndlbl6318
_ifEndlbl6318:
  %_locRef6334 = load i64, i64* %_localId6254
  %_bop6335 = icmp eq i64 %_locRef6334, 3
  br i1 %_bop6335, label %_ifTruelbl6331, label %_ifFalselbl6332
_ifTruelbl6331:
  ret i64 1
_ifFalselbl6332:
  ret i64 0
_ifEndlbl6333:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args6038 = alloca i64
  %_args6039 = alloca { i64, [0 x i8*] }*
  %_localId6102 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId6164 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId6166 = alloca i64
  %_localId6178 = alloca i64
  %_localId6205 = alloca i64
  %_localId6212 = alloca i64
  store i64 %argc, i64* %_args6038
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args6039
  %_atomArrUID6043 = alloca { i64, [4 x i64] }
  %_idxUID6052 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6043, i32 0, i32 0
  store i64 4, i64* %_idxUID6052
  %_gep6044 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6043, i32 0, i32 1, i32 0
  %_gep6045 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6043, i32 0, i32 1, i32 1
  %_gep6046 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6043, i32 0, i32 1, i32 2
  %_gep6047 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6043, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep6044
  store i64 0, i64* %_gep6045
  store i64 0, i64* %_gep6046
  store i64 0, i64* %_gep6047
  %_arrayUID6042 = bitcast { i64, [4 x i64] }* %_atomArrUID6043 to { i64, [0 x i64] }*
  %_atomArrUID6055 = alloca { i64, [4 x i64] }
  %_idxUID6064 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6055, i32 0, i32 0
  store i64 4, i64* %_idxUID6064
  %_gep6056 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6055, i32 0, i32 1, i32 0
  %_gep6057 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6055, i32 0, i32 1, i32 1
  %_gep6058 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6055, i32 0, i32 1, i32 2
  %_gep6059 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6055, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep6056
  store i64 1, i64* %_gep6057
  store i64 1, i64* %_gep6058
  store i64 1, i64* %_gep6059
  %_arrayUID6054 = bitcast { i64, [4 x i64] }* %_atomArrUID6055 to { i64, [0 x i64] }*
  %_atomArrUID6067 = alloca { i64, [4 x i64] }
  %_idxUID6076 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6067, i32 0, i32 0
  store i64 4, i64* %_idxUID6076
  %_gep6068 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6067, i32 0, i32 1, i32 0
  %_gep6069 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6067, i32 0, i32 1, i32 1
  %_gep6070 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6067, i32 0, i32 1, i32 2
  %_gep6071 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6067, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep6068
  store i64 1, i64* %_gep6069
  store i64 1, i64* %_gep6070
  store i64 0, i64* %_gep6071
  %_arrayUID6066 = bitcast { i64, [4 x i64] }* %_atomArrUID6067 to { i64, [0 x i64] }*
  %_atomArrUID6079 = alloca { i64, [4 x i64] }
  %_idxUID6088 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6079, i32 0, i32 0
  store i64 4, i64* %_idxUID6088
  %_gep6080 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6079, i32 0, i32 1, i32 0
  %_gep6081 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6079, i32 0, i32 1, i32 1
  %_gep6082 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6079, i32 0, i32 1, i32 2
  %_gep6083 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6079, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep6080
  store i64 0, i64* %_gep6081
  store i64 0, i64* %_gep6082
  store i64 0, i64* %_gep6083
  %_arrayUID6078 = bitcast { i64, [4 x i64] }* %_atomArrUID6079 to { i64, [0 x i64] }*
  %_atomArrUID6091 = alloca { i64, [4 x { i64, [0 x i64] }*] }
  %_idxUID6100 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6091, i32 0, i32 0
  store i64 4, i64* %_idxUID6100
  %_gep6092 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6091, i32 0, i32 1, i32 0
  %_gep6093 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6091, i32 0, i32 1, i32 1
  %_gep6094 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6091, i32 0, i32 1, i32 2
  %_gep6095 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6091, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_arrayUID6042, { i64, [0 x i64] }** %_gep6092
  store { i64, [0 x i64] }* %_arrayUID6054, { i64, [0 x i64] }** %_gep6093
  store { i64, [0 x i64] }* %_arrayUID6066, { i64, [0 x i64] }** %_gep6094
  store { i64, [0 x i64] }* %_arrayUID6078, { i64, [0 x i64] }** %_gep6095
  %_arrayUID6090 = bitcast { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6091 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID6090, { i64, [0 x { i64, [0 x i64] }*] }** %_localId6102
  %_atomArrUID6105 = alloca { i64, [4 x i64] }
  %_idxUID6114 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6105, i32 0, i32 0
  store i64 4, i64* %_idxUID6114
  %_gep6106 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6105, i32 0, i32 1, i32 0
  %_gep6107 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6105, i32 0, i32 1, i32 1
  %_gep6108 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6105, i32 0, i32 1, i32 2
  %_gep6109 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6105, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep6106
  store i64 0, i64* %_gep6107
  store i64 0, i64* %_gep6108
  store i64 0, i64* %_gep6109
  %_arrayUID6104 = bitcast { i64, [4 x i64] }* %_atomArrUID6105 to { i64, [0 x i64] }*
  %_atomArrUID6117 = alloca { i64, [4 x i64] }
  %_idxUID6126 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6117, i32 0, i32 0
  store i64 4, i64* %_idxUID6126
  %_gep6118 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6117, i32 0, i32 1, i32 0
  %_gep6119 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6117, i32 0, i32 1, i32 1
  %_gep6120 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6117, i32 0, i32 1, i32 2
  %_gep6121 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6117, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep6118
  store i64 0, i64* %_gep6119
  store i64 0, i64* %_gep6120
  store i64 0, i64* %_gep6121
  %_arrayUID6116 = bitcast { i64, [4 x i64] }* %_atomArrUID6117 to { i64, [0 x i64] }*
  %_atomArrUID6129 = alloca { i64, [4 x i64] }
  %_idxUID6138 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6129, i32 0, i32 0
  store i64 4, i64* %_idxUID6138
  %_gep6130 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6129, i32 0, i32 1, i32 0
  %_gep6131 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6129, i32 0, i32 1, i32 1
  %_gep6132 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6129, i32 0, i32 1, i32 2
  %_gep6133 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6129, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep6130
  store i64 0, i64* %_gep6131
  store i64 0, i64* %_gep6132
  store i64 0, i64* %_gep6133
  %_arrayUID6128 = bitcast { i64, [4 x i64] }* %_atomArrUID6129 to { i64, [0 x i64] }*
  %_atomArrUID6141 = alloca { i64, [4 x i64] }
  %_idxUID6150 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6141, i32 0, i32 0
  store i64 4, i64* %_idxUID6150
  %_gep6142 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6141, i32 0, i32 1, i32 0
  %_gep6143 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6141, i32 0, i32 1, i32 1
  %_gep6144 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6141, i32 0, i32 1, i32 2
  %_gep6145 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_atomArrUID6141, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep6142
  store i64 0, i64* %_gep6143
  store i64 0, i64* %_gep6144
  store i64 0, i64* %_gep6145
  %_arrayUID6140 = bitcast { i64, [4 x i64] }* %_atomArrUID6141 to { i64, [0 x i64] }*
  %_atomArrUID6153 = alloca { i64, [4 x { i64, [0 x i64] }*] }
  %_idxUID6162 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6153, i32 0, i32 0
  store i64 4, i64* %_idxUID6162
  %_gep6154 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6153, i32 0, i32 1, i32 0
  %_gep6155 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6153, i32 0, i32 1, i32 1
  %_gep6156 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6153, i32 0, i32 1, i32 2
  %_gep6157 = getelementptr { i64, [4 x { i64, [0 x i64] }*] }, { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6153, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_arrayUID6104, { i64, [0 x i64] }** %_gep6154
  store { i64, [0 x i64] }* %_arrayUID6116, { i64, [0 x i64] }** %_gep6155
  store { i64, [0 x i64] }* %_arrayUID6128, { i64, [0 x i64] }** %_gep6156
  store { i64, [0 x i64] }* %_arrayUID6140, { i64, [0 x i64] }** %_gep6157
  %_arrayUID6152 = bitcast { i64, [4 x { i64, [0 x i64] }*] }* %_atomArrUID6153 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID6152, { i64, [0 x { i64, [0 x i64] }*] }** %_localId6164
  store i64 0, i64* %_localId6166
  %_locRef6168 = load i64, i64* %_localId6166
  %_bop6169 = icmp slt i64 %_locRef6168, 4
  br i1 %_bop6169, label %_while_body_jmp6171, label %_while_end_jmp6170
_while_body_jmp6171:
  %_locRef6172 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId6164
  %_locRef6173 = load i64, i64* %_localId6166
  %_raw_array6174 = call i64* @oat_alloc_array(i64 4)
  %_array6175 = bitcast i64* %_raw_array6174 to { i64, [0 x i64] }*
  %_arridx6176 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef6172, i32 0, i32 1, i64 %_locRef6173
  store { i64, [0 x i64] }* %_array6175, { i64, [0 x i64] }** %_arridx6176
  store i64 0, i64* %_localId6178
  %_locRef6180 = load i64, i64* %_localId6178
  %_bop6181 = icmp slt i64 %_locRef6180, 4
  br i1 %_bop6181, label %_while_body_jmp6183, label %_while_end_jmp6182
_while_body_jmp6183:
  %_locRef6184 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId6164
  %_locRef6185 = load i64, i64* %_localId6166
  %_idxUID6186 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef6184, i32 0, i32 1, i64 %_locRef6185
  %_getArrUID6187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID6186
  %_locRef6188 = load i64, i64* %_localId6178
  %_locRef6189 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId6102
  %_locRef6190 = load i64, i64* %_localId6166
  %_locRef6191 = load i64, i64* %_localId6178
  %_callUID6192 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_locRef6189, i64 %_locRef6190, i64 %_locRef6191)
  %_arridx6193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID6187, i32 0, i32 1, i64 %_locRef6188
  store i64 %_callUID6192, i64* %_arridx6193
  %_locRef6195 = load i64, i64* %_localId6178
  %_bop6196 = add i64 %_locRef6195, 1
  store i64 %_bop6196, i64* %_localId6178
  %_locRef6198 = load i64, i64* %_localId6178
  %_bop6199 = icmp slt i64 %_locRef6198, 4
  br i1 %_bop6199, label %_while_body_jmp6183, label %_while_end_jmp6182
_while_end_jmp6182:
  %_locRef6200 = load i64, i64* %_localId6166
  %_bop6201 = add i64 %_locRef6200, 1
  store i64 %_bop6201, i64* %_localId6166
  %_locRef6203 = load i64, i64* %_localId6166
  %_bop6204 = icmp slt i64 %_locRef6203, 4
  br i1 %_bop6204, label %_while_body_jmp6171, label %_while_end_jmp6170
_while_end_jmp6170:
  store i64 0, i64* %_localId6205
  %_locRef6207 = load i64, i64* %_localId6205
  %_locRef6208 = load i64, i64* @len
  %_bop6209 = icmp slt i64 %_locRef6207, %_locRef6208
  br i1 %_bop6209, label %_while_body_jmp6211, label %_while_end_jmp6210
_while_body_jmp6211:
  store i64 0, i64* %_localId6212
  %_locRef6214 = load i64, i64* %_localId6212
  %_locRef6215 = load i64, i64* @len
  %_bop6216 = icmp slt i64 %_locRef6214, %_locRef6215
  br i1 %_bop6216, label %_while_body_jmp6218, label %_while_end_jmp6217
_while_body_jmp6218:
  %_locRef6219 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId6164
  %_locRef6220 = load i64, i64* %_localId6205
  %_idxUID6221 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef6219, i32 0, i32 1, i64 %_locRef6220
  %_getArrUID6222 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID6221
  %_locRef6223 = load i64, i64* %_localId6212
  %_idxUID6224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID6222, i32 0, i32 1, i64 %_locRef6223
  %_getArrUID6225 = load i64, i64* %_idxUID6224
  call void @print_int(i64 %_getArrUID6225)
  %_locRef6227 = load i64, i64* %_localId6212
  %_bop6228 = add i64 %_locRef6227, 1
  store i64 %_bop6228, i64* %_localId6212
  %_locRef6230 = load i64, i64* %_localId6212
  %_locRef6231 = load i64, i64* @len
  %_bop6232 = icmp slt i64 %_locRef6230, %_locRef6231
  br i1 %_bop6232, label %_while_body_jmp6218, label %_while_end_jmp6217
_while_end_jmp6217:
  %_locRef6233 = load i64, i64* %_localId6205
  %_bop6234 = add i64 %_locRef6233, 1
  store i64 %_bop6234, i64* %_localId6205
  %_locRef6236 = load i64, i64* %_localId6205
  %_locRef6237 = load i64, i64* @len
  %_bop6238 = icmp slt i64 %_locRef6236, %_locRef6237
  br i1 %_bop6238, label %_while_body_jmp6211, label %_while_end_jmp6210
_while_end_jmp6210:
  ret i64 0
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
