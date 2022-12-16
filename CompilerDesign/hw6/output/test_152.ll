; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str_arr7879 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %_arr8099, i64 %_len8096) {
  %_arr8100 = alloca { i64, [0 x i64] }*
  %_len8097 = alloca i64
  %_min8107 = alloca i64
  %_i8109 = alloca i64
  store { i64, [0 x i64] }* %_arr8099, { i64, [0 x i64] }** %_arr8100
  store i64 %_len8096, i64* %_len8097
  %_arr8102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8100
  %_tmp8104 = bitcast { i64, [0 x i64] }* %_arr8102 to i64*
  call void @oat_assert_array_length(i64* %_tmp8104, i64 0)
  %_index_ptr8105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8102, i32 0, i32 1, i32 0
  %_index8106 = load i64, i64* %_index_ptr8105
  store i64 %_index8106, i64* %_min8107
  store i64 0, i64* %_i8109
  br label %_cond8116
_body8115:
  %_arr8117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8100
  %_i8118 = load i64, i64* %_i8109
  %_tmp8120 = bitcast { i64, [0 x i64] }* %_arr8117 to i64*
  call void @oat_assert_array_length(i64* %_tmp8120, i64 %_i8118)
  %_index_ptr8121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8117, i32 0, i32 1, i64 %_i8118
  %_index8122 = load i64, i64* %_index_ptr8121
  %_min8123 = load i64, i64* %_min8107
  %_bop8124 = icmp slt i64 %_index8122, %_min8123
  br i1 %_bop8124, label %_then8134, label %_else8133
_cond8116:
  %_i8111 = load i64, i64* %_i8109
  %_len8112 = load i64, i64* %_len8097
  %_bop8113 = icmp slt i64 %_i8111, %_len8112
  br i1 %_bop8113, label %_body8115, label %_post8114
_else8133:
  br label %_merge8132
_merge8132:
  %_i8135 = load i64, i64* %_i8109
  %_bop8136 = add i64 %_i8135, 1
  store i64 %_bop8136, i64* %_i8109
  br label %_cond8116
_post8114:
  %_min8138 = load i64, i64* %_min8107
  ret i64 %_min8138
_then8134:
  %_arr8125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8100
  %_i8126 = load i64, i64* %_i8109
  %_tmp8128 = bitcast { i64, [0 x i64] }* %_arr8125 to i64*
  call void @oat_assert_array_length(i64* %_tmp8128, i64 %_i8126)
  %_index_ptr8129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8125, i32 0, i32 1, i64 %_i8126
  %_index8130 = load i64, i64* %_index_ptr8129
  store i64 %_index8130, i64* %_min8107
  br label %_merge8132
}

