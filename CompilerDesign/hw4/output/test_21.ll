; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_atomArrUID395 to { i64, [0 x i64] }*)
@_atomArrUID395 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_atomArrUID394 to { i64, [0 x i64] }*)
@_atomArrUID394 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_args396 = alloca { i64, [0 x i64] }*
  %_args397 = alloca { i64, [0 x i64] }*
  %_args398 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_args396
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_args397
  store i1 %b, i1* %_args398
  %_locRef405 = load i1, i1* %_args398
  br i1 %_locRef405, label %_ifTruelbl402, label %_ifFalselbl403
_ifTruelbl402:
  %_locRef406 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args396
  ret { i64, [0 x i64] }* %_locRef406
_ifFalselbl403:
  %_locRef407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args397
  ret { i64, [0 x i64] }* %_locRef407
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args382 = alloca i64
  %_args383 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_args382
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args383
  %_locRef386 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_locRef387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_callUID388 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_locRef386, { i64, [0 x i64] }* %_locRef387, i1 1)
  %_arridx389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_callUID388, i32 0, i32 1, i32 0
  store i64 17, i64* %_arridx389
  %_locRef391 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_idxUID392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef391, i32 0, i32 1, i32 0
  %_getArrUID393 = load i64, i64* %_idxUID392
  ret i64 %_getArrUID393
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
