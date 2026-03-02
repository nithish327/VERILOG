module tb_mux4_1;
  reg [1:0]sel;
  reg i0,i1,i2,i3;
wire y;
  mux4_1_function dut (.*);
initial begin
  $dumpfile("mux4_1_function.vcd");
    $dumpvars(1,tb_mux4_1);
  $monitor("Time=0%t select line=%b  y=%b",$time, sel, y);
    i0=1; i1=0; i2=0; i3=1;
    sel = 2'b00; #10
    sel = 2'b01; #10
    sel = 2'b10; #10
    sel = 2'b11; #10
    $finish;
end
endmodule
