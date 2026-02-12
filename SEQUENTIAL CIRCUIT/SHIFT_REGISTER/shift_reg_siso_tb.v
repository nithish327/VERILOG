module tb_siso_reg;
reg serial_in;
reg rst;
reg clk;
wire serial_out;
siso_register dut (.serial_in(serial_in),
        .clk(clk),
        .rst(rst),
        .serial_out(serial_out));
always #10 clk= ~ clk;
initial begin
    $dumpfile("siso_register.vcd");
    $dumpvars(0,tb_siso_reg);
    clk= 0;
    rst= 1;
    serial_in= 1'b0;

    #10 rst= 0;
    serial_in= 1'b1;#20;
    serial_in= 1'b0;#20;
    serial_in= 1'b0;#20;
    serial_in= 1'b1;#20;
    #70;$finish;
end
initial begin
    $monitor ("Time=%0t | rst=%b | clk=%b | serial_in=%b | serial_out=%b",$time,rst,clk,serial_in,serial_out);
end
endmodule
