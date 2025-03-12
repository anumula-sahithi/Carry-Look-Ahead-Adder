`timescale 1ns / 1ps

`include "pg.v"

module cla(x1, x2, x3, x4, y1, y2, y3, y4, cin, z1, z2, z3, z4, cout);
  input x1, x2, x3, x4, y1, y2, y3, y4, cin;
  output z1, z2, z3, z4, cout;

  wire p1, p2, p3, p4;
  wire g1, g2, g3, g4;

  wire c1, c2, c3;

  
  pg pg1(x1, y1, p1, g1);
  pg pg2(x2, y2, p2, g2);
  pg pg3(x3, y3, p3, g3);
  pg pg4(x4, y4, p4, g4);

 
  assign c1 = g1 | (p1 & cin);
  assign c2 = g2 | (p2 & c1);
  assign c3 = g3 | (p3 & c2);
  assign cout = g4 | (p4 & c3);


  assign z1 = p1 ^ cin;
  assign z2 = p2 ^ c1;
  assign z3 = p3 ^ c2;
  assign z4 = p4 ^ c3;
endmodule
