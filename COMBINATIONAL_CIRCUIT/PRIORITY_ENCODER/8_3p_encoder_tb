module tb_encoder;
reg [7:0]d;
wire y0,y1,y2;
p_encoder dut (.*);
initial begin
$dumpfile("p_encoder.vcd");
$dumpvars(1,tb_encoder);
$monitor("Time=0%t d=%b y0=%b y1=%b  y2=%b", $time,d,y0,y1,y2);
d=8'b00000001;#10
d=8'b0000001x;#10
d=8'b000001xx;#10
d=8'b00001xxx;#10
d=8'b0001xxxx;#10
d=8'b001xxxxx;#10
d=8'b01xxxxxx;#10
d=8'b1xxxxxxx;#10
$finish;
end
endmodule
