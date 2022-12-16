; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_str_arr3209 = global [2 x i8] c" \00"
@_str_arr3215 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3175, { i64, [0 x i8*] }* %_argv3172) {
  %_i3178 = alloca i64
  %_a3202 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_i3178
  %_raw_array3180 = call i64* @oat_alloc_array(i64 10)
  %_array3181 = bitcast i64* %_raw_array3180 to { i64, [0 x i64] }*
  %_ind3182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3182
  %_ind3184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3184
  %_ind3186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3186
  %_ind3188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3188
  %_ind3190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3190
  %_ind3192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3192
  %_ind3194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3194
  %_ind3196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3196
  %_ind3198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3198
  %_ind3200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3181, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3200
  store { i64, [0 x i64] }* %_array3181, { i64, [0 x i64] }** %_a3202
  %_a3204 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3202
  %_result3205 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3204)
  call void @print_string(i8* %_result3205)
  %_a3207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3202
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3207, i64 0, i64 9)
  %_str3210 = getelementptr [2 x i8], [2 x i8]* @_str_arr3209, i32 0, i32 0
  call void @print_string(i8* %_str3210)
  %_a3212 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3202
  %_result3213 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3212)
  call void @print_string(i8* %_result3213)
  %_str3216 = getelementptr [2 x i8], [2 x i8]* @_str_arr3215, i32 0, i32 0
  call void @print_string(i8* %_str3216)
  %_i3218 = load i64, i64* %_i3178
  ret i64 %_i3218
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3142, i64 %_low3139, i64 %_high3136) {
  %_a3143 = alloca { i64, [0 x i64] }*
  %_low3140 = alloca i64
  %_high3137 = alloca i64
  %_mid3145 = alloca i64
  store { i64, [0 x i64] }* %_a3142, { i64, [0 x i64] }** %_a3143
  store i64 %_low3139, i64* %_low3140
  store i64 %_high3136, i64* %_high3137
  store i64 0, i64* %_mid3145
  %_low3147 = load i64, i64* %_low3140
  %_high3148 = load i64, i64* %_high3137
  %_bop3149 = icmp slt i64 %_low3147, %_high3148
  br i1 %_bop3149, label %_then3171, label %_else3170
_else3170:
  br label %_merge3169
_merge3169:
  ret void
_then3171:
  %_low3150 = load i64, i64* %_low3140
  %_high3151 = load i64, i64* %_high3137
  %_bop3152 = add i64 %_low3150, %_high3151
  %_bop3153 = lshr i64 %_bop3152, 1
  store i64 %_bop3153, i64* %_mid3145
  %_mid3155 = load i64, i64* %_mid3145
  %_low3156 = load i64, i64* %_low3140
  %_a3157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3143
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3157, i64 %_low3156, i64 %_mid3155)
  %_high3159 = load i64, i64* %_high3137
  %_mid3160 = load i64, i64* %_mid3145
  %_bop3161 = add i64 %_mid3160, 1
  %_a3162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3143
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3162, i64 %_bop3161, i64 %_high3159)
  %_mid3164 = load i64, i64* %_mid3145
  %_high3165 = load i64, i64* %_high3137
  %_low3166 = load i64, i64* %_low3140
  %_a3167 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3143
  call void @merge({ i64, [0 x i64] }* %_a3167, i64 %_low3166, i64 %_high3165, i64 %_mid3164)
  br label %_merge3169
}

