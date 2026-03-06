module tb;
  reg clk,rst;
  reg [7:0]d_in;
  reg wr_en,rd_en;
  wire [7:0] d_out;
  wire full,empty;
  synchronous_fifo dut(.*);
  always #5 clk=~clk;
  initial begin
    rst=1;
    clk=0;
    d_in=0;rd_en=0;wr_en=0;
    
    #10 rst=0;
    wr_en=1;rd_en=0;
    d_in= 8'd7;#10
    d_in= 8'd3;#10
    d_in= 8'd2;#10
    d_in= 8'd7;#10
    d_in= 8'd1;#10
    d_in= 8'd3;#10
    d_in= 8'd0;#10
    d_in= 8'd1;#10
   wr_en=0; rd_en=1;d_in=8'd3;#10;
    #40$finish;
  end
  initial begin
    $dumpfile("synchronous_fifo.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t clock=%b reset=%b |  read_enable=%b  | write_enable=%b | d_in=%d |d_out=%d ",$time,clk,rst,rd_en,wr_en,d_in,d_out);
  end
endmodule
    
