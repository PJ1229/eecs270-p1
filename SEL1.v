// Single-bit SEL module
module SEL1(s, a, b, f);
	input s;					// Selector control input
	input a, b;			// Selector data inputs
	output f;				// Selector data output
	
	wire ab;

	or a1(ab, a, b);
	and o(f, s, ab);
	
endmodule // SEL1