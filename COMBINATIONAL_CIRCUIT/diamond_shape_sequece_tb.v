//1 22 333 4444 55555 4444 333 22 1 display this sequence in diamond shape

module tb;
integer i,j,k;
initial begin
  for(i=1;i<=5;i=i+1)begin
    for(j=5;j>i;j=j-1)
      $write(" ");
    for(k=1;k<=i;k=k+1)
    $write("0%d",i);
    $write("\n");
  end
  for(i=4;i>=1;i=i-1)begin
    for(j=5;j>i;j=j-1)
      $write(" ");
    for(k=1;k<=i;k=k+1)
      $write("%0d",i);
    $write("\n");
      end
  $finish;
end

endmodule
