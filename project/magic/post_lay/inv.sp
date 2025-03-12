sahithi anumula 2023112002
.include TSMC_180nm.txt
.param SUPPLY=1.8
.optional scale = 0.09u


.global gnd vdd

Vdd vdd gnd 'SUPPLY'
vin in gnd pulse 0 1.8 0ns 1ns 1ns 10ns 20ns

M1000 out in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1001 out in vdd w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=100 ps=50
C0 vdd w_0_n17# 0.08fF
C1 out w_0_n17# 0.06fF
C2 gnd in 0.05fF
C3 gnd out 0.10fF
C4 in out 0.05fF
C5 in w_0_n17# 0.09fF
C6 vdd out 0.23fF
C7 gnd Gnd 0.12fF
C8 out Gnd 0.07fF
C9 vdd Gnd 0.08fF
C10 in Gnd 0.17fF
C11 w_0_n17# Gnd 1.00fF

.tran 0.1n 200n 

.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run
plot v(out) 2+v(in)
.endc

.end

