; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_args5376 = alloca i64
  store i64 %n, i64* %_args5376
  %_locRef5381 = load i64, i64* %_args5376
  %_bop5382 = icmp eq i64 %_locRef5381, 0
  br i1 %_bop5382, label %_ifTruelbl5378, label %_ifFalselbl5379
_ifTruelbl5378:
  ret i64 0
_ifFalselbl5379:
  br label %_ifEndlbl5380
_ifEndlbl5380:
  %_locRef5386 = load i64, i64* %_args5376
  %_bop5387 = icmp eq i64 %_locRef5386, 1
  br i1 %_bop5387, label %_ifTruelbl5383, label %_ifFalselbl5384
_ifTruelbl5383:
  ret i64 1
_ifFalselbl5384:
  br label %_ifEndlbl5385
_ifEndlbl5385:
  %_locRef5388 = load i64, i64* %_args5376
  %_bop5389 = sub i64 %_locRef5388, 1
  %_callUID5390 = call i64 @fibR(i64 %_bop5389)
  %_locRef5391 = load i64, i64* %_args5376
  %_bop5392 = sub i64 %_locRef5391, 2
  %_callUID5393 = call i64 @fibR(i64 %_bop5392)
  %_bop5394 = add i64 %_callUID5390, %_callUID5393
  ret i64 %_bop5394
}

define i64 @fibI(i64 %n) {
  %_args5335 = alloca i64
  %_localId5337 = alloca i64
  %_localId5339 = alloca i64
  %_localId5359 = alloca i64
  store i64 %n, i64* %_args5335
  store i64 0, i64* %_localId5337
  store i64 1, i64* %_localId5339
  %_locRef5344 = load i64, i64* %_args5335
  %_bop5345 = icmp eq i64 %_locRef5344, 0
  br i1 %_bop5345, label %_ifTruelbl5341, label %_ifFalselbl5342
_ifTruelbl5341:
  %_locRef5346 = load i64, i64* %_localId5337
  ret i64 %_locRef5346
_ifFalselbl5342:
  br label %_ifEndlbl5343
_ifEndlbl5343:
  %_locRef5350 = load i64, i64* %_args5335
  %_bop5351 = icmp eq i64 %_locRef5350, 1
  br i1 %_bop5351, label %_ifTruelbl5347, label %_ifFalselbl5348
_ifTruelbl5347:
  %_locRef5352 = load i64, i64* %_localId5339
  ret i64 %_locRef5352
_ifFalselbl5348:
  br label %_ifEndlbl5349
_ifEndlbl5349:
  %_locRef5353 = load i64, i64* %_args5335
  %_bop5354 = sub i64 %_locRef5353, 2
  %_bop5355 = icmp sgt i64 %_bop5354, 0
  br i1 %_bop5355, label %_while_body_jmp5357, label %_while_end_jmp5356
_while_body_jmp5357:
  %_locRef5358 = load i64, i64* %_localId5339
  store i64 %_locRef5358, i64* %_localId5359
  %_locRef5361 = load i64, i64* %_localId5339
  %_locRef5362 = load i64, i64* %_localId5337
  %_bop5363 = add i64 %_locRef5361, %_locRef5362
  store i64 %_bop5363, i64* %_localId5339
  %_locRef5365 = load i64, i64* %_localId5359
  store i64 %_locRef5365, i64* %_localId5337
  %_locRef5367 = load i64, i64* %_args5335
  %_bop5368 = sub i64 %_locRef5367, 1
  store i64 %_bop5368, i64* %_args5335
  %_locRef5370 = load i64, i64* %_args5335
  %_bop5371 = sub i64 %_locRef5370, 2
  %_bop5372 = icmp sgt i64 %_bop5371, 0
  br i1 %_bop5372, label %_while_body_jmp5357, label %_while_end_jmp5356
_while_end_jmp5356:
  %_locRef5373 = load i64, i64* %_localId5337
  %_locRef5374 = load i64, i64* %_localId5339
  %_bop5375 = add i64 %_locRef5373, %_locRef5374
  ret i64 %_bop5375
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args5319 = alloca i64
  %_args5320 = alloca { i64, [0 x i8*] }*
  %_localId5323 = alloca i64
  store i64 %argc, i64* %_args5319
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args5320
  store i64 1, i64* %_localId5323
  %_callUID5328 = call i64 @fibR(i64 12)
  %_bop5329 = icmp eq i64 %_callUID5328, 144
  %_callUID5330 = call i64 @fibI(i64 12)
  %_bop5331 = icmp eq i64 %_callUID5330, 144
  %_bop5332 = and i1 %_bop5329, %_bop5331
  br i1 %_bop5332, label %_ifTruelbl5325, label %_ifFalselbl5326
_ifTruelbl5325:
  store i64 0, i64* %_localId5323
  br label %_ifEndlbl5327
_ifFalselbl5326:
  br label %_ifEndlbl5327
_ifEndlbl5327:
  %_locRef5334 = load i64, i64* %_localId5323
  ret i64 %_locRef5334
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
