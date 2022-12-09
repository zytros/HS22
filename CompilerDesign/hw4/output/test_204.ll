; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_args5504 = alloca { i64, [0 x i64] }*
  %_args5505 = alloca i64
  %_args5506 = alloca i64
  %_localId5512 = alloca i64
  %_localId5516 = alloca i64
  %_localId5518 = alloca i64
  %_localId5521 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_args5504
  store i64 %i, i64* %_args5505
  store i64 %len, i64* %_args5506
  %_locRef5510 = load i64, i64* %_args5505
  %_bop5511 = mul i64 %_locRef5510, 2
  store i64 %_bop5511, i64* %_localId5512
  %_locRef5514 = load i64, i64* %_args5505
  %_bop5515 = add i64 %_locRef5514, 1
  store i64 %_bop5515, i64* %_localId5516
  store i64 0, i64* %_localId5518
  %_locRef5520 = load i64, i64* %_args5505
  store i64 %_locRef5520, i64* %_localId5521
  %_locRef5526 = load i64, i64* %_localId5512
  %_locRef5527 = load i64, i64* %_args5506
  %_bop5528 = icmp slt i64 %_locRef5526, %_locRef5527
  br i1 %_bop5528, label %_ifTruelbl5523, label %_ifFalselbl5524
_ifTruelbl5523:
  %_locRef5532 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5504
  %_locRef5533 = load i64, i64* %_localId5512
  %_idxUID5534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5532, i32 0, i32 1, i64 %_locRef5533
  %_getArrUID5535 = load i64, i64* %_idxUID5534
  %_locRef5536 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5504
  %_locRef5537 = load i64, i64* %_localId5521
  %_idxUID5538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5536, i32 0, i32 1, i64 %_locRef5537
  %_getArrUID5539 = load i64, i64* %_idxUID5538
  %_bop5540 = icmp sgt i64 %_getArrUID5535, %_getArrUID5539
  br i1 %_bop5540, label %_ifTruelbl5529, label %_ifFalselbl5530
_ifTruelbl5529:
  %_locRef5541 = load i64, i64* %_localId5512
  store i64 %_locRef5541, i64* %_localId5521
  br label %_ifEndlbl5531
_ifFalselbl5530:
  br label %_ifEndlbl5531
_ifEndlbl5531:
  br label %_ifEndlbl5525
_ifFalselbl5524:
  br label %_ifEndlbl5525
_ifEndlbl5525:
  %_locRef5546 = load i64, i64* %_localId5516
  %_locRef5547 = load i64, i64* %_args5506
  %_bop5548 = icmp slt i64 %_locRef5546, %_locRef5547
  br i1 %_bop5548, label %_ifTruelbl5543, label %_ifFalselbl5544
_ifTruelbl5543:
  %_locRef5552 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5504
  %_locRef5553 = load i64, i64* %_localId5516
  %_idxUID5554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5552, i32 0, i32 1, i64 %_locRef5553
  %_getArrUID5555 = load i64, i64* %_idxUID5554
  %_locRef5556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5504
  %_locRef5557 = load i64, i64* %_localId5521
  %_idxUID5558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5556, i32 0, i32 1, i64 %_locRef5557
  %_getArrUID5559 = load i64, i64* %_idxUID5558
  %_bop5560 = icmp sgt i64 %_getArrUID5555, %_getArrUID5559
  br i1 %_bop5560, label %_ifTruelbl5549, label %_ifFalselbl5550
_ifTruelbl5549:
  %_locRef5561 = load i64, i64* %_localId5516
  store i64 %_locRef5561, i64* %_localId5521
  br label %_ifEndlbl5551
_ifFalselbl5550:
  br label %_ifEndlbl5551
_ifEndlbl5551:
  br label %_ifEndlbl5545
_ifFalselbl5544:
  br label %_ifEndlbl5545
