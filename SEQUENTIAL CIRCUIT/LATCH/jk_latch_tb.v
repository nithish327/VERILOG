module tb_jk_latch;
reg j,k,clk,rst;
wire q;
jk_latch dut(.q(q),
    .rst(rst),
    .j(j),
    .k(k),
    .clk(clk));
always #10 clk = ~clk; 
initial begin
    $dumpfile("jk_latch.vcd");
    $dumpvars(0,tb_jk_latch);
    clk=0;
    rst=1;
    j=0;
    k=0;

    #10 rst= 0;
    #20 j=0; k=0;
    #20 j=0; k=1;
    #20 j=1; k=0;
    #20 j=1; k=1;
   
   
    #200 $finish;
end
initial begin
$monitor("Time=%0t rst=%b | clk=%b | j=%b | k=%b | q=%b",$time,rst,clk,j,k,q);
end
endmodule
