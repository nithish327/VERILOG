module tb_mux;
reg a,b,c,d;
reg s0,s1;
wire y;
mux dut (.*);
initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1,tb_mux);
    a=0; b=1; c=1; d=0;
    $display("a=%b  b=%b c=%b d=%b",a,b,c,d);
    $monitor("Time=0%t s1=%b s0=%b y=%b", $time,s1,s0,y);
    s1=0; s0=0;#10
    s1=0; s0=1;#10
    s1=1; s0=0;#10
    s1=1; s0=1;#10
    $finish;
end
endmodule
