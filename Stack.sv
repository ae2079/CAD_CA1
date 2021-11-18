module Stack(in, push, pop, top, clk, rst, out);
	input [134:0] in;
	input push, pop, top, clk, rst;
	output reg [134:0] out;
	
	reg [134:0] memory[0:127];
	integer pointer;
	
	initial pointer = 0;
	
	always @(posedge clk, posedge rst, posedge top) begin
		if(rst)
			pointer = 0;
		else if(top)
			out <= memory[pointer - 1];
		else if(pop) begin
			pointer = pointer - 1;
			out <= memory[pointer];
		end
		else if(push) begin
			memory[pointer] <= in;
			pointer = pointer + 1;
		end
	end

endmodule
