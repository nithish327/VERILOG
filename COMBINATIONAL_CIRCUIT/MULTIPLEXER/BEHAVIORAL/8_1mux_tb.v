module tb_8_1mux;
reg i0,i1,i2,i3,i4,i5,i6,i7;
reg[2:0]sel;
wire y;
mux8_1 dut (.*);
initial begin
    $dumpfile("mux8_1.vcd");
    $dumpvars(1,tb_8_1mux);
    i0=0; i1=1; i2=0; i3=0; i4=0; i5=1; i6=1; i7=0;
    $display("i0=%b i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b",i0,i1,i2,i3,i4,i5,i6,i7);
    $monitor("Time=0%t  s=%b y=%b", $time, sel,y);
    sel=3'b000; #10;
    sel=3'b001; #10;
    sel=3'b010; #10;
    sel=3'b011; #10;
    sel=3'b100; #10;
    sel=3'b101; #10;
    sel=3'b110; #10;
    sel=3'b111; #10;
    $finish;
end
endmodule
