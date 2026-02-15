module universal_register (input [3:0]p_in,
input [1:0]sel,                      
input clk,
input rst,
input serial_right,
input serial_left,
output reg [3:0]q
);
always @(posedge clk or posedge rst) begin
    if(rst)
    q <= 4'b0000;
    else begin
      case(sel)
      2'b00: q <= q;
      2'b01: q <= {serial_right,q[3:1]};
          2'b10: q <= {q[2:0],serial_left};
      2'b11: q <= p_in;
      endcase
end
end

endmodule