define i64 @max({ i64, [0 x i64] }* %_arr8056, i64 %_len8053) {
  %_arr8057 = alloca { i64, [0 x i64] }*
  %_len8054 = alloca i64
  %_max8064 = alloca i64
  %_i8066 = alloca i64
  store { i64, [0 x i64] }* %_arr8056, { i64, [0 x i64] }** %_arr8057
  store i64 %_len8053, i64* %_len8054
  %_arr8059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8057
  %_tmp8061 = bitcast { i64, [0 x i64] }* %_arr8059 to i64*
  call void @oat_assert_array_length(i64* %_tmp8061, i64 0)
  %_index_ptr8062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8059, i32 0, i32 1, i32 0
  %_index8063 = load i64, i64* %_index_ptr8062
  store i64 %_index8063, i64* %_max8064
  store i64 0, i64* %_i8066
  br label %_cond8073
_body8072:
  %_arr8074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8057
  %_i8075 = load i64, i64* %_i8066
  %_tmp8077 = bitcast { i64, [0 x i64] }* %_arr8074 to i64*
  call void @oat_assert_array_length(i64* %_tmp8077, i64 %_i8075)
  %_index_ptr8078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8074, i32 0, i32 1, i64 %_i8075
  %_index8079 = load i64, i64* %_index_ptr8078
  %_max8080 = load i64, i64* %_max8064
  %_bop8081 = icmp sgt i64 %_index8079, %_max8080
  br i1 %_bop8081, label %_then8091, label %_else8090
_cond8073:
  %_i8068 = load i64, i64* %_i8066
  %_len8069 = load i64, i64* %_len8054
  %_bop8070 = icmp slt i64 %_i8068, %_len8069
  br i1 %_bop8070, label %_body8072, label %_post8071
_else8090:
  br label %_merge8089
_merge8089:
  %_i8092 = load i64, i64* %_i8066
  %_bop8093 = add i64 %_i8092, 1
  store i64 %_bop8093, i64* %_i8066
  br label %_cond8073
_post8071:
  %_max8095 = load i64, i64* %_max8064
  ret i64 %_max8095
_then8091:
  %_arr8082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8057
  %_i8083 = load i64, i64* %_i8066
  %_tmp8085 = bitcast { i64, [0 x i64] }* %_arr8082 to i64*
  call void @oat_assert_array_length(i64* %_tmp8085, i64 %_i8083)
  %_index_ptr8086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8082, i32 0, i32 1, i64 %_i8083
  %_index8087 = load i64, i64* %_index_ptr8086
  store i64 %_index8087, i64* %_max8064
  br label %_merge8089
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr7893, i64 %_len7890) {
  %_arr7894 = alloca { i64, [0 x i64] }*
  %_len7891 = alloca i64
  %_min7899 = alloca i64
  %_max7904 = alloca i64
  %_i7914 = alloca i64
  %_counts7933 = alloca { i64, [0 x i64] }*
  %_i7935 = alloca i64
  %_i7974 = alloca i64
  %_j7976 = alloca i64
  %_i27983 = alloca i64
  %_out8002 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr7893, { i64, [0 x i64] }** %_arr7894
  store i64 %_len7890, i64* %_len7891
  %_len7896 = load i64, i64* %_len7891
  %_arr7897 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7894
  %_result7898 = call i64 @min({ i64, [0 x i64] }* %_arr7897, i64 %_len7896)
  store i64 %_result7898, i64* %_min7899
  %_len7901 = load i64, i64* %_len7891
  %_arr7902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7894
  %_result7903 = call i64 @max({ i64, [0 x i64] }* %_arr7902, i64 %_len7901)
  store i64 %_result7903, i64* %_max7904
  %_max7908 = load i64, i64* %_max7904
  %_min7909 = load i64, i64* %_min7899
  %_bop7910 = sub i64 %_max7908, %_min7909
  %_bop7911 = add i64 %_bop7910, 1
  %_raw_array7912 = call i64* @oat_alloc_array(i64 %_bop7911)
  %_array7913 = bitcast i64* %_raw_array7912 to { i64, [0 x i64] }*
  %_bnd_7907 = alloca i64
  store i64 %_bop7911, i64* %_bnd_7907
  %_ptr_7906 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7913, { i64, [0 x i64] }** %_ptr_7906
  store i64 0, i64* %_i7914
  br label %_cond7921
_body7920:
  %__ptr_79067922 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7906
  %_i7923 = load i64, i64* %_i7914
  %_tmp7925 = bitcast { i64, [0 x i64] }* %__ptr_79067922 to i64*
  call void @oat_assert_array_length(i64* %_tmp7925, i64 %_i7923)
  %_index_ptr7926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_79067922, i32 0, i32 1, i64 %_i7923
  store i64 0, i64* %_index_ptr7926
  %_i7928 = load i64, i64* %_i7914
  %_bop7929 = add i64 %_i7928, 1
  store i64 %_bop7929, i64* %_i7914
  br label %_cond7921
_body7941:
  %_counts7943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7933
  %_arr7944 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7894
  %_i7945 = load i64, i64* %_i7935
  %_tmp7947 = bitcast { i64, [0 x i64] }* %_arr7944 to i64*
  call void @oat_assert_array_length(i64* %_tmp7947, i64 %_i7945)
  %_index_ptr7948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr7944, i32 0, i32 1, i64 %_i7945
  %_index7949 = load i64, i64* %_index_ptr7948
  %_min7950 = load i64, i64* %_min7899
  %_bop7951 = sub i64 %_index7949, %_min7950
  %_tmp7953 = bitcast { i64, [0 x i64] }* %_counts7943 to i64*
  call void @oat_assert_array_length(i64* %_tmp7953, i64 %_bop7951)
  %_index_ptr7954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts7943, i32 0, i32 1, i64 %_bop7951
  %_counts7955 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7933
  %_arr7956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7894
  %_i7957 = load i64, i64* %_i7935
  %_tmp7959 = bitcast { i64, [0 x i64] }* %_arr7956 to i64*
  call void @oat_assert_array_length(i64* %_tmp7959, i64 %_i7957)
  %_index_ptr7960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr7956, i32 0, i32 1, i64 %_i7957
  %_index7961 = load i64, i64* %_index_ptr7960
  %_min7962 = load i64, i64* %_min7899
  %_bop7963 = sub i64 %_index7961, %_min7962
  %_tmp7965 = bitcast { i64, [0 x i64] }* %_counts7955 to i64*
  call void @oat_assert_array_length(i64* %_tmp7965, i64 %_bop7963)
  %_index_ptr7966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts7955, i32 0, i32 1, i64 %_bop7963
  %_index7967 = load i64, i64* %_index_ptr7966
  %_bop7968 = add i64 %_index7967, 1
  store i64 %_bop7968, i64* %_index_ptr7954
  %_i7970 = load i64, i64* %_i7935
  %_bop7971 = add i64 %_i7970, 1
  store i64 %_bop7971, i64* %_i7935
  br label %_cond7942
_body7989:
  %__ptr_79787991 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7978
  %_i27992 = load i64, i64* %_i27983
  %_tmp7994 = bitcast { i64, [0 x i64] }* %__ptr_79787991 to i64*
  call void @oat_assert_array_length(i64* %_tmp7994, i64 %_i27992)
  %_index_ptr7995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_79787991, i32 0, i32 1, i64 %_i27992
  store i64 0, i64* %_index_ptr7995
  %_i27997 = load i64, i64* %_i27983
  %_bop7998 = add i64 %_i27997, 1
  store i64 %_bop7998, i64* %_i27983
  br label %_cond7990
_body8008:
  %_counts8010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7933
  %_i8011 = load i64, i64* %_i7974
  %_min8012 = load i64, i64* %_min7899
  %_bop8013 = sub i64 %_i8011, %_min8012
  %_tmp8015 = bitcast { i64, [0 x i64] }* %_counts8010 to i64*
  call void @oat_assert_array_length(i64* %_tmp8015, i64 %_bop8013)
  %_index_ptr8016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts8010, i32 0, i32 1, i64 %_bop8013
  %_index8017 = load i64, i64* %_index_ptr8016
  %_bop8018 = icmp sgt i64 %_index8017, 0
  br i1 %_bop8018, label %_then8051, label %_else8050
_cond7921:
  %_i7916 = load i64, i64* %_i7914
  %__bnd_79077917 = load i64, i64* %_bnd_7907
  %_bop7918 = icmp slt i64 %_i7916, %__bnd_79077917
  br i1 %_bop7918, label %_body7920, label %_post7919
_cond7942:
  %_i7937 = load i64, i64* %_i7935
  %_len7938 = load i64, i64* %_len7891
  %_bop7939 = icmp slt i64 %_i7937, %_len7938
  br i1 %_bop7939, label %_body7941, label %_post7940
_cond7990:
  %_i27985 = load i64, i64* %_i27983
  %__bnd_79797986 = load i64, i64* %_bnd_7979
  %_bop7987 = icmp slt i64 %_i27985, %__bnd_79797986
  br i1 %_bop7987, label %_body7989, label %_post7988
_cond8009:
  %_i8004 = load i64, i64* %_i7974
  %_max8005 = load i64, i64* %_max7904
  %_bop8006 = icmp sle i64 %_i8004, %_max8005
  br i1 %_bop8006, label %_body8008, label %_post8007
_else8050:
  %_i8046 = load i64, i64* %_i7974
  %_bop8047 = add i64 %_i8046, 1
  store i64 %_bop8047, i64* %_i7974
  br label %_merge8049
_merge8049:
  br label %_cond8009
_post7919:
  store { i64, [0 x i64] }* %_array7913, { i64, [0 x i64] }** %_counts7933
  store i64 0, i64* %_i7935
  br label %_cond7942
_post7940:
  %_min7973 = load i64, i64* %_min7899
  store i64 %_min7973, i64* %_i7974
  store i64 0, i64* %_j7976
  %_len7980 = load i64, i64* %_len7891
  %_raw_array7981 = call i64* @oat_alloc_array(i64 %_len7980)
  %_array7982 = bitcast i64* %_raw_array7981 to { i64, [0 x i64] }*
  %_bnd_7979 = alloca i64
  store i64 %_len7980, i64* %_bnd_7979
  %_ptr_7978 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7982, { i64, [0 x i64] }** %_ptr_7978
  store i64 0, i64* %_i27983
  br label %_cond7990
_post7988:
  store { i64, [0 x i64] }* %_array7982, { i64, [0 x i64] }** %_out8002
  br label %_cond8009
_post8007:
  %_out8052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out8002
  ret { i64, [0 x i64] }* %_out8052
_then8051:
  %_out8019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out8002
  %_j8020 = load i64, i64* %_j7976
  %_tmp8022 = bitcast { i64, [0 x i64] }* %_out8019 to i64*
  call void @oat_assert_array_length(i64* %_tmp8022, i64 %_j8020)
  %_index_ptr8023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out8019, i32 0, i32 1, i64 %_j8020
  %_i8024 = load i64, i64* %_i7974
  store i64 %_i8024, i64* %_index_ptr8023
  %_counts8026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7933
  %_i8027 = load i64, i64* %_i7974
  %_min8028 = load i64, i64* %_min7899
  %_bop8029 = sub i64 %_i8027, %_min8028
  %_tmp8031 = bitcast { i64, [0 x i64] }* %_counts8026 to i64*
  call void @oat_assert_array_length(i64* %_tmp8031, i64 %_bop8029)
  %_index_ptr8032 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts8026, i32 0, i32 1, i64 %_bop8029
  %_counts8033 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7933
  %_i8034 = load i64, i64* %_i7974
  %_min8035 = load i64, i64* %_min7899
  %_bop8036 = sub i64 %_i8034, %_min8035
  %_tmp8038 = bitcast { i64, [0 x i64] }* %_counts8033 to i64*
  call void @oat_assert_array_length(i64* %_tmp8038, i64 %_bop8036)
  %_index_ptr8039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts8033, i32 0, i32 1, i64 %_bop8036
  %_index8040 = load i64, i64* %_index_ptr8039
  %_bop8041 = sub i64 %_index8040, 1
  store i64 %_bop8041, i64* %_index_ptr8032
  %_j8043 = load i64, i64* %_j7976
  %_bop8044 = add i64 %_j8043, 1
  store i64 %_bop8044, i64* %_j7976
  br label %_merge8049
}

