module tb_mux;
reg i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
wire y, a,b,c,d,e,f;
mux dut (.*);
initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1,tb_mux);
    i0=0; i1=1; i2=0; i3=1; i4=0; i4=0; i5=1; i6=0; i7=1;
    $display("i0=%b  i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b",i0,i1,i2,i3,i4,i5,i6,i7);
    $monitor("Time=0%t s2=%b s1=%b s0=%b y=%b", $time,s2,s1,s0,y);
    s2=0; s1=0; s0=0;#10
    s2=0; s1=0; s0=1;#10
    s2=0; s1=1; s0=0;#10
    s2=0; s1=1; s0=1;#10
    s2=1; s1=0; s0=0;#10
    s2=1; s1=0; s0=1;#10
    s2=1; s1=1; s0=0;#10
    s2=1; s1=1; s0=1;#10
    $finish;
end
endmodule
