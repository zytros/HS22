; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_args4367 = alloca { i64, [0 x i64] }*
  %_args4368 = alloca i64
  %_args4369 = alloca i64
  %_localId4374 = alloca i64
  %_localId4380 = alloca i64
  %_localId4383 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args4367
  store i64 %s, i64* %_args4368
  store i64 %b, i64* %_args4369
  %_locRef4373 = load i64, i64* %_args4368
  store i64 %_locRef4373, i64* %_localId4374
  %_locRef4376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4367
  %_locRef4377 = load i64, i64* %_args4368
  %_idxUID4378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4376, i32 0, i32 1, i64 %_locRef4377
  %_getArrUID4379 = load i64, i64* %_idxUID4378
  store i64 %_getArrUID4379, i64* %_localId4380
  %_locRef4382 = load i64, i64* %_args4368
  store i64 %_locRef4382, i64* %_localId4383
  %_locRef4385 = load i64, i64* %_localId4374
  %_locRef4386 = load i64, i64* %_args4369
  %_bop4387 = icmp slt i64 %_locRef4385, %_locRef4386
  br i1 %_bop4387, label %_while_body_jmp4389, label %_while_end_jmp4388
_while_body_jmp4389:
  %_locRef4393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4367
  %_locRef4394 = load i64, i64* %_localId4374
  %_idxUID4395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4393, i32 0, i32 1, i64 %_locRef4394
  %_getArrUID4396 = load i64, i64* %_idxUID4395
  %_locRef4397 = load i64, i64* %_localId4380
  %_bop4398 = icmp slt i64 %_getArrUID4396, %_locRef4397
  br i1 %_bop4398, label %_ifTruelbl4390, label %_ifFalselbl4391
_ifTruelbl4390:
  %_locRef4399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4367
  %_locRef4400 = load i64, i64* %_localId4374
  %_idxUID4401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4399, i32 0, i32 1, i64 %_locRef4400
  %_getArrUID4402 = load i64, i64* %_idxUID4401
  store i64 %_getArrUID4402, i64* %_localId4380
  %_locRef4404 = load i64, i64* %_localId4374
  store i64 %_locRef4404, i64* %_localId4383
  br label %_ifEndlbl4392
_ifFalselbl4391:
  br label %_ifEndlbl4392
_ifEndlbl4392:
  %_locRef4406 = load i64, i64* %_localId4374
  %_bop4407 = add i64 %_locRef4406, 1
  store i64 %_bop4407, i64* %_localId4374
  %_locRef4409 = load i64, i64* %_localId4374
  %_locRef4410 = load i64, i64* %_args4369
  %_bop4411 = icmp slt i64 %_locRef4409, %_locRef4410
  br i1 %_bop4411, label %_while_body_jmp4389, label %_while_end_jmp4388
_while_end_jmp4388:
  %_locRef4412 = load i64, i64* %_localId4383
  ret i64 %_locRef4412
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_args4323 = alloca { i64, [0 x i64] }*
  %_args4324 = alloca i64
  %_localId4327 = alloca i64
  %_localId4329 = alloca i64
  %_localId4331 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_args4323
  store i64 %s, i64* %_args4324
  store i64 0, i64* %_localId4327
  store i64 0, i64* %_localId4329
  store i64 0, i64* %_localId4331
  %_locRef4333 = load i64, i64* %_localId4331
  %_locRef4334 = load i64, i64* %_args4324
  %_bop4335 = icmp slt i64 %_locRef4333, %_locRef4334
  br i1 %_bop4335, label %_while_body_jmp4337, label %_while_end_jmp4336
