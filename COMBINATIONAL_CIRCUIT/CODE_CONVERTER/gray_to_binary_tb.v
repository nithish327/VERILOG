module tb;
  reg [3:0]gray;
  wire [3:0]binary;
  integer i;
  gray_to_binary dut(.*);
  initial begin
    for(i=0; i<=15;i=i+1)begin
      gray = i;
      #10;
    end
    $finish;
  end
    initial begin
      $dumpfile("gray_to_binary.vcd");
      $dumpvars(0,tb);
      $monitor("Time=%0t gray=%b | binary =%b",$time,gray,binary);
    end
    endmodule
    
