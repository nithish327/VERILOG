module tb_alu;
  reg [3:0]a;
  reg [3:0]b;
  reg [3:0]op;
  wire [3:0] result ;
  wire carry;
  wire overflow;
  wire zero;
  wire negative;
  alu dut(.*);
  initial begin 
    $dumpfile("alu.vcd");
    $dumpvars(0,tb_alu);
    a = 4'b1010; b = 4'b0110;
    
    op = 4'b0000;#5;
    op = 4'b0001;#5;
    op = 4'b0010;#5;
    op = 4'b0011;#5;
    op = 4'b0100;#5;
    op = 4'b0101;#5;
    op = 4'b0110;#5;
    op = 4'b0111;#5;
    op = 4'b1000;#5;
    op = 4'b1001;#5;
    op = 4'b1010;#5;
    op = 4'b1011;#5;
    op = 4'b1100;#5;
    $finish;
  end
  initial begin
    $monitor("Time=%0t a=%b b=%b result=%b carry=%b  overflow=%b zero=%b negative=%b ",$time,a,b,result,carry,overflow,zero,negative);
    
  end
endmodule
    