define void @merge({ i64, [0 x i64] }* %_a2962, i64 %_low2959, i64 %_high2956, i64 %_mid2953) {
  %_a2963 = alloca { i64, [0 x i64] }*
  %_low2960 = alloca i64
  %_high2957 = alloca i64
  %_mid2954 = alloca i64
  %_i2965 = alloca i64
  %_j2967 = alloca i64
  %_k2969 = alloca i64
  %_i12975 = alloca i64
  %_c2994 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2962, { i64, [0 x i64] }** %_a2963
  store i64 %_low2959, i64* %_low2960
  store i64 %_high2956, i64* %_high2957
  store i64 %_mid2953, i64* %_mid2954
  store i64 0, i64* %_i2965
  store i64 0, i64* %_j2967
  store i64 0, i64* %_k2969
  %_raw_array2973 = call i64* @oat_alloc_array(i64 50)
  %_array2974 = bitcast i64* %_raw_array2973 to { i64, [0 x i64] }*
  %_bnd_2972 = alloca i64
  store i64 50, i64* %_bnd_2972
  %_ptr_2971 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2974, { i64, [0 x i64] }** %_ptr_2971
  store i64 0, i64* %_i12975
  br label %_cond2982
_body2981:
  %__ptr_29712983 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_2971
  %_i12984 = load i64, i64* %_i12975
  %_tmp2986 = bitcast { i64, [0 x i64] }* %__ptr_29712983 to i64*
  call void @oat_assert_array_length(i64* %_tmp2986, i64 %_i12984)
  %_index_ptr2987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_29712983, i32 0, i32 1, i64 %_i12984
  store i64 0, i64* %_index_ptr2987
  %_i12989 = load i64, i64* %_i12975
  %_bop2990 = add i64 %_i12989, 1
  store i64 %_bop2990, i64* %_i12975
  br label %_cond2982
_body3011:
  %_a3013 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2963
  %_i3014 = load i64, i64* %_i2965
  %_tmp3016 = bitcast { i64, [0 x i64] }* %_a3013 to i64*
  call void @oat_assert_array_length(i64* %_tmp3016, i64 %_i3014)
  %_index_ptr3017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3013, i32 0, i32 1, i64 %_i3014
  %_index3018 = load i64, i64* %_index_ptr3017
  %_a3019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2963
  %_j3020 = load i64, i64* %_j2967
  %_tmp3022 = bitcast { i64, [0 x i64] }* %_a3019 to i64*
  call void @oat_assert_array_length(i64* %_tmp3022, i64 %_j3020)
  %_index_ptr3023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3019, i32 0, i32 1, i64 %_j3020
  %_index3024 = load i64, i64* %_index_ptr3023
  %_bop3025 = icmp slt i64 %_index3018, %_index3024
  br i1 %_bop3025, label %_then3064, label %_else3063
_body3069:
  %_c3071 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2994
  %_k3072 = load i64, i64* %_k2969
  %_tmp3074 = bitcast { i64, [0 x i64] }* %_c3071 to i64*
  call void @oat_assert_array_length(i64* %_tmp3074, i64 %_k3072)
  %_index_ptr3075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3071, i32 0, i32 1, i64 %_k3072
  %_a3076 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2963
  %_i3077 = load i64, i64* %_i2965
  %_tmp3079 = bitcast { i64, [0 x i64] }* %_a3076 to i64*
  call void @oat_assert_array_length(i64* %_tmp3079, i64 %_i3077)
  %_index_ptr3080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3076, i32 0, i32 1, i64 %_i3077
  %_index3081 = load i64, i64* %_index_ptr3080
  store i64 %_index3081, i64* %_index_ptr3075
  %_k3083 = load i64, i64* %_k2969
  %_bop3084 = add i64 %_k3083, 1
  store i64 %_bop3084, i64* %_k2969
  %_i3086 = load i64, i64* %_i2965
  %_bop3087 = add i64 %_i3086, 1
  store i64 %_bop3087, i64* %_i2965
  br label %_cond3070
_body3093:
  %_c3095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2994
  %_k3096 = load i64, i64* %_k2969
  %_tmp3098 = bitcast { i64, [0 x i64] }* %_c3095 to i64*
  call void @oat_assert_array_length(i64* %_tmp3098, i64 %_k3096)
  %_index_ptr3099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3095, i32 0, i32 1, i64 %_k3096
  %_a3100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2963
  %_j3101 = load i64, i64* %_j2967
  %_tmp3103 = bitcast { i64, [0 x i64] }* %_a3100 to i64*
  call void @oat_assert_array_length(i64* %_tmp3103, i64 %_j3101)
  %_index_ptr3104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3100, i32 0, i32 1, i64 %_j3101
  %_index3105 = load i64, i64* %_index_ptr3104
  store i64 %_index3105, i64* %_index_ptr3099
  %_k3107 = load i64, i64* %_k2969
  %_bop3108 = add i64 %_k3107, 1
  store i64 %_bop3108, i64* %_k2969
  %_j3110 = load i64, i64* %_j2967
  %_bop3111 = add i64 %_j3110, 1
  store i64 %_bop3111, i64* %_j2967
  br label %_cond3094
_body3119:
  %_a3121 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2963
  %_i3122 = load i64, i64* %_i2965
  %_tmp3124 = bitcast { i64, [0 x i64] }* %_a3121 to i64*
  call void @oat_assert_array_length(i64* %_tmp3124, i64 %_i3122)
  %_index_ptr3125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3121, i32 0, i32 1, i64 %_i3122
  %_c3126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2994
  %_i3127 = load i64, i64* %_i2965
  %_tmp3129 = bitcast { i64, [0 x i64] }* %_c3126 to i64*
  call void @oat_assert_array_length(i64* %_tmp3129, i64 %_i3127)
  %_index_ptr3130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3126, i32 0, i32 1, i64 %_i3127
  %_index3131 = load i64, i64* %_index_ptr3130
  store i64 %_index3131, i64* %_index_ptr3125
  %_i3133 = load i64, i64* %_i2965
  %_bop3134 = add i64 %_i3133, 1
  store i64 %_bop3134, i64* %_i2965
  br label %_cond3120
_cond2982:
  %_i12977 = load i64, i64* %_i12975
  %__bnd_29722978 = load i64, i64* %_bnd_2972
  %_bop2979 = icmp slt i64 %_i12977, %__bnd_29722978
  br i1 %_bop2979, label %_body2981, label %_post2980
_cond3012:
  %_i3003 = load i64, i64* %_i2965
  %_mid3004 = load i64, i64* %_mid2954
  %_bop3005 = icmp sle i64 %_i3003, %_mid3004
  %_j3006 = load i64, i64* %_j2967
  %_high3007 = load i64, i64* %_high2957
  %_bop3008 = icmp sle i64 %_j3006, %_high3007
  %_bop3009 = and i1 %_bop3005, %_bop3008
  br i1 %_bop3009, label %_body3011, label %_post3010
_cond3070:
  %_i3065 = load i64, i64* %_i2965
  %_mid3066 = load i64, i64* %_mid2954
  %_bop3067 = icmp sle i64 %_i3065, %_mid3066
  br i1 %_bop3067, label %_body3069, label %_post3068
_cond3094:
  %_j3089 = load i64, i64* %_j2967
  %_high3090 = load i64, i64* %_high2957
  %_bop3091 = icmp sle i64 %_j3089, %_high3090
  br i1 %_bop3091, label %_body3093, label %_post3092
_cond3120:
  %_i3115 = load i64, i64* %_i2965
  %_k3116 = load i64, i64* %_k2969
  %_bop3117 = icmp slt i64 %_i3115, %_k3116
  br i1 %_bop3117, label %_body3119, label %_post3118
_else3063:
  %_c3044 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2994
  %_k3045 = load i64, i64* %_k2969
  %_tmp3047 = bitcast { i64, [0 x i64] }* %_c3044 to i64*
  call void @oat_assert_array_length(i64* %_tmp3047, i64 %_k3045)
  %_index_ptr3048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3044, i32 0, i32 1, i64 %_k3045
  %_a3049 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2963
  %_j3050 = load i64, i64* %_j2967
  %_tmp3052 = bitcast { i64, [0 x i64] }* %_a3049 to i64*
  call void @oat_assert_array_length(i64* %_tmp3052, i64 %_j3050)
  %_index_ptr3053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3049, i32 0, i32 1, i64 %_j3050
  %_index3054 = load i64, i64* %_index_ptr3053
  store i64 %_index3054, i64* %_index_ptr3048
  %_k3056 = load i64, i64* %_k2969
  %_bop3057 = add i64 %_k3056, 1
  store i64 %_bop3057, i64* %_k2969
  %_j3059 = load i64, i64* %_j2967
  %_bop3060 = add i64 %_j3059, 1
  store i64 %_bop3060, i64* %_j2967
  br label %_merge3062
_merge3062:
  br label %_cond3012
_post2980:
  store { i64, [0 x i64] }* %_array2974, { i64, [0 x i64] }** %_c2994
  %_low2996 = load i64, i64* %_low2960
  store i64 %_low2996, i64* %_i2965
  %_mid2998 = load i64, i64* %_mid2954
  %_bop2999 = add i64 %_mid2998, 1
  store i64 %_bop2999, i64* %_j2967
  %_low3001 = load i64, i64* %_low2960
  store i64 %_low3001, i64* %_k2969
  br label %_cond3012
_post3010:
  br label %_cond3070
_post3068:
  br label %_cond3094
_post3092:
  %_low3113 = load i64, i64* %_low2960
  store i64 %_low3113, i64* %_i2965
  br label %_cond3120
_post3118:
  ret void
_then3064:
  %_c3026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2994
  %_k3027 = load i64, i64* %_k2969
  %_tmp3029 = bitcast { i64, [0 x i64] }* %_c3026 to i64*
  call void @oat_assert_array_length(i64* %_tmp3029, i64 %_k3027)
  %_index_ptr3030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3026, i32 0, i32 1, i64 %_k3027
  %_a3031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2963
  %_i3032 = load i64, i64* %_i2965
  %_tmp3034 = bitcast { i64, [0 x i64] }* %_a3031 to i64*
  call void @oat_assert_array_length(i64* %_tmp3034, i64 %_i3032)
  %_index_ptr3035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3031, i32 0, i32 1, i64 %_i3032
  %_index3036 = load i64, i64* %_index_ptr3035
  store i64 %_index3036, i64* %_index_ptr3030
  %_k3038 = load i64, i64* %_k2969
  %_bop3039 = add i64 %_k3038, 1
  store i64 %_bop3039, i64* %_k2969
  %_i3041 = load i64, i64* %_i2965
  %_bop3042 = add i64 %_i3041, 1
  store i64 %_bop3042, i64* %_i2965
  br label %_merge3062
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
