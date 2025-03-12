
`timescale 1ns / 1ps

module flipfloptb;

  reg D;
  reg clk;
	
  wire Q1;
  wire Qbar1;


  ff d0 (
    .D(D),
    .clk(clk),
    .Q(Q1),
    .Qbar(Qbar1)
  );



  initial begin 
    $dumpfile("flipflop.vcd");
    $dumpvars(0,flipfloptb);
    clk=0;
    D=0;

    #10 clk  =~clk;
        D=1;
    #10 clk  =~clk;
    #10 clk  =~clk;
        D=0;
    #10 clk  =~clk;
    #10 clk  =~clk;
        D=1;
    #10 clk  =~clk;
    #10 clk  =~clk;
        D=1;
    #10 clk  =~clk;
        D=0;
    #10 clk  =~clk;
        D=1;
    #10 clk  =~clk;
    #10 clk  =~clk;
    #10 clk  =~clk;
    #10 clk  =~clk;

  end 
  
  initial 
		$monitor("D=%d clk=%d Q1=%d Qbar1=%d",D,clk,Q1,Qbar1);
endmodule
