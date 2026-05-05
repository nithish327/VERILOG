module ALU #(parameter N=8)(input [N-1:0]a,b,
                            input[2:0]opcode,
                            output reg [N-1:0] y);
  always@(*)begin
    case(opcode)
      3'b000 : y =a+b;
      3'b001 : y =a-b;
      3'b010 : y =a*b;
      3'b011 : y =a/b;
      3'b100 : y =a%b;
      3'b101 : y =a^b;
      3'b110 : y =a<b;
      3'b111 : y =a>b;
    endcase
  end
endmodule
