; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2106 = load i64, i64* @a
  %_bop2107 = add i64 %_a2106, 1
  store i64 %_bop2107, i64* @a
  %_a2109 = load i64, i64* @a
  ret i64 %_a2109
}

define i64 @program(i64 %_argc2063, { i64, [0 x i8*] }* %_argv2060) {
  %_i2071 = alloca i64
  %_b2091 = alloca { i64, [0 x i64] }*
  %_result2068 = call i64 @f()
  %_raw_array2069 = call i64* @oat_alloc_array(i64 %_result2068)
  %_array2070 = bitcast i64* %_raw_array2069 to { i64, [0 x i64] }*
  %_bnd_2067 = alloca i64
  store i64 %_result2068, i64* %_bnd_2067
  %_ptr_2066 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2070, { i64, [0 x i64] }** %_ptr_2066
  store i64 0, i64* %_i2071
  br label %_cond2078
_body2077:
  %__ptr_20662079 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_2066
  %_i2080 = load i64, i64* %_i2071
  %_tmp2082 = bitcast { i64, [0 x i64] }* %__ptr_20662079 to i64*
  call void @oat_assert_array_length(i64* %_tmp2082, i64 %_i2080)
  %_index_ptr2083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_20662079, i32 0, i32 1, i64 %_i2080
  %_i2084 = load i64, i64* %_i2071
  store i64 %_i2084, i64* %_index_ptr2083
  %_i2086 = load i64, i64* %_i2071
  %_bop2087 = add i64 %_i2086, 1
  store i64 %_bop2087, i64* %_i2071
  br label %_cond2078
_cond2078:
  %_i2073 = load i64, i64* %_i2071
  %__bnd_20672074 = load i64, i64* %_bnd_2067
  %_bop2075 = icmp slt i64 %_i2073, %__bnd_20672074
  br i1 %_bop2075, label %_body2077, label %_post2076
_post2076:
  store { i64, [0 x i64] }* %_array2070, { i64, [0 x i64] }** %_b2091
  %_a2093 = load i64, i64* @a
  %_b2094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2091
  %_tmp2096 = bitcast { i64, [0 x i64] }* %_b2094 to i64*
  call void @oat_assert_array_length(i64* %_tmp2096, i64 0)
  %_index_ptr2097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2094, i32 0, i32 1, i32 0
  %_index2098 = load i64, i64* %_index_ptr2097
  %_bop2099 = add i64 %_a2093, %_index2098
  %_b2100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2091
  %_tmp2102 = bitcast { i64, [0 x i64] }* %_b2100 to i64*
  call void @oat_assert_array_length(i64* %_tmp2102, i64 1)
  %_index_ptr2103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2100, i32 0, i32 1, i32 1
  %_index2104 = load i64, i64* %_index_ptr2103
  %_bop2105 = add i64 %_bop2099, %_index2104
  ret i64 %_bop2105
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
