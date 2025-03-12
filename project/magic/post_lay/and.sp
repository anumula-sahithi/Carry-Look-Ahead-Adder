2023112002 sahithi anumula

.include TSMC_180nm.txt
.param SUPPLY=1.8
.optional scale = 0.09u


.global gnd vdd

Vdd vdd gnd 'SUPPLY'


vin1 a 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin2 b 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns

M1000 b_bar b gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1001 b_bar b vdd inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=100 ps=50
M1002 c b a Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1003 c b_bar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1004 c b_bar a w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=100 ps=50
C0 b_bar gnd 0.04fF
C1 c w_72_39# 0.06fF
C2 c a 0.64fF
C3 b_bar b 0.71fF
C4 b_bar w_72_39# 0.11fF
C5 vdd b_bar 0.23fF
C6 b_bar inv_0/w_0_n17# 0.06fF
C7 b a 0.03fF
C8 c gnd 0.10fF
C9 inv_0/w_0_n17# b 0.09fF
C10 b_bar gnd 0.10fF
C11 w_72_39# a 0.06fF
C12 gnd b 0.11fF
C13 vdd inv_0/w_0_n17# 0.08fF
C14 gnd Gnd 0.09fF
C15 c Gnd 0.59fF
C16 a Gnd 0.15fF
C17 gnd Gnd 0.12fF
C18 b_bar Gnd 1.94fF
C19 vdd Gnd 0.08fF
C20 b Gnd 0.97fF
C21 inv_0/w_0_n17# Gnd 1.00fF


.tran 0.1n 200n 

.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run
plot v(b) 2+v(a) 4+v(c)
.endc

.end