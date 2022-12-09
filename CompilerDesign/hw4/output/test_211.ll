; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_atomArrUID6488 to { i64, [0 x i64] }*)
@_atomArrUID6488 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_stringd6406 = global [1 x i8] c"\00"
@_string6405 = global i8* bitcast ([1 x i8]* @_stringd6406 to i8*)
@_stringd6376 = global [7 x i8] c"TOMATO\00"
@_string6375 = global i8* bitcast ([7 x i8]* @_stringd6376 to i8*)
@_stringd6381 = global [8 x i8] c"ORATING\00"
@_string6380 = global i8* bitcast ([8 x i8]* @_stringd6381 to i8*)

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_args6388 = alloca i64
  %_args6389 = alloca i64
  %_args6390 = alloca i8*
  %_args6391 = alloca i8*
  %_localId6409 = alloca { i64, [0 x i64] }*
  %_localId6413 = alloca { i64, [0 x i64] }*
  %_localId6419 = alloca i64
  %_localId6425 = alloca i64
  %_localId6440 = alloca i8*
  %_localId6451 = alloca i8*
  %_localId6462 = alloca i8*
  %_localId6470 = alloca i8*
  %_localId6474 = alloca i64
  %_localId6478 = alloca i64
  store i64 %i, i64* %_args6388
  store i64 %j, i64* %_args6389
  store i8* %a, i8** %_args6390
  store i8* %b, i8** %_args6391
  %_locRef6399 = load i64, i64* %_args6388
  %_bop6400 = icmp slt i64 %_locRef6399, 0
  %_locRef6401 = load i64, i64* %_args6389
  %_bop6402 = icmp slt i64 %_locRef6401, 0
  %_bop6403 = or i1 %_bop6400, %_bop6402
  br i1 %_bop6403, label %_ifTruelbl6396, label %_ifFalselbl6397
_ifTruelbl6396:
  %_stringp6404 = load i8*, i8** @_string6405
  ret i8* %_stringp6404
_ifFalselbl6397:
  br label %_ifEndlbl6398
_ifEndlbl6398:
  %_locRef6407 = load i8*, i8** %_args6390
  %_callUID6408 = call { i64, [0 x i64] }* @array_of_string(i8* %_locRef6407)
  store { i64, [0 x i64] }* %_callUID6408, { i64, [0 x i64] }** %_localId6409
  %_locRef6411 = load i8*, i8** %_args6391
  %_callUID6412 = call { i64, [0 x i64] }* @array_of_string(i8* %_locRef6411)
  store { i64, [0 x i64] }* %_callUID6412, { i64, [0 x i64] }** %_localId6413
  %_locRef6415 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6409
  %_locRef6416 = load i64, i64* %_args6388
  %_idxUID6417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6415, i32 0, i32 1, i64 %_locRef6416
  %_getArrUID6418 = load i64, i64* %_idxUID6417
  store i64 %_getArrUID6418, i64* %_localId6419
  %_locRef6421 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6413
  %_locRef6422 = load i64, i64* %_args6389
  %_idxUID6423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6421, i32 0, i32 1, i64 %_locRef6422
  %_getArrUID6424 = load i64, i64* %_idxUID6423
  store i64 %_getArrUID6424, i64* %_localId6425
  %_locRef6430 = load i64, i64* %_localId6419
  %_locRef6431 = load i64, i64* %_localId6425
  %_bop6432 = icmp eq i64 %_locRef6430, %_locRef6431
  br i1 %_bop6432, label %_ifTruelbl6427, label %_ifFalselbl6428
