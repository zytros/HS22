; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args929 = alloca i64
  %_args930 = alloca { i64, [0 x i8*] }*
  %_localId949 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId967 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId985 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId1003 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId1015 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_args929
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args930
  %_raw_array933 = call i64* @oat_alloc_array(i64 1)
  %_array934 = bitcast i64* %_raw_array933 to { i64, [0 x i64] }*
  %_raw_array935 = call i64* @oat_alloc_array(i64 1)
  %_array936 = bitcast i64* %_raw_array935 to { i64, [0 x i64] }*
  %_raw_array937 = call i64* @oat_alloc_array(i64 1)
  %_array938 = bitcast i64* %_raw_array937 to { i64, [0 x i64] }*
  %_atomArrUID940 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID947 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID940, i32 0, i32 0
  store i64 3, i64* %_idxUID947
  %_gep941 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID940, i32 0, i32 1, i32 0
  %_gep942 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID940, i32 0, i32 1, i32 1
  %_gep943 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID940, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array934, { i64, [0 x i64] }** %_gep941
  store { i64, [0 x i64] }* %_array936, { i64, [0 x i64] }** %_gep942
  store { i64, [0 x i64] }* %_array938, { i64, [0 x i64] }** %_gep943
  %_arrayUID939 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID940 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID939, { i64, [0 x { i64, [0 x i64] }*] }** %_localId949
  %_raw_array951 = call i64* @oat_alloc_array(i64 1)
  %_array952 = bitcast i64* %_raw_array951 to { i64, [0 x i64] }*
  %_raw_array953 = call i64* @oat_alloc_array(i64 1)
  %_array954 = bitcast i64* %_raw_array953 to { i64, [0 x i64] }*
  %_raw_array955 = call i64* @oat_alloc_array(i64 1)
  %_array956 = bitcast i64* %_raw_array955 to { i64, [0 x i64] }*
  %_atomArrUID958 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID965 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID958, i32 0, i32 0
  store i64 3, i64* %_idxUID965
  %_gep959 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID958, i32 0, i32 1, i32 0
  %_gep960 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID958, i32 0, i32 1, i32 1
  %_gep961 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID958, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array952, { i64, [0 x i64] }** %_gep959
  store { i64, [0 x i64] }* %_array954, { i64, [0 x i64] }** %_gep960
  store { i64, [0 x i64] }* %_array956, { i64, [0 x i64] }** %_gep961
  %_arrayUID957 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID958 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID957, { i64, [0 x { i64, [0 x i64] }*] }** %_localId967
  %_raw_array969 = call i64* @oat_alloc_array(i64 1)
  %_array970 = bitcast i64* %_raw_array969 to { i64, [0 x i64] }*
  %_raw_array971 = call i64* @oat_alloc_array(i64 1)
  %_array972 = bitcast i64* %_raw_array971 to { i64, [0 x i64] }*
  %_raw_array973 = call i64* @oat_alloc_array(i64 1)
  %_array974 = bitcast i64* %_raw_array973 to { i64, [0 x i64] }*
  %_atomArrUID976 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID983 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID976, i32 0, i32 0
  store i64 3, i64* %_idxUID983
  %_gep977 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID976, i32 0, i32 1, i32 0
  %_gep978 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID976, i32 0, i32 1, i32 1
  %_gep979 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID976, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array970, { i64, [0 x i64] }** %_gep977
  store { i64, [0 x i64] }* %_array972, { i64, [0 x i64] }** %_gep978
  store { i64, [0 x i64] }* %_array974, { i64, [0 x i64] }** %_gep979
  %_arrayUID975 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID976 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID975, { i64, [0 x { i64, [0 x i64] }*] }** %_localId985
  %_raw_array987 = call i64* @oat_alloc_array(i64 1)
  %_array988 = bitcast i64* %_raw_array987 to { i64, [0 x i64] }*
  %_raw_array989 = call i64* @oat_alloc_array(i64 1)
  %_array990 = bitcast i64* %_raw_array989 to { i64, [0 x i64] }*
  %_raw_array991 = call i64* @oat_alloc_array(i64 1)
  %_array992 = bitcast i64* %_raw_array991 to { i64, [0 x i64] }*
  %_atomArrUID994 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID1001 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID994, i32 0, i32 0
  store i64 3, i64* %_idxUID1001
  %_gep995 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID994, i32 0, i32 1, i32 0
  %_gep996 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID994, i32 0, i32 1, i32 1
  %_gep997 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID994, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array988, { i64, [0 x i64] }** %_gep995
  store { i64, [0 x i64] }* %_array990, { i64, [0 x i64] }** %_gep996
  store { i64, [0 x i64] }* %_array992, { i64, [0 x i64] }** %_gep997
  %_arrayUID993 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID994 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID993, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1003
  %_atomArrUID1006 = alloca { i64, [3 x i64] }
  %_idxUID1013 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1006, i32 0, i32 0
  store i64 3, i64* %_idxUID1013
  %_gep1007 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1006, i32 0, i32 1, i32 0
  %_gep1008 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1006, i32 0, i32 1, i32 1
  %_gep1009 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID1006, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep1007
  store i64 1, i64* %_gep1008
  store i64 2, i64* %_gep1009
  %_arrayUID1005 = bitcast { i64, [3 x i64] }* %_atomArrUID1006 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arrayUID1005, { i64, [0 x i64] }** %_localId1015
  %_locRef1017 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId967
  %_locRef1018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId1015
  %_arridx1019 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1017, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_locRef1018, { i64, [0 x i64] }** %_arridx1019
  %_locRef1021 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId967
  %_idxUID1022 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1021, i32 0, i32 1, i32 0
  %_getArrUID1023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1022
  %_arridx1024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1023, i32 0, i32 1, i32 0
  store i64 2, i64* %_arridx1024
  %_locRef1026 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId967
  store { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1026, { i64, [0 x { i64, [0 x i64] }*] }** %_localId949
  %_locRef1028 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId949
  store { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1028, { i64, [0 x { i64, [0 x i64] }*] }** %_localId985
  %_locRef1030 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1003
  store { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1030, { i64, [0 x { i64, [0 x i64] }*] }** %_localId949
  %_locRef1032 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId985
  store { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1032, { i64, [0 x { i64, [0 x i64] }*] }** %_localId967
  %_locRef1034 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId967
  store { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1034, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1003
  %_locRef1036 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId1003
  store { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1036, { i64, [0 x { i64, [0 x i64] }*] }** %_localId985
  %_locRef1038 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId985
  %_idxUID1039 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef1038, i32 0, i32 1, i32 0
  %_getArrUID1040 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID1039
  %_idxUID1041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID1040, i32 0, i32 1, i32 0
  %_getArrUID1042 = load i64, i64* %_idxUID1041
  ret i64 %_getArrUID1042
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
