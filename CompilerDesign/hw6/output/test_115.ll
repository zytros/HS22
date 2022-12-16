; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %_x4922, i64 %_y4919) {
  %_x4923 = alloca i64
  %_y4920 = alloca i64
  store i64 %_x4922, i64* %_x4923
  store i64 %_y4919, i64* %_y4920
  %_x4925 = load i64, i64* %_x4923
  %_y4926 = load i64, i64* %_y4920
  %_bop4927 = icmp eq i64 %_x4925, %_y4926
  br i1 %_bop4927, label %_then4931, label %_else4930
_else4930:
  br label %_merge4929
_else4936:
  br label %_merge4935
_else4942:
  br label %_merge4941
_else4962:
  %_y4955 = load i64, i64* %_y4920
  %_bop4956 = lshr i64 %_y4955, 1
  %_x4957 = load i64, i64* %_x4923
  %_bop4958 = lshr i64 %_x4957, 1
  %_result4959 = call i64 @binary_gcd(i64 %_bop4958, i64 %_bop4956)
  %_bop4960 = shl i64 %_result4959, 1
  ret i64 %_bop4960
_else4965:
  br label %_merge4964
_else4976:
  br label %_merge4975
_else4988:
  br label %_merge4987
_merge4929:
  %_x4932 = load i64, i64* %_x4923
  %_bop4933 = icmp eq i64 %_x4932, 0
  br i1 %_bop4933, label %_then4937, label %_else4936
_merge4935:
  %_y4938 = load i64, i64* %_y4920
  %_bop4939 = icmp eq i64 %_y4938, 0
  br i1 %_bop4939, label %_then4943, label %_else4942
_merge4941:
  %_x4944 = load i64, i64* %_x4923
  %_unop4945 = xor i64 %_x4944, -1
  %_bop4946 = and i64 %_unop4945, 1
  %_bop4947 = icmp eq i64 %_bop4946, 1
  br i1 %_bop4947, label %_then4966, label %_else4965
_merge4961:
  br label %_merge4964
_merge4964:
  %_y4967 = load i64, i64* %_y4920
  %_unop4968 = xor i64 %_y4967, -1
  %_bop4969 = and i64 %_unop4968, 1
  %_bop4970 = icmp eq i64 %_bop4969, 1
  br i1 %_bop4970, label %_then4977, label %_else4976
_merge4975:
  %_x4978 = load i64, i64* %_x4923
  %_y4979 = load i64, i64* %_y4920
  %_bop4980 = icmp sgt i64 %_x4978, %_y4979
  br i1 %_bop4980, label %_then4989, label %_else4988
_merge4987:
  %_x4990 = load i64, i64* %_x4923
  %_y4991 = load i64, i64* %_y4920
  %_x4992 = load i64, i64* %_x4923
  %_bop4993 = sub i64 %_y4991, %_x4992
  %_bop4994 = lshr i64 %_bop4993, 1
  %_result4995 = call i64 @binary_gcd(i64 %_bop4994, i64 %_x4990)
  ret i64 %_result4995
_then4931:
  %_x4928 = load i64, i64* %_x4923
  ret i64 %_x4928
_then4937:
  %_y4934 = load i64, i64* %_y4920
  ret i64 %_y4934
_then4943:
  %_x4940 = load i64, i64* %_x4923
  ret i64 %_x4940
_then4963:
  %_y4951 = load i64, i64* %_y4920
  %_x4952 = load i64, i64* %_x4923
  %_bop4953 = lshr i64 %_x4952, 1
  %_result4954 = call i64 @binary_gcd(i64 %_bop4953, i64 %_y4951)
  ret i64 %_result4954
_then4966:
  %_y4948 = load i64, i64* %_y4920
  %_bop4949 = and i64 %_y4948, 1
  %_bop4950 = icmp eq i64 %_bop4949, 1
  br i1 %_bop4950, label %_then4963, label %_else4962
_then4977:
  %_y4971 = load i64, i64* %_y4920
  %_bop4972 = lshr i64 %_y4971, 1
  %_x4973 = load i64, i64* %_x4923
  %_result4974 = call i64 @binary_gcd(i64 %_x4973, i64 %_bop4972)
  ret i64 %_result4974
_then4989:
  %_y4981 = load i64, i64* %_y4920
  %_x4982 = load i64, i64* %_x4923
  %_y4983 = load i64, i64* %_y4920
  %_bop4984 = sub i64 %_x4982, %_y4983
  %_bop4985 = lshr i64 %_bop4984, 1
  %_result4986 = call i64 @binary_gcd(i64 %_bop4985, i64 %_y4981)
  ret i64 %_result4986
}

define i64 @program(i64 %_argc4909, { i64, [0 x i8*] }* %_argv4906) {
  %_x4912 = alloca i64
  %_y4914 = alloca i64
  store i64 21, i64* %_x4912
  store i64 15, i64* %_y4914
  %_y4916 = load i64, i64* %_y4914
  %_x4917 = load i64, i64* %_x4912
  %_result4918 = call i64 @binary_gcd(i64 %_x4917, i64 %_y4916)
  ret i64 %_result4918
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
