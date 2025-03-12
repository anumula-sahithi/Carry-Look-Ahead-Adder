
`timescale 1ns / 1ps

module tb;

  reg clk;
  reg cin;
  reg [4:1] x;
  reg [4:1] y;

  wire cout;
  wire [4:1] z;

  
  toplevel top1(
    .clk  (clk ) ,
    .x    (x   ) ,
    .y    (y   ) ,
    .cin  (cin ) ,
    .cout (cout) ,
    .z    (z   )
  );

  initial begin 
    $dumpfile("finaltest.vcd");
    $dumpvars(0,tb);
    clk=0;
    x=4'b0000; y=4'b0000; cin=0;
    
    
#3 x = 4'b0010; y = 4'b1110; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0010; y = 4'b1110; cin = 1; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0010; y = 4'b1111; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0010; y = 4'b1111; cin = 1; clk = ~clk; #3 clk = ~clk;

#3 x = 4'b0011; y = 4'b0000; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0000; cin = 1; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0001; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0001; cin = 1; clk = ~clk; #3 clk = ~clk;

#3 x = 4'b0011; y = 4'b0010; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0010; cin = 1; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0011; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0011; cin = 1; clk = ~clk; #3 clk = ~clk;

#3 x = 4'b0011; y = 4'b0100; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0100; cin = 1; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0101; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0101; cin = 1; clk = ~clk; #3 clk = ~clk;

#3 x = 4'b0011; y = 4'b0110; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0110; cin = 1; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0111; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b0111; cin = 1; clk = ~clk; #3 clk = ~clk;

#3 x = 4'b0011; y = 4'b1000; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b1000; cin = 1; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b1001; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b1001; cin = 1; clk = ~clk; #3 clk = ~clk;

#3 x = 4'b0011; y = 4'b1010; cin = 0; clk = ~clk; #3 clk = ~clk;
#3 x = 4'b0011; y = 4'b1010; cin = 1; clk = ~clk; #3 clk = ~clk;

    
#3 clk=~clk;#3 clk=~clk;
end 
  
initial 
	$monitor("clk=%b x=%b y=%b cin=%b cout=%b z=%b",clk,x,y,cin,cout,z);
endmodule
