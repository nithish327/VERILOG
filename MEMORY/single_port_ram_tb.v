module tb;
  reg clk;
  reg [3:0] d_in;
  reg wr_en;
  reg [3:0] addr;
  reg cs;
  wire [3:0] d_out;
  single_port_ram dut (.*);
  always #5 clk=~clk;
  initial begin 
    clk=0;
    cs=0;
    #20 cs=1; wr_en=1;
    addr = 4'd1; d_in = 4'd0;#10
    addr = 4'd2; d_in = 4'd3;#10
    addr = 4'd1; d_in = 4'd1;#10
    addr = 4'd3; d_in = 4'd2;#10
    addr = 4'd0; d_in = 4'd3;#10
    wr_en=0;
    addr = 4'd1;#10
    addr = 4'd3;#10
    addr = 4'd2;#10
 
    $finish;
  end
  initial begin
    $dumpfile("single_port_ram.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t clk=%b address=%d | input=%d | WE=%b | CS=%b output=%d",$time,clk,addr,d_in,wr_en,cs,d_out);
  end
endmodule
    
