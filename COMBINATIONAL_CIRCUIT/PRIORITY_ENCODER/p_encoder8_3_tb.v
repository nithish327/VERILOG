module tb;
  reg [7:0]d;
  wire [2:0]y;
  priority_encoder dut(.*);
  initial begin
    $dumpfile("priority_encoder.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t input=%b output=%d",$time,d,y);
    d= 8'b10010101;#5
    d= 8'b00010101;#5
    d= 8'b00001101;#5
    d= 8'b00100101;#5
    d= 8'b00000001;#5
    
    $finish;
  end
endmodule