_ifEndlbl5545:
  %_locRef5566 = load i64, i64* %_localId5521
  %_locRef5567 = load i64, i64* %_args5505
  %_bop5568 = icmp ne i64 %_locRef5566, %_locRef5567
  br i1 %_bop5568, label %_ifTruelbl5563, label %_ifFalselbl5564
_ifTruelbl5563:
  %_locRef5569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5504
  %_locRef5570 = load i64, i64* %_args5505
  %_idxUID5571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5569, i32 0, i32 1, i64 %_locRef5570
  %_getArrUID5572 = load i64, i64* %_idxUID5571
  store i64 %_getArrUID5572, i64* %_localId5518
  %_locRef5574 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5504
  %_locRef5575 = load i64, i64* %_args5505
  %_locRef5576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5504
  %_locRef5577 = load i64, i64* %_localId5521
  %_idxUID5578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5576, i32 0, i32 1, i64 %_locRef5577
  %_getArrUID5579 = load i64, i64* %_idxUID5578
  %_arridx5580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5574, i32 0, i32 1, i64 %_locRef5575
  store i64 %_getArrUID5579, i64* %_arridx5580
  %_locRef5582 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5504
  %_locRef5583 = load i64, i64* %_localId5521
  %_locRef5584 = load i64, i64* %_localId5518
  %_arridx5585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5582, i32 0, i32 1, i64 %_locRef5583
  store i64 %_locRef5584, i64* %_arridx5585
  %_locRef5587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5504
  %_locRef5588 = load i64, i64* %_localId5521
  %_locRef5589 = load i64, i64* %_args5506
  call void @min_heapify({ i64, [0 x i64] }* %_locRef5587, i64 %_locRef5588, i64 %_locRef5589)
  br label %_ifEndlbl5565
_ifFalselbl5564:
  br label %_ifEndlbl5565
_ifEndlbl5565:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_args5484 = alloca { i64, [0 x i64] }*
  %_args5485 = alloca i64
  %_localId5489 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_args5484
  store i64 %len, i64* %_args5485
  %_locRef5488 = load i64, i64* %_args5485
  store i64 %_locRef5488, i64* %_localId5489
  %_locRef5491 = load i64, i64* %_localId5489
  %_bop5492 = icmp sge i64 %_locRef5491, 1
  br i1 %_bop5492, label %_while_body_jmp5494, label %_while_end_jmp5493
_while_body_jmp5494:
  %_locRef5495 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5484
  %_locRef5496 = load i64, i64* %_localId5489
  %_locRef5497 = load i64, i64* %_args5485
  call void @min_heapify({ i64, [0 x i64] }* %_locRef5495, i64 %_locRef5496, i64 %_locRef5497)
  %_locRef5499 = load i64, i64* %_localId5489
  %_bop5500 = sub i64 %_locRef5499, 1
  store i64 %_bop5500, i64* %_localId5489
  %_locRef5502 = load i64, i64* %_localId5489
  %_bop5503 = icmp sge i64 %_locRef5502, 1
  br i1 %_bop5503, label %_while_body_jmp5494, label %_while_end_jmp5493
