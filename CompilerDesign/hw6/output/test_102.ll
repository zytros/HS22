; generated from: oatprograms/regalloctest2.oat
target triple = "x86_64-unknown-linux"
define i64 @foo(i64 %_x2753, i64 %_y2750, i64 %_z2747) {
  %_x2754 = alloca i64
  %_y2751 = alloca i64
  %_z2748 = alloca i64
  %_a2759 = alloca i64
  %_b2764 = alloca i64
  store i64 %_x2753, i64* %_x2754
  store i64 %_y2750, i64* %_y2751
  store i64 %_z2747, i64* %_z2748
  %_x2756 = load i64, i64* %_x2754
  %_y2757 = load i64, i64* %_y2751
  %_bop2758 = add i64 %_x2756, %_y2757
  store i64 %_bop2758, i64* %_a2759
  %_y2761 = load i64, i64* %_y2751
  %_z2762 = load i64, i64* %_z2748
  %_bop2763 = add i64 %_y2761, %_z2762
  store i64 %_bop2763, i64* %_b2764
  %_a2766 = load i64, i64* %_a2759
  %_b2767 = load i64, i64* %_b2764
  %_bop2768 = add i64 %_a2766, %_b2767
  ret i64 %_bop2768
}

define i64 @program(i64 %_argc2623, { i64, [0 x i8*] }* %_argv2620) {
  %_x2626 = alloca i64
  %_i2628 = alloca i64
  %_a2635 = alloca i64
  %_b2640 = alloca i64
  %_c2645 = alloca i64
  %_d2650 = alloca i64
  %_e2662 = alloca i64
  %_f2667 = alloca i64
  %_g2672 = alloca i64
  %_h2677 = alloca i64
  %_j2682 = alloca i64
  %_k2694 = alloca i64
  %_l2699 = alloca i64
  %_m2704 = alloca i64
  %_n2709 = alloca i64
  %_o2721 = alloca i64
  %_p2726 = alloca i64
  %_q2731 = alloca i64
  %_r2736 = alloca i64
  store i64 0, i64* %_x2626
  store i64 0, i64* %_i2628
  br label %_cond2634
_body2633:
  store i64 0, i64* %_a2635
  %_a2637 = load i64, i64* %_a2635
  %_i2638 = load i64, i64* %_i2628
  %_bop2639 = add i64 %_a2637, %_i2638
  store i64 %_bop2639, i64* %_b2640
  %_b2642 = load i64, i64* %_b2640
  %_i2643 = load i64, i64* %_i2628
  %_bop2644 = add i64 %_b2642, %_i2643
  store i64 %_bop2644, i64* %_c2645
  %_c2647 = load i64, i64* %_c2645
  %_i2648 = load i64, i64* %_i2628
  %_bop2649 = add i64 %_c2647, %_i2648
  store i64 %_bop2649, i64* %_d2650
  %_d2652 = load i64, i64* %_d2650
  %_c2653 = load i64, i64* %_c2645
  %_b2654 = load i64, i64* %_b2640
  %_a2655 = load i64, i64* %_a2635
  %_result2656 = call i64 @foo(i64 %_a2655, i64 %_b2654, i64 %_c2653)
  %_bop2657 = add i64 %_d2652, %_result2656
  store i64 %_bop2657, i64* %_d2650
  %_d2659 = load i64, i64* %_d2650
  %_i2660 = load i64, i64* %_i2628
  %_bop2661 = add i64 %_d2659, %_i2660
  store i64 %_bop2661, i64* %_e2662
  %_e2664 = load i64, i64* %_e2662
  %_i2665 = load i64, i64* %_i2628
  %_bop2666 = add i64 %_e2664, %_i2665
  store i64 %_bop2666, i64* %_f2667
  %_f2669 = load i64, i64* %_f2667
  %_i2670 = load i64, i64* %_i2628
  %_bop2671 = add i64 %_f2669, %_i2670
  store i64 %_bop2671, i64* %_g2672
  %_g2674 = load i64, i64* %_g2672
  %_i2675 = load i64, i64* %_i2628
  %_bop2676 = add i64 %_g2674, %_i2675
  store i64 %_bop2676, i64* %_h2677
  %_h2679 = load i64, i64* %_h2677
  %_i2680 = load i64, i64* %_i2628
  %_bop2681 = add i64 %_h2679, %_i2680
  store i64 %_bop2681, i64* %_j2682
  %_j2684 = load i64, i64* %_j2682
  %_h2685 = load i64, i64* %_h2677
  %_g2686 = load i64, i64* %_g2672
  %_f2687 = load i64, i64* %_f2667
  %_result2688 = call i64 @foo(i64 %_f2687, i64 %_g2686, i64 %_h2685)
  %_bop2689 = add i64 %_j2684, %_result2688
  store i64 %_bop2689, i64* %_j2682
  %_j2691 = load i64, i64* %_j2682
  %_i2692 = load i64, i64* %_i2628
  %_bop2693 = add i64 %_j2691, %_i2692
  store i64 %_bop2693, i64* %_k2694
  %_k2696 = load i64, i64* %_k2694
  %_i2697 = load i64, i64* %_i2628
  %_bop2698 = add i64 %_k2696, %_i2697
  store i64 %_bop2698, i64* %_l2699
  %_l2701 = load i64, i64* %_l2699
  %_i2702 = load i64, i64* %_i2628
  %_bop2703 = add i64 %_l2701, %_i2702
  store i64 %_bop2703, i64* %_m2704
  %_m2706 = load i64, i64* %_m2704
  %_i2707 = load i64, i64* %_i2628
  %_bop2708 = add i64 %_m2706, %_i2707
  store i64 %_bop2708, i64* %_n2709
  %_n2711 = load i64, i64* %_n2709
  %_m2712 = load i64, i64* %_m2704
  %_l2713 = load i64, i64* %_l2699
  %_k2714 = load i64, i64* %_k2694
  %_result2715 = call i64 @foo(i64 %_k2714, i64 %_l2713, i64 %_m2712)
  %_bop2716 = add i64 %_n2711, %_result2715
  store i64 %_bop2716, i64* %_n2709
  %_n2718 = load i64, i64* %_n2709
  %_i2719 = load i64, i64* %_i2628
  %_bop2720 = add i64 %_n2718, %_i2719
  store i64 %_bop2720, i64* %_o2721
  %_o2723 = load i64, i64* %_o2721
  %_i2724 = load i64, i64* %_i2628
  %_bop2725 = add i64 %_o2723, %_i2724
  store i64 %_bop2725, i64* %_p2726
  %_p2728 = load i64, i64* %_p2726
  %_i2729 = load i64, i64* %_i2628
  %_bop2730 = add i64 %_p2728, %_i2729
  store i64 %_bop2730, i64* %_q2731
  %_q2733 = load i64, i64* %_q2731
  %_i2734 = load i64, i64* %_i2628
  %_bop2735 = add i64 %_q2733, %_i2734
  store i64 %_bop2735, i64* %_r2736
  %_x2738 = load i64, i64* %_x2626
  %_r2739 = load i64, i64* %_r2736
  %_bop2740 = add i64 %_x2738, %_r2739
  store i64 %_bop2740, i64* %_x2626
  %_i2742 = load i64, i64* %_i2628
  %_bop2743 = add i64 %_i2742, 1
  store i64 %_bop2743, i64* %_i2628
  br label %_cond2634
_cond2634:
  %_i2630 = load i64, i64* %_i2628
  %_bop2631 = icmp slt i64 %_i2630, 10000000
  br i1 %_bop2631, label %_body2633, label %_post2632
_post2632:
  %_x2745 = load i64, i64* %_x2626
  call void @print_int(i64 %_x2745)
  ret i64 0
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
