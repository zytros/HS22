; generated from: llprograms/call.ll
target triple = "x86_64-unknown-linux"
define i64 @foo() {
  ret i64 42
}

define i64 @main(i64 %argc, i8** %arcv) {
  %1 = call i64 @foo()
  ret i64 %1
}



