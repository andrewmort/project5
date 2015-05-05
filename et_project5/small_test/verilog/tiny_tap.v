module tiny_tap(TDO, CK, TDI, TMS, TRST_b, pi, po);
    //TEST IO
    output TDO;
    input CK, TDI, TMS, TRST_b;

    output [1:0] po;
    input [1:0] pi;
    
    wire bsr_capt, in_scan_capt, shftdr, bsr_tdo, in_scan_tdo, test_mode;
    //clkdr is the capture_dr signal from the TAP controller (pulses during capture state and shift state)
    //bsr_en effectively gates clkdr inside bsr module, so as to not load regs except during BSR scan
    //bsr_sel controls    

    tiny_mod TINYMOD(CK, po, pi, TDI, bsr_capt, in_scan_capt, updr, 
        shftdr, test_mode, bsr_tdo, in_scan_tdo);

    //TDI, bsr_capture, bsr_update, bsr_shift, bsr_sel, bsr_test+mode

    //instantiate Tap moduule

    Tap control(TDO, CK, TDI, TMS, TRST_b,
            bsr_tdo, in_scan_tdo, bsr_capt, in_scan_capt, shftdr, updr, test_mode);
    

endmodule //top

module tiny_mod(CK, chip_po, chip_pi, TDI, bsr_capt, in_scan_capt, updr,
    shftdr, test_mode, bsr_tdo, in_scan_tdo);

    input [1:0] chip_pi;
    output [1:0] chip_po;

    input CK, bsr_capt, in_scan_capt, updr, shftdr, test_mode, TDI;
    output bsr_tdo, in_scan_tdo;

    wire a, b, c, d, e, f;
    wire [1:0] pi;
    wire [1:0] po;

    // ***************** Scan Chain ******************
    wire [2:0] sc_out;
    wire bsr_capture, bsr_shift, bsr_update, bsr_sel, bsr_en;

    assign bsr_capture = bsr_capt;
    assign bsr_update = updr;
    assign bsr_shift = shftdr;
    assign bsr_en = test_mode;

    wire [2:0] sco;
    wire in_sel, sc_en, clk_dr;
    assign in_sel = shftdr;
    assign clk_dr = in_scan_capt;
    assign sc_en = test_mode;

    bsr BSR0(pi[0], sc_out[0], bsr_capture, chip_pi[0], TDI, bsr_shift, 
        bsr_update, CK, bsr_en);
    bsr BSR1(pi[1], sc_out[1], bsr_capture, chip_pi[1], sc_out[0], bsr_shift, 
        bsr_update, CK, bsr_en);

    wire shmoo;
    u_mux2 doo(shmoo, sc_out[1], 1'b0, in_scan_capt);

    bsr BSR2(chip_po[0], sc_out[2], bsr_capture, po[0], shmoo, bsr_shift,
        bsr_update, CK, bsr_en);
    bsr BSR3(chip_po[1], bsr_tdo, bsr_capture, po[1], sc_out[2], bsr_shift,
        bsr_update, CK, bsr_en);


    sc_dff FF0(d, CK, a, TDI, in_sel, sco[0], clk_dr, sc_en);
    sc_dff FF1(e, CK, b, sco[0], in_sel, sco[1], clk_dr, sc_en);
    sc_dff FF2(f, CK, c, sco[1], in_sel, sco[2], clk_dr, sc_en);

    xor XOR0(in_scan_tdo, bsr_tdo, sco[2]);

    // ***************** Gates ******************
    or      OR0(a, pi[0], pi[1]);
    and     AND1(b, pi[0], pi[1]);
    nand    NAND2(c, pi[0], pi[1]);
    nand    NAND3(po[0], d, e);
    or      OR4(po[1], d, e);
endmodule


