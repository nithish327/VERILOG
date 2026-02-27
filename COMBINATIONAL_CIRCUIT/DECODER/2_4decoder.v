module decoder2_4(output y0,y1,y2,y3,input d1,d0);
assign y0= ~d1&~d0;
assign y1= ~d1&d0;
assign y2= d1&~d0;
assign y3= d1&d0;
endmodule
