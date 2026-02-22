module tb;
reg [3:0]a;
reg [3:0]b;
wire y0,y1,y2;
comparator dut (.*);
initial begin 
    $dumpfile("comparator.vcd");
    $dumpvars(1,tb);
    $monitor ("Time=%0t | a=%b b=%b | y0=%b | y1=%b | y2=%b",$time,a,b,y0,y1,y2);
    a=4'b0000; b=4'b0000; #10;
    a=4'b0001; b=4'b1100; #10;
    a=4'b0010; b=4'b1001; #10;
    a=4'b1111; b=4'b1011; #10;
    
    $finish;
end 
endmodule
