; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args576 = alloca i64
  %_args577 = alloca { i64, [0 x i8*] }*
  %_localId588 = alloca { i64, [0 x i1] }*
  %_localId590 = alloca i64
  store i64 %argc, i64* %_args576
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args577
  %_atomArrUID581 = alloca { i64, [2 x i1] }
  %_idxUID586 = getelementptr { i64, [2 x i1] }, { i64, [2 x i1] }* %_atomArrUID581, i32 0, i32 0
  store i64 2, i64* %_idxUID586
  %_gep582 = getelementptr { i64, [2 x i1] }, { i64, [2 x i1] }* %_atomArrUID581, i32 0, i32 1, i32 0
  %_gep583 = getelementptr { i64, [2 x i1] }, { i64, [2 x i1] }* %_atomArrUID581, i32 0, i32 1, i32 1
  store i1 1, i1* %_gep582
  store i1 0, i1* %_gep583
  %_arrayUID580 = bitcast { i64, [2 x i1] }* %_atomArrUID581 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_arrayUID580, { i64, [0 x i1] }** %_localId588
  store i64 0, i64* %_localId590
  %_locRef595 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId588
  %_idxUID596 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef595, i32 0, i32 1, i32 0
  %_getArrUID597 = load i1, i1* %_idxUID596
  br i1 %_getArrUID597, label %_ifTruelbl592, label %_ifFalselbl593
_ifTruelbl592:
  store i64 1, i64* %_localId590
  br label %_ifEndlbl594
_ifFalselbl593:
  br label %_ifEndlbl594
_ifEndlbl594:
  %_locRef599 = load i64, i64* %_localId590
  ret i64 %_locRef599
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
