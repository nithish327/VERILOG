module adder(input wire [7:0]a,
             input wire [7:0]b,
             output reg [7:0]sub
            );
  always @(*)begin
    bit_sub(a,b,sub);
  end 
  task bit_sub;
    input [7:0]a;
    input [7:0]b;
    output [7:0]sub;
    begin
      sub=a-b;
    end 
  endtask
endmodule
