// File Name: Project1.v
module Project1(
	input [3:3] KEY,  // KEY = 0 --> SW[6:0], KEY = 1 --> SW[16:10]
	input [17:0] SW,
	output [6:0] LEDR,
	output [6:0] HEX0
);

// instantiate selector module
	wire [6:0] A = SW[6:0];
	wire [16:10] B = SW[16:10];

	wire [6:0] hexA = 7'b0001000;
	wire [6:0] hexB = 7'b0000000;
	
    Selector S1(KEY, A, B, LEDR);
	Selector S2(KEY, hexA, hexB, HEX0);

endmodule // Project1