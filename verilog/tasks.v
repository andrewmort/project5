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


task load_instrucion;
output TMS, TDI;
input [1:0] inst;
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
begin
    @(posedge clk); TMS = 1; //Select DR Scan
    @(posedge clk); TMS = 0; //Capture DR
    for(int i = 0; i < 35; i++) begin
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
begin
    @(posedge clk); TMS = 1; //Select DR Scan
    @(posedge clk); TMS = 0; //Capture DR
    for(int i = 0; i < 43; i++) begin
        @(posedge clk);
        TMS = 0; TDI = vector[i]; 
    end
    @(posedge clk); TMS = 1; //Exit1 DR
    @(posedge clk); TMS = 1; //Update DR
    //@(posedge clk); TMS = 0; //Return to Run Test or Idle 
end
endtask
