// my_modules.v
// Holds modules

//scan DFF, can also be used on outputs for boundary scan
//size: 1 DFF, 2 inputs (mux)
module sc_dff(q, clock, data, tdata, sel);
    output q;
    input clock, data, tdata, sel;
    
    wire d;

    u_mux2(d, data, tdata, sel);
    
    dff DFF0(q, clock, d);

endmodule //sc_dff

//resetable scan DFF
//size: 1 resetDFF, 2 inputs (mux)
module sc_dff_r(q, clock, data, tdata, sel, rst_l);
    output q;
    input clock, data, tdata, sel, rst_l;
    
    wire d;

    u_mux2 mux0(d, data, tdata, sel);
    
    dff_r DFFR0(q, clock, rst_l,  d);

endmodule //sc_dff_r

module bsr(q, scan_out, capture, data, scan_in, shift, update, sel, en);
    output q, scan_out;
    input capture, data, scan_in, shift, update, sel, en;

    wire o, p, x;

    u_mux2 MUX0(o, data, scan_in, shift);

    //make sure flop holds state when DR_CLK pulses, but BSR not selected
    u_mux2 MUX1(p, scan_out, o, en);

    dff DFF_0(scan_out, capture, p);
    dff DFF_1(x, update, scan_out);

    u_mux2 MUX_1(q, data, x, sel);

endmodule //bsr

//version for boundry scan locations, has mux to bypass FF
module bilbo_bsr(q, sc_out, clock, data, tdata, sel, b1, b2, update);
    output q, sc_out;
    input clock, data, tdata, sel, b1, b2, update;
    //data - input during normal operation
    //tdata - scan in data during test
    //sel - enables bypass of DFF during normal operation
    // b1, b2 - control lines from BIST
    // NOTE: b2 is really OR(b2, NOT(b1)) which happens externally to all the BIST FFs
    
    //based on slide 23-40
    
    wire o1, o2, d, x;

    nand NAND0( o1 , b1, data);
    nand NAND1( o2, b2, tdata);
    xor  XOR0( d, o1, o2);

    dff DFF0(sc_out, clock, d);
    dff DFF1(x, update, sc_out);
    
    u_mux2 mux0(q, data, x, sel);

endmodule //bilbo_bsr

//BILBO for inside the circuit, replacing existing DFF
module bilbo_dff(q, clock, data, tdata, b1, b2);
    output q;
    input clock, data, tdata, b1, b2;
    //data - input during normal operation
    //tdata - scan in data during test
    // b1, b2 - control lines from BIST
    // NOTE: b2 is really OR(b2, NOT(b1)) which happens externally to all the BIST FFs
    
    //based on slide 23-40
    
    wire o1, o2, d;

    nand NAND0( o1 , b1, data);
    nand NAND1( o2, b2, tdata);
    xor  XOR0( d, o1, o2);

    dff DFF0(q, clock, d);
    
endmodule //bilbo_dff

// size = 17
module mux4(out, in0, in1, in2, in3, sel);
    output out;
    input in0, in1, in2, in3;
    input [1:0] sel;
    
    wire [1:0] sel_b;
    wire a, b, c, d;    

    not NOT0(sel_b[0], sel[0]);
    not NOT1(sel_b[1], sel[1]);
   
    //NANDs driving NAND ~= ANDs driving OR
    and NAND0(a, in0, sel_b[1], sel_b[0]);  //selected when sel=00
    and NAND1(b, in1, sel_b[1], sel[0]);    //selected when sel=01
    and NAND2(c, in2, sel[1], sel_b[0]);    //sel=10
    and NAND3(d, in3, sel[1], sel[0]);      //sel=11
    //output
    nor NAND4(out, a, b, c, d);

endmodule //mux4
     



