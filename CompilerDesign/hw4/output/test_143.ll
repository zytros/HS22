; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args773 = alloca i64
  %_args774 = alloca { i64, [0 x i8*] }*
  %_localId785 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args773
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args774
  %_atomArrUID778 = alloca { i64, [2 x i64] }
  %_idxUID783 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID778, i32 0, i32 0
  store i64 2, i64* %_idxUID783
  %_gep779 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID778, i32 0, i32 1, i32 0
  %_gep780 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID778, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep779
  store i64 0, i64* %_gep780
  %_arrayUID777 = bitcast { i64, [2 x i64] }* %_atomArrUID778 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID777, { i64, [0 x i64] }** %_localId785
  %_locRef787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId785
  %_idxUID788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef787, i32 0, i32 1, i32 1
  %_getArrUID789 = load i64, i64* %_idxUID788
  ret i64 %_getArrUID789
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
