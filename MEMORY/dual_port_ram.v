module dual_port_ram(input [3:0] d_in,
                     input clk,cs,wr_en,rd_en,
                     input [2:0] addr,
                     output reg [3:0]d_out
                    );
  reg [3:0]mem[0:7];
  always @(posedge clk)begin
    if (cs && wr_en)
      mem[addr]<= d_in;
    if(cs && rd_en)
      d_out <= mem[addr];
  end
endmodule
      
