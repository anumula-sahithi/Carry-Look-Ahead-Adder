
.include TSMC_180nm.txt
.include AND.subckt
.include XOR.subckt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd	vdd	gnd	'SUPPLY'
.param fac={10}
.param width_P={fac*LAMBDA*2}
.param width_N={fac*LAMBDA}

vin1 a1 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vy1 y1 gnd pulse 1.8 0 0ns 10ps 10ps 3ns 6ns
vin2 b1 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns

vin3 a2 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin4 b2 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns

vin5 a3 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin6 b3 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns

vin7 a4 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin8 b4 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns


Xand_gate a1 b1 g1 vdd gnd AND
Xand_gate1 a2 b2 g2 vdd gnd AND
Xand_gate2 a3 b3 g3 vdd gnd AND
Xand_gate3 a4 b4 g4 vdd gnd AND

Xxor_gate a1 b1 p1 vdd gnd XOR
Xxor_gate1 a2 b2 p2 vdd gnd XOR
Xxor_gate2 a3 b3 p3 vdd gnd XOR
Xxor_gate3 a4 b4 p4 vdd gnd XOR


.tran  0.1n 100n

.control
set hcopypscolor = 1 *White background for saving plots
set color1=black
set color0=white


run

plot v(b1) 2+v(a1) 4+v(p1) 6+V(g1)
plot v(b2) 2+v(a2) 4+v(p2) 6+V(g2)
plot v(b3) 2+v(a3) 4+v(p3) 6+V(g3)
plot v(b4) 2+v(a4) 4+v(p4) 6+V(g4)

.endc