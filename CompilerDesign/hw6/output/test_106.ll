; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_str_arr3475 = global [2 x i8] c" \00"
@_str_arr3481 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3441, { i64, [0 x i8*] }* %_argv3438) {
  %_a3466 = alloca { i64, [0 x i64] }*
  %_i3468 = alloca i64
  %_raw_array3444 = call i64* @oat_alloc_array(i64 10)
  %_array3445 = bitcast i64* %_raw_array3444 to { i64, [0 x i64] }*
  %_ind3446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3446
  %_ind3448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3448
  %_ind3450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3450
  %_ind3452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3452
  %_ind3454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3454
  %_ind3456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3456
  %_ind3458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3458
  %_ind3460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3460
  %_ind3462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3462
  %_ind3464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3445, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3464
  store { i64, [0 x i64] }* %_array3445, { i64, [0 x i64] }** %_a3466
  store i64 0, i64* %_i3468
  %_a3470 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3466
  %_result3471 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3470)
  call void @print_string(i8* %_result3471)
  %_a3473 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3466
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3473, i64 0, i64 9)
  %_str3476 = getelementptr [2 x i8], [2 x i8]* @_str_arr3475, i32 0, i32 0
  call void @print_string(i8* %_str3476)
  %_a3478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3466
  %_result3479 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3478)
  call void @print_string(i8* %_result3479)
  %_str3482 = getelementptr [2 x i8], [2 x i8]* @_str_arr3481, i32 0, i32 0
  call void @print_string(i8* %_str3482)
  %_i3484 = load i64, i64* %_i3468
  ret i64 %_i3484
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3408, i64 %_low3405, i64 %_high3402) {
  %_a3409 = alloca { i64, [0 x i64] }*
  %_low3406 = alloca i64
  %_high3403 = alloca i64
  %_mid3411 = alloca i64
  store { i64, [0 x i64] }* %_a3408, { i64, [0 x i64] }** %_a3409
  store i64 %_low3405, i64* %_low3406
  store i64 %_high3402, i64* %_high3403
  store i64 0, i64* %_mid3411
  %_low3413 = load i64, i64* %_low3406
  %_high3414 = load i64, i64* %_high3403
  %_bop3415 = icmp slt i64 %_low3413, %_high3414
  br i1 %_bop3415, label %_then3437, label %_else3436
_else3436:
  br label %_merge3435
_merge3435:
  ret void
_then3437:
  %_low3416 = load i64, i64* %_low3406
  %_high3417 = load i64, i64* %_high3403
  %_bop3418 = add i64 %_low3416, %_high3417
  %_bop3419 = lshr i64 %_bop3418, 1
  store i64 %_bop3419, i64* %_mid3411
  %_mid3421 = load i64, i64* %_mid3411
  %_low3422 = load i64, i64* %_low3406
  %_a3423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3409
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3423, i64 %_low3422, i64 %_mid3421)
  %_high3425 = load i64, i64* %_high3403
  %_mid3426 = load i64, i64* %_mid3411
  %_bop3427 = add i64 %_mid3426, 1
  %_a3428 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3409
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3428, i64 %_bop3427, i64 %_high3425)
  %_mid3430 = load i64, i64* %_mid3411
  %_high3431 = load i64, i64* %_high3403
  %_low3432 = load i64, i64* %_low3406
  %_a3433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3409
  call void @merge({ i64, [0 x i64] }* %_a3433, i64 %_low3432, i64 %_high3431, i64 %_mid3430)
  br label %_merge3435
}

