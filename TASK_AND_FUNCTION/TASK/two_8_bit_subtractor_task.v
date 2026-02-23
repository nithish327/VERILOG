module adder(input wire [7:0]a,
             input wire [7:0]b,
             output reg [7:0]sub
            );
  always @(*)begin
    sub = a-b;
  end 
endmodule
