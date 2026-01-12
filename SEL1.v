// Single-bit SEL module
module SEL1(s, a, b, f);
	input s;					// Selector control input
	input a, b;			// Selector data inputs
	output f;				// Selector data output
	
	wire ns, as, bns;

	not a1(ns, s);
	and a2(ans, a, s);
	and a3(bns, b, ns);
	or o(f, as, bns);
	
endmodule // SEL1