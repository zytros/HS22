; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args536 = alloca i64
  %_args537 = alloca { i64, [0 x i8*] }*
  %_localId540 = alloca i64
  store i64 %argc, i64* %_args536
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args537
  store i64 0, i64* %_localId540
  %_locRef545 = load i1, i1* @b
  br i1 %_locRef545, label %_ifTruelbl542, label %_ifFalselbl543
_ifTruelbl542:
  store i64 1, i64* %_localId540
  br label %_ifEndlbl544
_ifFalselbl543:
  br label %_ifEndlbl544
_ifEndlbl544:
  %_locRef547 = load i64, i64* %_localId540
  ret i64 %_locRef547
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
