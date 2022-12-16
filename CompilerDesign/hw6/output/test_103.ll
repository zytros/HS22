; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_i2776) {
  %_i2777 = alloca i64
  %_r2779 = alloca i64
  store i64 %_i2776, i64* %_i2777
  store i64 0, i64* %_r2779
  %_i2781 = load i64, i64* %_i2777
  %_bop2782 = icmp eq i64 %_i2781, 0
  br i1 %_bop2782, label %_then2792, label %_else2791
_else2791:
  %_i2784 = load i64, i64* %_i2777
  %_i2785 = load i64, i64* %_i2777
  %_bop2786 = sub i64 %_i2785, 1
  %_result2787 = call i64 @f(i64 %_bop2786)
  %_bop2788 = mul i64 %_i2784, %_result2787
  store i64 %_bop2788, i64* %_r2779
  br label %_merge2790
_merge2790:
  %_r2793 = load i64, i64* %_r2779
  ret i64 %_r2793
_then2792:
  store i64 1, i64* %_r2779
  br label %_merge2790
}

define i64 @program(i64 %_argc2772, { i64, [0 x i8*] }* %_argv2769) {
  %_result2775 = call i64 @f(i64 5)
  ret i64 %_result2775
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
