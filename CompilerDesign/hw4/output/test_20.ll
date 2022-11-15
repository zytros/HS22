; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_args370 = alloca { i64, [0 x i64] }*
  %_args371 = alloca { i64, [0 x i64] }*
  %_args372 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_args370
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_args371
  store i1 %b, i1* %_args372
  %_locRef379 = load i1, i1* %_args372
  br i1 %_locRef379, label %_ifTruelbl376, label %_ifFalselbl377
_ifTruelbl376:
  %_locRef380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args370
  ret { i64, [0 x i64] }* %_locRef380
_ifFalselbl377:
  %_locRef381 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args371
  ret { i64, [0 x i64] }* %_locRef381
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args317 = alloca i64
  %_args318 = alloca { i64, [0 x i8*] }*
  %_localId323 = alloca { i64, [0 x i64] }*
  %_localId325 = alloca i64
  %_localId343 = alloca { i64, [0 x i64] }*
  %_localId345 = alloca i64
  store i64 %argc, i64* %_args317
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args318
  %_raw_array321 = call i64* @oat_alloc_array(i64 3)
  %_array322 = bitcast i64* %_raw_array321 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array322, { i64, [0 x i64] }** %_localId323
  store i64 0, i64* %_localId325
  %_locRef327 = load i64, i64* %_localId325
  %_bop328 = icmp slt i64 %_locRef327, 3
  br i1 %_bop328, label %_while_body_jmp330, label %_while_end_jmp329
_while_body_jmp330:
  %_locRef331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId323
  %_locRef332 = load i64, i64* %_localId325
  %_locRef333 = load i64, i64* %_localId325
  %_arridx334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef331, i32 0, i32 1, i64 %_locRef332
  store i64 %_locRef333, i64* %_arridx334
  %_locRef336 = load i64, i64* %_localId325
  %_bop337 = add i64 %_locRef336, 1
  store i64 %_bop337, i64* %_localId325
  %_locRef339 = load i64, i64* %_localId325
  %_bop340 = icmp slt i64 %_locRef339, 3
  br i1 %_bop340, label %_while_body_jmp330, label %_while_end_jmp329
_while_end_jmp329:
  %_raw_array341 = call i64* @oat_alloc_array(i64 3)
  %_array342 = bitcast i64* %_raw_array341 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array342, { i64, [0 x i64] }** %_localId343
  store i64 0, i64* %_localId345
  %_locRef347 = load i64, i64* %_localId345
  %_bop348 = icmp slt i64 %_locRef347, 3
  br i1 %_bop348, label %_while_body_jmp350, label %_while_end_jmp349
_while_body_jmp350:
  %_locRef351 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId343
  %_locRef352 = load i64, i64* %_localId345
  %_locRef353 = load i64, i64* %_localId345
  %_bop354 = add i64 %_locRef353, 3
  %_arridx355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef351, i32 0, i32 1, i64 %_locRef352
  store i64 %_bop354, i64* %_arridx355
  %_locRef357 = load i64, i64* %_localId345
  %_bop358 = add i64 %_locRef357, 1
  store i64 %_bop358, i64* %_localId345
  %_locRef360 = load i64, i64* %_localId345
  %_bop361 = icmp slt i64 %_locRef360, 3
  br i1 %_bop361, label %_while_body_jmp350, label %_while_end_jmp349
_while_end_jmp349:
  %_locRef362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId323
  %_locRef363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId343
  %_callUID364 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_locRef362, { i64, [0 x i64] }* %_locRef363, i1 1)
  %_arridx365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_callUID364, i32 0, i32 1, i32 0
  store i64 17, i64* %_arridx365
  %_locRef367 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId323
  %_idxUID368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef367, i32 0, i32 1, i32 0
  %_getArrUID369 = load i64, i64* %_idxUID368
  ret i64 %_getArrUID369
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
