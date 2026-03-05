module tb;

reg A,B,C,D,E;
wire Y;

logic_circuit dut(A,B,C,D,E,Y);

initial begin
$monitor("time=%0t A=%b B=%b C=%b D=%b E=%b Y=%b",$time,A,B,C,D,E,Y);

A=0;B=0;C=0;D=0;E=0;

#10 A=1;
#10 B=1;
#10 C=1;
#10 D=1;
#10 E=1;

#50 $monitoroff;   

#50 $monitoron;    

#20 A=0; B=0;

#50 $finish;

end

endmodule
