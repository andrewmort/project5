module tiny_comb(out, in);
    output [2:0] out;
    input  [2:0] in;

    wire [1:0] pi;
    wire [1:0] po;

    wire a, b, c, d, e, f;

    // ***************** Comb inputs ***************
    assign pi[0] = in[0];
    assign d = in[0];

    assign pi[1] = in[1];
    assign e = in[1];

    assign f = in[2];

    // ***************** Comb outputs ***********
    xor XOR0(out[0], a, 1'b0);
    xor XOR1(out[1], b, po[0]);
    xor XOR2(out[2], c, po[1]);

    // ***************** Gates ******************
    or      OR0(a, pi[0], pi[1]);
    and     AND1(b, pi[0], pi[1]);
    nand    NAND2(c, pi[0], pi[1]);
    nand    NAND3(po[0], d, e);
    or      OR4(po[1], d, e);

endmodule
    

