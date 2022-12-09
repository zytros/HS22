; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args790 = alloca i64
  %_args791 = alloca { i64, [0 x i8*] }*
  %_localId818 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_args790
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args791
  %_atomArrUID795 = alloca { i64, [2 x i64] }
  %_idxUID800 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID795, i32 0, i32 0
  store i64 2, i64* %_idxUID800
  %_gep796 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID795, i32 0, i32 1, i32 0
  %_gep797 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID795, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep796
  store i64 2, i64* %_gep797
  %_arrayUID794 = bitcast { i64, [2 x i64] }* %_atomArrUID795 to { i64, [0 x i64] }*
  %_atomArrUID803 = alloca { i64, [2 x i64] }
  %_idxUID808 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID803, i32 0, i32 0
  store i64 2, i64* %_idxUID808
  %_gep804 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID803, i32 0, i32 1, i32 0
  %_gep805 = getelementptr { i64, [2 x i64] }, { i64, [2 x i64] }* %_atomArrUID803, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep804
  store i64 4, i64* %_gep805
  %_arrayUID802 = bitcast { i64, [2 x i64] }* %_atomArrUID803 to { i64, [0 x i64] }*
  %_atomArrUID811 = alloca { i64, [2 x { i64, [0 x i64] }*] }
  %_idxUID816 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID811, i32 0, i32 0
  store i64 2, i64* %_idxUID816
  %_gep812 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID811, i32 0, i32 1, i32 0
  %_gep813 = getelementptr { i64, [2 x { i64, [0 x i64] }*] }, { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID811, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arrayUID794, { i64, [0 x i64] }** %_gep812
  store { i64, [0 x i64] }* %_arrayUID802, { i64, [0 x i64] }** %_gep813
  %_arrayUID810 = bitcast { i64, [2 x { i64, [0 x i64] }*] }* %_atomArrUID811 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID810, { i64, [0 x { i64, [0 x i64] }*] }** %_localId818
  %_locRef820 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId818
  %_idxUID821 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef820, i32 0, i32 1, i32 0
  %_getArrUID822 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID821
  %_idxUID823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID822, i32 0, i32 1, i32 1
  %_getArrUID824 = load i64, i64* %_idxUID823
  ret i64 %_getArrUID824
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
