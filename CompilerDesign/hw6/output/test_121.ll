; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_partial6321, i64 %_len6318, i64 %_insertee6315) {
  %_partial6322 = alloca { i64, [0 x i64] }*
  %_len6319 = alloca i64
  %_insertee6316 = alloca i64
  %_i6330 = alloca i64
  %_inserted6349 = alloca { i64, [0 x i64] }*
  %_i6351 = alloca i64
  %_not_yet_inserted6370 = alloca i1
  %_i6389 = alloca i64
  store { i64, [0 x i64] }* %_partial6321, { i64, [0 x i64] }** %_partial6322
  store i64 %_len6318, i64* %_len6319
  store i64 %_insertee6315, i64* %_insertee6316
  %_len6326 = load i64, i64* %_len6319
  %_bop6327 = add i64 %_len6326, 1
  %_raw_array6328 = call i64* @oat_alloc_array(i64 %_bop6327)
  %_array6329 = bitcast i64* %_raw_array6328 to { i64, [0 x i64] }*
  %_bnd_6325 = alloca i64
  store i64 %_bop6327, i64* %_bnd_6325
  %_ptr_6324 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6329, { i64, [0 x i64] }** %_ptr_6324
  store i64 0, i64* %_i6330
  br label %_cond6337
_body6336:
  %__ptr_63246338 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_6324
  %_i6339 = load i64, i64* %_i6330
  %_tmp6341 = bitcast { i64, [0 x i64] }* %__ptr_63246338 to i64*
  call void @oat_assert_array_length(i64* %_tmp6341, i64 %_i6339)
  %_index_ptr6342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_63246338, i32 0, i32 1, i64 %_i6339
  store i64 0, i64* %_index_ptr6342
  %_i6344 = load i64, i64* %_i6330
  %_bop6345 = add i64 %_i6344, 1
  store i64 %_bop6345, i64* %_i6330
  br label %_cond6337
_body6358:
  %_inserted6360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6349
  %_i6361 = load i64, i64* %_i6351
  %_tmp6363 = bitcast { i64, [0 x i64] }* %_inserted6360 to i64*
  call void @oat_assert_array_length(i64* %_tmp6363, i64 %_i6361)
  %_index_ptr6364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6360, i32 0, i32 1, i64 %_i6361
  store i64 -1, i64* %_index_ptr6364
  %_i6367 = load i64, i64* %_i6351
  %_bop6368 = add i64 %_i6367, 1
  store i64 %_bop6368, i64* %_i6351
  br label %_cond6359
_body6395:
  %_not_yet_inserted6397 = load i1, i1* %_not_yet_inserted6370
  br i1 %_not_yet_inserted6397, label %_then6457, label %_else6456
_cond6337:
  %_i6332 = load i64, i64* %_i6330
  %__bnd_63256333 = load i64, i64* %_bnd_6325
  %_bop6334 = icmp slt i64 %_i6332, %__bnd_63256333
  br i1 %_bop6334, label %_body6336, label %_post6335
_cond6359:
  %_i6353 = load i64, i64* %_i6351
  %_len6354 = load i64, i64* %_len6319
  %_bop6355 = add i64 %_len6354, 1
  %_bop6356 = icmp slt i64 %_i6353, %_bop6355
  br i1 %_bop6356, label %_body6358, label %_post6357
_cond6396:
  %_i6391 = load i64, i64* %_i6389
  %_len6392 = load i64, i64* %_len6319
  %_bop6393 = icmp slt i64 %_i6391, %_len6392
  br i1 %_bop6393, label %_body6395, label %_post6394
_else6387:
  br label %_merge6386
_else6440:
  %_inserted6427 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6349
  %_i6428 = load i64, i64* %_i6389
  %_tmp6430 = bitcast { i64, [0 x i64] }* %_inserted6427 to i64*
  call void @oat_assert_array_length(i64* %_tmp6430, i64 %_i6428)
  %_index_ptr6431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6427, i32 0, i32 1, i64 %_i6428
  %_partial6432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6322
  %_i6433 = load i64, i64* %_i6389
  %_tmp6435 = bitcast { i64, [0 x i64] }* %_partial6432 to i64*
  call void @oat_assert_array_length(i64* %_tmp6435, i64 %_i6433)
  %_index_ptr6436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6432, i32 0, i32 1, i64 %_i6433
  %_index6437 = load i64, i64* %_index_ptr6436
  store i64 %_index6437, i64* %_index_ptr6431
  br label %_merge6439
_else6456:
  %_inserted6442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6349
  %_i6443 = load i64, i64* %_i6389
  %_bop6444 = add i64 %_i6443, 1
  %_tmp6446 = bitcast { i64, [0 x i64] }* %_inserted6442 to i64*
  call void @oat_assert_array_length(i64* %_tmp6446, i64 %_bop6444)
  %_index_ptr6447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6442, i32 0, i32 1, i64 %_bop6444
  %_partial6448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6322
  %_i6449 = load i64, i64* %_i6389
  %_tmp6451 = bitcast { i64, [0 x i64] }* %_partial6448 to i64*
  call void @oat_assert_array_length(i64* %_tmp6451, i64 %_i6449)
  %_index_ptr6452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6448, i32 0, i32 1, i64 %_i6449
  %_index6453 = load i64, i64* %_index_ptr6452
  store i64 %_index6453, i64* %_index_ptr6447
  br label %_merge6455
_merge6386:
  store i64 0, i64* %_i6389
  br label %_cond6396
_merge6439:
  br label %_merge6455
_merge6455:
  %_i6458 = load i64, i64* %_i6389
  %_bop6459 = add i64 %_i6458, 1
  store i64 %_bop6459, i64* %_i6389
  br label %_cond6396
_post6335:
  store { i64, [0 x i64] }* %_array6329, { i64, [0 x i64] }** %_inserted6349
  store i64 0, i64* %_i6351
  br label %_cond6359
_post6357:
  store i1 1, i1* %_not_yet_inserted6370
  %_insertee6372 = load i64, i64* %_insertee6316
  %_partial6373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6322
  %_tmp6375 = bitcast { i64, [0 x i64] }* %_partial6373 to i64*
  call void @oat_assert_array_length(i64* %_tmp6375, i64 0)
  %_index_ptr6376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6373, i32 0, i32 1, i32 0
  %_index6377 = load i64, i64* %_index_ptr6376
  %_bop6378 = icmp slt i64 %_insertee6372, %_index6377
  br i1 %_bop6378, label %_then6388, label %_else6387
_post6394:
  %_inserted6461 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6349
  ret { i64, [0 x i64] }* %_inserted6461
_then6388:
  store i1 0, i1* %_not_yet_inserted6370
  %_inserted6380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6349
  %_tmp6382 = bitcast { i64, [0 x i64] }* %_inserted6380 to i64*
  call void @oat_assert_array_length(i64* %_tmp6382, i64 0)
  %_index_ptr6383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6380, i32 0, i32 1, i32 0
  %_insertee6384 = load i64, i64* %_insertee6316
  store i64 %_insertee6384, i64* %_index_ptr6383
  br label %_merge6386
_then6441:
  store i1 0, i1* %_not_yet_inserted6370
  %_inserted6407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6349
  %_i6408 = load i64, i64* %_i6389
  %_bop6409 = add i64 %_i6408, 1
  %_tmp6411 = bitcast { i64, [0 x i64] }* %_inserted6407 to i64*
  call void @oat_assert_array_length(i64* %_tmp6411, i64 %_bop6409)
  %_index_ptr6412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6407, i32 0, i32 1, i64 %_bop6409
  %_insertee6413 = load i64, i64* %_insertee6316
  store i64 %_insertee6413, i64* %_index_ptr6412
  %_inserted6415 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6349
  %_i6416 = load i64, i64* %_i6389
  %_tmp6418 = bitcast { i64, [0 x i64] }* %_inserted6415 to i64*
  call void @oat_assert_array_length(i64* %_tmp6418, i64 %_i6416)
  %_index_ptr6419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6415, i32 0, i32 1, i64 %_i6416
  %_partial6420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6322
  %_i6421 = load i64, i64* %_i6389
  %_tmp6423 = bitcast { i64, [0 x i64] }* %_partial6420 to i64*
  call void @oat_assert_array_length(i64* %_tmp6423, i64 %_i6421)
  %_index_ptr6424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6420, i32 0, i32 1, i64 %_i6421
  %_index6425 = load i64, i64* %_index_ptr6424
  store i64 %_index6425, i64* %_index_ptr6419
  br label %_merge6439
_then6457:
  %_insertee6398 = load i64, i64* %_insertee6316
  %_partial6399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6322
  %_i6400 = load i64, i64* %_i6389
  %_tmp6402 = bitcast { i64, [0 x i64] }* %_partial6399 to i64*
  call void @oat_assert_array_length(i64* %_tmp6402, i64 %_i6400)
  %_index_ptr6403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6399, i32 0, i32 1, i64 %_i6400
  %_index6404 = load i64, i64* %_index_ptr6403
  %_bop6405 = icmp sgt i64 %_insertee6398, %_index6404
  br i1 %_bop6405, label %_then6441, label %_else6440
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_unsorted6274, i64 %_len6271) {
  %_unsorted6275 = alloca { i64, [0 x i64] }*
  %_len6272 = alloca i64
  %_out6281 = alloca { i64, [0 x i64] }*
  %_i6293 = alloca i64
  store { i64, [0 x i64] }* %_unsorted6274, { i64, [0 x i64] }** %_unsorted6275
  store i64 %_len6271, i64* %_len6272
  %_raw_array6277 = call i64* @oat_alloc_array(i64 1)
  %_array6278 = bitcast i64* %_raw_array6277 to { i64, [0 x i64] }*
  %_ind6279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6278, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind6279
  store { i64, [0 x i64] }* %_array6278, { i64, [0 x i64] }** %_out6281
  %_out6283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6281
  %_tmp6285 = bitcast { i64, [0 x i64] }* %_out6283 to i64*
  call void @oat_assert_array_length(i64* %_tmp6285, i64 0)
  %_index_ptr6286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out6283, i32 0, i32 1, i32 0
  %_unsorted6287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6275
  %_tmp6289 = bitcast { i64, [0 x i64] }* %_unsorted6287 to i64*
  call void @oat_assert_array_length(i64* %_tmp6289, i64 0)
  %_index_ptr6290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6287, i32 0, i32 1, i32 0
  %_index6291 = load i64, i64* %_index_ptr6290
  store i64 %_index6291, i64* %_index_ptr6286
  store i64 1, i64* %_i6293
  br label %_cond6300
_body6299:
  %_unsorted6301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6275
  %_i6302 = load i64, i64* %_i6293
  %_tmp6304 = bitcast { i64, [0 x i64] }* %_unsorted6301 to i64*
  call void @oat_assert_array_length(i64* %_tmp6304, i64 %_i6302)
  %_index_ptr6305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6301, i32 0, i32 1, i64 %_i6302
  %_index6306 = load i64, i64* %_index_ptr6305
  %_i6307 = load i64, i64* %_i6293
  %_out6308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6281
  %_result6309 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out6308, i64 %_i6307, i64 %_index6306)
  store { i64, [0 x i64] }* %_result6309, { i64, [0 x i64] }** %_out6281
  %_i6311 = load i64, i64* %_i6293
  %_bop6312 = add i64 %_i6311, 1
  store i64 %_bop6312, i64* %_i6293
  br label %_cond6300
