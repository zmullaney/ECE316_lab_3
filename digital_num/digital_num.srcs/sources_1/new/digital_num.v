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
    and gate0 (mid_a0, notw, notx, noty, notz); // 0000
    and gate1 (d1, e, nota, notb,    c); // 0001

endmodule

