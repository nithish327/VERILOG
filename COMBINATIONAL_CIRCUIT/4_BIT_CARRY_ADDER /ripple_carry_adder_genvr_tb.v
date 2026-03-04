module tb;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire c_out;
  ripple_carry_adder  dut (.a(a), .b(b), .cin(cin), .sum(sum), .c_out(c_out));
initial begin
  $dumpfile("ripple_carry_adder.vcd");
    $dumpvars(1,tb);
  $monitor("Time=%0t a=%b b=%b cin=%b sum=%b cout=%b",$time,a,b,cin,sum,c_out);
    a = 4'b0110; b = 4'b1100; cin = 1;#10
    a = 4'b0011; b = 4'b0101; cin = 0; #10
    $finish;
end
endmodule

