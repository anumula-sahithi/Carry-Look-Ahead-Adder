sahithi anumula 2023112002
.include TSMC_180nm.txt
.param SUPPLY=1.8
.optional scale = 0.09u

.global gnd vdd

Vdd vdd gnd 'SUPPLY'

vin_a1 c0 0 pulse 0 1.8 0ns 0ns 0ns 7ns 14ns

vin_a2 g1 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns
vin_a3 p1 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns

M1000 c1 c1bar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=200 ps=110
M1001 c1 c1bar vdd inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=500 ps=230
M1002 c1bar p1 a_1_283# Gnd CMOSN w=20 l=2
+  ad=150 pd=80 as=200 ps=100
M1003 a_1_365# c0 vdd w_n13_353# CMOSP w=40 l=2
+  ad=600 pd=270 as=0 ps=0
M1004 c1bar g1 a_1_365# w_n13_353# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1005 a_1_283# c0 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 vdd p1 a_1_365# w_n13_353# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 gnd g1 c1bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
C0 w_n13_353# p1 0.10fF
C1 c1bar gnd 0.20fF
C2 inverterl_0/w_0_n17# c1bar 0.09fF
C3 w_n13_353# vdd 0.20fF
C4 c1bar vdd 0.02fF
C5 p1 a_1_365# 0.08fF
C6 c0 w_n13_353# 0.10fF
C7 a_1_365# vdd 0.96fF
C8 w_n13_353# c1bar 0.08fF
C9 c1 gnd 0.10fF
C10 c1 inverterl_0/w_0_n17# 0.06fF
C11 w_n13_353# a_1_365# 0.24fF
C12 gnd a_1_283# 0.21fF
C13 c1 vdd 0.23fF
C14 p1 g1 0.09fF
C15 c1bar a_1_365# 0.61fF
C16 c1 c1bar 0.05fF
C17 c0 g1 0.09fF
C18 inverterl_0/w_0_n17# vdd 0.08fF
C19 w_n13_353# g1 0.10fF
C20 c1bar a_1_283# 0.21fF
C21 c1bar g1 0.21fF
C22 c0 p1 0.09fF
C23 a_1_283# Gnd 0.08fF
C24 a_1_365# Gnd 0.11fF
C25 g1 Gnd 0.53fF
C26 p1 Gnd 0.47fF
C27 c0 Gnd 0.36fF
C28 w_n13_353# Gnd 4.44fF
C29 gnd Gnd 0.47fF
C30 c1 Gnd 0.05fF
C31 vdd Gnd 0.53fF
C32 c1bar Gnd 0.43fF
C33 inverterl_0/w_0_n17# Gnd 1.00fF

.tran 0.1n 100n

.control
set hcopypscolor = 1 *White background for saving plots
set color1=black 
set color0=white 


run
plot 6+V(g1) 4+V(p1) 2+V(c0) V(c1)
*plot V(Q) V(D) V(clk)

.endc