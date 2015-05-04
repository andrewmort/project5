primitive dff(q, clock,  data);
   output q; reg q;
   input  clock, data;
     
   table
      // obtain output on rising edge of clock
      // clock data q q+
      (01) 0 : ? : 0 ;
      (01) 1 : ? : 1 ;
      (0?) 1 : 1 : 1 ;
      (0?) 0 : 0 : 0 ;
      // ignore negative edge of clock
      F ? : ? : - ;
      // ignore data changes on steady clock
      ? (??) : ? : - ;
      
   endtable
endprimitive // dff


module u_mux2(out, in0, in1, sel);
   output out;
   input in0, in1, sel;

   wire  nsel, w1, w0;
   not NOT0(nsel, sel);

   and AND0(w0, nsel, in0);
   and AND1(w1, sel, in1);

   or OR0(out, w1, w0);
endmodule // u_mux2
  

  `celldefine
// Q - output
// CK - clock
// SD - data in
// SI - scan in
// SE - scan enable
module scanff(Q, CK, SD, SI, SE);
   input CK, SD, SI, SE;
   output Q;
   wire   a;
   dff  (Q, CK, a);  
   u_mux2  (a, SD, SI, SE);
 
endmodule // scanff
`endcelldefine


module tiny_scan(CK, scan_in, scan_out, scan_en);
    input CK, scan_in, scan_en;
    output scan_out;

    wire a, b, c, d, e, f;
    wire [1:0] pi;
    wire [1:0] po;
    wire [1:0] po_scan;

    // ***************** Scan Chain ******************
    scanff FF0(pi[0], CK, 1'bX, scan_in, scan_en);
    scanff FF1(pi[1], CK, 1'bX, pi[0], scan_en);

    scanff FF2(d, CK, a, scan_in, scan_en);
    scanff FF3(e, CK, b, d, scan_en);
    scanff FF4(f, CK, c, e, scan_en);

    scanff FF5(po_scan[0], CK, po[0], 1'b0, scan_en);
    scanff FF6(po_scan[1], CK, po[1], po_scan[0], scan_en);

    xor XOR0(scan_out, f, po_scan[1]);

    // ***************** Gates ******************
    or      OR0(a, pi[0], pi[1]);
    and     AND1(b, pi[0], pi[1]);
    nand    NAND2(c, pi[0], pi[1]);
    nand    NAND3(po[0], d, e);
    or      OR4(po[1], d, e);
endmodule


