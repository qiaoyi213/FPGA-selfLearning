module seg_dynamic
(
    input wire sys_clk,
    input wire sys_rst_n,
    input wire [3:0] point,
    input wire [13:0] data,
    input wire sign,
    input wire seg_en,
    output reg [3:0] sel,
    output reg [7:0] seg
);

parameter CNT_MAX = 16'd49_999;
wire [3:0] unit;
wire [3:0] ten;
wire [3:0] hun;
wire [3:0] tho;

reg [15:0] data_reg;
reg [15:0] cnt_1ms;
reg flag_1ms;
reg [2:0] cnt_sel;
reg [3:0] sel_reg;
reg [3:0] data_disp;
reg dot_disp;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        data_reg <= 15'b0;
    else if((tho) || point[3]) // 千位 或者需要小數點 0.xxx
        data_reg <= {tho,hun,ten,unit};
    else if(((hun) || point[2]) && (sign == 1'b1))
        data_reg <= {4'd10,hun,ten,unit};
    else if((hun) || point[2] && (sign == 1'b0))
        data_reg <= {4'd11,hun,ten,unit};
    else if(((ten) || point[1]) && (sign == 1'b1))
        data_reg <= {4'd11,4'd10,ten,unit};
    else if(((ten) || point[1]) && (sign == 1'b0))
        data_reg <= {4'd11,4'd11,ten,unit};
    else if(((unit) || point[0]) && (sign == 1'b1))
        data_reg <= {4'd11,4'd11,4'd10,unit};
    else
        data_reg <= {4'd11,4'd11,4'd11,unit};

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_1ms <= 16'd0;
    else if(cnt_1ms == CNT_MAX)
        cnt_1ms <= 16'd0;
    else 
        cnt_1ms <= cnt_1ms + 1'b1;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        flag_1ms <= 1'b0;
    else if(cnt_1ms == CNT_MAX - 1'b1)
        flag_1ms <= 1'b1;
    else 
        flag_1ms <= 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_sel <= 3'd0;
    else if((cnt_sel == 3'd5) && (flag_1ms == 1'b1))
        cnt_sel <= 3'd0;
    else if(flag_1ms == 1'b1)
        cnt_sel <= cnt_sel + 1'b1;
    else 
        cnt_sel <= cnt_sel;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        sel_reg <= 4'b0000;
    else if((cnt_sel == 3'd0) && (flag_1ms == 1'b1))
        sel_reg <= 4'b0001;
    else if(flag_1ms == 1'b1)
        sel_reg <= sel_reg << 1;
    else 
        sel_reg <= sel_reg;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        data_disp <= 4'b0;
    else if((seg_en == 1'b1) && (flag_1ms == 1'b1))
        case(cnt_sel)
        3'd0: data_disp <= data_reg[3:0];
        3'd1: data_disp <= data_reg[7:4];
        3'd2: data_disp <= data_reg[11:8];
        3'd3: data_disp <= data_reg[15:12];
        default : data_disp <= 4'b0;
        endcase
    else 
        data_disp <= data_disp;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        dot_disp <= 1'b1;
    else if(flag_1ms == 1'b1)
        dot_disp <= ~point[cnt_sel];
    else 
        dot_disp <= dot_disp;

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        seg <= 8'b1111_1111;
    else 
        case(data_disp)
            4'd0: seg <= {dot_disp,7'b100_0000};
            4'd1: seg <= {dot_disp,7'b111_1001};
            4'd2: seg <= {dot_disp,7'b010_0100};
            4'd3: seg <= {dot_disp,7'b011_0000};
            4'd4: seg <= {dot_disp,7'b001_1001};
            4'd5: seg <= {dot_disp,7'b001_0010};
            4'd6: seg <= {dot_disp,7'b000_0010};
            4'd7: seg <= {dot_disp,7'b111_1000};
            4'd8: seg <= {dot_disp,7'b000_0000};
            4'd9: seg <= {dot_disp,7'b001_0000};
            4'd10: seg <= 8'b1011_1111; // 負號
            4'd11: seg <= 8'b1111_1111; // 不顯示
            default: seg <= 8'b1100_0000;
        endcase

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        sel <= 4'b0000;
    else 
        sel <= sel_reg;


bcd_8421 bcd_8421_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .data(data),
    .unit(unit),
    .ten(ten),
    .hun(hun),
    .tho(tho)
);

endmodule