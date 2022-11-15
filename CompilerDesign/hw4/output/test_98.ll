; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_args5602 = alloca i64
  %_args5603 = alloca i64
  store i64 %x, i64* %_args5602
  store i64 %y, i64* %_args5603
  %_locRef5609 = load i64, i64* %_args5602
  %_locRef5610 = load i64, i64* %_args5603
  %_bop5611 = icmp eq i64 %_locRef5609, %_locRef5610
  br i1 %_bop5611, label %_ifTruelbl5606, label %_ifFalselbl5607
_ifTruelbl5606:
  %_locRef5612 = load i64, i64* %_args5602
  ret i64 %_locRef5612
_ifFalselbl5607:
  br label %_ifEndlbl5608
_ifEndlbl5608:
  %_locRef5616 = load i64, i64* %_args5602
  %_bop5617 = icmp eq i64 %_locRef5616, 0
  br i1 %_bop5617, label %_ifTruelbl5613, label %_ifFalselbl5614
_ifTruelbl5613:
  %_locRef5618 = load i64, i64* %_args5603
  ret i64 %_locRef5618
_ifFalselbl5614:
  br label %_ifEndlbl5615
_ifEndlbl5615:
  %_locRef5622 = load i64, i64* %_args5603
  %_bop5623 = icmp eq i64 %_locRef5622, 0
  br i1 %_bop5623, label %_ifTruelbl5619, label %_ifFalselbl5620
_ifTruelbl5619:
  %_locRef5624 = load i64, i64* %_args5602
  ret i64 %_locRef5624
_ifFalselbl5620:
  br label %_ifEndlbl5621
_ifEndlbl5621:
  %_locRef5628 = load i64, i64* %_args5602
  %_uopUID5629 = xor i64 -1, %_locRef5628
  %_bop5630 = and i64 %_uopUID5629, 1
  %_bop5631 = icmp eq i64 %_bop5630, 1
  br i1 %_bop5631, label %_ifTruelbl5625, label %_ifFalselbl5626
_ifTruelbl5625:
  %_locRef5635 = load i64, i64* %_args5603
  %_bop5636 = and i64 %_locRef5635, 1
  %_bop5637 = icmp eq i64 %_bop5636, 1
  br i1 %_bop5637, label %_ifTruelbl5632, label %_ifFalselbl5633
_ifTruelbl5632:
  %_locRef5638 = load i64, i64* %_args5602
  %_bop5639 = lshr i64 %_locRef5638, 1
  %_locRef5640 = load i64, i64* %_args5603
  %_callUID5641 = call i64 @binary_gcd(i64 %_bop5639, i64 %_locRef5640)
  ret i64 %_callUID5641
_ifFalselbl5633:
  %_locRef5642 = load i64, i64* %_args5602
  %_bop5643 = lshr i64 %_locRef5642, 1
  %_locRef5644 = load i64, i64* %_args5603
  %_bop5645 = lshr i64 %_locRef5644, 1
  %_callUID5646 = call i64 @binary_gcd(i64 %_bop5643, i64 %_bop5645)
  %_bop5647 = shl i64 %_callUID5646, 1
  ret i64 %_bop5647
_ifEndlbl5634:
  br label %_ifEndlbl5627
_ifFalselbl5626:
  br label %_ifEndlbl5627
_ifEndlbl5627:
  %_locRef5651 = load i64, i64* %_args5603
  %_uopUID5652 = xor i64 -1, %_locRef5651
  %_bop5653 = and i64 %_uopUID5652, 1
  %_bop5654 = icmp eq i64 %_bop5653, 1
  br i1 %_bop5654, label %_ifTruelbl5648, label %_ifFalselbl5649
_ifTruelbl5648:
  %_locRef5655 = load i64, i64* %_args5602
  %_locRef5656 = load i64, i64* %_args5603
  %_bop5657 = lshr i64 %_locRef5656, 1
  %_callUID5658 = call i64 @binary_gcd(i64 %_locRef5655, i64 %_bop5657)
  ret i64 %_callUID5658
_ifFalselbl5649:
  br label %_ifEndlbl5650
_ifEndlbl5650:
  %_locRef5662 = load i64, i64* %_args5602
  %_locRef5663 = load i64, i64* %_args5603
  %_bop5664 = icmp sgt i64 %_locRef5662, %_locRef5663
  br i1 %_bop5664, label %_ifTruelbl5659, label %_ifFalselbl5660
_ifTruelbl5659:
  %_locRef5665 = load i64, i64* %_args5602
  %_locRef5666 = load i64, i64* %_args5603
  %_bop5667 = sub i64 %_locRef5665, %_locRef5666
  %_bop5668 = lshr i64 %_bop5667, 1
  %_locRef5669 = load i64, i64* %_args5603
  %_callUID5670 = call i64 @binary_gcd(i64 %_bop5668, i64 %_locRef5669)
  ret i64 %_callUID5670
_ifFalselbl5660:
  br label %_ifEndlbl5661
_ifEndlbl5661:
  %_locRef5671 = load i64, i64* %_args5603
  %_locRef5672 = load i64, i64* %_args5602
  %_bop5673 = sub i64 %_locRef5671, %_locRef5672
  %_bop5674 = lshr i64 %_bop5673, 1
  %_locRef5675 = load i64, i64* %_args5602
  %_callUID5676 = call i64 @binary_gcd(i64 %_bop5674, i64 %_locRef5675)
  ret i64 %_callUID5676
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_args5591 = alloca i64
  %_args5592 = alloca { i64, [0 x i8*] }*
  %_localId5595 = alloca i64
  %_localId5597 = alloca i64
  store i64 %argc, i64* %_args5591
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_args5592
  store i64 21, i64* %_localId5595
  store i64 15, i64* %_localId5597
  %_locRef5599 = load i64, i64* %_localId5595
  %_locRef5600 = load i64, i64* %_localId5597
  %_callUID5601 = call i64 @binary_gcd(i64 %_locRef5599, i64 %_locRef5600)
  ret i64 %_callUID5601
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
