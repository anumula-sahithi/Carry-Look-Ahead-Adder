
.include TSMC_180nm.txt
.include XOR.subckt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd	vdd	gnd	'SUPPLY'
.param fac={10}
.param width_P={fac*LAMBDA*2}
.param width_N={fac*LAMBDA}

vin1 a1 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin2 b1 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns

vin3 a2 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin4 b2 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns

vin5 a3 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin6 b3 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns

vin7 a4 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin8 b4 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns


Xxor_gate a1 b1 p1 vdd gnd XOR
Xxor_gate1 a2 b2 p2 vdd gnd XOR
Xxor_gate2 a3 b3 p3 vdd gnd XOR
Xxor_gate3 a4 b4 p4 vdd gnd XOR


.tran 0.1n 100n

.control
set hcopypscolor = 1 *White background for saving plots
set color1=black 

set color0=white 


run
plot 4+V(a1) 2+V(b1) V(p1)
plot 4+V(a2) 2+V(b2) V(p2)
plot 4+V(a3) 2+V(b3) V(p3)
plot 4+V(a4) 2+V(b4) V(p4)



.endc


