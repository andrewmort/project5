`timescale 1ns / 1ps
module bsr_tb;

    reg clk;

    wire sc_in, sc_out;
    reg b1, b2, tdi;

    wire b2t, b1n;
    wire y; 

    wire [3:0] out;
    reg [3:0] in;

    initial
    forever #5 clk = ~clk;

    initial begin
    $monitor($time, " b1=%d, b2=%d, tdi=%d, in=%x, out=%x", b1, b2, tdi, in, out);
    clk = 0; tdi = 0;
    b1=1; b2=0;//start in normal mode
    in = 0;
    @(posedge clk);
    @(posedge clk);
    in = 1;  
    @(posedge clk);
    in = 2; 
    @(posedge clk);
    in = 3;  
    @(posedge clk);
    in = 4; 
    repeat(2) @(posedge clk);
    in=0;
    repeat(3) @(posedge clk); 
    b1=0; //test scan mode
    tdi = 1;
    @(posedge clk);    
    repeat(3) @(posedge clk);
    tdi = 0;
    repeat(4) @(posedge clk)
    
    $finish;

    end



    not NOT0(b1n, b1);
    or  OR0(b2t, b1n, b2);

    dff x(y, clk, in[0]); 

    bilbo_dff a(out[3], clk, in[3], tdi, b1, b2t);
    bilbo_dff b(out[2], clk, in[2], out[3], b1, b2t);
    bilbo_dff c(out[1], clk, in[1], out[2], b1, b2t);
    bilbo_dff d(out[0], clk, in[0], out[1], b1, b2t);
endmodule