define void @merge({ i64, [0 x i64] }* %_a3228, i64 %_low3225, i64 %_high3222, i64 %_mid3219) {
  %_a3229 = alloca { i64, [0 x i64] }*
  %_low3226 = alloca i64
  %_high3223 = alloca i64
  %_mid3220 = alloca i64
  %_i3231 = alloca i64
  %_j3233 = alloca i64
  %_k3235 = alloca i64
  %_i23241 = alloca i64
  %_c3260 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3228, { i64, [0 x i64] }** %_a3229
  store i64 %_low3225, i64* %_low3226
  store i64 %_high3222, i64* %_high3223
  store i64 %_mid3219, i64* %_mid3220
  store i64 0, i64* %_i3231
  store i64 0, i64* %_j3233
  store i64 0, i64* %_k3235
  %_raw_array3239 = call i64* @oat_alloc_array(i64 50)
  %_array3240 = bitcast i64* %_raw_array3239 to { i64, [0 x i64] }*
  %_bnd_3238 = alloca i64
  store i64 50, i64* %_bnd_3238
  %_ptr_3237 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3240, { i64, [0 x i64] }** %_ptr_3237
  store i64 0, i64* %_i23241
  br label %_cond3248
_body3247:
  %__ptr_32373249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_3237
  %_i23250 = load i64, i64* %_i23241
  %_tmp3252 = bitcast { i64, [0 x i64] }* %__ptr_32373249 to i64*
  call void @oat_assert_array_length(i64* %_tmp3252, i64 %_i23250)
  %_index_ptr3253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_32373249, i32 0, i32 1, i64 %_i23250
  store i64 0, i64* %_index_ptr3253
  %_i23255 = load i64, i64* %_i23241
  %_bop3256 = add i64 %_i23255, 1
  store i64 %_bop3256, i64* %_i23241
  br label %_cond3248
_body3277:
  %_a3279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_i3280 = load i64, i64* %_i3231
  %_tmp3282 = bitcast { i64, [0 x i64] }* %_a3279 to i64*
  call void @oat_assert_array_length(i64* %_tmp3282, i64 %_i3280)
  %_index_ptr3283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3279, i32 0, i32 1, i64 %_i3280
  %_index3284 = load i64, i64* %_index_ptr3283
  %_a3285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_j3286 = load i64, i64* %_j3233
  %_tmp3288 = bitcast { i64, [0 x i64] }* %_a3285 to i64*
  call void @oat_assert_array_length(i64* %_tmp3288, i64 %_j3286)
  %_index_ptr3289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3285, i32 0, i32 1, i64 %_j3286
  %_index3290 = load i64, i64* %_index_ptr3289
  %_bop3291 = icmp slt i64 %_index3284, %_index3290
  br i1 %_bop3291, label %_then3330, label %_else3329
_body3335:
  %_c3337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3260
  %_k3338 = load i64, i64* %_k3235
  %_tmp3340 = bitcast { i64, [0 x i64] }* %_c3337 to i64*
  call void @oat_assert_array_length(i64* %_tmp3340, i64 %_k3338)
  %_index_ptr3341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3337, i32 0, i32 1, i64 %_k3338
  %_a3342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_i3343 = load i64, i64* %_i3231
  %_tmp3345 = bitcast { i64, [0 x i64] }* %_a3342 to i64*
  call void @oat_assert_array_length(i64* %_tmp3345, i64 %_i3343)
  %_index_ptr3346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3342, i32 0, i32 1, i64 %_i3343
  %_index3347 = load i64, i64* %_index_ptr3346
  store i64 %_index3347, i64* %_index_ptr3341
  %_k3349 = load i64, i64* %_k3235
  %_bop3350 = add i64 %_k3349, 1
  store i64 %_bop3350, i64* %_k3235
  %_i3352 = load i64, i64* %_i3231
  %_bop3353 = add i64 %_i3352, 1
  store i64 %_bop3353, i64* %_i3231
  br label %_cond3336
_body3359:
  %_c3361 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3260
  %_k3362 = load i64, i64* %_k3235
  %_tmp3364 = bitcast { i64, [0 x i64] }* %_c3361 to i64*
  call void @oat_assert_array_length(i64* %_tmp3364, i64 %_k3362)
  %_index_ptr3365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3361, i32 0, i32 1, i64 %_k3362
  %_a3366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_j3367 = load i64, i64* %_j3233
  %_tmp3369 = bitcast { i64, [0 x i64] }* %_a3366 to i64*
  call void @oat_assert_array_length(i64* %_tmp3369, i64 %_j3367)
  %_index_ptr3370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3366, i32 0, i32 1, i64 %_j3367
  %_index3371 = load i64, i64* %_index_ptr3370
  store i64 %_index3371, i64* %_index_ptr3365
  %_k3373 = load i64, i64* %_k3235
  %_bop3374 = add i64 %_k3373, 1
  store i64 %_bop3374, i64* %_k3235
  %_j3376 = load i64, i64* %_j3233
  %_bop3377 = add i64 %_j3376, 1
  store i64 %_bop3377, i64* %_j3233
  br label %_cond3360
_body3385:
  %_a3387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_i3388 = load i64, i64* %_i3231
  %_tmp3390 = bitcast { i64, [0 x i64] }* %_a3387 to i64*
  call void @oat_assert_array_length(i64* %_tmp3390, i64 %_i3388)
  %_index_ptr3391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3387, i32 0, i32 1, i64 %_i3388
  %_c3392 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3260
  %_i3393 = load i64, i64* %_i3231
  %_tmp3395 = bitcast { i64, [0 x i64] }* %_c3392 to i64*
  call void @oat_assert_array_length(i64* %_tmp3395, i64 %_i3393)
  %_index_ptr3396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3392, i32 0, i32 1, i64 %_i3393
  %_index3397 = load i64, i64* %_index_ptr3396
  store i64 %_index3397, i64* %_index_ptr3391
  %_i3399 = load i64, i64* %_i3231
  %_bop3400 = add i64 %_i3399, 1
  store i64 %_bop3400, i64* %_i3231
  br label %_cond3386
_cond3248:
  %_i23243 = load i64, i64* %_i23241
  %__bnd_32383244 = load i64, i64* %_bnd_3238
  %_bop3245 = icmp slt i64 %_i23243, %__bnd_32383244
  br i1 %_bop3245, label %_body3247, label %_post3246
_cond3278:
  %_i3269 = load i64, i64* %_i3231
  %_mid3270 = load i64, i64* %_mid3220
  %_bop3271 = icmp sle i64 %_i3269, %_mid3270
  %_j3272 = load i64, i64* %_j3233
  %_high3273 = load i64, i64* %_high3223
  %_bop3274 = icmp sle i64 %_j3272, %_high3273
  %_bop3275 = and i1 %_bop3271, %_bop3274
  br i1 %_bop3275, label %_body3277, label %_post3276
_cond3336:
  %_i3331 = load i64, i64* %_i3231
  %_mid3332 = load i64, i64* %_mid3220
  %_bop3333 = icmp sle i64 %_i3331, %_mid3332
  br i1 %_bop3333, label %_body3335, label %_post3334
_cond3360:
  %_j3355 = load i64, i64* %_j3233
  %_high3356 = load i64, i64* %_high3223
  %_bop3357 = icmp sle i64 %_j3355, %_high3356
  br i1 %_bop3357, label %_body3359, label %_post3358
_cond3386:
  %_i3381 = load i64, i64* %_i3231
  %_k3382 = load i64, i64* %_k3235
  %_bop3383 = icmp slt i64 %_i3381, %_k3382
  br i1 %_bop3383, label %_body3385, label %_post3384
_else3329:
  %_c3310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3260
  %_k3311 = load i64, i64* %_k3235
  %_tmp3313 = bitcast { i64, [0 x i64] }* %_c3310 to i64*
  call void @oat_assert_array_length(i64* %_tmp3313, i64 %_k3311)
  %_index_ptr3314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3310, i32 0, i32 1, i64 %_k3311
  %_a3315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_j3316 = load i64, i64* %_j3233
  %_tmp3318 = bitcast { i64, [0 x i64] }* %_a3315 to i64*
  call void @oat_assert_array_length(i64* %_tmp3318, i64 %_j3316)
  %_index_ptr3319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3315, i32 0, i32 1, i64 %_j3316
  %_index3320 = load i64, i64* %_index_ptr3319
  store i64 %_index3320, i64* %_index_ptr3314
  %_k3322 = load i64, i64* %_k3235
  %_bop3323 = add i64 %_k3322, 1
  store i64 %_bop3323, i64* %_k3235
  %_j3325 = load i64, i64* %_j3233
  %_bop3326 = add i64 %_j3325, 1
  store i64 %_bop3326, i64* %_j3233
  br label %_merge3328
_merge3328:
  br label %_cond3278
_post3246:
  store { i64, [0 x i64] }* %_array3240, { i64, [0 x i64] }** %_c3260
  %_low3262 = load i64, i64* %_low3226
  store i64 %_low3262, i64* %_i3231
  %_mid3264 = load i64, i64* %_mid3220
  %_bop3265 = add i64 %_mid3264, 1
  store i64 %_bop3265, i64* %_j3233
  %_low3267 = load i64, i64* %_low3226
  store i64 %_low3267, i64* %_k3235
  br label %_cond3278
_post3276:
  br label %_cond3336
_post3334:
  br label %_cond3360
_post3358:
  %_low3379 = load i64, i64* %_low3226
  store i64 %_low3379, i64* %_i3231
  br label %_cond3386
_post3384:
  ret void
_then3330:
  %_c3292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3260
  %_k3293 = load i64, i64* %_k3235
  %_tmp3295 = bitcast { i64, [0 x i64] }* %_c3292 to i64*
  call void @oat_assert_array_length(i64* %_tmp3295, i64 %_k3293)
  %_index_ptr3296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3292, i32 0, i32 1, i64 %_k3293
  %_a3297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_i3298 = load i64, i64* %_i3231
  %_tmp3300 = bitcast { i64, [0 x i64] }* %_a3297 to i64*
  call void @oat_assert_array_length(i64* %_tmp3300, i64 %_i3298)
  %_index_ptr3301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3297, i32 0, i32 1, i64 %_i3298
  %_index3302 = load i64, i64* %_index_ptr3301
  store i64 %_index3302, i64* %_index_ptr3296
  %_k3304 = load i64, i64* %_k3235
  %_bop3305 = add i64 %_k3304, 1
  store i64 %_bop3305, i64* %_k3235
  %_i3307 = load i64, i64* %_i3231
  %_bop3308 = add i64 %_i3307, 1
  store i64 %_bop3308, i64* %_i3231
  br label %_merge3328
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
