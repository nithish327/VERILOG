module tb_pipo_reg;
reg [3:0]p_in;
reg rst;
reg clk;
wire [3:0]p_out;
pipo_register dut (.*);
always #10 clk= ~ clk;
initial begin
    $dumpfile("pipo_register.vcd");
    $dumpvars(0,tb_pipo_reg);
    clk= 0;
    rst= 1;
    p_in= 4'b0000;

    #20 rst= 0;
    p_in= 4'b1001;
    #40$finish;
end
initial begin
    $monitor ("Time=%0t | rst=%b | clk=%b | p_in=%b | p_out=%b",$time,rst,clk,p_in,p_out);
end
endmodule
