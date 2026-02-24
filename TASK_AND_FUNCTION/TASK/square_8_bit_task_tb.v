module tb;
  reg [7:0]a;
  wire [15:0]square;
  square_8_bit dut(.*);
  task input_a;
    input [7:0]x;
    begin
    a=x;
    #10;
    end
    endtask
    initial begin
      $monitor("Time=%0t a=%b square=%b",$time,a,square);
      $dumpfile("square_8_bit.vcd");
      $dumpvars(0,tb);
      input_a(8'b00110101);
    end 
endmodule
