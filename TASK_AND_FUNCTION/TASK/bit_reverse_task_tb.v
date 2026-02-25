module tb;
  reg [7:0]a;
  wire [7:0]b;
  bit_reverse_task dut (.*);
  initial begin
    a=8'b00111010;#10
    a=8'b11010001;#10
    $finish;
  end
  initial begin
    $dumpfile("bit_reverse_task.vcd");
    $dumpvars(0,tb);
    $monitor("Time =%0t a=%b b=%b",$time,a,b);
  end
endmodule