_ifTruelbl6427:
  %_locRef6433 = load i64, i64* %_args6388
  %_bop6434 = sub i64 %_locRef6433, 1
  %_locRef6435 = load i64, i64* %_args6389
  %_bop6436 = sub i64 %_locRef6435, 1
  %_locRef6437 = load i8*, i8** %_args6390
  %_locRef6438 = load i8*, i8** %_args6391
  %_callUID6439 = call i8* @lcs(i64 %_bop6434, i64 %_bop6436, i8* %_locRef6437, i8* %_locRef6438)
  store i8* %_callUID6439, i8** %_localId6440
  %_locRef6442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_locRef6443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId6409
  %_locRef6444 = load i64, i64* %_args6388
  %_idxUID6445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6443, i32 0, i32 1, i64 %_locRef6444
  %_getArrUID6446 = load i64, i64* %_idxUID6445
  %_arridx6447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef6442, i32 0, i32 1, i32 0
  store i64 %_getArrUID6446, i64* %_arridx6447
  %_locRef6449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_callUID6450 = call i8* @string_of_array({ i64, [0 x i64] }* %_locRef6449)
  store i8* %_callUID6450, i8** %_localId6451
  %_locRef6453 = load i8*, i8** %_localId6440
  %_locRef6454 = load i8*, i8** %_localId6451
  %_callUID6455 = call i8* @string_cat(i8* %_locRef6453, i8* %_locRef6454)
  ret i8* %_callUID6455
_ifFalselbl6428:
  br label %_ifEndlbl6429
_ifEndlbl6429:
  %_locRef6456 = load i64, i64* %_args6388
  %_locRef6457 = load i64, i64* %_args6389
  %_bop6458 = sub i64 %_locRef6457, 1
  %_locRef6459 = load i8*, i8** %_args6390
  %_locRef6460 = load i8*, i8** %_args6391
  %_callUID6461 = call i8* @lcs(i64 %_locRef6456, i64 %_bop6458, i8* %_locRef6459, i8* %_locRef6460)
  store i8* %_callUID6461, i8** %_localId6462
  %_locRef6464 = load i64, i64* %_args6388
  %_bop6465 = sub i64 %_locRef6464, 1
  %_locRef6466 = load i64, i64* %_args6389
  %_locRef6467 = load i8*, i8** %_args6390
  %_locRef6468 = load i8*, i8** %_args6391
  %_callUID6469 = call i8* @lcs(i64 %_bop6465, i64 %_locRef6466, i8* %_locRef6467, i8* %_locRef6468)
  store i8* %_callUID6469, i8** %_localId6470
  %_locRef6472 = load i8*, i8** %_localId6462
  %_callUID6473 = call i64 @length_of_string(i8* %_locRef6472)
  store i64 %_callUID6473, i64* %_localId6474
  %_locRef6476 = load i8*, i8** %_localId6470
  %_callUID6477 = call i64 @length_of_string(i8* %_locRef6476)
  store i64 %_callUID6477, i64* %_localId6478
  %_locRef6483 = load i64, i64* %_localId6474
  %_locRef6484 = load i64, i64* %_localId6478
  %_bop6485 = icmp slt i64 %_locRef6483, %_locRef6484
  br i1 %_bop6485, label %_ifTruelbl6480, label %_ifFalselbl6481
_ifTruelbl6480:
  %_locRef6486 = load i8*, i8** %_localId6470
  ret i8* %_locRef6486
_ifFalselbl6481:
  %_locRef6487 = load i8*, i8** %_localId6462
  ret i8* %_locRef6487
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args6370 = alloca i64
  %_args6371 = alloca { i64, [0 x i8*] }*
  %_localId6377 = alloca i8*
  %_localId6382 = alloca i8*
  store i64 %argc, i64* %_args6370
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args6371
  %_stringp6374 = load i8*, i8** @_string6375
  store i8* %_stringp6374, i8** %_localId6377
  %_stringp6379 = load i8*, i8** @_string6380
  store i8* %_stringp6379, i8** %_localId6382
  %_locRef6384 = load i8*, i8** %_localId6377
  %_locRef6385 = load i8*, i8** %_localId6382
  %_callUID6386 = call i8* @lcs(i64 5, i64 6, i8* %_locRef6384, i8* %_locRef6385)
  call void @print_string(i8* %_callUID6386)
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
