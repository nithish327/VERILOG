module johnson_counter(output reg [3:0]q,
input wire clk, rst
);
  always @(posedge clk or posedge rst) begin
    if (rst)
     q <= 4'b0000;
    else 
      q <= { q[2:0],~q[3]};
end 
endmodule
