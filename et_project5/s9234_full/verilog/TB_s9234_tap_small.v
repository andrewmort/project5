`timescale 1ns/100ps
// VERILOG TESTBENCH// TB_s9234_tap_small.v
// Input file: ../input/s9234_tap_small.etr
// Converted from etr to Verilog TestBench
//
// Module "modulename"
// 186 vectors in file
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
    wire  g2584,g3222,g3600,g4307,g4321,g4422,g4809,g5137,g5468,g5469,g5692,g6282,g6284,g6360,
        g6362,g6364,g6366,g6368,g6370,g6372,g6374,g6728,g1290,g4121,g4108,g4106,g4103,g1293,g4099,
        g4102,g4109,g4100,g4112,g4105,g4101,g4110,g4104,g4107,g4098;

    s9234_tap TOP (TDO, CK, TDI, TMS, TRST_b,
            1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,
        1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,1'bX,
        1'bX,1'bX,1'bX,1'bX,
        g2584,g3222,g3600,g4307,g4321,g4422,g4809,g5137,g5468,g5469,g5692,g6282,g6284,g6360,
        g6362,g6364,g6366,g6368,g6370,g6372,g6374,g6728,g1290,g4121,g4108,g4106,g4103,g1293,g4099,
        g4102,g4109,g4100,g4112,g4105,g4101,g4110,g4104,g4107,g4098);

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
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 19
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 20
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 21
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 22
		{TRST_b, TMS, TDI} = 3'b100;
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
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 25
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 26
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 27
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 28
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 29
		{TRST_b, TMS, TDI} = 3'b100;
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
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 32
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 33
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 34
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 35
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 36
		{TRST_b, TMS, TDI} = 3'b100;
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
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 39
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 40
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 41
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 42
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 43
		{TRST_b, TMS, TDI} = 3'b100;
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
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 47
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 48
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 49
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 50
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 51
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 52
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 53
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 54
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 55
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 56
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 57
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 58
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 59
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 60
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 61
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 62
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 63
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 64
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 65
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 66
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 67
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 68
		{TRST_b, TMS, TDI} = 3'b110;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 69
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 70
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 71
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 72
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 73
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 74
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 75
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 76
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 77
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 78
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 79
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 80
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 81
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 82
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 83
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 84
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 85
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 86
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 87
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 88
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 89
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 90
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 91
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 92
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 93
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 94
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 95
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 96
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 97
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 98
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 99
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 100
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 101
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 102
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 103
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 104
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 105
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 106
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 107
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 108
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 109
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 110
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 111
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 112
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 113
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 114
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 115
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 116
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 117
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 118
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 119
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 120
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 121
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 122
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 123
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 124
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 125
		{TRST_b, TMS, TDI} = 3'b111;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 126
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 127
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 128
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 129
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 130
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 131
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 132
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 133
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 134
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 135
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 136
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 137
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 138
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 139
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 140
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 141
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 142
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 143
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 144
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 145
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 146
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 147
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 148
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 149
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 150
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 151
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 152
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 153
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 154
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 155
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 156
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 157
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 158
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 159
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 160
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 161
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 162
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 163
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 164
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 165
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 166
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 167
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 168
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 169
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 170
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 171
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 172
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 173
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 174
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 175
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 176
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 177
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 178
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 179
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 180
		{TRST_b, TMS, TDI} = 3'b100;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 181
		{TRST_b, TMS, TDI} = 3'b101;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 182
		{TRST_b, TMS, TDI} = 3'b111;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 183
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 184
		{TRST_b, TMS, TDI} = 3'b11Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 185
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
		CK = 1'b0;
		//Test vector 186
		{TRST_b, TMS, TDI} = 3'b10Z;
		#5;
		CK = 1'b1;
		#5;
	end
endmodule
