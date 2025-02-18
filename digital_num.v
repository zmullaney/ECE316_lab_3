`timescale 1ns / 1ps

// Structural
module digital_num(
    input w, x, y, z,
    output a, b, c, d, e, f, g, an0, an1, an2, an3
);
    assign an0 = 0;
    assign an1 = 1;
    assign an2 = 1;
    assign an3 = 1;
    
    wire notw, notx, noty, notz;
    not int1(notw, w);
    not int2(notx, x);
    not int3(noty, y);
    not int4(notz, z);
    
    //a
    and gate_a0 (mid_a0, notw, y);
    and gate_a1 (mid_a1, notw, x, z); 
    and gate_a2 (mid_a2, w, notx, noty); 
    and gate_a3 (mid_a3, notw, notx, noty, notz);
    or or_a (nota, mid_a0, mid_a1, mid_a2, mid_a3);
    not inta (a, nota);
    
    //b
    and gate_b0 (mid_b0, w, notx, noty); 
    and gate_b1 (mid_b1, notw, noty, notz); 
    and gate_b2 (mid_b2, notw, y, z); 
    and gate_b3 (mid_b3, notw, notx); 
    or or_b (notb, mid_b0, mid_b1, mid_b2, mid_b3);
    not intb (b, notb);
    
    //c
    and gate_c0 (mid_c0, notw, noty);
    and gate_c1 (mid_c1, notw, x);
    and gate_c2 (mid_c2, notw, y, z);
    and gate_c3 (mid_c3, w, notx, noty); 
    or or_c (notc, mid_c0, mid_c1, mid_c2, mid_c3);
    not intc (c, notc);

    //d
    and gate_d0 (mid_d0, notw, notx, y); 
    and gate_d1 (mid_d1, notw, y, notz); 
    and gate_d2 (mid_d2, w, notx, noty); 
    and gate_d3 (mid_d3, notw, notx, noty, notz);
    and gate_d4 (mid_d4, notw, x, noty, z);
    or or_d (notd, mid_d0, mid_d1, mid_d2, mid_d3, mid_d4);
    not intd (d, notd);
    
    //e
    and gate_e0 (mid_e0, notw, notx, noty, notz);
    and gate_e1 (mid_e1, w, notx, noty, notz); 
    and gate_e2 (mid_e2, notw, y, notz); 
    or or_e (note, mid_e0, mid_e1, mid_e2);
    not inte (e, note);
    
    //f
    and gate_f0 (mid_f0, notw, noty, notz);
    and gate_f1 (mid_f1, notw, x, noty); 
    and gate_f2 (mid_f2, w, notx, noty);
    and gate_f3 (mid_f3, notw, x, y, notz);
    or or_f (notf, mid_f0, mid_f1, mid_f2, mid_f3);
    not intf (f, notf);
    
    //g
    and gate_g0 (mid_g0, notw, x, noty);
    and gate_g1 (mid_g1, w, notx, noty);
    and gate_g2 (mid_g2, notw, notx, y);
    and gate_g3 (mid_g3, notw, y, notz);
    or or_g (notg, mid_g0, mid_g1, mid_g2, mid_g3);
    not intg(g, notg);
    
endmodule

