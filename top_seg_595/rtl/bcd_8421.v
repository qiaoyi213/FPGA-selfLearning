module bcd_8421 (
    input wire sys_clk,
    input wire sys_rst_n,
    input wire [13:0] data,
    output reg [3:0] unit,
    output reg [3:0] ten,
    output reg [3:0] hun,
    output reg [3:0] tho
);
    
reg [3:0] cnt_shift; // 14次移位 4 bit
reg [29:0] data_shift; // 14 binary + 16 BCD
reg shift_flag;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_shift <= 4'd0;
    else if((cnt_shift == 4'd15) && (shift_flag == 1'b1))
        cnt_shift <= 4'd0;
    else if(shift_flag == 1'b1)
        cnt_shift <= cnt_shift + 1'b1;
    else 
        cnt_shift <= cnt_shift;
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        data_shift <= 30'b0;
    else if(cnt_shift == 4'd0)
        data_shift <= {16'b0,data};
    else if((cnt_shift <= 14) && (shift_flag == 1'b0))
        begin 
            data_shift[17:14] <= (data_shift[17:14] > 4) ? (data_shift[17:14] + 2'd3) : (data_shift[17:14]);
            data_shift[21:18] <= (data_shift[21:18] > 4) ? (data_shift[21:18] + 2'd3) : (data_shift[21:18]);
            data_shift[25:22] <= (data_shift[25:22] > 4) ? (data_shift[25:22] + 2'd3) : (data_shift[25:22]);
            data_shift[29:26] <= (data_shift[29:26] > 4) ? (data_shift[29:26] + 2'd3) : (data_shift[29:26]);
        end
    else if((cnt_shift <= 14) && (shift_flag == 1'b1))
        data_shift <= data_shift << 1;
    else 
        data_shift <= data_shift;
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        shift_flag <= 1'b0;
    else
        shift_flag <= ~shift_flag;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n ==1'b0)
        begin 
            unit <= 4'b0;
            ten <= 4'b0;
            hun <= 4'b0;
            tho <= 4'b0;
        end
    else if(cnt_shift == 4'd15)
        begin
            unit <= data_shift[17:14];
            ten <= data_shift[21:18];
            hun <= data_shift[25:22];
            tho <= data_shift[29:26];
        end
endmodule