module tb_decoder;
reg d;
wire y0,y1;
decoder1_2 dut (.*);
initial begin
$dumpfile("decoder1_2.vcd");
$dumpvars(1,tb_decoder);
$monitor("Time=0%t d=%b y1=%b y0=%b", $time,d,y1,y0,);
d=0; #10
d=1; #10
$finish;
end
endmodule
