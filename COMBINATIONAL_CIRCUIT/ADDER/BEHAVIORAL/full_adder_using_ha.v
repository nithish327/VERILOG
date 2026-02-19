module full_adder(input wire a,b,cin, output reg sum, carry);
  reg s1,c1,c2;
  always @(*)begin
    s1 = a ^ b;
    c1 = a & b;
    
    sum = s1 ^ cin;
    c2 = s1 & cin;
    carry = c1 | c2;
  end
endmodule