_while_body_jmp4337:
  %_locRef4338 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4323
  %_locRef4339 = load i64, i64* %_localId4331
  %_locRef4340 = load i64, i64* %_args4324
  %_callUID4341 = call i64 @getminindex({ i64, [0 x i64] }* %_locRef4338, i64 %_locRef4339, i64 %_locRef4340)
  store i64 %_callUID4341, i64* %_localId4329
  %_locRef4343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4323
  %_locRef4344 = load i64, i64* %_localId4331
  %_idxUID4345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4343, i32 0, i32 1, i64 %_locRef4344
  %_getArrUID4346 = load i64, i64* %_idxUID4345
  store i64 %_getArrUID4346, i64* %_localId4327
  %_locRef4348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4323
  %_locRef4349 = load i64, i64* %_localId4331
  %_locRef4350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4323
  %_locRef4351 = load i64, i64* %_localId4329
  %_idxUID4352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4350, i32 0, i32 1, i64 %_locRef4351
  %_getArrUID4353 = load i64, i64* %_idxUID4352
  %_arridx4354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4348, i32 0, i32 1, i64 %_locRef4349
  store i64 %_getArrUID4353, i64* %_arridx4354
  %_locRef4356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4323
  %_locRef4357 = load i64, i64* %_localId4329
  %_locRef4358 = load i64, i64* %_localId4327
  %_arridx4359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4356, i32 0, i32 1, i64 %_locRef4357
  store i64 %_locRef4358, i64* %_arridx4359
  %_locRef4361 = load i64, i64* %_localId4331
  %_bop4362 = add i64 %_locRef4361, 1
  store i64 %_bop4362, i64* %_localId4331
  %_locRef4364 = load i64, i64* %_localId4331
  %_locRef4365 = load i64, i64* %_args4324
  %_bop4366 = icmp slt i64 %_locRef4364, %_locRef4365
  br i1 %_bop4366, label %_while_body_jmp4337, label %_while_end_jmp4336
_while_end_jmp4336:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args4279 = alloca i64
  %_args4280 = alloca { i64, [0 x i8*] }*
  %_localId4303 = alloca { i64, [0 x i64] }*
  %_localId4307 = alloca i64
  store i64 %argc, i64* %_args4279
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args4280
  %_atomArrUID4284 = alloca { i64, [8 x i64] }
  %_idxUID4301 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID4284, i32 0, i32 0
  store i64 8, i64* %_idxUID4301
  %_gep4285 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID4284, i32 0, i32 1, i32 0
  %_gep4286 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID4284, i32 0, i32 1, i32 1
  %_gep4287 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID4284, i32 0, i32 1, i32 2
  %_gep4288 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID4284, i32 0, i32 1, i32 3
  %_gep4289 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID4284, i32 0, i32 1, i32 4
  %_gep4290 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID4284, i32 0, i32 1, i32 5
  %_gep4291 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID4284, i32 0, i32 1, i32 6
  %_gep4292 = getelementptr { i64, [8 x i64] }, { i64, [8 x i64] }* %_atomArrUID4284, i32 0, i32 1, i32 7
  store i64 5, i64* %_gep4285
  store i64 200, i64* %_gep4286
  store i64 1, i64* %_gep4287
  store i64 65, i64* %_gep4288
  store i64 30, i64* %_gep4289
  store i64 99, i64* %_gep4290
  store i64 2, i64* %_gep4291
  store i64 0, i64* %_gep4292
  %_arrayUID4283 = bitcast { i64, [8 x i64] }* %_atomArrUID4284 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID4283, { i64, [0 x i64] }** %_localId4303
  %_locRef4305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4303
  call void @selectionsort({ i64, [0 x i64] }* %_locRef4305, i64 8)
  store i64 0, i64* %_localId4307
  %_locRef4309 = load i64, i64* %_localId4307
  %_bop4310 = icmp slt i64 %_locRef4309, 8
  br i1 %_bop4310, label %_while_body_jmp4312, label %_while_end_jmp4311
_while_body_jmp4312:
  %_locRef4313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4303
  %_locRef4314 = load i64, i64* %_localId4307
  %_idxUID4315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4313, i32 0, i32 1, i64 %_locRef4314
  %_getArrUID4316 = load i64, i64* %_idxUID4315
  call void @print_int(i64 %_getArrUID4316)
  %_locRef4318 = load i64, i64* %_localId4307
  %_bop4319 = add i64 %_locRef4318, 1
  store i64 %_bop4319, i64* %_localId4307
  %_locRef4321 = load i64, i64* %_localId4307
  %_bop4322 = icmp slt i64 %_locRef4321, 8
  br i1 %_bop4322, label %_while_body_jmp4312, label %_while_end_jmp4311
_while_end_jmp4311:
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
