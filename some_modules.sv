module OR_module(in, out);
	input [4:0] in;
	output out;

	assign out = (in == 5'd0) ? 1'b0 : 1'b1;

endmodule

module GT(A, B, out);
	input [5:0] A, B;
	output out;

	assign out = (A > B);

endmodule

module Is_same(A, B, out);
	input [4:0] A, B;
	output [4:0] out;

	assign out = (A == B);

endmodule