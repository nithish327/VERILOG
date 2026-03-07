module tb;
  reg clk,cs,wr_en,rd_en;
  reg [3:0] d_in;
  reg [2:0] addr;
  wire [3:0] d_out;
  dual_port_ram dut(.*);
  always #5 clk=~clk;
  initial begin 
    clk=1;
    cs=0; wr_en=0; rd_en=0;
    #20 cs=1; wr_en=1;
    addr = 0; d_in = 4'd3;#10
    addr = 1; d_in = 4'd0;#10
    addr = 2; d_in = 4'd1;#10
    addr = 3; d_in = 4'd2;#10
    wr_en=0; rd_en=1;
    addr = 0; #10
    addr = 1; #10
    addr = 2; #10
    addr = 3; #10
    $finish;
  end
  initial begin
    $dumpfile ("dual_port_ram.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t clk=%b | cs=%b | wr_en=%b | rd_en=%b |  d_in=%d | address=%d | d_out=%d",$time,clk,cs,wr_en,rd_en,d_in,addr,d_out);
  end
endmodule
