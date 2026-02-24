module adder(input wire [7:0]a,
             input wire [7:0]b,
             output reg [7:0]sum
            );
  always @(*)begin
    bit_sum(a,b,sum);
  end 
  task bit_sum;
    input [7:0]a;
    input [7:0]b;
    output [7:0]sum;
    begin
      sum=a+b;
    end 
  endtask
endmodule
