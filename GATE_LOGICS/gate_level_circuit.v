//Implement Y= A|B|C + A.B.E + |B.C + C|D using delay value 3 for and gates, 2 for or gates and 4 for not gates. Use two inputs and, or gates only. Use $Monitor for displaying result on transcript ,also turn off display for 50 time units and then continue displaying the results. Note: |B|C means (not B) and (not c)



module logic_circuit(A,B,C,D,E,Y);

input A,B,C,D,E;
output Y;

wire nb,nc,nd;
wire x1,T1;
wire x2,T2;
wire T3,T4;
wire X1,X2;

not #4 n1(nb,B);
not #4 n2(nc,C);
not #4 n3(nd,D);

and #3 a1(x1,A,nb);
and #3 a2(T1,x1,nc);

and #3 a3(x2,A,B);
and #3 a4(T2,x2,E);

and #3 a5(T3,nb,C);

and #3 a6(T4,C,nd);

or #2 o1(X1,T1,T2);
or #2 o2(X2,T3,T4);
or #2 o3(Y,X1,X2);

endmodule
