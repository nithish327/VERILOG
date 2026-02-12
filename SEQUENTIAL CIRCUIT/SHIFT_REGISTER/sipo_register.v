module sipo_register (input wire serial_in, 
input wire clk,
input wire rst,
output reg [3:0]p
);
reg[3:0] q;
always @(posedge clk or posedge rst) begin
    if(rst)
    q <= 4'b0000;
    else begin
    q[0] <= serial_in;
    q[1] <= q[0];
    q[2] <= q[1];
    q[3] <= q[2];
end
end
always @(*) begin
    p=q;
end

endmodule
