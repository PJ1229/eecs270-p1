// File Name: Project1.v
module Project1(
	input [3:3] KEY,  // KEY = 0 --> SW[6:0], KEY = 1 --> SW[16:10]
	input [17:0] SW,
	output [6:0] LEDR,
	output [6:0] HEX0
	);

// instantiate selector module
	Selector S(KEY, SW[6:0], SW[16:10], HEX0);

	

endmodule // Project1