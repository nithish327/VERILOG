module ROM(
           input clk,cs,rd_en,
           input [2:0]addr,
           output reg [3:0]d_out
           );
  reg [3:0] mem[0:7];
  always @(posedge clk) begin
    if (cs && rd_en)
      d_out <= mem[addr];
    else
      d_out <= 0;
  end
  initial begin
    mem[0] = 4'b0111;
    mem[1] = 4'b0110;
    mem[2] = 4'b0011;
    mem[3] = 4'b0100;
    mem[4] = 4'b0101;
    mem[5] = 4'b0000;
    mem[6] = 4'b0111;
    mem[7] = 4'b0001;
end
endmodule
