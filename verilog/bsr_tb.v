`timescale 1ns / 1ps
module bsr_tb;

    reg clk;

    wire sc_in;
    reg b1, b2, tdi;

    wire b2t, b1n;
    wire y; 

    wire [3:0] out;
    wire [3:0] sc_out;
    reg [3:0] in;

    initial
    forever #5 clk = ~clk;

    reg shift, update, sel;

    initial begin
    $monitor($time, " b1=%d, b2=%d, tdi=%d, in=%x, out=%x, tdo=%x, shift=%x, update=%x, sel=%x", b1, b2, tdi, in, out, sc_out[0], shift, update, sel);
    clk = 0; tdi = 0; shift = 0; update = 0; sel = 0;
    b1=1; b2=0;//start in normal mode
    in = 0;
    repeat(2) @(posedge clk);
    #1 update = 1; #1 update = 0;  //capture the test vector 0000
    @(posedge clk);
    @(posedge clk);
    in = 1;
    #1 sel = 1; #1 sel = 0;  //Output should toggle from 0001 to 0000 and back  
    @(posedge clk);
    in = 2; 
    @(posedge clk);
    in = 3;  
    #1 sel = 1; #1 sel = 0;
    @(posedge clk);
    in = 4; 
    repeat(2) @(posedge clk);
    in=0;
    repeat(3) @(posedge clk); 
    b1=0; //test scan mode
    tdi = 1; shift = 1; sel = 1;
    #1 update = 1; #1 update = 0;
    @(posedge clk);    
     #1 update = 1; #1 update = 0;
    repeat(3) begin
        @(posedge clk);
         #1 update = 1; #1 update = 0;
    end
    tdi = 0;
    repeat(4) @(posedge clk)
    
    $finish;

    end

    //q, scan, capture, data, scan_in, shift, update, sel

    //not NOT0(b1n, b1);
    //or  OR0(b2t, b1n, b2);

    //dff x(y, clk, in[0]); 

    //bilbo_dff a(out[3], clk, in[3], tdi, b1, b2t);
    //bilbo_dff b(out[2], clk, in[2], out[3], b1, b2t);
    //bilbo_dff c(out[1], clk, in[1], out[2], b1, b2t);
    //bilbo_dff d(out[0], clk, in[0], out[1], b1, b2t);

    bsr a(out[3], sc_out[3], clk, in[3], tdi, shift, update, sel);
    bsr b(out[2], sc_out[2], clk, in[2], sc_out[3], shift, update, sel);
    bsr c(out[1], sc_out[1], clk, in[1], sc_out[2], shift, update, sel);
    bsr d(out[0], sc_out[0], clk, in[0], sc_out[1], shift, update, sel);

endmodule
