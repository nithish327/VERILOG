//Create a function that returns the difference of two inputs.

module two_input_diff(input wire [1:0]a,b,
                      output reg [1:0]diff
                     );
  always@(*)begin
    diff=sub(a,b);
  end
  function [1:0]sub;
    input [1:0]a,b;
    begin
      sub=a-b;
    end
  endfunction
endmodule
