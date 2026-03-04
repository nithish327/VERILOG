module tb;
  reg [7:0]a8,b8;
  reg c8;
  wire [7:0]sum8;
  wire carry8;
  
  reg [15:0]a16,b16;
  reg c16;
  wire [15:0]sum16;
  wire carry16;
  full_adder #(.N(8)) fa8(.a(a8), .b(b8), .c(c8), .sum(sum8), .carry(carry8));
  full_adder #(.N(16)) fa16(.a(a16), .b(b16), .c(c16), .sum(sum16), .carry(carry16));
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,tb);
   
  end
  initial begin
   
    a8 = 8'd7;
    b8 = 8'd14;
    c8 = 1'b1;
   
    
    a16 = 16'd52;
    b16 = 16'd11;
    c16 = 1'b0;
    #10;
    $finish;
  end
  initial begin
    $strobe("8 BIT: a=%b b=%b c=%b | sum=%b | carry =%b",a8,b8,c8,sum8,carry8);
    
    $strobe("16 BIT: a=%b b=%b c=%b | sum=%b | carry =%b",a16,b16,c16,sum16,carry16);
  end
endmodule
