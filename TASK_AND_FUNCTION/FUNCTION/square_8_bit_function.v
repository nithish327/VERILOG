module square_8_bit_function(input wire [7:0]a,
                    output reg [15:0]square
       );
  always @(*)begin
    square=bit_sq(a);
  end
  function [15:0]bit_sq;
    input [7:0]a;
    begin
      bit_sq= a*a;
    end 
  endfunction
endmodule
