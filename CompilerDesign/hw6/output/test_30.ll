; generated from: llprograms/gep2.ll
target triple = "x86_64-unknown-linux"
%arr = type [5 x i64]

@tmp = global %arr [ i64 1, i64 2, i64 3, i64 4, i64 5 ]

define i64 @main(i64 %argc, i8** %arcv) {
  %2 = getelementptr %arr, %arr* @tmp, i32 0, i32 3
  %3 = load i64, i64* %2
  ret i64 %3
}



