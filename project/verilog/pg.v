`timescale 1ns / 1ps

module pg( x,y,p,g);
  
  input x;
  input y;
  output p;
  output g;


  and and1(g,x,y);
  xor xor1(p,x,y);

endmodule