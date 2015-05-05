`timescale 1ns / 1ps
// tapcntlr.v

module Tap(TDO, TCK, TDI, TMS, TRST_b,
            bsr_tdo, in_scan_tdo, bsr_capt, in_scan_capt, shftdr, updr, test_mode);
    output TDO;
    input TCK, TDI, TMS, TRST_b;
    input bsr_tdo, in_scan_tdo;
    output bsr_capt, in_scan_capt, shftdr, updr, test_mode;
    

    wire [1:0] inst; //might not need 8 bits
    wire bpass_out, bp_tmp;

    my_tap_cntrl tctrl(TCK, TRST_b, TMS, captdr, shftdr, updr, 
                        captir, shftir, upir, sel, test_mode); 

    ir_decode ird(inst, in_bscan, in_scan);

    u_mux2  by_mux(bp_tmp, bpass_out, TDI, captdr);
    dff     bypass(bpass_out, TCK, bp_tmp); 

    //inst = 0 or 3 -> bsr, inst = 1 -> internal scan, inst = 2 -> bypass reg
    mux4    dr_mux(dr_out, bsr_tdo, in_scan_tdo, bpass_out, bsr_tdo, inst);
    u_mux2  ir_mux(regs_out , dr_out, ir_o, sel);
    //dff     sc_out(scan_out, TCK, regs_out);
    bufif1  out_buf(TDO, regs_out, test_mode);  //not sure if it is enable high or low     

    ir_reg ir_ff(inst, ir_o, TCK, upir, TDI, captir);

    and CHAD_LIKES_LATEX(bsr_capt, captdr, in_bscan);
    and MOOSE(in_scan_capt, captdr, in_scan);

    //need IR decode

endmodule //Tap

//size: 6 (3 two input gates)
module ir_decode(inst, in_bscan, in_scan);
    input [1:0] inst;
    //input shftdr;
    //output b1i, b2i, b1o, b2o, bsr_en, in_sel;
    output in_bscan, in_scan;
    //in_sel - selects between data and scan of scan_df
    //in_sel - selects between data and scan of scan_dfff

    

    //sc_en - selects b/n normal DFF and test DFF in scan_dff
    //probably want testmode_en OR'd with SCAN inst

    //bsr_capture - loads capture flop of BSR

    //bsr_shift - selects TDI (scan) on input mux in BSR

    //bsr_update - loads update flop

    //bsr_sel - selects output from data or update flop, probably use testmode_en
    
    //used to control bilbo structure
    //instruction itself encodes the mux select for DR
    //wire inst1_b;    

    //enables BSR to load from scan chain
    //nor NOR0(bsr_en, inst[1], inst[0]);
    
    //in_sel enables internal scan to load serially
    not NOT0(inst1_b, inst[1]);
    and AND1(in_scan, inst1_b, inst[0]);
    assign in_bscan = inst1_b;    

    //b1 and b2 were for BILBO
    //xor XOR0(b1i, inst[1], inst[0]);
    //or  OR0(b1o, inst[1], inst[0]);
    //and AND0(b2i, inst[0], inst[1]);
    //assign b1i = b2i;

endmodule // ir_decode

module my_tap_cntrl(TCK, TRST, TMS, capturedr, shiftdr, updatedr, captureir,
            shiftir, updateir, select, test_mode);

    input TCK, TRST, TMS;
    output capturedr, shiftdr, updatedr, captureir, shiftir, updateir, select, test_mode;
    
    wire s0n, s1n, s2n, s3n, TMSn;
    wire s0prime, s1prime, s2prime, s3prime;
    wire s0, s1, s2, s3;
    
    not NOT0(s0n, s0);
    not NOT1(s1n, s1);
    not NOT2(s2n, s2);
    not NOT3(s3n, s3);
    not NOT4(TMSn, TMS);
    
    //state variable s0
    wire a0,a1,a2,a3,w0,s0a,a4,a5,w1,s0b;
    dff_r DFF0(s0, TCK, TRST, s0prime);
    and AND0(a0, s0, s1n, s2);
    and AND1(a1, s0, s2, s3n);
    and AND2(a2, s0, s2n, s3);
    and AND3(a3, s0n, s1, s2n, s3n);
    or  OR0(w0, a0, a1, a2, a3);
    and AND4(s0a, w0, TMS);
    and AND5(a4, s1, s2, s3);
    and AND6(a5, s1n, s2n, s3n);
    or OR1(w1, a4, a5, s0);
    and AND7(s0b, w1, TMSn);
    or OR2(s0prime, s0a, s0b);

    //state variable s1
    wire b0, b1, b2, b3, x0, s1a, b4, b5, b6, x1, s1b;
    dff_r DFF1(s1, TCK, TRST, s1prime);
    and AND8(b0, s0, s1n, s2n);
    and AND9(b1, s0n, s1, s2n, s3n);
    and AND10(b2, s1n, s3);
    and AND11(b3, s2, s3);
    or OR3(x0, b0, b1, b2, b3);
    and AND12(s1a, x0, TMS);
    and AND13(b4, s1n, s2);
    and AND14(b5, s2, s3n);
    and AND15(b6, s2n, s3);
    or OR4(x1, b4, b5, b6);
    and AND16(s1b, x1, TMSn);
    or OR5(s1prime, s1a, s1b);    

    //state variable s2
    wire c0, c1, y0, s2a, c2, c3, c4, y1, s2b;
    dff_r DFF2(s2, TCK, TRST, s2prime);
    and AND17(c0, s1n, s3);
    and AND18(c1, s2n, s3);
    or OR6(y0, c0, c1);
    and AND19(s2a, y0, TMS);
    and AND20(c2, s1, s3n);
    and AND21(c3, s1n, s2);
    and AND22(c4, s2, s3n);
    or OR7(y1, c2, c3, c4);
    and AND23(s2b, y1, TMSn);
    or OR8(s2prime, s2a, s2b);

    //state variable s3
    wire d0, d1, d2, z0, s3a, s3b, cdr0, cdr1, cir0, cir1;
    dff_r DFF3(s3, TCK, TRST, s3prime);
    and AND24(d0, s1n, s2);
    and AND25(d1, s2, s3n);
    and AND26(d2, s2n, s3);
    or OR9(z0, d0, d1, d2);
    and AND27(s3a, z0, TMS);
    and AND28(s3b, s2n, s3, TMSn);
    or OR10(s3prime, s3a, s3b);

    //output logic
    and AND37(cdr0, s3n, s2, s1n, s0n);
    and AND38(cdr1, s3n, s2, s1, s0n);
    or OR11(capturedr, cdr0, cdr1);
        
    and AND39(cir0, s3n, s2, s1n, s0);
    and AND40(cir1, s3n, s2, s1, s0); 
    or OR12(captureir, cir0, cir1);
    and AND31(shiftdr, s3n, s2, s1, s0n);
    and AND32(shiftir, s3n, s2, s1, s0);
    and AND34(updatedr, s3, s2, s1, s0n);
    and AND35(updateir, s3, s2, s1, s0);
    nand NAND0(test_mode, s3n, s2n, s1n, s0n);
    and AND36(select, s3n, s2, s1, s0);

endmodule //my_tap_control

module tapcontroller(TCK, TRST, TMS, clockdr, shiftdr, updatedr, clockir,
		     shiftir, updateir, select, bs_en);

   input TCK, TRST, TMS;
   output clockdr, shiftdr, updatedr, clockir,
	  shiftir, updateir, select, bs_en;

   wire   ps3, ps2, ps1, ps0;
   wire   nps3, nps2, nps1, nps0;
   wire   ns3, ns2, ns1, ns0;
   wire   nTMS;
   wire   nTCK;
   
   wire   w30, w31, w32, w33, w34, w35;
   wire   w20, w21, w22, w23;
   wire   w10, w11, w12;
   wire   w00, w01, w02, w03, w04, w05, w06, w07, w08;
   wire   w0, w1, w2, w3;
   wire   sir, clockdreg, bsen;
   
   not NOT_TCK(nTCK, TCK);
   not NOT_TMS(nTMS, TMS);
   not NOT_ps3(nps3, ps3);
   not NOT_ps2(nps2, ps2);
   not NOT_ps1(nps1, ps1);
   not NOT_ps0(nps0, ps0);   
   
   //next state3
   // NS3 = PS3(PS1 + PS0) + TMS(PS3 PS2' + PS2' PS1' PS0)
   dff_r DFF3(ps3, TCK, TRST, ns3);
   or OR2_30(w30, ps1, ps0);
   and AND2_30(w31, ps3, w30);
   and AND2_31(w32, ps3, nps2);
   and AND3_30(w33, nps2, nps1, ps0);
   or OR2_31(w34, w32, w33);
   and AND2_32(w35, TMS, w34);
   or OR2_32(ns3, w31, w35);
   
   //next state2
   // NS2 = PS2 PS1 + TMS(PS1 + PS2 PS0)
   dff_r DFF2(ps2, TCK, TRST, ns2);
   and AND2_20(w20, ps2, ps1);
   and AND2_21(w21, ps2, ps0);
   or OR2_20(w22, w21, ps1);
   and AND2_22(w23, w22, TMS);
   or OR2_21(ns2, w20, w23);

   //next state1
   // NS1 = PS2' PS1 + TMS'(PS0 + PS1)
   dff_r DFF1(ps1, TCK, TRST, ns1);
   and AND2_10(w10, nps2, ps1);
   or OR2_10(w11, ps1, ps0);
   and AND2_12(w12, nTMS, w11);
   or OR3_10(ns1, w10, w12);

   //next state0
   // NS0 = PS2 PS1 PS0 + TMS'(PS2 PS1 + PS2' PS1' PS0) + TMS(PS3' PS2' PS1' + PS2 PS1' PS0')
   dff_r DFF0(ps0, TCK, TRST, ns0);
   and AND3_00(w00, ps2, ps1, ps0);
   and AND3_01(w01, ps2, ps1);
   and AND3_02(w02, nps2, nps1, ps0);
   or OR2_00(w03, w01, w02);
   and AND2_00(w04, w03, nTMS);
   and AND3_03(w05, nps3, nps2, nps1);
   and AND3_04(w06, ps2, nps1, nps0);
   or OR3_00(w07, w05, w06);
   and AND2_01(w08, TMS, w07);
   or OR3_01(ns0, w00, w04, w08);

   //output signal definitions
   // clockdr = 001X
   and AND4_0(clockdreg, nps3, nps2, ps1, nTCK);
   buf BUF_0(clockdr, clockdreg);
  
   // shiftdr = 0010
   and AND4_1(shiftdr, nps3, nps2, ps1, nps0);

   // updatedr = 0100
   and AND5_0(updatedr, nps3, ps2, nps1, nps0, nTCK);
   // clockir = 101X
   and AND4_2(clockir, ps3, nps2, ps1, nTCK);

   // shiftir = 1010
   and AND4_3(sir, ps3, nps2, ps1, nps0);
   dff DFF_5(shiftir, nTCK, sir);
   
   // updateir = 1100
   and AND5_1(updateir, ps3, ps2, nps1, nps0, nTCK);

   // select == 1XXX
   assign select = ps3;

   // bs_en = not 1000
   and AND4_4(w3, ps3, nps2, nps1, nps0);
   not NOT_2(bsen, w3);
   dff DFF_6(bs_en, nTCK, bsen);

endmodule // tapcontroller


//size: 2 DFFs * size of IR
module ir_reg(inst, TDO, clock, update, TDI, en);
    output [1:0] inst; //make whatever size is needed
    output TDO;
    input clock, update, TDI, en;

    wire d;
    //see slide 22-38
    //shift is the clock

    //keep daisy-chaining ir_slices to get desired length
    ir_slice ir0(inst[0], d, clock, update, TDI, en);
    ir_slice ir1(inst[1], TDO, clock, update, d, en);
    //ir_slice ir2(TDO, d[2], shift, update, d[1]);
    //ir_slice ir3(inst[3], d[3], shift, update, d[2]);

endmodule //ir_reg

//contains 2 DFFs
module ir_slice(q, o, clock, update, d, en);
    output q, o;
    input clock, update, d, en;
    
    wire o, y;
    u_mux2 MUX0(y, o, d, en);

    dff DFF0(o, clock, y);
    dff DFF1(q, update, o);

endmodule //ir_slice


		

   
   
