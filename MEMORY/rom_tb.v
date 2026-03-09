module tb;
  reg clk,cs,rd_en;
  reg [2:0] addr;
  wire [3:0]d_out;
  ROM dut (.*);
  always #5 clk =~clk;
  initial begin
    clk=0;
    cs =0;
    rd_en=0;
    #10 cs=1; rd_en =1; 
    addr = 4'd0;#10
    addr = 4'd1;#10
    addr = 4'd2;#10
    addr = 4'd3;#10
    addr = 4'd4;#10
    addr = 4'd5;#10
    addr = 4'd6;#10
    addr = 4'd7;#10
    $finish;
  end
  initial begin
    $dumpfile("ROM.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t | clk=%b | cs=%b | rd_en=%b | address=%d | d_out=%d",$time,clk,cs,rd_en,addr,d_out);
  end
endmodule
    
    
