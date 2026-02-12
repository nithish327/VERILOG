module tb_sipo_reg;
reg serial_in;
reg rst;
reg clk;
wire [3:0]p;
sipo_register dut (.*);
always #10 clk= ~ clk;
initial begin
    $dumpfile("sipo_register.vcd");
    $dumpvars(0,tb_sipo_reg);
    clk= 0;
    rst= 1;
    serial_in= 1'b0;

    #10 rst= 0;
    serial_in= 1'b1;#20;
    serial_in= 1'b0;#20;
    serial_in= 1'b0;#20;
    serial_in= 1'b1;#20;
    $finish;
end
initial begin
    $monitor ("Time=%0t | rst=%b | clk=%b | serial_in=%b | p=%b",$time,rst,clk,serial_in,p);
end
endmodule
