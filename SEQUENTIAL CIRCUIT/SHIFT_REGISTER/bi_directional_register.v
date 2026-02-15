module bi_dir_register (input sel,                      
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
      1'b0: q <= {serial_right,q[3:1]};
        1'b1: q <= {q[2:0],serial_left};
      endcase
end
end

endmodule
