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

module tiny(po, pi);
    input [1:0] pi;
    output [1:0] po;

    wire a, b, c, d, e, f;

    dff(d, CK, a);
    dff(e, CK, b);
    dff(f, CK, c);

    or      OR0(a, pi[0], pi[1]);
    and     AND1(b, pi[0], pi[1]);
    nand    NAND2(c, pi[0], pi[1]);
    nand    NAND3(po[0], d, e);
    or      OR4(po[1], d, e);
endmodule


