module tb_d_ff;
reg d,clk,rst;
wire q;
d_master_slave dut(.q(q),
    .rst(rst),
    .d(d),
    .clk(clk));
always #10 clk = ~clk; 
initial begin
  $dumpfile("d_master_slave.vcd");
  $dumpvars(0,tb_d_ff);
    clk=0;
    rst=1;
    d=0;

    #20 rst= 0;
    #10 d=1;
    #10 d=0;
    #10 d=1;
    #10 d=0;
    #10 d=1;
    #10 d=0;
    #10 d=0;
    #10 d=1;
    #10 $finish;
end
initial begin
$monitor("Time=%0t rst=%b clk=%b d=%b q=%b",$time,rst,clk,d,q);
end
endmodule
