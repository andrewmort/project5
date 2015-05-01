//top module that includes the Boundary Scan controller

module top(TDO, TCK, TDI, TMS, TRST_b);

    wire clockdr, shiftdr, updatedr; //not sure if updatedr is necessary, since only one ic
    wire clockir, shiftir, updateir;
    wire select, bs_en;

    //instantiate TAP_top 

    //hook up CUT


endmodule //top
