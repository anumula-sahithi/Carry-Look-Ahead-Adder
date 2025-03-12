`timescale 1ns / 1ps

module cla_tb;
  
  reg x1, x2, x3, x4;
  reg y1, y2, y3, y4;
  reg cin;
  

  wire z1, z2, z3, z4, cout;

  cla uut (
    .x1(x1), .x2(x2), .x3(x3), .x4(x4),
    .y1(y1), .y2(y2), .y3(y3), .y4(y4),
    .cin(cin),
    .z1(z1), .z2(z2), .z3(z3), .z4(z4), .cout(cout)
  );

  
  initial begin
  
    $dumpfile("carry.vcd");
    $dumpvars(0, cla_tb);

 
    x1 = 0; x2 = 0; x3 = 0; x4 = 0;
    y1 = 0; y2 = 0; y3 = 0; y4 = 0;
    cin = 0;
    #10; // Wait for 10 ns

   
    x1 = 1; x2 = 0; x3 = 1; x4 = 1;
    y1 = 1; y2 = 1; y3 = 0; y4 = 1;
    cin = 1;
    #10; // Wait for 10 ns

    x1 = 1; x2 = 1; x3 = 1; x4 = 1;
    y1 = 1; y2 = 1; y3 = 1; y4 = 1;
    cin = 0;
    #10; // Wait for 10 ns

   
    x1 = 0; x2 = 1; x3 = 1; x4 = 0;
    y1 = 1; y2 = 0; y3 = 0; y4 = 1;
    cin = 1;
    #10; // Wait for 10 ns

    
    x1 = 1; x2 = 0; x3 = 1; x4 = 0;
    y1 = 1; y2 = 1; y3 = 0; y4 = 1;
    cin = 0;
    #10; // Wait for 10 ns

    $finish;
  end

  initial begin
    $monitor("Time=%0t x1=%b x2=%b x3=%b x4=%b y1=%b y2=%b y3=%b y4=%b cin=%b -> z1=%b z2=%b z3=%b z4=%b cout=%b",
             $time, x1, x2, x3, x4, y1, y2, y3, y4, cin, z1, z2, z3, z4, cout);
  end

endmodule
