module ring_counter #(parameter n=7)(output reg [3:0]q,
input wire clk, rst
);
always @(posedge clk) begin
    if (rst)
     q <= 4'b0010;
    else 
     q<= {q[2:0],q[3]};
end 
endmodule
