; generated from: llprograms/list1.ll
target triple = "x86_64-unknown-linux"
%node = type { i64, %node* }

@hd = global %node { i64 1, %node* @md }
@md = global %node { i64 2, %node* @tl }
@tl = global %node { i64 3, %node* null }

define i64 @main(i64 %argc, i8** %arcv) {
  %link = getelementptr %node, %node* @hd, i32 0, i32 1
  %next = load %node*, %node** %link
  %link2 = getelementptr %node, %node* %next, i32 0, i32 1
  %next2 = load %node*, %node** %link2
  %val2 = getelementptr %node, %node* %next2, i32 0, i32 0
  %1 = load i64, i64* %val2
  ret i64 %1
}



