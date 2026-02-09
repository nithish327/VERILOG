reg [3:0]a;
reg [3:0]b;
reg c;
wire [3:0]sum;
wire cout;
carry_la_adder dut (.a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .cout(cout));
initial begin
    $dumpfile("carry_la_adder.vcd");
    $dumpvars(1,tb);
    $monitor("Time=%0t sum=%b cout=%b",$time,sum,cout);
    a = 4'b0110; b = 4'b1100; c = 1; #10;
    a = 4'b0011; b = 4'b0101; c = 0; #10;
    $finish;
end
endmodule
