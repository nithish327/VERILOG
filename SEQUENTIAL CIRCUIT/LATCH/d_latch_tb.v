module tb_d_latch;
reg d,clk,rst;
wire q;
d_latch dut(.q(q),
    .rst(rst),
    .d(d),
    .clk(clk));
always #10 clk = ~clk; 
initial begin
    $dumpfile("d_latch.vcd");
    $dumpvars(0,tb_d_latch);
    clk=0;
    rst=1;
    d=1;

    #20 rst= 0;
    #10 d=1;
    #10 d=1;
    #10 d=1;
    #10 d=0;
    #50 $finish;
end
initial begin
$monitor("Time=%0t rst=%b clk=%b d=%b q=%b",$time,rst,clk,d,q);
end
endmodule
