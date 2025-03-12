sahithi anumula 2023112002
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd	vdd	gnd	'SUPPLY'
.param fac={10}
.param width_P={fac*LAMBDA*2}
.param width_N={fac*LAMBDA}
.param width_keeper = {0.2 * width_N}


vin1 a 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin2 b 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns
vin3 a_bar 0 pulse 1.8 0 0ns 0ns 0ns 13ns 26ns
vin4 b_bar 0 pulse 1.8 0 0ns 0ns 0ns 15ns 30ns

M1 a b C gnd CMOSN  W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 a b_bar C vdd CMOSP W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P} 

M3 gnd b_bar C gnd CMOSN  W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}



.tran 0.1n 100n

.control
set hcopypscolor = 1 
set color1=black 
set color0=white 


run
plot 4+V(a) 2+V(b) V(c)
*plot V(Q) V(D) V(clk)

.endc
