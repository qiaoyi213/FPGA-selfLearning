module top_seg_595
(
    input wire sys_clk,
    input wire sys_rst_n,
    output wire stcp,
    output wire shcp,
    output wire ds,
    output wire oe
);

wire [13:0] data;
wire [3:0] point;
wire seg_en;
wire sign;

data_gen data_gen_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .data(data),
    .point(point),
    .seg_en(seg_en),
    .sign(sign)
);

seg_595_dynamic seg_595_dynamic_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .data(data),
    .point(point),
    .seg_en(seg_en),
    .sign(sign),
    .stcp(stcp),
    .shcp(shcp),
    .ds(ds),
    .oe(oe)
);

endmodule