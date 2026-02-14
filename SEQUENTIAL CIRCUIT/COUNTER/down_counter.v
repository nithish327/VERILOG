module down_counter(output reg [3:0]count,
input wire clk, rst
);
always @(posedge clk) begin
    if (rst)
    count <= 4'b1111;
    else
    count <= count-1;
end 
endmodule
