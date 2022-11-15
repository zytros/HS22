; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_args4997 = alloca i64
  %_localId5002 = alloca { i64, [0 x i1] }*
  %_localId5004 = alloca i64
  %_localId5027 = alloca i64
  %_localId5043 = alloca i64
  %_localId5067 = alloca i64
  %_localId5069 = alloca i64
  store i64 %n, i64* %_args4997
  %_locRef4999 = load i64, i64* %_args4997
  %_raw_array5000 = call i64* @oat_alloc_array(i64 %_locRef4999)
  %_array5001 = bitcast i64* %_raw_array5000 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array5001, { i64, [0 x i1] }** %_localId5002
  store i64 0, i64* %_localId5004
  %_locRef5006 = load i64, i64* %_localId5004
  %_locRef5007 = load i64, i64* %_args4997
  %_bop5008 = icmp slt i64 %_locRef5006, %_locRef5007
  br i1 %_bop5008, label %_while_body_jmp5010, label %_while_end_jmp5009
_while_body_jmp5010:
  %_locRef5011 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5002
  %_locRef5012 = load i64, i64* %_localId5004
  %_arridx5013 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5011, i32 0, i32 1, i64 %_locRef5012
  store i1 1, i1* %_arridx5013
  %_locRef5015 = load i64, i64* %_localId5004
  %_bop5016 = add i64 %_locRef5015, 1
  store i64 %_bop5016, i64* %_localId5004
  %_locRef5018 = load i64, i64* %_localId5004
  %_locRef5019 = load i64, i64* %_args4997
  %_bop5020 = icmp slt i64 %_locRef5018, %_locRef5019
  br i1 %_bop5020, label %_while_body_jmp5010, label %_while_end_jmp5009
_while_end_jmp5009:
  %_locRef5021 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5002
  %_arridx5022 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5021, i32 0, i32 1, i32 0
  store i1 0, i1* %_arridx5022
  %_locRef5024 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5002
  %_arridx5025 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5024, i32 0, i32 1, i32 1
  store i1 0, i1* %_arridx5025
  store i64 0, i64* %_localId5027
  %_locRef5029 = load i64, i64* %_localId5027
  %_locRef5030 = load i64, i64* %_args4997
  %_bop5031 = icmp slt i64 %_locRef5029, %_locRef5030
  br i1 %_bop5031, label %_while_body_jmp5033, label %_while_end_jmp5032
_while_body_jmp5033:
  %_locRef5037 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5002
  %_locRef5038 = load i64, i64* %_localId5027
  %_idxUID5039 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5037, i32 0, i32 1, i64 %_locRef5038
  %_getArrUID5040 = load i1, i1* %_idxUID5039
  br i1 %_getArrUID5040, label %_ifTruelbl5034, label %_ifFalselbl5035
_ifTruelbl5034:
  %_locRef5041 = load i64, i64* %_localId5027
  %_bop5042 = mul i64 %_locRef5041, 2
  store i64 %_bop5042, i64* %_localId5043
  %_locRef5045 = load i64, i64* %_localId5043
  %_locRef5046 = load i64, i64* %_args4997
  %_bop5047 = icmp slt i64 %_locRef5045, %_locRef5046
  br i1 %_bop5047, label %_while_body_jmp5049, label %_while_end_jmp5048
_while_body_jmp5049:
  %_locRef5050 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5002
  %_locRef5051 = load i64, i64* %_localId5043
  %_arridx5052 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5050, i32 0, i32 1, i64 %_locRef5051
  store i1 0, i1* %_arridx5052
  %_locRef5054 = load i64, i64* %_localId5043
  %_locRef5055 = load i64, i64* %_localId5027
  %_bop5056 = add i64 %_locRef5054, %_locRef5055
  store i64 %_bop5056, i64* %_localId5043
  %_locRef5058 = load i64, i64* %_localId5043
  %_locRef5059 = load i64, i64* %_args4997
  %_bop5060 = icmp slt i64 %_locRef5058, %_locRef5059
  br i1 %_bop5060, label %_while_body_jmp5049, label %_while_end_jmp5048
_while_end_jmp5048:
  br label %_ifEndlbl5036
_ifFalselbl5035:
  br label %_ifEndlbl5036
_ifEndlbl5036:
  %_locRef5061 = load i64, i64* %_localId5027
  %_bop5062 = add i64 %_locRef5061, 1
  store i64 %_bop5062, i64* %_localId5027
  %_locRef5064 = load i64, i64* %_localId5027
  %_locRef5065 = load i64, i64* %_args4997
  %_bop5066 = icmp slt i64 %_locRef5064, %_locRef5065
  br i1 %_bop5066, label %_while_body_jmp5033, label %_while_end_jmp5032
_while_end_jmp5032:
  store i64 0, i64* %_localId5067
  store i64 0, i64* %_localId5069
  %_locRef5071 = load i64, i64* %_localId5069
  %_locRef5072 = load i64, i64* %_args4997
  %_bop5073 = icmp slt i64 %_locRef5071, %_locRef5072
  br i1 %_bop5073, label %_while_body_jmp5075, label %_while_end_jmp5074
_while_body_jmp5075:
  %_locRef5079 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_localId5002
  %_locRef5080 = load i64, i64* %_localId5069
  %_idxUID5081 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_locRef5079, i32 0, i32 1, i64 %_locRef5080
  %_getArrUID5082 = load i1, i1* %_idxUID5081
  br i1 %_getArrUID5082, label %_ifTruelbl5076, label %_ifFalselbl5077
_ifTruelbl5076:
  %_locRef5083 = load i64, i64* %_localId5067
  %_bop5084 = add i64 %_locRef5083, 1
  store i64 %_bop5084, i64* %_localId5067
  br label %_ifEndlbl5078
_ifFalselbl5077:
  br label %_ifEndlbl5078
_ifEndlbl5078:
  %_locRef5086 = load i64, i64* %_localId5069
  %_bop5087 = add i64 %_locRef5086, 1
  store i64 %_bop5087, i64* %_localId5069
  %_locRef5089 = load i64, i64* %_localId5069
  %_locRef5090 = load i64, i64* %_args4997
  %_bop5091 = icmp slt i64 %_locRef5089, %_locRef5090
  br i1 %_bop5091, label %_while_body_jmp5075, label %_while_end_jmp5074
_while_end_jmp5074:
  %_locRef5092 = load i64, i64* %_localId5067
  ret i64 %_locRef5092
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args4989 = alloca i64
  %_args4990 = alloca { i64, [0 x i8*] }*
  %_localId4993 = alloca i64
  store i64 %argc, i64* %_args4989
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args4990
  store i64 100, i64* %_localId4993
  %_locRef4995 = load i64, i64* %_localId4993
  %_callUID4996 = call i64 @sieve(i64 %_locRef4995)
  ret i64 %_callUID4996
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
