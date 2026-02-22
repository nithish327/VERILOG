module tb;
reg a,b;
reg c;
wire sum;
wire cout;
four_bit_carry_adder dut (.*);
initial begin
    $dumpfile("four_bit_carry_adder.vcd");
    $dumpvars(1,tb);
    $monitor("Time=%0t a=%b b=%b c=%b sum=%b cout=%b",$time,a,b,c,sum,cout);
    a = 4'b0110; b = 4'b1100; c = 1;#10
    a = 4'b0011; b = 4'b0101; c = 0; #10;
    $finish;
end
endmodule
