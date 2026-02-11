module tb_mux;
reg a,b,sel;
wire y;
mux2_1 dut (.a(a), .b(b), .sel(sel), .y(y));
initial begin
    $dumpfile("mux2_1.vcd");
    $dumpvars(1,tb_mux);
    $monitor("Time=0%t a=%b b=%b sel=%b y=%b",$time,a,b,sel,y);
    a=0; b=0; sel=0;#5
    a=0; b=1; sel=1;#5
    a=1; b=0; sel=1;#5
    a=1; b=1; sel=0;#5
    $finish;
end
endmodule
