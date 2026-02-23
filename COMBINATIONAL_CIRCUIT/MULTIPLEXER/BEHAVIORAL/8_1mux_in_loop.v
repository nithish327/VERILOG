module mux8_1(input [7:0]a,
input wire [2:0]sel,
output reg y
);
  integer i;
always @(*)begin
  y=1'b0;
  for(i=0; i<=7; i=i+1)begin
  if(sel==i)
  y= a[i];
  end
  
end
endmodule
