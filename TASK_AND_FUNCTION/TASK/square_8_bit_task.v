module square_8_bit(input wire [7:0]a,
                    output reg [15:0]square
       );
  always @(*)begin
    bit_sq(a,square);
  end
  task bit_sq;
    input [7:0]a;
    output [7:0]square;
    begin
      square= a*a;
    end 
  endtask
endmodule
