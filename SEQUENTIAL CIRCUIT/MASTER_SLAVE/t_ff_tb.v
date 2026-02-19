module tb_t_ff;
reg t,clk,rst;
wire q;
t_master_slave dut(.q(q),
    .rst(rst),
    .t(t),
    .clk(clk));
always #5 clk = ~clk; 
initial begin
  $dumpfile("t_master_slave.vcd");
  $dumpvars(1,tb_t_ff);
    clk=0;
    rst=1;
    t=0;

    #15 rst= 0;
    #10 t=0;
    #10 t=1;
    #10 t=1;
    #10 t=0;
    #10 t=1;
    #20 $finish;
end
initial begin
$monitor("Time=%0t rst=%b clk=%b t=%b q=%b",$time,rst,clk,t,q);
end
endmodule
