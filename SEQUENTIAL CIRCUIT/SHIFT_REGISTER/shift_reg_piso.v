module piso_register (input wire [3:0]p, 
input wire clk,
input wire rst,
input wire load,
output reg serial_out
);
reg [3:0]q;
always @(posedge clk or posedge rst) begin
    if(rst)
    q <= 4'b0000;
    else if(load)begin
    q <=p;
    end
    else begin
    q <= {q[2:0], 1'b0};
end
end
always @(*) begin
    serial_out = q[3];
end

endmodule
