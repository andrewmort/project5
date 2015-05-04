`timescale 1ns/1ps
module tb;

reg  clk, TDI, TMS, TRST_b;
wire TDO;
integer i;

reg [149:0] vec = 150'h2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;




initial
forever #5 clk = ~clk;


initial begin
$monitor($time, " TMS=%x, TDI=%x, TDO=%x", TMS, TDI, TDO);
clk = 0; TDI = 0; TMS = 0; TRST_b = 1;
    #1 TRST_b = 0; #2 TRST_b=1;
    @(posedge clk);
    repeat(5) begin
        //reset to Test-Logic reset
        @(posedge clk);
        TMS = 1;
    end
    //go to: Run Test or Idle
    @(posedge clk)TMS = 0;

//assuming Run Test or Idle initial state
   @(posedge clk); TMS = 1; //transition to: Select DR Scan
   @(posedge clk); TMS = 1; //Select IR Scan
   @(posedge clk); TMS = 0; //Capture IR
   @(posedge clk); TDI = 1; TMS = 0; //shift IR bit 0
   @(posedge clk); TDI = 1; TMS = 0; //shift IR bit 1
   @(posedge clk); TMS = 1; TDI = 0;//Exit1 IR
   @(posedge clk); TMS = 1; //Update IR
   //@(posedge clk); TMS = 0; //Return to Run Test or Idle load_instruction(TMS, TDI, 2'b00, clk);//load in BSCAN instrucion
   @(posedge clk); TMS = 1; //Select DR Scan
   @(posedge clk); TMS = 0; //Capture DR
    for(i = 0; i < 150; i=i+1) begin
        @(posedge clk);
        TMS = 0; TDI = vec[i]; 
    end
    @(posedge clk); TMS = 1; //Exit1 DR
    @(posedge clk); TMS = 1; //Update DR


//load_bsr_input(TMS, TDI, 35'h5CCCC, clk);
//shift_bsr_output(TMS, TDI, 39'b0, clk);
repeat(5) @(posedge clk);
$finish;
end


top TOP(TDO, clk, TDI, TMS, TRST_b);

task reset_controller;
output TMS;
begin
    repeat(5) begin
        //reset to Test-Logic reset
        @(posedge clk);
        TMS = 1;
    end
    //go to: Run Test or Idle
    @(posedge clk)TMS = 0;
end
endtask

task load_instruction;
output TMS, TDI;
input [1:0] inst;
input clk;
begin
   //assuming Run Test or Idle initial state
   @(posedge clk); TMS = 1; //transition to: Select DR Scan
   @(posedge clk); TMS = 1; //Select IR Scan
   @(posedge clk); TMS = 0; //Capture IR
   @(posedge clk); TDI = inst[0]; TMS = 0; //shift IR bit 0
   @(posedge clk); TDI = inst[1]; TMS = 0; //shift IR bit 1
   @(posedge clk); TMS = 1; //Exit1 IR
   @(posedge clk); TMS = 1; //Update IR
   //@(posedge clk); TMS = 0; //Return to Run Test or Idle 
end
endtask


task load_bsr_input;
output TMS, TDI;
input [35:0] vector;
input clk;
integer i;
begin
    @(posedge clk); TMS = 1; //Select DR Scan
    @(posedge clk); TMS = 0; //Capture DR
    for(i = 0; i < 36; i=i+1) begin
        @(posedge clk);
        TMS = 0; TDI = vector[i]; 
    end
    @(posedge clk); TMS = 1; //Exit1 DR
    @(posedge clk); TMS = 1; //Update DR
    //@(posedge clk); TMS = 0; //Return to Run Test or Idle 
end
endtask

task shift_bsr_output;
output TMS, TDI;
input [38:0] vector;
input clk;
integer i;
begin
    @(posedge clk); TMS = 1; //Select DR Scan
    @(posedge clk); TMS = 0; //Capture DR
    for(i = 0; i < 39; i=i+1) begin
        @(posedge clk);
        TMS = 0; TDI = vector[i]; 
    end
    @(posedge clk); TMS = 1; //Exit1 DR
    @(posedge clk); TMS = 1; //Update DR
    //@(posedge clk); TMS = 0; //Return to Run Test or Idle 
end
endtask


task load_internal_scan;
output TMS, TDI;
input [42:0] vector;
input clk;
integer i;
begin
    @(posedge clk); TMS = 1; //Select DR Scan
    @(posedge clk); TMS = 0; //Capture DR
    for(i = 0; i < 43; i=i+1) begin
        @(posedge clk);
        TMS = 0; TDI = vector[i]; 
    end
    @(posedge clk); TMS = 1; //Exit1 DR
    @(posedge clk); TMS = 1; //Update DR
    //@(posedge clk); TMS = 0; //Return to Run Test or Idle 
end
endtask




endmodule //tb




