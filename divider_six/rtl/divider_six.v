module divider_six
(
	input wire sys_clk,
	input wire sys_rst_n,
	output reg clk_flag
);

reg [2:0] cnt;

always@(posedge sys_clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		cnt <= 3'b0;
	else if(cnt == 3'd5)
		cnt <= 3'b0;
	else 
		cnt <= cnt + 1'b1;

always@(posedge sys_clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		clk_flag <= 1'b0;
	else if(cnt == 3'd4)
		clk_flag <= 1'b1;
	else 
		clk_flag <= 1'b0;

endmodule