module tb_t_ff;
reg t,clk,rst;
wire q;
t_ff dut(.q(q),
    .rst(rst),
    .t(t),
    .clk(clk));
always #10 clk = ~clk; 
initial begin
    $dumpfile("t_ff.vcd");
    $dumpvars(0,tb_t_ff);
    clk=0;
    rst=1;
    t=1;

    #20 rst= 0;
    #10 t=0;
    #10 t=1;
    #10 t=1;
    #50 $finish;
end
initial begin
$monitor("Time=%0t rst=%b clk=%b t=%b q=%b",$time,rst,clk,t,q);
end
endmodule
