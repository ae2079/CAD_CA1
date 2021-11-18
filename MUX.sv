module MUX2to1_5bit(A, B, sel, out);
	input [4:0] A, B;
	input sel;
	output [4:0] out;

	assign out = sel ? B : A;

endmodule

module MUX3to1_5bit(A, B, C, sel, out);
	input [4:0] A, B, C;
	input [1:0] sel;
	output [4:0] out;
	
	assign out = (sel == 2'b00) ? A : (sel == 2'b01) ? B : C;
	
endmodule

module MUX4to1_128bit(A, B, C, D, sel, out);
	input [127:0] A, B, C, D;
	input [1:0] sel;
	output [127:0] out;
	
	assign out = (sel == 2'b00) ? A : (sel == 2'b01) ? B : (sel == 2'b10) ? C : D;

endmodule