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





M1000 pg_0/copyxor_0/b_bar b1 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=404 ps=244
M1001 pg_0/copyxor_0/b_bar b1 vdd pg_0/copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=800 ps=400
M1002 a1 pg_0/copyxor_0/b_bar p1 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=104 ps=62
M1003 p1 a1 pg_0/copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 a1 b1 p1 pg_0/copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1005 p1 a1 b1 pg_0/copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1006 pg_0/and_0/b_bar b1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1007 pg_0/and_0/b_bar b1 vdd pg_0/and_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1008 g1 b1 a1 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1009 g1 pg_0/and_0/b_bar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 g1 pg_0/and_0/b_bar a1 pg_0/and_0/w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1011 pg_1/copyxor_0/b_bar b2 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1012 pg_1/copyxor_0/b_bar b2 vdd pg_1/copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1013 a2 pg_1/copyxor_0/b_bar p2 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=104 ps=62
M1014 p2 a2 pg_1/copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 a2 b2 p2 pg_1/copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1016 p2 a2 b2 pg_1/copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1017 pg_1/and_0/b_bar b2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1018 pg_1/and_0/b_bar b2 vdd pg_1/and_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1019 g2 b2 a2 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1020 g2 pg_1/and_0/b_bar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1021 g2 pg_1/and_0/b_bar a2 pg_1/and_0/w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1022 pg_2/copyxor_0/b_bar b3 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1023 pg_2/copyxor_0/b_bar b3 vdd pg_2/copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1024 a3 pg_2/copyxor_0/b_bar p3 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=104 ps=62
M1025 p3 a3 pg_2/copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1026 a3 b3 p3 pg_2/copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1027 p3 a3 b3 pg_2/copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1028 pg_2/and_0/b_bar b3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1029 pg_2/and_0/b_bar b3 vdd pg_2/and_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1030 g3 b3 a3 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1031 g3 pg_2/and_0/b_bar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1032 g3 pg_2/and_0/b_bar a3 pg_2/and_0/w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1033 pg_3/copyxor_0/b_bar b4 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1034 pg_3/copyxor_0/b_bar b4 vdd pg_3/copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1035 a4 pg_3/copyxor_0/b_bar p4 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=104 ps=62
M1036 p4 a4 pg_3/copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1037 a4 b4 p4 pg_3/copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1038 p4 a4 b4 pg_3/copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1039 pg_3/and_0/b_bar b4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1040 pg_3/and_0/b_bar b4 vdd pg_3/and_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1041 g4 b4 a4 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1042 g4 pg_3/and_0/b_bar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1043 g4 pg_3/and_0/b_bar a4 pg_3/and_0/w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
C0 pg_0/and_0/b_bar pg_0/and_0/w_72_39# 0.11fF
C1 pg_2/copyxor_0/b_bar p3 1.06fF
C2 b2 pg_1/and_0/b_bar 0.40fF
C3 b3 pg_2/copyxor_0/inverterl_0/w_0_n17# 0.09fF
C4 b2 pg_1/copyxor_0/inverterl_0/w_0_n17# 0.09fF
C5 b1 pg_0/copyxor_0/w_43_n26# 0.10fF
C6 b3 vdd 0.17fF
C7 pg_0/copyxor_0/inverterl_0/w_0_n17# pg_0/copyxor_0/b_bar 0.06fF
C8 pg_3/copyxor_0/b_bar vdd 0.23fF
C9 pg_1/copyxor_0/w_43_n26# b2 0.10fF
C10 gnd vdd 1.14fF
C11 pg_3/copyxor_0/w_43_n26# p4 0.04fF
C12 vdd pg_3/and_0/b_bar 0.33fF
C13 pg_3/and_0/inv_0/w_0_n17# pg_3/and_0/b_bar 0.06fF
C14 b2 p2 0.21fF
C15 gnd g4 0.10fF
C16 pg_2/copyxor_0/w_43_n26# p3 0.04fF
C17 pg_0/and_0/b_bar gnd 0.24fF
C18 pg_1/and_0/b_bar vdd 0.33fF
C19 pg_2/and_0/inv_0/w_0_n17# pg_2/and_0/b_bar 0.06fF
C20 pg_1/copyxor_0/w_43_n26# p2 0.04fF
C21 pg_1/copyxor_0/inverterl_0/w_0_n17# vdd 0.08fF
C22 g2 gnd 0.10fF
C23 pg_3/and_0/w_72_39# g4 0.06fF
C24 pg_0/copyxor_0/b_bar vdd 0.23fF
C25 pg_3/copyxor_0/b_bar b4 0.05fF
C26 a3 vdd 0.14fF
C27 pg_1/and_0/inv_0/w_0_n17# pg_1/and_0/b_bar 0.06fF
C28 b2 vdd 0.36fF
C29 gnd b4 0.61fF
C30 pg_2/and_0/w_72_39# g3 0.06fF
C31 pg_0/copyxor_0/inverterl_0/w_0_n17# vdd 0.08fF
C32 pg_2/copyxor_0/b_bar b3 0.05fF
C33 b4 pg_3/and_0/b_bar 0.40fF
C34 pg_0/copyxor_0/w_43_n26# p1 0.04fF
C35 b2 pg_1/and_0/inv_0/w_0_n17# 0.09fF
C36 a1 g1 0.64fF
C37 pg_1/and_0/w_72_39# g2 0.06fF
C38 b1 a1 0.28fF
C39 b3 pg_2/and_0/b_bar 0.40fF
C40 pg_2/copyxor_0/b_bar gnd 0.10fF
C41 a1 pg_0/and_0/w_72_39# 0.06fF
C42 pg_1/copyxor_0/b_bar gnd 0.10fF
C43 b1 pg_0/and_0/inv_0/w_0_n17# 0.09fF
C44 pg_2/copyxor_0/inverterl_0/w_0_n17# vdd 0.08fF
C45 pg_2/and_0/b_bar gnd 0.24fF
C46 pg_3/copyxor_0/w_43_n26# b4 0.10fF
C47 gnd a4 0.16fF
C48 vdd pg_3/and_0/inv_0/w_0_n17# 0.08fF
C49 b4 p4 0.21fF
C50 pg_0/and_0/w_72_39# g1 0.06fF
C51 pg_1/copyxor_0/b_bar pg_1/copyxor_0/inverterl_0/w_0_n17# 0.06fF
C52 a4 pg_3/and_0/b_bar 0.07fF
C53 pg_2/copyxor_0/w_43_n26# b3 0.10fF
C54 pg_3/copyxor_0/w_41_n84# p4 0.08fF
C55 b3 p3 0.21fF
C56 a2 gnd 0.27fF
C57 pg_1/and_0/inv_0/w_0_n17# vdd 0.08fF
C58 a4 pg_3/and_0/w_72_39# 0.06fF
C59 b2 pg_1/copyxor_0/w_41_n84# 0.08fF
C60 pg_1/copyxor_0/b_bar b2 0.05fF
C61 pg_0/and_0/b_bar vdd 0.33fF
C62 a3 pg_2/and_0/b_bar 0.07fF
C63 pg_2/copyxor_0/w_41_n84# p3 0.08fF
C64 a3 pg_2/and_0/w_72_39# 0.06fF
C65 pg_3/copyxor_0/b_bar pg_3/copyxor_0/inverterl_0/w_0_n17# 0.06fF
C66 a2 pg_1/and_0/b_bar 0.07fF
C67 a1 gnd 0.18fF
C68 pg_1/copyxor_0/w_41_n84# p2 0.08fF
C69 pg_1/copyxor_0/b_bar p2 1.06fF
C70 b4 vdd 0.17fF
C71 a2 pg_1/and_0/w_72_39# 0.06fF
C72 b4 pg_3/and_0/inv_0/w_0_n17# 0.09fF
C73 pg_3/copyxor_0/w_43_n26# a4 0.05fF
C74 p1 a1 1.45fF
C75 pg_2/copyxor_0/b_bar pg_2/copyxor_0/inverterl_0/w_0_n17# 0.06fF
C76 p4 a4 1.45fF
C77 b2 a2 0.28fF
C78 pg_0/copyxor_0/w_41_n84# a1 0.12fF
C79 b3 pg_2/and_0/inv_0/w_0_n17# 0.09fF
C80 pg_2/copyxor_0/w_43_n26# a3 0.05fF
C81 pg_2/copyxor_0/b_bar vdd 0.23fF
C82 g1 gnd 0.10fF
C83 p3 a3 1.45fF
C84 pg_1/copyxor_0/w_43_n26# a2 0.05fF
C85 b1 gnd 0.50fF
C86 pg_1/copyxor_0/b_bar vdd 0.23fF
C87 pg_2/and_0/b_bar vdd 0.33fF
C88 p2 a2 1.45fF
C89 b1 p1 0.21fF
C90 gnd g3 0.10fF
C91 b1 pg_0/copyxor_0/w_41_n84# 0.08fF
C92 vdd a4 0.14fF
C93 b4 pg_3/copyxor_0/w_41_n84# 0.08fF
C94 b1 pg_0/copyxor_0/b_bar 0.05fF
C95 a2 vdd 0.31fF
C96 a4 g4 0.64fF
C97 pg_0/copyxor_0/inverterl_0/w_0_n17# b1 0.09fF
C98 b3 pg_2/copyxor_0/w_41_n84# 0.08fF
C99 b3 gnd 0.61fF
C100 pg_3/copyxor_0/b_bar gnd 0.10fF
C101 a3 g3 0.64fF
C102 a1 vdd 0.14fF
C103 vdd pg_3/copyxor_0/inverterl_0/w_0_n17# 0.08fF
C104 a2 g2 0.64fF
C105 gnd pg_3/and_0/b_bar 0.24fF
C106 b4 a4 0.28fF
C107 pg_0/and_0/inv_0/w_0_n17# vdd 0.08fF
C108 a1 pg_0/and_0/b_bar 0.07fF
C109 pg_3/copyxor_0/w_41_n84# a4 0.12fF
C110 b3 a3 0.28fF
C111 pg_1/and_0/b_bar gnd 0.24fF
C112 pg_3/and_0/b_bar pg_3/and_0/w_72_39# 0.11fF
C113 pg_0/and_0/inv_0/w_0_n17# pg_0/and_0/b_bar 0.06fF
C114 b1 vdd 0.17fF
C115 pg_2/copyxor_0/w_41_n84# a3 0.12fF
C116 pg_0/copyxor_0/w_41_n84# p1 0.08fF
C117 pg_0/copyxor_0/w_43_n26# a1 0.05fF
C118 pg_0/copyxor_0/b_bar gnd 0.10fF
C119 a3 gnd 0.26fF
C120 pg_2/and_0/b_bar pg_2/and_0/w_72_39# 0.11fF
C121 pg_2/and_0/inv_0/w_0_n17# vdd 0.08fF
C122 pg_3/copyxor_0/b_bar p4 1.06fF
C123 b2 gnd 0.62fF
C124 pg_1/copyxor_0/w_41_n84# a2 0.12fF
C125 b1 pg_0/and_0/b_bar 0.40fF
C126 pg_0/copyxor_0/b_bar p1 1.06fF
C127 b4 pg_3/copyxor_0/inverterl_0/w_0_n17# 0.09fF
C128 pg_1/and_0/b_bar pg_1/and_0/w_72_39# 0.11fF
C129 g4 Gnd 0.29fF
C130 pg_3/and_0/b_bar Gnd 0.41fF
C131 pg_3/and_0/inv_0/w_0_n17# Gnd 1.00fF
C132 a4 Gnd 7.59fF
C133 p4 Gnd 1.03fF
C134 pg_3/copyxor_0/w_41_n84# Gnd 1.49fF
C135 pg_3/copyxor_0/w_43_n26# Gnd 1.34fF
C136 pg_3/copyxor_0/b_bar Gnd 0.79fF
C137 vdd Gnd 6.83fF
C138 b4 Gnd 5.22fF
C139 pg_3/copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF
C140 g3 Gnd 0.27fF
C141 pg_2/and_0/b_bar Gnd 0.41fF
C142 pg_2/and_0/inv_0/w_0_n17# Gnd 1.00fF
C143 a3 Gnd 7.58fF
C144 p3 Gnd 0.98fF
C145 pg_2/copyxor_0/w_41_n84# Gnd 1.49fF
C146 pg_2/copyxor_0/w_43_n26# Gnd 1.34fF
C147 pg_2/copyxor_0/b_bar Gnd 0.79fF
C148 b3 Gnd 5.21fF
C149 pg_2/copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF
C150 g2 Gnd 0.17fF
C151 pg_1/and_0/b_bar Gnd 0.41fF
C152 pg_1/and_0/inv_0/w_0_n17# Gnd 1.00fF
C153 a2 Gnd 7.58fF
C154 p2 Gnd 1.00fF
C155 pg_1/copyxor_0/w_41_n84# Gnd 1.49fF
C156 pg_1/copyxor_0/w_43_n26# Gnd 1.34fF
C157 pg_1/copyxor_0/b_bar Gnd 0.79fF
C158 b2 Gnd 5.21fF
C159 pg_1/copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF
C160 g1 Gnd 0.33fF
C161 pg_0/and_0/b_bar Gnd 0.41fF
C162 pg_0/and_0/inv_0/w_0_n17# Gnd 1.00fF
C163 a1 Gnd 7.59fF
C164 p1 Gnd 1.02fF
C165 pg_0/copyxor_0/w_41_n84# Gnd 1.49fF
C166 pg_0/copyxor_0/w_43_n26# Gnd 1.34fF
C167 pg_0/copyxor_0/b_bar Gnd 0.79fF
C168 b1 Gnd 5.21fF
C169 pg_0/copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF


.tran 0.1n 100n 

.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run
plot v(b1) 2+v(a1) 4+v(p1) 6+V(g1)
plot v(b2) 2+v(a2) 4+v(p2) 6+V(g2)
plot v(b3) 2+v(a3) 4+v(p3) 6+V(g3)
plot v(b4) 2+v(a4) 4+v(p4) 6+V(g4)
.endc

.end