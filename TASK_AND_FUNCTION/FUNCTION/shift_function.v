//Write a Verilog function to shift the input data 1 bit to the right.


module shift_function(input wire [7:0]a,
                      input wire clk,rst,
                      output reg [7:0]out
                     );
  always @(posedge clk)begin
    if(rst)
      out<=0;
    else
      out<=shift_right(a);
  end
  function [7:0]shift_right;
    input [7:0]data;
    shift_right= data >> 1;
  endfunction
endmodule