define i64 @program(i64 %_argc7849, { i64, [0 x i8*] }* %_argv7846) {
  %_arr7872 = alloca { i64, [0 x i64] }*
  %_len7874 = alloca i64
  %_sorted7885 = alloca { i64, [0 x i64] }*
  %_raw_array7852 = call i64* @oat_alloc_array(i64 9)
  %_array7853 = bitcast i64* %_raw_array7852 to { i64, [0 x i64] }*
  %_ind7854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7853, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind7854
  %_ind7856 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7853, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind7856
  %_ind7858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7853, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind7858
  %_ind7860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7853, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind7860
  %_ind7862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7853, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind7862
  %_ind7864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7853, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind7864
  %_ind7866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7853, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind7866
  %_ind7868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7853, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind7868
  %_ind7870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7853, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind7870
  store { i64, [0 x i64] }* %_array7853, { i64, [0 x i64] }** %_arr7872
  store i64 9, i64* %_len7874
  %_arr7876 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7872
  %_result7877 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr7876)
  call void @print_string(i8* %_result7877)
  %_str7880 = getelementptr [2 x i8], [2 x i8]* @_str_arr7879, i32 0, i32 0
  call void @print_string(i8* %_str7880)
  %_len7882 = load i64, i64* %_len7874
  %_arr7883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7872
  %_result7884 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr7883, i64 %_len7882)
  store { i64, [0 x i64] }* %_result7884, { i64, [0 x i64] }** %_sorted7885
  %_sorted7887 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted7885
  %_result7888 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted7887)
  call void @print_string(i8* %_result7888)
  ret i64 0
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
