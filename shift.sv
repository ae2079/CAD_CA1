module shift_left(in, out);
	input [4:0] in;
	output [5:0] out;

	assign out = {in, 1'b0};

endmodule

module shift_right(in, out);
	input [4:0] in;
	output [4:0] out;

	assign out = {1'b0, in[4:1]};

endmodule