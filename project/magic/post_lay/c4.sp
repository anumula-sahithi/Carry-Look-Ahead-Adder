2023112002 sahithi anumula

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
vin_b3 p4 0 pulse 1.8 0 0ns 0ns 0ns 8ns 20ns
vin_b4 g4 0 pulse 1.8 0 0ns 0ns 0ns 9ns 20ns

V_c0 c0 0 PULSE(0 1.8 0n 0n 0n 10n 20n)

M1000 c4 c4bar GND Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1001 c4 c4bar vdd inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=100 ps=50
M1002 vdd p2 a_n42_n27# w_n108_n41# CMOSP w=50 l=2
+  ad=1540 pd=666 as=1250 ps=530
M1003 vdd p3 a_7_n27# w_n108_n41# CMOSP w=33 l=2
+  ad=0 pd=0 as=1165 ps=496
M1004 a_n94_n27# c0 vdd w_n108_n41# CMOSP w=100 l=2
+  ad=1500 pd=630 as=0 ps=0
M1005 a_n42_n27# g1 a_n94_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 a_7_n27# g2 a_n42_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 vdd p1 a_n94_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 gnd g1 a_n67_n164# Gnd CMOSN w=25 l=2
+  ad=570 pd=278 as=625 ps=280
M1009 a_30_n129# p3 a_n14_n149# Gnd CMOSN w=50 l=2
+  ad=565 pd=256 as=580 ps=262
M1010 c4bar p4 a_30_n129# Gnd CMOSN w=50 l=2
+  ad=300 pd=140 as=0 ps=0
M1011 gnd g2 a_n14_n149# Gnd CMOSN w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1012 a_n94_n174# c0 gnd Gnd CMOSN w=50 l=2
+  ad=500 pd=220 as=0 ps=0
M1013 a_n67_n164# p1 a_n94_n174# Gnd CMOSN w=50 l=2
+  ad=0 pd=0 as=0 ps=0
M1014 a_51_n27# g3 a_7_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=1125 pd=480 as=0 ps=0
M1015 gnd g3 a_30_n129# Gnd CMOSN w=13 l=2
+  ad=0 pd=0 as=0 ps=0
M1016 a_n14_n149# p2 a_n67_n164# Gnd CMOSN w=50 l=2
+  ad=0 pd=0 as=0 ps=0
M1017 c4bar g4 a_51_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=500 pd=210 as=0 ps=0
M1018 vdd p4 a_51_n27# w_n108_n41# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1019 gnd g4 c4bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
C0 p1 g1 0.90fF
C1 g4 p3 0.09fF
C2 g3 p2 0.09fF
C3 g3 p4 2.80fF
C4 g4 g3 0.09fF
C5 g4 c4bar 0.21fF
C6 w_n108_n41# a_n42_n27# 0.41fF
C7 w_n108_n41# g2 0.11fF
C8 c4 c4bar 0.05fF
C9 a_51_n27# a_7_n27# 1.03fF
C10 p1 g2 0.09fF
C11 inv_0/w_0_n17# c4bar 0.09fF
C12 a_30_n129# gnd 0.16fF
C13 GND c4bar 0.05fF
C14 vdd a_n42_n27# 0.68fF
C15 gnd a_n14_n149# 0.16fF
C16 a_n67_n164# a_n14_n149# 0.52fF
C17 p2 p4 0.09fF
C18 gnd c0 0.04fF
C19 c0 g1 0.09fF
C20 w_n108_n41# p1 0.11fF
C21 g4 p2 0.09fF
C22 g1 p3 0.09fF
C23 a_51_n27# c4bar 1.03fF
C24 g4 p4 2.34fF
C25 a_n42_n27# a_7_n27# 1.03fF
C26 vdd w_n108_n41# 0.64fF
C27 g2 a_n14_n149# 0.09fF
C28 g3 g1 0.09fF
C29 gnd c4bar 0.13fF
C30 c4 vdd 0.23fF
C31 c0 g2 0.09fF
C32 vdd inv_0/w_0_n17# 0.08fF
C33 c4 inv_0/w_0_n17# 0.06fF
C34 a_n42_n27# a_n94_n27# 1.03fF
C35 g2 p3 2.19fF
C36 c4 GND 0.10fF
C37 w_n108_n41# a_7_n27# 0.38fF
C38 g3 g2 0.09fF
C39 a_51_n27# p4 0.09fF
C40 w_n108_n41# c0 0.11fF
C41 p1 c0 0.52fF
C42 vdd a_7_n27# 0.48fF
C43 w_n108_n41# p3 0.50fF
C44 w_n108_n41# a_n94_n27# 0.49fF
C45 g1 p2 1.16fF
C46 g1 p4 0.09fF
C47 p1 p3 0.09fF
C48 p1 a_n94_n27# 0.06fF
C49 g4 g1 0.09fF
C50 w_n108_n41# g3 0.11fF
C51 w_n108_n41# c4bar 0.15fF
C52 p1 g3 0.09fF
C53 vdd a_n94_n27# 2.24fF
C54 a_30_n129# a_n14_n149# 0.52fF
C55 a_n42_n27# p2 0.08fF
C56 p2 g2 1.90fF
C57 p4 g2 0.09fF
C58 vdd c4bar 0.02fF
C59 g4 g2 0.09fF
C60 a_7_n27# p3 0.08fF
C61 a_30_n129# g3 0.09fF
C62 a_n14_n149# p3 0.04fF
C63 a_30_n129# c4bar 0.52fF
C64 gnd a_n94_n174# 0.52fF
C65 w_n108_n41# p2 0.40fF
C66 c0 p3 0.09fF
C67 w_n108_n41# p4 0.55fF
C68 a_n94_n174# a_n67_n164# 0.52fF
C69 p1 p2 0.09fF
C70 p1 p4 0.09fF
C71 g4 w_n108_n41# 0.11fF
C72 c0 g3 0.09fF
C73 g4 p1 0.09fF
C74 gnd a_n67_n164# 0.28fF
C75 g1 a_n67_n164# 0.08fF
C76 g3 p3 2.51fF
C77 a_30_n129# p4 0.03fF
C78 g1 g2 0.09fF
C79 w_n108_n41# a_51_n27# 0.37fF
C80 c0 p2 0.09fF
C81 p1 a_n94_n174# 0.03fF
C82 c0 p4 0.09fF
C83 p2 p3 0.09fF
C84 g4 c0 0.09fF
C85 w_n108_n41# g1 0.11fF
C86 p4 p3 0.09fF
C87 vdd a_51_n27# 0.38fF
C88 a_30_n129# Gnd 0.24fF
C89 a_51_n27# Gnd 0.00fF
C90 a_n14_n149# Gnd 0.26fF
C91 a_7_n27# Gnd 0.00fF
C92 a_n67_n164# Gnd 0.29fF
C93 a_n94_n174# Gnd 0.16fF
C94 gnd Gnd 2.45fF
C95 a_n42_n27# Gnd 0.00fF
C96 a_n94_n27# Gnd 0.00fF
C97 vdd Gnd 1.21fF
C98 g4 Gnd 1.00fF
C99 p4 Gnd 0.95fF
C100 g3 Gnd 1.02fF
C101 p3 Gnd 0.90fF
C102 g2 Gnd 1.01fF
C103 p2 Gnd 0.86fF
C104 g1 Gnd 0.97fF
C105 p1 Gnd 0.77fF
C106 c0 Gnd 0.77fF
C107 w_n108_n41# Gnd 26.49fF
C108 GND Gnd 0.12fF
C109 c4 Gnd 0.14fF
C110 vdd Gnd 0.08fF
C111 c4bar Gnd 0.69fF
C112 inv_0/w_0_n17# Gnd 1.00fF

.tran  0.1n 100n

.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run

plot  v(c0) 2+v(p1) 4+V(p2) 6+(p3) 8+V(p4) 10+V(g1) 12+v(g2) 14+V(g3) 16+v(g4) 18+V(C4)



.endc