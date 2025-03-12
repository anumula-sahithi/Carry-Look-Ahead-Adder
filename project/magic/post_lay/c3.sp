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

M1000 C3 n gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1001 C3 n vdd inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=100 ps=50
M1002 k c0 vdd w_n23_n72# CMOSP w=80 l=2
+  ad=1200 pd=510 as=1130 ps=492
M1003 l g1 k w_n23_n72# CMOSP w=80 l=2
+  ad=1000 pd=430 as=0 ps=0
M1004 o p2 p Gnd CMOSN w=40 l=2
+  ad=465 pd=216 as=500 ps=230
M1005 vdd p3 m w_n23_n72# CMOSP w=26 l=2
+  ad=0 pd=0 as=930 ps=402
M1006 vdd p2 l w_n23_n72# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 n g3 gnd Gnd CMOSN w=10 l=2
+  ad=250 pd=120 as=415 ps=206
M1008 o g2 gnd Gnd CMOSN w=13 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 p g1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 vdd p1 k w_n23_n72# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 m g2 l w_n23_n72# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1012 n g3 m w_n23_n72# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1013 p p1 q Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=400 ps=180
M1014 q c0 gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 n p3 o Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
C0 m l 0.90fF
C1 vdd k 1.65fF
C2 w_n23_n72# l 0.48fF
C3 C3 inv_0/w_0_n17# 0.06fF
C4 w_n23_n72# g3 0.24fF
C5 o g2 0.09fF
C6 g1 p 0.08fF
C7 p1 w_n23_n72# 0.24fF
C8 n m 0.92fF
C9 n w_n23_n72# 0.19fF
C10 p2 g2 0.04fF
C11 p gnd 0.78fF
C12 w_n23_n72# g2 0.24fF
C13 w_n23_n72# k 0.49fF
C14 vdd inv_0/w_0_n17# 0.08fF
C15 n gnd 0.10fF
C16 m p3 0.08fF
C17 vdd m 0.27fF
C18 w_n23_n72# p3 0.56fF
C19 vdd w_n23_n72# 0.42fF
C20 c0 w_n23_n72# 0.24fF
C21 n g3 0.09fF
C22 vdd C3 0.23fF
C23 n gnd 0.05fF
C24 k l 0.89fF
C25 q gnd 0.55fF
C26 vdd l 0.41fF
C27 w_n23_n72# p2 0.48fF
C28 p1 k 0.08fF
C29 n inv_0/w_0_n17# 0.09fF
C30 o gnd 0.13fF
C31 w_n23_n72# m 0.55fF
C32 g1 w_n23_n72# 0.24fF
C33 q p 0.54fF
C34 C3 gnd 0.10fF
C35 o p 0.55fF
C36 n C3 0.05fF
C37 n o 0.52fF
C38 l p2 0.08fF
C39 o Gnd 0.38fF
C40 g3 Gnd 0.79fF
C41 p3 Gnd 0.39fF
C42 m Gnd 0.00fF
C43 p Gnd 0.58fF
C44 q Gnd 0.22fF
C45 gnd Gnd 1.61fF
C46 g2 Gnd 0.39fF
C47 p2 Gnd 0.35fF
C48 l Gnd 0.00fF
C49 k Gnd 0.00fF
C50 vdd Gnd 0.61fF
C51 g1 Gnd 0.75fF
C52 p1 Gnd 0.65fF
C53 c0 Gnd 0.24fF
C54 w_n23_n72# Gnd 1.23fF
C55 gnd Gnd 0.12fF
C56 C3 Gnd 0.07fF
C57 vdd Gnd 0.08fF
C58 n Gnd 0.99fF
C59 inv_0/w_0_n17# Gnd 1.00fF

.tran  0.1n 100n

.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run

plot  v(c0) 2+v(p1) 4+V(p2) 6+(p3) 8+V(g1) 10+V(g2) 12+v(g3) 14+V(C3)



.endc