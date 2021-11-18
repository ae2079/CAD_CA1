module reg_5bit(in, write, clk, rst, out);
	input [4:0] in;
	input write, clk, rst;
	output reg [4:0] out;
	
	always @(posedge clk, posedge rst) begin
		if(rst)
			out <= 5'd0;
		else if(write)
			out <= in;
	end

endmodule

module reg_128bit(in, write, clk, rst, out);
	input [127:0] in;
	input write, clk, rst;
	output reg [127:0] out;
	
	always @(posedge clk, posedge rst) begin
		if(rst)
			out <= 127'd0;
		else if(write)
			out <= in;
	end

endmodule
