; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %_n4718) {
  %_n4719 = alloca i64
  store i64 %_n4718, i64* %_n4719
  %_n4721 = load i64, i64* %_n4719
  %_bop4722 = icmp eq i64 %_n4721, 0
  br i1 %_bop4722, label %_then4725, label %_else4724
_else4724:
  br label %_merge4723
_else4729:
  br label %_merge4728
_merge4723:
  %_n4726 = load i64, i64* %_n4719
  %_bop4727 = icmp eq i64 %_n4726, 1
  br i1 %_bop4727, label %_then4730, label %_else4729
_merge4728:
  %_n4731 = load i64, i64* %_n4719
  %_bop4732 = sub i64 %_n4731, 1
  %_result4733 = call i64 @fibR(i64 %_bop4732)
  %_n4734 = load i64, i64* %_n4719
  %_bop4735 = sub i64 %_n4734, 2
  %_result4736 = call i64 @fibR(i64 %_bop4735)
  %_bop4737 = add i64 %_result4733, %_result4736
  ret i64 %_bop4737
_then4725:
  ret i64 0
_then4730:
  ret i64 1
}

define i64 @fibI(i64 %_n4678) {
  %_n4679 = alloca i64
  %_a4681 = alloca i64
  %_b4683 = alloca i64
  %_old4704 = alloca i64
  store i64 %_n4678, i64* %_n4679
  store i64 0, i64* %_a4681
  store i64 1, i64* %_b4683
  %_n4685 = load i64, i64* %_n4679
  %_bop4686 = icmp eq i64 %_n4685, 0
  br i1 %_bop4686, label %_then4690, label %_else4689
_body4701:
  %_b4703 = load i64, i64* %_b4683
  store i64 %_b4703, i64* %_old4704
  %_b4706 = load i64, i64* %_b4683
  %_a4707 = load i64, i64* %_a4681
  %_bop4708 = add i64 %_b4706, %_a4707
  store i64 %_bop4708, i64* %_b4683
  %_old4710 = load i64, i64* %_old4704
  store i64 %_old4710, i64* %_a4681
  %_n4712 = load i64, i64* %_n4679
  %_bop4713 = sub i64 %_n4712, 1
  store i64 %_bop4713, i64* %_n4679
  br label %_cond4702
_cond4702:
  %_n4697 = load i64, i64* %_n4679
  %_bop4698 = sub i64 %_n4697, 2
  %_bop4699 = icmp sgt i64 %_bop4698, 0
  br i1 %_bop4699, label %_body4701, label %_post4700
_else4689:
  br label %_merge4688
_else4695:
  br label %_merge4694
_merge4688:
  %_n4691 = load i64, i64* %_n4679
  %_bop4692 = icmp eq i64 %_n4691, 1
  br i1 %_bop4692, label %_then4696, label %_else4695
_merge4694:
  br label %_cond4702
_post4700:
  %_a4715 = load i64, i64* %_a4681
  %_b4716 = load i64, i64* %_b4683
  %_bop4717 = add i64 %_a4715, %_b4716
  ret i64 %_bop4717
_then4690:
  %_a4687 = load i64, i64* %_a4681
  ret i64 %_a4687
_then4696:
  %_b4693 = load i64, i64* %_b4683
  ret i64 %_b4693
}

define i64 @program(i64 %_argc4663, { i64, [0 x i8*] }* %_argv4660) {
  %_val4666 = alloca i64
  store i64 1, i64* %_val4666
  %_result4668 = call i64 @fibR(i64 12)
  %_bop4669 = icmp eq i64 %_result4668, 144
  %_result4670 = call i64 @fibI(i64 12)
  %_bop4671 = icmp eq i64 %_result4670, 144
  %_bop4672 = and i1 %_bop4669, %_bop4671
  br i1 %_bop4672, label %_then4676, label %_else4675
_else4675:
  br label %_merge4674
_merge4674:
  %_val4677 = load i64, i64* %_val4666
  ret i64 %_val4677
_then4676:
  store i64 0, i64* %_val4666
  br label %_merge4674
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
