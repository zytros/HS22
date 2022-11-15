; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_stringd4932 = global [2 x i8] c"
\00"
@_string4931 = global i8* bitcast ([2 x i8]* @_stringd4932 to i8*)

define i64 @xor(i64 %x, i64 %y) {
  %_args4977 = alloca i64
  %_args4978 = alloca i64
  store i64 %x, i64* %_args4977
  store i64 %y, i64* %_args4978
  %_locRef4981 = load i64, i64* %_args4977
  %_locRef4982 = load i64, i64* %_args4978
  %_bop4983 = and i64 %_locRef4981, %_locRef4982
  %_uopUID4984 = xor i64 -1, %_bop4983
  %_locRef4985 = load i64, i64* %_args4977
  %_locRef4986 = load i64, i64* %_args4978
  %_bop4987 = or i64 %_locRef4985, %_locRef4986
  %_bop4988 = and i64 %_uopUID4984, %_bop4987
  ret i64 %_bop4988
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_args4937 = alloca { i64, [0 x i64] }*
  %_localId4942 = alloca i64
  %_localId4947 = alloca i64
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_args4937
  %_locRef4939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4937
  %_idxUID4940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4939, i32 0, i32 1, i32 0
  %_getArrUID4941 = load i64, i64* %_idxUID4940
  store i64 %_getArrUID4941, i64* %_localId4942
  %_locRef4944 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4937
  %_idxUID4945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4944, i32 0, i32 1, i32 1
  %_getArrUID4946 = load i64, i64* %_idxUID4945
  store i64 %_getArrUID4946, i64* %_localId4947
  %_locRef4949 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4937
  %_locRef4950 = load i64, i64* %_localId4947
  %_arridx4951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4949, i32 0, i32 1, i32 0
  store i64 %_locRef4950, i64* %_arridx4951
  %_locRef4953 = load i64, i64* %_localId4942
  %_locRef4954 = load i64, i64* %_localId4942
  %_bop4955 = shl i64 %_locRef4954, 23
  %_callUID4956 = call i64 @xor(i64 %_locRef4953, i64 %_bop4955)
  store i64 %_callUID4956, i64* %_localId4942
  %_locRef4958 = load i64, i64* %_localId4942
  %_locRef4959 = load i64, i64* %_localId4942
  %_bop4960 = lshr i64 %_locRef4959, 17
  %_callUID4961 = call i64 @xor(i64 %_locRef4958, i64 %_bop4960)
  store i64 %_callUID4961, i64* %_localId4942
  %_locRef4963 = load i64, i64* %_localId4942
  %_locRef4964 = load i64, i64* %_localId4947
  %_locRef4965 = load i64, i64* %_localId4947
  %_bop4966 = lshr i64 %_locRef4965, 26
  %_callUID4967 = call i64 @xor(i64 %_locRef4964, i64 %_bop4966)
  %_callUID4968 = call i64 @xor(i64 %_locRef4963, i64 %_callUID4967)
  store i64 %_callUID4968, i64* %_localId4942
  %_locRef4970 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_args4937
  %_locRef4971 = load i64, i64* %_localId4942
  %_arridx4972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4970, i32 0, i32 1, i32 1
  store i64 %_locRef4971, i64* %_arridx4972
  %_locRef4974 = load i64, i64* %_localId4942
  %_locRef4975 = load i64, i64* %_localId4947
  %_bop4976 = add i64 %_locRef4974, %_locRef4975
  ret i64 %_bop4976
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args4901 = alloca i64
  %_args4902 = alloca { i64, [0 x i8*] }*
  %_localId4907 = alloca { i64, [0 x i64] }*
  %_localId4909 = alloca i64
  store i64 %argc, i64* %_args4901
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args4902
  %_raw_array4905 = call i64* @oat_alloc_array(i64 2)
  %_array4906 = bitcast i64* %_raw_array4905 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4906, { i64, [0 x i64] }** %_localId4907
  store i64 0, i64* %_localId4909
  %_locRef4911 = load i64, i64* %_localId4909
  %_bop4912 = icmp slt i64 %_locRef4911, 2
  br i1 %_bop4912, label %_while_body_jmp4914, label %_while_end_jmp4913
_while_body_jmp4914:
  %_locRef4915 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4907
  %_locRef4916 = load i64, i64* %_localId4909
  %_locRef4917 = load i64, i64* %_localId4909
  %_bop4918 = add i64 %_locRef4917, 1
  %_bop4919 = mul i64 100, %_bop4918
  %_arridx4920 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_locRef4915, i32 0, i32 1, i64 %_locRef4916
  store i64 %_bop4919, i64* %_arridx4920
  %_locRef4922 = load i64, i64* %_localId4909
  %_bop4923 = add i64 %_locRef4922, 1
  store i64 %_bop4923, i64* %_localId4909
  %_locRef4925 = load i64, i64* %_localId4909
  %_bop4926 = icmp slt i64 %_locRef4925, 2
  br i1 %_bop4926, label %_while_body_jmp4914, label %_while_end_jmp4913
_while_end_jmp4913:
  %_locRef4927 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4907
  %_callUID4928 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_locRef4927)
  call void @print_int(i64 %_callUID4928)
  %_stringp4930 = load i8*, i8** @_string4931
  call void @print_string(i8* %_stringp4930)
  %_locRef4934 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_localId4907
  %_callUID4935 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_locRef4934)
  call void @print_int(i64 %_callUID4935)
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