_while_end_jmp5493:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args5395 = alloca i64
  %_args5396 = alloca { i64, [0 x i8*] }*
  %_localId5425 = alloca { i64, [0 x i64] }*
  %_localId5453 = alloca { i64, [0 x i64] }*
  %_localId5457 = alloca i64
  %_localId5459 = alloca i64
  store i64 %argc, i64* %_args5395
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args5396
  %_atomArrUID5400 = alloca { i64, [11 x i64] }
  %_idxUID5423 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 0
  store i64 11, i64* %_idxUID5423
  %_gep5401 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 0
  %_gep5402 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 1
  %_gep5403 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 2
  %_gep5404 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 3
  %_gep5405 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 4
  %_gep5406 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 5
  %_gep5407 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 6
  %_gep5408 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 7
  %_gep5409 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 8
  %_gep5410 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 9
  %_gep5411 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5400, i32 0, i32 1, i32 10
  store i64 0, i64* %_gep5401
  store i64 9, i64* %_gep5402
  store i64 1, i64* %_gep5403
  store i64 2, i64* %_gep5404
  store i64 8, i64* %_gep5405
  store i64 10, i64* %_gep5406
  store i64 7, i64* %_gep5407
  store i64 3, i64* %_gep5408
  store i64 6, i64* %_gep5409
  store i64 4, i64* %_gep5410
  store i64 5, i64* %_gep5411
  %_arrayUID5399 = bitcast { i64, [11 x i64] }* %_atomArrUID5400 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID5399, { i64, [0 x i64] }** %_localId5425
  %_atomArrUID5428 = alloca { i64, [11 x i64] }
  %_idxUID5451 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 0
  store i64 11, i64* %_idxUID5451
  %_gep5429 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 0
  %_gep5430 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 1
  %_gep5431 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 2
  %_gep5432 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 3
  %_gep5433 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 4
  %_gep5434 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 5
  %_gep5435 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 6
  %_gep5436 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 7
  %_gep5437 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 8
  %_gep5438 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 9
  %_gep5439 = getelementptr { i64, [11 x i64] }, { i64, [11 x i64] }* %_atomArrUID5428, i32 0, i32 1, i32 10
  store i64 0, i64* %_gep5429
  store i64 1, i64* %_gep5430
  store i64 4, i64* %_gep5431
  store i64 2, i64* %_gep5432
  store i64 8, i64* %_gep5433
  store i64 5, i64* %_gep5434
  store i64 7, i64* %_gep5435
  store i64 3, i64* %_gep5436
  store i64 6, i64* %_gep5437
  store i64 9, i64* %_gep5438
  store i64 10, i64* %_gep5439
  %_arrayUID5427 = bitcast { i64, [11 x i64] }* %_atomArrUID5428 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID5427, { i64, [0 x i64] }** %_localId5453
  %_locRef5455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5425
  call void @make_min_heap({ i64, [0 x i64] }* %_locRef5455, i64 10)
  store i64 0, i64* %_localId5457
  store i64 0, i64* %_localId5459
  %_locRef5461 = load i64, i64* %_localId5459
  %_bop5462 = icmp slt i64 %_locRef5461, 11
  br i1 %_bop5462, label %_while_body_jmp5464, label %_while_end_jmp5463
_while_body_jmp5464:
  %_locRef5468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5425
  %_locRef5469 = load i64, i64* %_localId5459
  %_idxUID5470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5468, i32 0, i32 1, i64 %_locRef5469
  %_getArrUID5471 = load i64, i64* %_idxUID5470
  %_locRef5472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId5453
  %_locRef5473 = load i64, i64* %_localId5459
  %_idxUID5474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5472, i32 0, i32 1, i64 %_locRef5473
  %_getArrUID5475 = load i64, i64* %_idxUID5474
  %_bop5476 = icmp ne i64 %_getArrUID5471, %_getArrUID5475
  br i1 %_bop5476, label %_ifTruelbl5465, label %_ifFalselbl5466
_ifTruelbl5465:
  store i64 1, i64* %_localId5457
  br label %_ifEndlbl5467
_ifFalselbl5466:
  br label %_ifEndlbl5467
_ifEndlbl5467:
  %_locRef5478 = load i64, i64* %_localId5459
  %_bop5479 = add i64 %_locRef5478, 1
  store i64 %_bop5479, i64* %_localId5459
  %_locRef5481 = load i64, i64* %_localId5459
  %_bop5482 = icmp slt i64 %_locRef5481, 11
  br i1 %_bop5482, label %_while_body_jmp5464, label %_while_end_jmp5463
_while_end_jmp5463:
  %_locRef5483 = load i64, i64* %_localId5457
  ret i64 %_locRef5483
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
