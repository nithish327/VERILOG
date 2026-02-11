module tb_mux4_1;
reg [1:0]sel,i0,i1,i2,i3;
wire y;
mux4_1 dut (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .sel(sel), .y(y));
initial begin
    $dumpfile("mux4_1.vcd");
    $dumpvars(1,tb_mux4_1);
    $display("i0=%b i1=%b i2=%b i3=%b,",i0,i1,i2,i3,);
    $monitor("Time=0%t sel=%b y=%b",$time,sel,y);
    i0=0; i1=1; i2=1; i3=0;
    sel=2'b00;#10
    sel=2'b01;#10
    sel=2'b10;#10
    sel=2'b11;#10
    $finish;
end
endmodule
