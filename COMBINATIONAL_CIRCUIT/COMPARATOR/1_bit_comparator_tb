module tb;
reg a;
reg b;
wire y0,y1,y2;
comparator dut (.*);
initial begin 
    $dumpfile("comparator.vcd");
    $dumpvars(1,tb);
    $monitor ("Time=%0t | a=%b b=%b | y0=%b | y1=%b | y2=%b",$time,a,b,y0,y1,y2);
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
end 
endmodule
