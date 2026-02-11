module tb_sr_latch;
reg s,r,clk,rst;
wire q;
sr_latch dut(.q(q),
    .rst(rst),
    .s(s),
    .r(r),
    .clk(clk));
always #10 clk = ~clk; 
initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(0,tb_sr_latch);
    clk=0;
    rst=1;
    s=0;
    r=0;

    #20 rst= 0;
    s=0; r=0;#20;
    s=1; r=1;#20;
    s=0; r=1;#20;
    s=1; r=0;#20;
   
   
    #40 $finish;
end
initial begin
$monitor("Time=%0t rst=%b | clk=%b | s=%b | r=%b | q=%b",$time,rst,clk,s,r,q);
end
endmodule
