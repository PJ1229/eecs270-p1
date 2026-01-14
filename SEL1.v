// Single-bit SEL module
module SEL1(s, a, b, f);
	input s;					// Selector control input
	input a, b;			// Selector data inputs
	output f;				// Selector data output
	
	wire ns, ans, bs;

	not a1(ns, s);
	and a2(ans, a, ns);
	and a3(bs, b, s);
	or o(f, ans, bs);
	
endmodule // SEL1