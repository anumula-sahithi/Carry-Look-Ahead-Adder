sahithi anumula 2023112002

.include TSMC_180nm.txt
.param SUPPLY=1.8
.optional scale = 0.09u


.global gnd vdd

Vdd vdd gnd 'SUPPLY'
vin_a1 A 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin_a2 B 0 pulse 0 1.8 0ns 0ns 0ns 8ns 16ns
M1000 b_bar b gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1001 b_bar b vdd inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=100 ps=50
M1002 a b_bar s Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=104 ps=62
M1003 s a b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 a b s w_43_n26# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1005 s a b w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
C0 w_41_n84# a 0.12fF
C1 b s 0.21fF
C2 b w_41_n84# 0.08fF
C3 b_bar gnd 0.10fF
C4 b b_bar 0.05fF
C5 inverterl_0/w_0_n17# b 0.09fF
C6 w_41_n84# s 0.08fF
C7 w_43_n26# a 0.05fF
C8 b_bar s 1.06fF
C9 b w_43_n26# 0.10fF
C10 inverterl_0/w_0_n17# b_bar 0.06fF
C11 w_43_n26# s 0.04fF
C12 b a 0.07fF
C13 b gnd 0.05fF
C14 vdd b_bar 0.23fF
C15 inverterl_0/w_0_n17# vdd 0.08fF
C16 s a 1.45fF
C17 a Gnd 1.49fF
C18 s Gnd 0.86fF
C19 w_41_n84# Gnd 1.49fF
C20 w_43_n26# Gnd 1.34fF
C21 gnd Gnd 0.22fF
C22 b_bar Gnd 0.79fF
C23 vdd Gnd 0.25fF
C24 b Gnd 1.19fF
C25 inverterl_0/w_0_n17# Gnd 1.00fF

.tran 0.1n 100n 

.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run
plot v(b) 2+v(a) 4+v(s)
.endc

.end