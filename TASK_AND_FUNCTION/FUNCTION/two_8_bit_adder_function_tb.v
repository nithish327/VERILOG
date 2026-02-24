module tb;
  reg [7:0]a,b;
  wire [7:0]sum;
  two_8_bit_adder_function dut(.*);
  initial begin
    a=8'b00011010; b=8'b11100101;#10
    a=8'b01100010; b=8'b11100101;#10
    a=8'b00011111; b=8'b11100101;#10
    a=8'b11011010; b=8'b10000101;#10
    $finish;
  end 
  initial begin
    $dumpfile("two_8_bit_adder_function.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t a=%b b=%b sum=%b",$time ,a,b,sum);
  end 
endmodule
