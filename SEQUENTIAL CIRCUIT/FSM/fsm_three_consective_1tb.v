module tb;
reg clk,rst;
reg d_in;
wire d_out;
fsm dut (.*);
always#5 clk=~clk;
initial begin
    rst = 0;
    clk = 1;
    d_in =0;

    #10 rst = 1;
  @(posedge clk) d_in = 1;
  @(posedge clk) d_in = 0;
  @(posedge clk) d_in = 1;
  @(posedge clk) d_in = 1;
  @(posedge clk) d_in = 1;
  @(posedge clk) d_in = 1;
  @(posedge clk) d_in = 0;
  @(posedge clk) d_in = 0;
  @(posedge clk) d_in = 1;
   $finish;
end 
initial begin
  $dumpfile ("fsm.vcd");
    $dumpvars(0,tb);
  $monitor("Time =%0t rst=%b clk=%b in=%b output=%b",$time,rst,clk,d_in,d_out);
end
endmodule
