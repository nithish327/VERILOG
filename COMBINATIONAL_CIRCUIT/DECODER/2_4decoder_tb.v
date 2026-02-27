module tb_decoder;
reg d1,d0;
wire y0,y1,y2,y3;
decoder2_4 dut (.*);
initial begin
$dumpfile("decoder2_4.vcd");
$dumpvars(1,tb_decoder);
$monitor("Time=0%t d1=%b d0=%b y0=%b y1=%b y2=%b y3=%b", $time,d1,d0,y0,y1,y2,y3);
d1=0; d0=0;#10
d1=0; d0=1;#10
d1=1; d0=0;#10
d1=1; d0=1;#10
$finish;
end
endmodule
