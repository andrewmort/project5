// my_modules.v
// Holds modules

//scan DFF
module sc_dff(q, clock, data, tdata, sel);
    output q;
    input clock, data, tdata, sel;
    
    wire d;

    u_mux2(d, data, tdata, sel);
    
    dff(q, clock, d)

endmodule //sc_dff

//resetable scan DFF
module sc_dff_r(q, clock, data, tdata, sel, rst_l);
    output q;
    input clock, data, tdata, sel;
    
    wire d;

    u_mux2(d, data, tdata, sel);
    
    dff_r(q, clock, rst_l,  d);

endmodule //sc_dff_r





