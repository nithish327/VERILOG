module tb;
  reg [7:0]a;
  wire [15:0]square;
  square_8_bit_function dut(.*);
    initial begin
      a=8'b10110010;#10
      a=8'b00100010;#10
      a=8'b10001101;#10
      $finish;
    end
  initial begin
      $monitor("Time=%0t a=%b square=%b",$time,a,square);
    $dumpfile("square_8_bit_function.vcd");
      $dumpvars(0,tb);
    end 
endmodule
