// Write a function that returns the sum of two 8-bit inputs.

module two_8_bit_adder_function(input wire [7:0]a,b,
                                output reg [7:0]sum
                               );
  always @(*)begin
    sum=add(a,b);
  end
  function[7:0] add;
    input [7:0]a;
    input [7:0]b;
    begin
      add=a+b;
    end
  endfunction
endmodule
