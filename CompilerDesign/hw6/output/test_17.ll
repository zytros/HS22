; generated from: llprograms/alloca2.ll
target triple = "x86_64-unknown-linux"
define i64 @main(i64 %argc, i8** %arcv) {
  %1 = alloca i64
  store i64 17, i64* %1
  %2 = alloca i64*
  store i64* %1, i64** %2
  %3 = load i64*, i64** %2
  %4 = load i64, i64* %3
  ret i64 %4
}



