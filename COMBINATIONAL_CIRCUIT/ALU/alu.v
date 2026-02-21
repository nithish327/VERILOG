module alu(input wire [3:0]a,
            input wire [3:0]b,
            input wire [3:0]op,
            output reg [3:0]result,
            output reg carry,
            output reg overflow,
            output reg zero,
            output reg negative
            
           );
  reg [4:0]temp;
  always @(*) begin
    temp=0;
    result=0;
    carry =0;
    overflow=0;
    case(op)
      4'b0000: begin
        temp = a+b;
        result = temp[4:0];
        carry = temp[4];
        overflow = (a[3] != b[3]) && (result[3] != a[3]);
      end
      4'b0001: begin
        temp = a-b;
        result = temp[4:0];
        carry = temp[4];
        overflow = (a[3] != b[3]) && (result[3] != a[3]);
      end
      4'b0010 : result= a*b;
      4'b0011 : result= a/b;
      4'b0100 : result= a==b;
      4'b0101 : result= a<b;
      4'b0110 : result= a>b;
      4'b0111 : result= a<<b;
      4'b1000 : result= a>>b;
      4'b1001 : result= a&b;
      4'b1010 : result= a|b;
      4'b1011 : result= ~a;
      4'b1100 : result= a^b;
    endcase
    if (result == 0)
    zero =1;
    else 
      zero =0;
    negative = result[3];
  end 
endmodule
    
