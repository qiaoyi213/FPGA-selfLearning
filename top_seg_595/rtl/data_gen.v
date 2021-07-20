module data_gen
#(
    parameter CNT_MAX = 23'd4999_999,
    parameter DATA_MAX = 14'D9999
)
(
    input wire sys_clk,
    input wire sys_rst_n,
    output reg [13:0] data, // i wnat display 9999 so i need 14 bit
    output reg [3:0] point, // i have 4 point
    output reg seg_en,
    output reg sign
);

reg [22:0] cnt_100ms;
reg cnt_flag;

//assign point = 4'b0000;
//assign sign = 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_100ms <= 23'd0;
    else if(cnt_100ms == CNT_MAX)
        cnt_100ms <= 23'd0;
    else 
        cnt_100ms <= cnt_100ms + 1'b1;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_flag <= 1'b0;
    else if(cnt_100ms == CNT_MAX - 1'b1)
        cnt_flag <= 1'b1;
    else 
        cnt_flag <= 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        data <= 14'd0;
    else if((data == DATA_MAX) && (cnt_flag == 1'b1))
        data <= 14'd0;
    else if(cnt_flag == 1'b1)
        data <= data + 1'b1;
    else 
        data <= data;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        seg_en <= 1'b0;
    else 
        seg_en <= 1'b1;

endmodule