module tb_mealey;
reg clk,rst;
reg in;
wire out;
mealey_overlaping dut (.*);
always#10 clk=~clk;
initial begin
    rst = 1;
    clk = 1;
    in =0;

    #20 rst = 0;
    #20 in = 1;
    #20 in = 0;
    #20 in = 1;
    #20 in = 1;

    #20 $finish;
end 
initial begin
  $dumpfile ("mealey_overlapping.vcd");
    $dumpvars(0,tb_mealey);
  $monitor("Time =%0t rst=%b clk=%b in=%b out=%b",$time,rst,clk,in,out);
end
endmodule
