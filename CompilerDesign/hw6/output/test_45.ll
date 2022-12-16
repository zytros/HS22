; generated from: llprograms/binarysearch.ll
target triple = "x86_64-unknown-linux"
%struct.Node = type { %struct.Node*, %struct.Node*, i64 }

@node1 = global %struct.Node { %struct.Node* @node2, %struct.Node* @node3, i64 50 }
@node2 = global %struct.Node { %struct.Node* @node4, %struct.Node* @node5, i64 25 }
@node3 = global %struct.Node { %struct.Node* @node6, %struct.Node* @node7, i64 75 }
@node4 = global %struct.Node { %struct.Node* @node8, %struct.Node* null, i64 10 }
@node5 = global %struct.Node { %struct.Node* null, %struct.Node* null, i64 30 }
@node6 = global %struct.Node { %struct.Node* null, %struct.Node* null, i64 60 }
@node7 = global %struct.Node { %struct.Node* null, %struct.Node* null, i64 80 }
@node8 = global %struct.Node { %struct.Node* null, %struct.Node* null, i64 1 }

define i64 @contains(%struct.Node* %root, i64 %value) {
  %1 = getelementptr %struct.Node, %struct.Node* %root, i32 0, i32 2
  %2 = load i64, i64* %1
  %3 = icmp eq i64 %2, %value
  br i1 %3, label %equal, label %notequal
equal:
  ret i64 1
left:
  %5 = getelementptr %struct.Node, %struct.Node* %root, i32 0, i32 0
  %6 = load %struct.Node*, %struct.Node** %5
  %7 = icmp eq %struct.Node* %6, null
  br i1 %7, label %none, label %left_next
left_next:
  %8 = call i64 @contains(%struct.Node* %6, i64 %value)
  ret i64 %8
none:
  ret i64 0
notequal:
  %4 = icmp sgt i64 %2, %value
  br i1 %4, label %left, label %right
right:
  %9 = getelementptr %struct.Node, %struct.Node* %root, i32 0, i32 1
  %10 = load %struct.Node*, %struct.Node** %9
  %11 = icmp eq %struct.Node* %10, null
  br i1 %11, label %none, label %right_next
right_next:
  %12 = call i64 @contains(%struct.Node* %10, i64 %value)
  ret i64 %12
}

define i64 @main(i64 %argc, i8** %argv) {
  %11 = call i64 @contains(%struct.Node* @node1, i64 50)
  %12 = call i64 @contains(%struct.Node* @node1, i64 25)
  %13 = call i64 @contains(%struct.Node* @node1, i64 75)
  %14 = call i64 @contains(%struct.Node* @node1, i64 10)
  %15 = call i64 @contains(%struct.Node* @node1, i64 30)
  %16 = call i64 @contains(%struct.Node* @node1, i64 60)
  %17 = call i64 @contains(%struct.Node* @node1, i64 80)
  %18 = call i64 @contains(%struct.Node* @node1, i64 1)
  %19 = call i64 @contains(%struct.Node* @node1, i64 100)
  %20 = call i64 @contains(%struct.Node* @node1, i64 120)
  %21 = add i64 %11, %12
  %22 = add i64 %13, %14
  %23 = add i64 %15, %16
  %24 = add i64 %17, %18
  %25 = add i64 %19, %20
  %26 = add i64 %21, %22
  %27 = add i64 %23, %24
  %28 = add i64 %26, %27
  %29 = add i64 %28, %25
  ret i64 %29
}



