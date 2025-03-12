`timescale 1ns / 1ps

module ffo(D, clk, Q, Qbar);

  input D; 
  input clk; 
  output Q;
  output Qbar;

  wire clknot, Dnot, o1, o2, o3, o4, o5, o6;

  assign clknot = ~clk;
  assign Dnot = ~D;
  assign o1 = ~(D & clknot);
  assign o2 = ~(Dnot & clknot);
  assign o3 = ~(o1 & o4);
  assign o4 = ~(o2 & o3);
  assign o5 = ~(o3 & clk);
  assign o6 = ~(o4 & clk);
  assign Q = ~(o5 & Qbar);
  assign Qbar = ~(o6 & Q);

endmodule

module ffi(D, clk, Q, Qbar);

  input D; 
  input clk; 
  output Q;
  output Qbar;

  wire clknot, Dnot, o1, o2, o3, o4, o5, o6;

  assign clknot = ~clk;
  assign Dnot = ~D;
  assign o1 = ~(D & clk);
  assign o2 = ~(Dnot & clk);
  assign o3 = ~(o1 & o4);
  assign o4 = ~(o2 & o3);
  assign o5 = ~(o3 & clknot);
  assign o6 = ~(o4 & clknot);
  assign Q = ~(o5 & Qbar);
  assign Qbar = ~(o6 & Q);

endmodule

module ff(D, clk, Q, Qbar);

  input D; 
  input clk; 
  output Q;
  output Qbar;

  wire clknot, Dnot, o1, o2, o3, o4, o5, o6;

  assign clknot = ~clk;
  assign Dnot = ~D;
  assign o1 = ~(D & clk);
  assign o2 = ~(Dnot & clk);
  assign o3 = ~(o1 & o4);
  assign o4 = ~(o2 & o3);
  assign o5 = ~(o3 & clk);
  assign o6 = ~(o4 & clk);
  assign Q = ~(o5 & Qbar);
  assign Qbar = ~(o6 & Q);

endmodule
