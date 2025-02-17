`timescale 1ns / 1ps

// Structural
module digital_num(
    input w, x, y, z,
    output a, b, c, d, e, f, g
);

    wire notw, notx, noty, notz;
    not int1(notw, w);
    not int2(notx, x);
    not int3(noty, y);
    not int4(notz, z);
    
    //a
    and gate_a0 (mid_a0, notw, notx, noty, notz); //0000
    and gate_a1 (mid_a1, notw, notx, y, notz); //0010
    and gate_a2 (mid_a2, notw, notx, y, z); //0011
    and gate_a3 (mid_a3, notw, x, noty, z); //0101
    and gate_a4 (mid_a4, notw, x, y, notz); //0110
    and gate_a5 (mid_a5, notw, x, y, z); //0111
    and gate_a6 (mid_a6, w, notx, noty, notz); //1000
    and gate_a7 (mid_a7, w, notx, noty, z); //1001
    or or_a (a, mid_a0, mid_a1, mid_a2, mid_a3, mid_a4, mid_a5, mid_a6, mid_a7);
    
    //b
    and gate_b0 (mid_b0, notw, notx, noty, notz); //0000
    and gate_b1 (mid_b1, notw, noty, notz, z); //0001
    and gate_b2 (mid_b2, notw, notx, y, notz); //0010
    and gate_b3 (mid_b3, notw, notx, y, z); //0011
    and gate_b4 (mid_b4, notw, x, noty, notz); //0100
    and gate_b5 (mid_b5, notw, x, y, z); //0111
    and gate_b6 (mid_b6, w, notx, noty, notz); //1000
    and gate_b7 (mid_b7, w, notx, noty, z); //1001
    or or_b (b, mid_b0, mid_b1, mid_b2, mid_b3, mid_b4, mid_b5, mid_b6, mid_b7);
    
    //c
    and gate_c0 (mid_c0, notw, notx, noty, notz); // 0000
    and gate_c1 (mid_c1, notw, notx, noty, z); // 0001
    and gate_c2 (mid_c2, notw, notx, y, z); // 0011
    and gate_c3 (mid_c3, notw, x, noty, notz); // 0100
    and gate_c4 (mid_c4, notw, x, noty, z); // 0101
    and gate_c5 (mid_c5, notw, x, y, notz); // 0110
    and gate_c6 (mid_c6, notw, x, y, z); // 0111
    and gate_c7 (mid_c7, w, notx, noty, notz); // 1000
    and gate_c8 (mid_c8, w, notx, noty, z); // 1001
    or or_c (c, mid_c0, mid_c1, mid_c2, mid_c3, mid_c4, mid_c5, mid_c6, mid_c7, mid_c8);

    //d
    and gate_d0 (mid_d0, notw, notx, noty, notz); // 0000
    and gate_d1 (mid_d1, notw, notx, y, notz); // 0010
    and gate_d2 (mid_d2, notw, notx, y, z); // 0011
    and gate_d3 (mid_d3, notw, x, noty, z); // 0101
    and gate_d4 (mid_d4, notw, x, y, notz); // 0110
    and gate_d5 (mid_d5, w, notx, noty, notz); // 1000
    and gate_d6 (mid_d6, w, notx, noty, z); // 1001
    or or_d (d, mid_d0, mid_d1, mid_d2, mid_d3, mid_d4, mid_d5, mid_d6);
    
    //e
    and gate_e0 (mid_e0, notw, notx, noty, notz); // 0000
    and gate_e1 (mid_e1, notw, notx, y, notz); // 0010
    and gate_e2 (mid_e2, notw, x, y, notz); // 0110
    and gate_e3 (mid_e3, w, notx, noty, notz); // 1000
    or or_e (e, mid_e0, mid_e1, mid_e2, mid_e3);
    
    //f
    and gate_f0 (mid_f0, notw, notx, noty, notz); // 0000
    and gate_f1 (mid_f1, notw, x, noty, notz); // 0100
    and gate_f2 (mid_f2, notw, x, noty, z); // 0101
    and gate_f3 (mid_f3, notw, x, y, notz); // 0110
    and gate_f4 (mid_f4, w, notx, noty, notz); // 1000
    and gate_f5 (mid_f5, w, notx, noty, z); // 1001
    or or_f (f, mid_f0, mid_f1, mid_f2, mid_f3, mid_f4, mid_f5);
    
    //g
    and gate_g0 (mid_g0, notw, notx, y, notz); // 0010
    and gate_g1 (mid_g1, notw, notx, y, z); // 0011
    and gate_g2 (mid_g2, notw, x, noty, notz); // 0100
    and gate_g3 (mid_g3, notw, x, noty, z); // 0101
    and gate_g4 (mid_g4, notw, x, y, notz); // 0110
    and gate_g5 (mid_g5, w, notx, noty, notz); // 1000
    and gate_g6 (mid_g6, w, notx, noty, z); // 1001
    or or_g (g, mid_g0, mid_g1, mid_g2, mid_g3, mid_g4, mid_g5, mid_g6);

endmodule

