; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_atomArrUID5984 to { i64, [0 x i64] }*)
@_atomArrUID5984 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_atomArrUID5983 to { i64, [0 x i64] }*)
@_atomArrUID5983 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_args5948 = alloca { i64, [0 x i64] }*
  %_args5949 = alloca { i64, [0 x i64] }*
  %_args5950 = alloca i64
  %_localId5954 = alloca i64
  %_localId5956 = alloca i64
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_args5948
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_args5949
  store i64 %len, i64* %_args5950
  store i64 0, i64* %_localId5954
  store i64 0, i64* %_localId5956
  %_locRef5958 = load i64, i64* %_localId5956
  %_locRef5959 = load i64, i64* %_args5950
  %_bop5960 = icmp slt i64 %_locRef5958, %_locRef5959
  br i1 %_bop5960, label %_while_body_jmp5962, label %_while_end_jmp5961
_while_body_jmp5962:
  %_locRef5966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5948
  %_locRef5967 = load i64, i64* %_localId5956
  %_idxUID5968 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5966, i32 0, i32 1, i64 %_locRef5967
  %_getArrUID5969 = load i64, i64* %_idxUID5968
  %_locRef5970 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args5949
  %_locRef5971 = load i64, i64* %_localId5956
  %_idxUID5972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef5970, i32 0, i32 1, i64 %_locRef5971
  %_getArrUID5973 = load i64, i64* %_idxUID5972
  %_bop5974 = icmp ne i64 %_getArrUID5969, %_getArrUID5973
  br i1 %_bop5974, label %_ifTruelbl5963, label %_ifFalselbl5964
_ifTruelbl5963:
  store i64 1, i64* %_localId5954
  br label %_ifEndlbl5965
_ifFalselbl5964:
  br label %_ifEndlbl5965
_ifEndlbl5965:
  %_locRef5976 = load i64, i64* %_localId5956
  %_bop5977 = add i64 %_locRef5976, 1
  store i64 %_bop5977, i64* %_localId5956
  %_locRef5979 = load i64, i64* %_localId5956
  %_locRef5980 = load i64, i64* %_args5950
  %_bop5981 = icmp slt i64 %_locRef5979, %_locRef5980
  br i1 %_bop5981, label %_while_body_jmp5962, label %_while_end_jmp5961
_while_end_jmp5961:
  %_locRef5982 = load i64, i64* %_localId5954
  ret i64 %_locRef5982
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args5933 = alloca i64
  %_args5934 = alloca { i64, [0 x i8*] }*
  %_localId5937 = alloca i64
  store i64 %argc, i64* %_args5933
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args5934
  store i64 1, i64* %_localId5937
  %_locRef5942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_locRef5943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_callUID5944 = call i64 @arrcheck({ i64, [0 x i64] }* %_locRef5942, { i64, [0 x i64] }* %_locRef5943, i64 4)
  %_bop5945 = icmp eq i64 %_callUID5944, 1
  br i1 %_bop5945, label %_ifTruelbl5939, label %_ifFalselbl5940
_ifTruelbl5939:
  store i64 0, i64* %_localId5937
  br label %_ifEndlbl5941
_ifFalselbl5940:
  br label %_ifEndlbl5941
_ifEndlbl5941:
  %_locRef5947 = load i64, i64* %_localId5937
  ret i64 %_locRef5947
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
