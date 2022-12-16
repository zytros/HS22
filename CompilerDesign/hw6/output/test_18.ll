; generated from: llprograms/global1.ll
target triple = "x86_64-unknown-linux"
@gbl = global i64 12

define i64 @main(i64 %argc, i8** %arcv) {
  %1 = load i64, i64* @gbl
  ret i64 %1
}



