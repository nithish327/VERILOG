module tb;
reg [1:0]a;
reg [1:0]b;
wire y0,y1,y2;
comparator dut (.*);
initial begin 
    $dumpfile("comparator.vcd");
    $dumpvars(1,tb);
    $monitor ("Time=%0t | a=%b b=%b | y0=%b | y1=%b | y2=%b",$time,a,b,y0,y1,y2);
    a=2'b00; b=2'b00; #10;
    a=2'b00; b=2'b01; #10;
    a=2'b00; b=2'b10; #10;
    a=2'b00; b=2'b11; #10;
    a=2'b01; b=2'b00; #10;
    a=2'b01; b=2'b01; #10;
    a=2'b01; b=2'b10; #10;
    a=2'b01; b=2'b11; #10;
    $finish;
end 
endmodule
