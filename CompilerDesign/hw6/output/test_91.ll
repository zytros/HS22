; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2156 = load i64, i64* @a
  %_bop2157 = add i64 %_a2156, 1
  store i64 %_bop2157, i64* @a
  %_a2159 = load i64, i64* @a
  ret i64 %_a2159
}

define i64 @program(i64 %_argc2113, { i64, [0 x i8*] }* %_argv2110) {
  %_i2121 = alloca i64
  %_b2141 = alloca { i64, [0 x i64] }*
  %_result2118 = call i64 @f()
  %_raw_array2119 = call i64* @oat_alloc_array(i64 %_result2118)
  %_array2120 = bitcast i64* %_raw_array2119 to { i64, [0 x i64] }*
  %_bnd_2117 = alloca i64
  store i64 %_result2118, i64* %_bnd_2117
  %_ptr_2116 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2120, { i64, [0 x i64] }** %_ptr_2116
  store i64 0, i64* %_i2121
  br label %_cond2128
_body2127:
  %__ptr_21162129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_2116
  %_i2130 = load i64, i64* %_i2121
  %_tmp2132 = bitcast { i64, [0 x i64] }* %__ptr_21162129 to i64*
  call void @oat_assert_array_length(i64* %_tmp2132, i64 %_i2130)
  %_index_ptr2133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_21162129, i32 0, i32 1, i64 %_i2130
  %_result2134 = call i64 @f()
  store i64 %_result2134, i64* %_index_ptr2133
  %_i2136 = load i64, i64* %_i2121
  %_bop2137 = add i64 %_i2136, 1
  store i64 %_bop2137, i64* %_i2121
  br label %_cond2128
_cond2128:
  %_i2123 = load i64, i64* %_i2121
  %__bnd_21172124 = load i64, i64* %_bnd_2117
  %_bop2125 = icmp slt i64 %_i2123, %__bnd_21172124
  br i1 %_bop2125, label %_body2127, label %_post2126
_post2126:
  store { i64, [0 x i64] }* %_array2120, { i64, [0 x i64] }** %_b2141
  %_a2143 = load i64, i64* @a
  %_b2144 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2141
  %_tmp2146 = bitcast { i64, [0 x i64] }* %_b2144 to i64*
  call void @oat_assert_array_length(i64* %_tmp2146, i64 0)
  %_index_ptr2147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2144, i32 0, i32 1, i32 0
  %_index2148 = load i64, i64* %_index_ptr2147
  %_bop2149 = add i64 %_a2143, %_index2148
  %_b2150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2141
  %_tmp2152 = bitcast { i64, [0 x i64] }* %_b2150 to i64*
  call void @oat_assert_array_length(i64* %_tmp2152, i64 1)
  %_index_ptr2153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2150, i32 0, i32 1, i32 1
  %_index2154 = load i64, i64* %_index_ptr2153
  %_bop2155 = add i64 %_bop2149, %_index2154
  ret i64 %_bop2155
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
