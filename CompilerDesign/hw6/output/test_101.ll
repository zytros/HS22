; generated from: oatprograms/regalloctest.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2518, { i64, [0 x i8*] }* %_argv2515) {
  %_x2521 = alloca i64
  %_i2523 = alloca i64
  %_a2530 = alloca i64
  %_b2535 = alloca i64
  %_c2540 = alloca i64
  %_d2545 = alloca i64
  %_e2550 = alloca i64
  %_f2555 = alloca i64
  %_g2560 = alloca i64
  %_h2565 = alloca i64
  %_j2570 = alloca i64
  %_k2575 = alloca i64
  %_l2580 = alloca i64
  %_m2585 = alloca i64
  %_n2590 = alloca i64
  %_o2595 = alloca i64
  %_p2600 = alloca i64
  %_q2605 = alloca i64
  %_r2610 = alloca i64
  store i64 0, i64* %_x2521
  store i64 0, i64* %_i2523
  br label %_cond2529
_body2528:
  store i64 0, i64* %_a2530
  %_a2532 = load i64, i64* %_a2530
  %_i2533 = load i64, i64* %_i2523
  %_bop2534 = add i64 %_a2532, %_i2533
  store i64 %_bop2534, i64* %_b2535
  %_b2537 = load i64, i64* %_b2535
  %_i2538 = load i64, i64* %_i2523
  %_bop2539 = add i64 %_b2537, %_i2538
  store i64 %_bop2539, i64* %_c2540
  %_c2542 = load i64, i64* %_c2540
  %_i2543 = load i64, i64* %_i2523
  %_bop2544 = add i64 %_c2542, %_i2543
  store i64 %_bop2544, i64* %_d2545
  %_d2547 = load i64, i64* %_d2545
  %_i2548 = load i64, i64* %_i2523
  %_bop2549 = add i64 %_d2547, %_i2548
  store i64 %_bop2549, i64* %_e2550
  %_e2552 = load i64, i64* %_e2550
  %_i2553 = load i64, i64* %_i2523
  %_bop2554 = add i64 %_e2552, %_i2553
  store i64 %_bop2554, i64* %_f2555
  %_f2557 = load i64, i64* %_f2555
  %_i2558 = load i64, i64* %_i2523
  %_bop2559 = add i64 %_f2557, %_i2558
  store i64 %_bop2559, i64* %_g2560
  %_g2562 = load i64, i64* %_g2560
  %_i2563 = load i64, i64* %_i2523
  %_bop2564 = add i64 %_g2562, %_i2563
  store i64 %_bop2564, i64* %_h2565
  %_h2567 = load i64, i64* %_h2565
  %_i2568 = load i64, i64* %_i2523
  %_bop2569 = add i64 %_h2567, %_i2568
  store i64 %_bop2569, i64* %_j2570
  %_j2572 = load i64, i64* %_j2570
  %_i2573 = load i64, i64* %_i2523
  %_bop2574 = add i64 %_j2572, %_i2573
  store i64 %_bop2574, i64* %_k2575
  %_k2577 = load i64, i64* %_k2575
  %_i2578 = load i64, i64* %_i2523
  %_bop2579 = add i64 %_k2577, %_i2578
  store i64 %_bop2579, i64* %_l2580
  %_l2582 = load i64, i64* %_l2580
  %_i2583 = load i64, i64* %_i2523
  %_bop2584 = add i64 %_l2582, %_i2583
  store i64 %_bop2584, i64* %_m2585
  %_m2587 = load i64, i64* %_m2585
  %_i2588 = load i64, i64* %_i2523
  %_bop2589 = add i64 %_m2587, %_i2588
  store i64 %_bop2589, i64* %_n2590
  %_n2592 = load i64, i64* %_n2590
  %_i2593 = load i64, i64* %_i2523
  %_bop2594 = add i64 %_n2592, %_i2593
  store i64 %_bop2594, i64* %_o2595
  %_o2597 = load i64, i64* %_o2595
  %_i2598 = load i64, i64* %_i2523
  %_bop2599 = add i64 %_o2597, %_i2598
  store i64 %_bop2599, i64* %_p2600
  %_p2602 = load i64, i64* %_p2600
  %_i2603 = load i64, i64* %_i2523
  %_bop2604 = add i64 %_p2602, %_i2603
  store i64 %_bop2604, i64* %_q2605
  %_q2607 = load i64, i64* %_q2605
  %_i2608 = load i64, i64* %_i2523
  %_bop2609 = add i64 %_q2607, %_i2608
  store i64 %_bop2609, i64* %_r2610
  %_x2612 = load i64, i64* %_x2521
  %_r2613 = load i64, i64* %_r2610
  %_bop2614 = add i64 %_x2612, %_r2613
  store i64 %_bop2614, i64* %_x2521
  %_i2616 = load i64, i64* %_i2523
  %_bop2617 = add i64 %_i2616, 1
  store i64 %_bop2617, i64* %_i2523
  br label %_cond2529
_cond2529:
  %_i2525 = load i64, i64* %_i2523
  %_bop2526 = icmp slt i64 %_i2525, 10000000
  br i1 %_bop2526, label %_body2528, label %_post2527
_post2527:
  %_x2619 = load i64, i64* %_x2521
  ret i64 %_x2619
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
