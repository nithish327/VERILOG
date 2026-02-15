module up_down_counter(output reg [3:0]count,
input wire clk, rst,mode
);
always @(posedge clk) begin
    if (rst)
    count <= 4'b0000;
    else if (mode)
    count <= count+1;
    else 
    count <= count-1;
end 
endmodule
