module tb;
  reg [3:0]a,b;
  wire result;
  compare_function dut (.*);
  initial begin
    $dumpfile("compare_function.v");
    $dumpvars(0,tb);
    $monitor("time=%0t a=%b b=%b result=%b",$time,a,b,result);
    a=4'b0011; b=4'b1100;#10;
    a=4'b1100; b=4'b1100;#10;
    a=4'b0101; b=4'b0101;#10;
    a=4'b0111; b=4'b1000;#10;
    a=4'b0010; b=4'b0010;#10;
    #10 $finish;
  end 
endmodule
