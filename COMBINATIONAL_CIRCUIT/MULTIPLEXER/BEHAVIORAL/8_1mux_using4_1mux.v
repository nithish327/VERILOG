module mux8_1(input wire s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7,
              output reg y
             );
  reg x,z;
  always @(* )begin
    if (~s2)begin
      case({s1,s0})
      2'b00 : x= i0;
      2'b01 : x= i1;
      2'b10 : x= i2;
      2'b11 : x= i3;
      endcase
    end
    else
      x=0;
  end
    
  always @(*)begin
    if(s2)begin
      case({s1,s0})
      2'b00 : z = i4;
      2'b01 : z = i5;
      2'b10 : z = i6;
      2'b11 : z = i7;
    endcase
    end
      else 
        z=0;
    end
    assign y=x|z;

  
endmodule
