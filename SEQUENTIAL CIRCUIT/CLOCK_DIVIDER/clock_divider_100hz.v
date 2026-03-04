//Generate a 100 Hz Clock from a 50 MHz Clock in Verilog.

module clock_divider(input clk,rst,
                     output reg clk_out
                    );
  reg [19:0]count; 
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      clk_out <= 0;
      count  <=0;
    end
    
    else if (count==9)begin
      clk_out <= ~ clk_out;
      count <= 0;
    end
    else
      count <=count+1;
  end
endmodule
