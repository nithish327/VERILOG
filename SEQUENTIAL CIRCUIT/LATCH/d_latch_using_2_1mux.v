module mux(input sel,i0,i1,
           output reg y
           );
  always@(*)begin
    if(sel)
      y=i0;
    else
      y=i1;
  end
endmodule
module d_latch(input clk,rst,d,output reg q);
  mux dut (.sel(clk),  .i0(q), .i1(d), .y(q));
  
endmodule