_cond6300:
  %_i6295 = load i64, i64* %_i6293
  %_len6296 = load i64, i64* %_len6272
  %_bop6297 = icmp slt i64 %_i6295, %_len6296
  br i1 %_bop6297, label %_body6299, label %_post6298
_post6298:
  %_out6314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6281
  ret { i64, [0 x i64] }* %_out6314
}

define i64 @program(i64 %_argc6243, { i64, [0 x i8*] }* %_argv6240) {
  %_array6260 = alloca { i64, [0 x i64] }*
  %_result6264 = alloca { i64, [0 x i64] }*
  %_raw_array6246 = call i64* @oat_alloc_array(i64 6)
  %_array6247 = bitcast i64* %_raw_array6246 to { i64, [0 x i64] }*
  %_ind6248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6247, i32 0, i32 1, i32 0
  store i64 13, i64* %_ind6248
  %_ind6250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6247, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind6250
  %_ind6252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6247, i32 0, i32 1, i32 2
  store i64 32, i64* %_ind6252
  %_ind6254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6247, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind6254
  %_ind6256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6247, i32 0, i32 1, i32 4
  store i64 2, i64* %_ind6256
  %_ind6258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6247, i32 0, i32 1, i32 5
  store i64 6, i64* %_ind6258
  store { i64, [0 x i64] }* %_array6247, { i64, [0 x i64] }** %_array6260
  %_array6262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6260
  %_result6263 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array6262, i64 6)
  store { i64, [0 x i64] }* %_result6263, { i64, [0 x i64] }** %_result6264
  %_result6266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result6264
  %_tmp6268 = bitcast { i64, [0 x i64] }* %_result6266 to i64*
  call void @oat_assert_array_length(i64* %_tmp6268, i64 5)
  %_index_ptr6269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result6266, i32 0, i32 1, i32 5
  %_index6270 = load i64, i64* %_index_ptr6269
  ret i64 %_index6270
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
