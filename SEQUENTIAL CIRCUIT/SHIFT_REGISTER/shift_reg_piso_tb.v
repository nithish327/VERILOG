module tb_piso_reg;
reg [3:0]p;
reg rst;
reg clk;
reg load;
wire serial_out;
piso_register dut (.*);
always #10 clk= ~ clk;
initial begin
    $dumpfile("piso_register.vcd");
    $dumpvars(0,tb_piso_reg);
    clk= 0;
    rst= 1;
    load=0;
    p= 4'b000;

    #20 rst= 0;
    #10 load=1;
    p= 4'b1001;
    #10 load=0;
    #80$finish;
end
initial begin
    $monitor ("Time=%0t | rst=%b | clk=%b | p=%b | serial_out=%b",$time,rst,clk,p,serial_out);
end
endmodule
