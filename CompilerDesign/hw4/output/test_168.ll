; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args2011 = alloca i64
  %_args2012 = alloca { i64, [0 x i8*] }*
  %_localId2015 = alloca i64
  %_localId2084 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_localId2087 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_args2011
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args2012
  store i64 10, i64* %_localId2015
  %_locRef2017 = load i64, i64* %_localId2015
  %_bop2018 = add i64 %_locRef2017, 0
  %_bop2019 = add i64 %_bop2018, 0
  %_locRef2020 = load i64, i64* %_localId2015
  %_bop2021 = add i64 %_locRef2020, 0
  %_bop2022 = add i64 %_bop2021, 1
  %_locRef2023 = load i64, i64* %_localId2015
  %_bop2024 = add i64 %_locRef2023, 0
  %_bop2025 = add i64 %_bop2024, 2
  %_atomArrUID2027 = alloca { i64, [3 x i64] }
  %_idxUID2034 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2027, i32 0, i32 0
  store i64 3, i64* %_idxUID2034
  %_gep2028 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2027, i32 0, i32 1, i32 0
  %_gep2029 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2027, i32 0, i32 1, i32 1
  %_gep2030 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2027, i32 0, i32 1, i32 2
  store i64 %_bop2019, i64* %_gep2028
  store i64 %_bop2022, i64* %_gep2029
  store i64 %_bop2025, i64* %_gep2030
  %_arrayUID2026 = bitcast { i64, [3 x i64] }* %_atomArrUID2027 to { i64, [0 x i64] }*
  %_locRef2036 = load i64, i64* %_localId2015
  %_bop2037 = add i64 %_locRef2036, 1
  %_bop2038 = add i64 %_bop2037, 0
  %_locRef2039 = load i64, i64* %_localId2015
  %_bop2040 = add i64 %_locRef2039, 1
  %_bop2041 = add i64 %_bop2040, 1
  %_locRef2042 = load i64, i64* %_localId2015
  %_bop2043 = add i64 %_locRef2042, 1
  %_bop2044 = add i64 %_bop2043, 2
  %_atomArrUID2046 = alloca { i64, [3 x i64] }
  %_idxUID2053 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2046, i32 0, i32 0
  store i64 3, i64* %_idxUID2053
  %_gep2047 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2046, i32 0, i32 1, i32 0
  %_gep2048 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2046, i32 0, i32 1, i32 1
  %_gep2049 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2046, i32 0, i32 1, i32 2
  store i64 %_bop2038, i64* %_gep2047
  store i64 %_bop2041, i64* %_gep2048
  store i64 %_bop2044, i64* %_gep2049
  %_arrayUID2045 = bitcast { i64, [3 x i64] }* %_atomArrUID2046 to { i64, [0 x i64] }*
  %_locRef2055 = load i64, i64* %_localId2015
  %_bop2056 = add i64 %_locRef2055, 2
  %_bop2057 = add i64 %_bop2056, 0
  %_locRef2058 = load i64, i64* %_localId2015
  %_bop2059 = add i64 %_locRef2058, 2
  %_bop2060 = add i64 %_bop2059, 1
  %_locRef2061 = load i64, i64* %_localId2015
  %_bop2062 = add i64 %_locRef2061, 2
  %_bop2063 = add i64 %_bop2062, 2
  %_atomArrUID2065 = alloca { i64, [3 x i64] }
  %_idxUID2072 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2065, i32 0, i32 0
  store i64 3, i64* %_idxUID2072
  %_gep2066 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2065, i32 0, i32 1, i32 0
  %_gep2067 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2065, i32 0, i32 1, i32 1
  %_gep2068 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_atomArrUID2065, i32 0, i32 1, i32 2
  store i64 %_bop2057, i64* %_gep2066
  store i64 %_bop2060, i64* %_gep2067
  store i64 %_bop2063, i64* %_gep2068
  %_arrayUID2064 = bitcast { i64, [3 x i64] }* %_atomArrUID2065 to { i64, [0 x i64] }*
  %_atomArrUID2075 = alloca { i64, [3 x { i64, [0 x i64] }*] }
  %_idxUID2082 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID2075, i32 0, i32 0
  store i64 3, i64* %_idxUID2082
  %_gep2076 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID2075, i32 0, i32 1, i32 0
  %_gep2077 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID2075, i32 0, i32 1, i32 1
  %_gep2078 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID2075, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_arrayUID2026, { i64, [0 x i64] }** %_gep2076
  store { i64, [0 x i64] }* %_arrayUID2045, { i64, [0 x i64] }** %_gep2077
  store { i64, [0 x i64] }* %_arrayUID2064, { i64, [0 x i64] }** %_gep2078
  %_arrayUID2074 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_atomArrUID2075 to { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arrayUID2074, { i64, [0 x { i64, [0 x i64] }*] }** %_localId2084
  %_locRef2086 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId2084
  store { i64, [0 x { i64, [0 x i64] }*] }* %_locRef2086, { i64, [0 x { i64, [0 x i64] }*] }** %_localId2087
  %_locRef2089 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_localId2087
  %_idxUID2090 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_locRef2089, i32 0, i32 1, i32 2
  %_getArrUID2091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_idxUID2090
  %_idxUID2092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_getArrUID2091, i32 0, i32 1, i32 1
  %_getArrUID2093 = load i64, i64* %_idxUID2092
  ret i64 %_getArrUID2093
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
