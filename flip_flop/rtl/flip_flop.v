module flip_flop (
    input wire sys_clk,
    input wire sys_rest_n,
    input wire key_in,
    output reg led_out
);
    
//sync
always@ (posedge sys_clk)
    
    if(sys_rest_n == 1'b0)
        led_out <= 1'b0;
    else
        led_out <= key_in;

//async

/*

always@(posedge sys_clk or negedge sys_rest_n)

    if(sys_rest_n == 1'b0)
        led_out <= 1'b0;
    else 
        led_out <= key_in;

*/
endmodule