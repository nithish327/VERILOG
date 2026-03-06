module single_port_ram(input clk,
                       input [3:0]d_in,
                       input wr_en,
                       input  [3:0] addr,
                       input cs,
                       output reg [3:0] d_out
                      );
  reg [3:0]mem[0:7];
  always @(posedge clk) begin
    if (cs==wr_en)
      mem[addr]<= d_in;
    else
      d_out <= mem[addr];
  end
  
endmodule
      
      
