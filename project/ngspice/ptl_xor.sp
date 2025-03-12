
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd	vdd	gnd	'SUPPLY'
.param fac={10}
.param width_P={fac*LAMBDA*2}
.param width_N={fac*LAMBDA}

*vin1 a 0 pulse 0 1.8 0ns 1ns 1ns 10ns 20ns
*vin2 b 0 pulse 0 1.8 0ns 1ns 1ns 30ns 60ns
*vin3 a_bar 0 pulse 1.8 0 0ns 1ns 1ns 10ns 20ns
*vin4 b_bar 0 pulse 1.8 0 0ns 1ns 1ns 30ns 60ns

vin1 a 0 pulse 0 1.8 0ns 0ns 0ns 10ns 20ns
vin2 b 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns
vin3 a_bar 0 pulse 1.8 0 0ns 0ns 0ns 10ns 20ns
vin4 b_bar 0 pulse 1.8 0 0ns 0ns 0ns 15ns 30ns

*vin1 a 0 pulse(0 1.8 0ns 0.5ns 0.5ns 5ns 10ns)  
*vin2 b 0 pulse(0 1.8 0ns 1ns 1ns 10ns 20ns)    
*vin3 a_bar 0 pulse(1.8 0 0ns 0.5ns 0.5ns 5ns 10ns)   
*vin4 b_bar 0 pulse(1.8 0 0ns 1ns 1ns 10ns 20ns)   

M1 a b s vdd CMOSP W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P} 

M2 a b_bar s gnd CMOSN W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M3 s a b_bar gnd CMOSN W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M4 s a b vdd CMOSP W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P} 


.tran 0.1n 100n

.control
set hcopypscolor = 1 *White background for saving plots
set color1=black 
set color0=white 


run
plot 4+V(a) 2+V(b) V(s)
*plot V(Q) V(D) V(clk)

.endc