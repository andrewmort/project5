`timescale 1ns/100ps
// VERILOG TESTBENCH// TB_tiny_tap.v
// Input file: ../input/tiny_tap.etr
// Converted from etr to Verilog TestBench
//
// Module "modulename"
// 57 vectors in file
// 1 clock signals present
// 2 input signals present (not including clocks)
// 1 output signals preset
//
// CLOCKS: CK
// INPUTS: TRST_b, TMS, TDI
// OUTPUTS: TDO


module TB_modulename();
	wire TDO;	//output signals
	reg CK, TRST_b, TMS, TDI;	//input signals

	//Insert correct wiring below
	modulename TOP (CLOCKS, INPUTS, OUTPUTS);

	initial begin
		CK = 1'b0;
		//Test vector 1
		{TRST_b, TMS, TDI} = 3'bZZZ;
		#5;
		#5;
		CK = 1'b0;
		//Test vector 2
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 3
		{TRST_b, TMS, TDI} = 3'b01Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 4
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 5
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 6
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 7
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 8
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 9
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 10
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 11
		{TRST_b, TMS, TDI} = 3'b111;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 12
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 13
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 14
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 15
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 16
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 17
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 18
		{TRST_b, TMS, TDI} = 3'b111;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 19
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 20
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 21
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 22
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 23
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 24
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 25
		{TRST_b, TMS, TDI} = 3'b111;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 26
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 27
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 28
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 29
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 30
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 31
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 32
		{TRST_b, TMS, TDI} = 3'b110;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 33
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 34
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 35
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 36
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 37
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 38
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 39
		{TRST_b, TMS, TDI} = 3'b110;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 40
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 41
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 42
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 43
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 44
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 45
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 46
		{TRST_b, TMS, TDI} = 3'b110;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 47
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 48
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 49
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 50
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 51
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 52
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 53
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 54
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 55
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 56
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 57
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
	end
endmodule
