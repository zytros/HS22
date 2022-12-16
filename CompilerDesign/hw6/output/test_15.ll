; generated from: llprograms/cbr3.ll
target triple = "x86_64-unknown-linux"
define i64 @main(i64 %argc, i8** %arcv) {
  br i1 0, label %then, label %else
else:
  ret i64 9
then:
  ret i64 7
}



