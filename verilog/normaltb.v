`timescale 1ns/1ps
module normaltb;

reg  clk, TDI, TMS, TRST_b;
wire TDO;
integer i;

reg [35:0] inputveci;
wire [38:0] outnormal, outtester;

initial
forever #5 clk = ~clk;


initial begin
$monitor($time, " TMS=%x, TDI=%x, TDO=%x", TMS, TDI, TDO);
clk = 0; TDI = 0; TMS = 1; TRST_b = 1;
    #1 TRST_b = 0; #2 TRST_b=1;
    repeat(1000) begin
        @(posedge clk);
        inputveci = {$random, $random};
    
    end
    //assuming that the conroller is in Test-Logic reset
    
    if(!(outnormal == outtester)) begin
        $display("Outputs don't match");
        $stop;
    end

    $display("Outputs Match!!!");

$stop;
end

s9234_tap cut1(TDO, clk, TDI, TMS, TRST_b, inputveci[0], inputveci[1], inputveci[2], inputveci[3], inputveci[4], inputveci[5], inputveci[6], inputveci[7], inputveci[8], inputveci[9], inputveci[10], inputveci[11], inputveci[12], inputveci[13], inputveci[14], inputveci[15], inputveci[16], inputveci[17], inputveci[18], inputveci[19], inputveci[20], inputveci[21], inputveci[22], inputveci[23], inputveci[24], inputveci[25], inputveci[26], inputveci[27], inputveci[28], inputveci[29], inputveci[30], inputveci[31], inputveci[32], inputveci[33], inputveci[34], inputveci[35], outtester[0], outtester[1], outtester[2], outtester[3], outtester[4], outtester[5], outtester[6], outtester[7], outtester[8], outtester[9], outtester[10], outtester[11], outtester[12], outtester[13], outtester[14], outtester[15], outtester[16], outtester[17], outtester[18], outtester[19], outtester[20], outtester[21], outtester[22], outtester[23], outtester[24], outtester[25], outtester[26], outtester[27], outtester[28], outtester[29], outtester[30], outtester[31], outtester[32], outtester[33], outtester[34], outtester[35], outtester[36], outtester[37], outtester[38]);

s9234 cut2(clk, inputveci[0], inputveci[1], inputveci[2], inputveci[3], inputveci[4], inputveci[5], inputveci[6], inputveci[7], inputveci[8], inputveci[9], inputveci[10], inputveci[11], inputveci[12], inputveci[13], inputveci[14], inputveci[15], inputveci[16], inputveci[17], inputveci[18], inputveci[19], inputveci[20], inputveci[21], inputveci[22], inputveci[23], inputveci[24], inputveci[25], inputveci[26], inputveci[27], inputveci[28], inputveci[29], inputveci[30], inputveci[31], inputveci[32], inputveci[33], inputveci[34], inputveci[35], outnormal[0], outnormal[1], outnormal[2], outnormal[3], outnormal[4], outnormal[5], outnormal[6], outnormal[7], outnormal[8], outnormal[9], outnormal[10], outnormal[11], outnormal[12], outnormal[13], outnormal[14], outnormal[15], outnormal[16], outnormal[17], outnormal[18], outnormal[19], outnormal[20], outnormal[21], outnormal[22], outnormal[23], outnormal[24], outnormal[25], outnormal[26], outnormal[27], outnormal[28], outnormal[29], outnormal[30], outnormal[31], outnormal[32], outnormal[33], outnormal[34], outnormal[35], outnormal[36], outnormal[37], outnormal[38]);

endmodule //normaltb