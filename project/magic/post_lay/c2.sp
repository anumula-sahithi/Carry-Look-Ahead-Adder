sahithi anumula 2023112002
.include TSMC_180nm.txt
.param SUPPLY=1.8
.optional scale = 0.09u


.global gnd vdd

Vdd vdd gnd 'SUPPLY'
vin_a1 g1 0 pulse 0 1.8 0ns 0ns 0ns 7ns 14ns
vin_a2 g2 0 pulse 0 1.8 0ns 0ns 0ns 8ns 16ns
vin_a3 p1 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns
vin_a4 p2 0 pulse 0 1.8 0ns 0ns 0ns 20ns 52ns
vin_b1 p3 0 pulse 1.8 0 0ns 0ns 0ns 3ns 13ns
vin_b2 g3 0 pulse 1.8 0 0ns 0ns 0ns 4ns 20ns

V_c0 c0 0 PULSE(0 1.8 0n 0n 0n 10n 20n)


M1000 c2 c2_bar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=325 ps=170
M1001 c2 c2_bar vdd inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=850 ps=380
M1002 b g1 a w_n49_n15# CMOSP w=60 l=2
+  ad=1082 pd=488 as=1152 ps=508
M1003 c2_bar g2 gnd Gnd CMOSN w=10 l=2
+  ad=200 pd=100 as=0 ps=0
** SOURCE/DRAIN TIED
M1004 b p2 b w_n49_n15# CMOSP w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1005 d g1 gnd Gnd CMOSN w=15 l=2
+  ad=375 pd=180 as=0 ps=0
M1006 c2_bar p2 d Gnd CMOSN w=30 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 vdd p1 a w_n49_n15# CMOSP w=60 l=2
+  ad=0 pd=0 as=0 ps=0
** SOURCE/DRAIN TIED
M1008 a p1 a w_n49_n15# CMOSP w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 e C0 gnd Gnd CMOSN w=30 l=2
+  ad=300 pd=140 as=0 ps=0
M1010 d p1 e Gnd CMOSN w=30 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 vdd p2 b w_n49_n15# CMOSP w=30 l=2
+  ad=0 pd=0 as=0 ps=0
M1012 c2_bar g2 b w_n49_n15# CMOSP w=60 l=2
+  ad=404 pd=182 as=0 ps=0
M1013 a C0 vdd w_n49_n15# CMOSP w=60 l=2
+  ad=0 pd=0 as=0 ps=0
C0 w_n49_n15# g1 0.22fF
C1 g1 p2 0.02fF
C2 c2_bar gnd 0.16fF
C3 c2_bar b 0.72fF
C4 p1 a 0.08fF
C5 w_n49_n15# p2 0.37fF
C6 inv_0/w_0_n17# vdd 0.08fF
C7 vdd w_n49_n15# 0.31fF
C8 c2 gnd 0.10fF
C9 a b 0.73fF
C10 d g1 0.08fF
C11 d e 0.31fF
C12 p1 g1 0.03fF
C13 c2_bar g2 0.08fF
C14 w_n49_n15# p1 0.20fF
C15 gnd e 0.42fF
C16 c2_bar c2 0.05fF
C17 w_n49_n15# b 0.32fF
C18 b p2 0.08fF
C19 vdd b 0.31fF
C20 d gnd 0.15fF
C21 inv_0/w_0_n17# c2_bar 0.09fF
C22 c2_bar w_n49_n15# 0.14fF
C23 w_n49_n15# C0 0.22fF
C24 w_n49_n15# g2 0.22fF
C25 p2 g2 0.03fF
C26 inv_0/w_0_n17# c2 0.06fF
C27 w_n49_n15# a 0.31fF
C28 vdd c2 0.23fF
C29 vdd a 1.26fF
C30 c2_bar d 0.38fF
C31 d Gnd 0.09fF
C32 e Gnd 0.19fF
C33 g2 Gnd 0.60fF
C34 p2 Gnd 0.30fF
C35 g1 Gnd 0.57fF
C36 p1 Gnd 0.27fF
C37 C0 Gnd 0.53fF
C38 w_n49_n15# Gnd 0.71fF
C39 gnd Gnd 1.83fF
C40 c2 Gnd 0.12fF
C41 vdd Gnd 1.02fF
C42 c2_bar Gnd 0.26fF
C43 inv_0/w_0_n17# Gnd 1.00fF

.tran  0.1n 100n

.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run

plot  v(c0) 2+v(p1) 4+V(p2) 6+(g1) 8+V(g2) 10+V(c2) 



.endc