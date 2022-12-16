; generated from: llprograms/factorial.ll
target triple = "x86_64-unknown-linux"
define i64 @factorial(i64 %n) {
  %1 = alloca i64
  %acc = alloca i64
  store i64 %n, i64* %1
  store i64 1, i64* %acc
  br label %start
end:
  %9 = load i64, i64* %acc
  ret i64 %9
start:
  %2 = load i64, i64* %1
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %then, label %end
then:
  %4 = load i64, i64* %acc
  %5 = load i64, i64* %1
  %6 = mul i64 %4, %5
  store i64 %6, i64* %acc
  %7 = load i64, i64* %1
  %8 = sub i64 %7, 1
  store i64 %8, i64* %1
  br label %start
}

define i64 @main(i64 %argc, i8** %arcv) {
  %2 = call i64 @factorial(i64 5)
  ret i64 %2
}



