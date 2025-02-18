`timescale 1ns / 1ps

module tb_digital_num;
    reg w, x, y, z;
    wire a, b, c, d, e, f, g;
    
    // dut:
    digital_num dut (.w(w), .x(x), .y(y), .z(z), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g)); 
    
    //test with checker
    initial begin
        w = 1'b0;
        x = 1'b0;
        y = 1'b0;
        z = 1'b0;
        #50;
        
        w = 1'b0;
        x = 1'b0;
        y = 1'b0;
        z = 1'b1;
        #50;
        
        w = 1'b0;
        x = 1'b0;
        y = 1'b1;
        z = 1'b0;
        #50;
        
        w = 1'b0;
        x = 1'b0;
        y = 1'b1;
        z = 1'b1;
        #50;
        
        w = 1'b0;
        x = 1'b1;
        y = 1'b0;
        z = 1'b0;
        #50;
        
        w = 1'b0;
        x = 1'b1;
        y = 1'b0;
        z = 1'b1;
        #50;
        
        w = 1'b0;
        x = 1'b1;
        y = 1'b1;
        z = 1'b0;
        #50;
        
        w = 1'b0;
        x = 1'b1;
        y = 1'b1;
        z = 1'b1;
        #50;
        
        w = 1'b1;
        x = 1'b0;
        y = 1'b0;
        z = 1'b0;
        #50;
        
        w = 1'b1;
        x = 1'b0;
        y = 1'b0;
        z = 1'b1;
        #50;
    end
endmodule
