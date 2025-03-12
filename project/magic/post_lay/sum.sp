2023112002 sahithi anumula

.include TSMC_180nm.txt
.param SUPPLY=1.8
.optional scale = 0.09u


.global gnd vdd
Vdd vdd gnd 'SUPPLY'

vin_a1 a1 0 pulse 0 1.8 0ns 0ns 0ns 7ns 14ns

vin_a2 b1 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns
vin_a3 a2 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns
vin_a4 b2 0 pulse 0 1.8 0ns 0ns 0ns 20ns 52ns
vin_b1 a3 0 pulse 1.8 0 0ns 0ns 0ns 3ns 13ns
vin_b2 b3 0 pulse 1.8 0 0ns 0ns 0ns 4ns 20ns
vin_b3 a4 0 pulse 1.8 0 0ns 0ns 0ns 18ns 30ns
vin_b4 b4 0 pulse 1.8 0 0ns 0ns 0ns 9ns 20ns


M1000 copyxor_0/b_bar b1 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=200 ps=120
M1001 copyxor_0/b_bar b1 vdd copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=400 ps=200
M1002 a1 copyxor_0/b_bar s1 Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=104 ps=62
M1003 s1 a1 copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 a1 b1 s1 copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1005 s1 a1 b1 copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1006 copyxor_1/b_bar b2 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1007 copyxor_1/b_bar b2 vdd copyxor_1/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1008 a2 copyxor_1/b_bar s2 Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=104 ps=62
M1009 s2 a2 copyxor_1/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 a2 b2 s2 copyxor_1/w_43_n26# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1011 s2 a2 b2 copyxor_1/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1012 copyxor_2/b_bar b3 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1013 copyxor_2/b_bar b3 vdd copyxor_2/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1014 a3 copyxor_2/b_bar s3 Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=104 ps=62
M1015 s3 a3 copyxor_2/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1016 a3 b3 s3 copyxor_2/w_43_n26# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1017 s3 a3 b3 copyxor_2/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1018 copyxor_3/b_bar b4 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1019 copyxor_3/b_bar b4 vdd copyxor_3/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1020 a4 copyxor_3/b_bar s4 Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=104 ps=62
M1021 s4 a4 copyxor_3/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1022 a4 b4 s4 copyxor_3/w_43_n26# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1023 s4 a4 b4 copyxor_3/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
C0 copyxor_3/w_41_n84# a4 0.12fF
C1 copyxor_0/b_bar copyxor_0/inverterl_0/w_0_n17# 0.06fF
C2 copyxor_1/w_43_n26# b2 0.10fF
C3 copyxor_0/b_bar gnd 0.10fF
C4 b3 copyxor_2/inverterl_0/w_0_n17# 0.09fF
C5 a2 b2 0.07fF
C6 a3 s3 1.45fF
C7 copyxor_0/w_41_n84# a1 0.12fF
C8 s4 b4 0.21fF
C9 b3 s3 0.21fF
C10 vdd copyxor_1/inverterl_0/w_0_n17# 0.08fF
C11 copyxor_1/b_bar vdd 0.23fF
C12 b1 s1 0.21fF
C13 b3 a3 0.07fF
C14 copyxor_1/b_bar copyxor_1/inverterl_0/w_0_n17# 0.06fF
C15 copyxor_3/b_bar vdd 0.23fF
C16 b4 a4 0.07fF
C17 copyxor_0/inverterl_0/w_0_n17# vdd 0.08fF
C18 copyxor_1/w_41_n84# a2 0.12fF
C19 vdd copyxor_3/inverterl_0/w_0_n17# 0.08fF
C20 vdd gnd 0.39fF
C21 s2 b2 0.21fF
C22 copyxor_1/b_bar gnd 0.10fF
C23 copyxor_0/b_bar b1 0.05fF
C24 b3 gnd 0.15fF
C25 s4 a4 1.45fF
C26 copyxor_2/w_41_n84# s3 0.08fF
C27 copyxor_3/b_bar copyxor_3/inverterl_0/w_0_n17# 0.06fF
C28 copyxor_3/b_bar gnd 0.10fF
C29 copyxor_0/w_43_n26# a1 0.05fF
C30 copyxor_2/w_41_n84# a3 0.12fF
C31 copyxor_1/w_41_n84# s2 0.08fF
C32 copyxor_0/w_41_n84# b1 0.08fF
C33 copyxor_2/w_41_n84# b3 0.08fF
C34 copyxor_0/b_bar s1 1.06fF
C35 a2 copyxor_1/w_43_n26# 0.05fF
C36 copyxor_2/b_bar copyxor_2/inverterl_0/w_0_n17# 0.06fF
C37 copyxor_1/b_bar s2 1.06fF
C38 copyxor_0/w_41_n84# s1 0.08fF
C39 b1 a1 0.07fF
C40 copyxor_3/b_bar b4 0.05fF
C41 b1 copyxor_0/inverterl_0/w_0_n17# 0.09fF
C42 copyxor_2/b_bar s3 1.06fF
C43 b4 copyxor_3/inverterl_0/w_0_n17# 0.09fF
C44 copyxor_3/w_43_n26# b4 0.10fF
C45 b4 gnd 0.15fF
C46 b1 gnd 0.15fF
C47 copyxor_1/w_41_n84# b2 0.08fF
C48 copyxor_0/w_43_n26# b1 0.10fF
C49 copyxor_2/b_bar vdd 0.23fF
C50 s2 copyxor_1/w_43_n26# 0.04fF
C51 copyxor_3/w_41_n84# b4 0.08fF
C52 copyxor_3/b_bar s4 1.06fF
C53 copyxor_2/w_43_n26# s3 0.04fF
C54 a2 s2 1.45fF
C55 copyxor_3/w_43_n26# s4 0.04fF
C56 b3 copyxor_2/b_bar 0.05fF
C57 s1 a1 1.45fF
C58 a3 copyxor_2/w_43_n26# 0.05fF
C59 b2 copyxor_1/inverterl_0/w_0_n17# 0.09fF
C60 copyxor_1/b_bar b2 0.05fF
C61 s4 copyxor_3/w_41_n84# 0.08fF
C62 copyxor_0/b_bar vdd 0.23fF
C63 copyxor_2/b_bar gnd 0.10fF
C64 copyxor_0/w_43_n26# s1 0.04fF
C65 copyxor_3/w_43_n26# a4 0.05fF
C66 b3 copyxor_2/w_43_n26# 0.10fF
C67 vdd copyxor_2/inverterl_0/w_0_n17# 0.08fF
C68 b2 gnd 0.15fF
C69 a4 Gnd 1.55fF
C70 s4 Gnd 1.02fF
C71 copyxor_3/w_41_n84# Gnd 1.49fF
C72 copyxor_3/w_43_n26# Gnd 1.34fF
C73 gnd Gnd 2.36fF
C74 copyxor_3/b_bar Gnd 0.79fF
C75 vdd Gnd 3.66fF
C76 b4 Gnd 1.24fF
C77 copyxor_3/inverterl_0/w_0_n17# Gnd 1.00fF
C78 a3 Gnd 1.50fF
C79 s3 Gnd 1.02fF
C80 copyxor_2/w_41_n84# Gnd 1.49fF
C81 copyxor_2/w_43_n26# Gnd 1.34fF
C82 copyxor_2/b_bar Gnd 0.79fF
C83 b3 Gnd 1.18fF
C84 copyxor_2/inverterl_0/w_0_n17# Gnd 1.00fF
C85 a2 Gnd 1.53fF
C86 s2 Gnd 0.97fF
C87 copyxor_1/w_41_n84# Gnd 1.49fF
C88 copyxor_1/w_43_n26# Gnd 1.34fF
C89 copyxor_1/b_bar Gnd 0.79fF
C90 b2 Gnd 1.24fF
C91 copyxor_1/inverterl_0/w_0_n17# Gnd 1.00fF
C92 a1 Gnd 1.53fF
C93 s1 Gnd 1.00fF
C94 copyxor_0/w_41_n84# Gnd 1.49fF
C95 copyxor_0/w_43_n26# Gnd 1.34fF
C96 copyxor_0/b_bar Gnd 0.79fF
C97 b1 Gnd 1.24fF
C98 copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF



.tran 0.1n 100n 

.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run
plot v(b1) 2+v(a1) 4+v(s1) 
plot v(b2) 2+v(a2) 4+v(s2) 
plot v(b3) 2+v(a3) 4+v(s3) 
plot v(b4) 2+v(a4) 4+v(s4) 
.endc

.end