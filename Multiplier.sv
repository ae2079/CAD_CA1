module Multiplier(A, B, out);
	input [127:0] A;
	input [5:0] B;
	output [127:0] out;

	assign out = A * B;

endmodule
