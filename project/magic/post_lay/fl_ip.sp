2023112002 sahithi anumula

.include TSMC_180nm.txt
.param SUPPLY=1.8
.optional scale = 0.09u


.global gnd vdd

Vdd vdd gnd 'SUPPLY'

Vclk clk 0 pulse(0 1.8 0 0 0 15n 23n)
Vd layff_1/d gnd pulse 0 1.8 0ns 0ns 0ns 7ns 14ns
Vclk_1 clk_1 0 pulse(0 1.8 0 0 0 15n 23n)
Vclk_2 clk_2 0 pulse(0 1.8 0 0 0 15n 23n)
Vclk_3 clk_3 0 pulse(0 1.8 0 0 0 15n 23n)

M1000 layff_3/q layff_3/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=1000 ps=600
M1001 layff_3/q layff_3/qbar vdd layff_3/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=2000 ps=1000
M1002 layff_3/a_1_n56# clk layff_3/a_1_n10# layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1003 layff_3/a_1_n56# layff_3/d gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1004 vdd layff_3/a_34_n56# layff_3/qbar layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1005 gnd layff_3/a_34_n56# layff_3/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1006 layff_3/a_34_n56# layff_3/a_1_n56# layff_3/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1007 layff_3/a_107_n56# clk layff_3/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1008 gnd clk layff_3/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 layff_3/a_1_n10# layff_3/d vdd layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 vdd clk layff_3/a_34_n56# layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1011 layff_4/q layff_4/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1012 layff_4/q layff_4/qbar vdd layff_4/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1013 layff_4/a_1_n56# clk layff_4/a_1_n10# layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1014 layff_4/a_1_n56# layff_4/d gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1015 vdd layff_4/a_34_n56# layff_4/qbar layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1016 gnd layff_4/a_34_n56# layff_4/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1017 layff_4/a_34_n56# layff_4/a_1_n56# layff_4/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1018 layff_4/a_107_n56# clk layff_4/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1019 gnd clk layff_4/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1020 layff_4/a_1_n10# layff_4/d vdd layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1021 vdd clk layff_4/a_34_n56# layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1022 layff_0/q layff_0/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1023 layff_0/q layff_0/qbar vdd layff_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1024 layff_0/a_1_n56# clk layff_0/a_1_n10# layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1025 layff_0/a_1_n56# layff_0/d gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1026 vdd layff_0/a_34_n56# layff_0/qbar layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1027 gnd layff_0/a_34_n56# layff_0/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1028 layff_0/a_34_n56# layff_0/a_1_n56# layff_0/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1029 layff_0/a_107_n56# clk layff_0/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1030 gnd clk layff_0/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1031 layff_0/a_1_n10# layff_0/d vdd layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1032 vdd clk layff_0/a_34_n56# layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1033 layff_1/q layff_1/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1034 layff_1/q layff_1/qbar vdd layff_1/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1035 layff_1/a_1_n56# clk layff_1/a_1_n10# layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1036 layff_1/a_1_n56# layff_1/d gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1037 vdd layff_1/a_34_n56# layff_1/qbar layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1038 gnd layff_1/a_34_n56# layff_1/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1039 layff_1/a_34_n56# layff_1/a_1_n56# layff_1/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1040 layff_1/a_107_n56# clk layff_1/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1041 gnd clk layff_1/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1042 layff_1/a_1_n10# layff_1/d vdd layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1043 vdd clk layff_1/a_34_n56# layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1044 layff_2/q layff_2/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1045 layff_2/q layff_2/qbar vdd layff_2/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1046 layff_2/a_1_n56# clk layff_2/a_1_n10# layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1047 layff_2/a_1_n56# layff_2/d gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1048 vdd layff_2/a_34_n56# layff_2/qbar layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1049 gnd layff_2/a_34_n56# layff_2/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1050 layff_2/a_34_n56# layff_2/a_1_n56# layff_2/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1051 layff_2/a_107_n56# clk layff_2/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1052 gnd clk layff_2/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1053 layff_2/a_1_n10# layff_2/d vdd layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1054 vdd clk layff_2/a_34_n56# layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
C0 layff_3/inv_0/w_0_n17# layff_3/q 0.06fF
C1 vdd layff_4/a_34_n56# 0.21fF
C2 clk layff_2/a_1_n56# 0.27fF
C3 gnd layff_2/a_27_n56# 0.46fF
C4 gnd layff_1/q 0.20fF
C5 layff_4/inv_0/w_0_n17# layff_4/qbar 0.09fF
C6 vdd layff_4/w_n17_n22# 0.37fF
C7 gnd layff_2/a_1_n56# 0.10fF
C8 clk layff_2/a_34_n56# 0.57fF
C9 layff_0/q layff_0/qbar 0.05fF
C10 layff_2/inv_0/w_0_n17# layff_2/qbar 0.09fF
C11 clk layff_0/d 0.08fF
C12 clk layff_2/w_n17_n22# 0.43fF
C13 vdd layff_1/qbar 0.21fF
C14 layff_0/q layff_0/inv_0/w_0_n17# 0.06fF
C15 layff_4/a_1_n56# layff_4/a_27_n56# 0.04fF
C16 gnd layff_0/d 0.05fF
C17 layff_2/a_1_n56# layff_2/a_27_n56# 0.04fF
C18 layff_3/qbar clk 0.13fF
C19 vdd layff_1/inv_0/w_0_n17# 0.08fF
C20 layff_4/a_34_n56# layff_4/a_27_n56# 0.17fF
C21 layff_0/a_1_n10# layff_0/a_1_n56# 0.21fF
C22 layff_2/a_34_n56# layff_2/a_27_n56# 0.17fF
C23 layff_3/qbar gnd 0.05fF
C24 vdd layff_0/a_1_n10# 0.21fF
C25 gnd layff_4/a_107_n56# 0.10fF
C26 layff_4/a_34_n56# layff_4/a_1_n56# 0.11fF
C27 layff_3/d layff_3/a_1_n56# 0.05fF
C28 layff_3/a_34_n56# vdd 0.21fF
C29 clk layff_1/a_1_n56# 0.27fF
C30 gnd layff_1/a_27_n56# 0.46fF
C31 layff_4/qbar layff_4/a_107_n56# 0.16fF
C32 layff_2/a_34_n56# layff_2/a_1_n56# 0.11fF
C33 gnd layff_0/q 0.10fF
C34 layff_4/w_n17_n22# layff_4/a_1_n56# 0.06fF
C35 layff_1/d layff_1/a_1_n56# 0.05fF
C36 layff_2/qbar layff_2/a_107_n56# 0.16fF
C37 layff_3/w_n17_n22# vdd 0.37fF
C38 gnd layff_1/a_1_n56# 0.10fF
C39 clk layff_1/a_34_n56# 0.57fF
C40 layff_0/w_n17_n22# layff_0/a_1_n10# 0.12fF
C41 layff_2/w_n17_n22# layff_2/a_1_n56# 0.06fF
C42 layff_4/d clk 0.08fF
C43 layff_4/w_n17_n22# layff_4/a_34_n56# 0.20fF
C44 layff_3/w_n17_n22# layff_3/d 0.13fF
C45 clk layff_1/w_n17_n22# 0.43fF
C46 vdd layff_0/qbar 0.21fF
C47 layff_2/w_n17_n22# layff_2/a_34_n56# 0.20fF
C48 gnd layff_4/d 0.05fF
C49 layff_1/w_n17_n22# layff_1/d 0.13fF
C50 layff_0/qbar layff_0/a_34_n56# 0.15fF
C51 vdd layff_0/inv_0/w_0_n17# 0.08fF
C52 vdd layff_2/q 0.23fF
C53 layff_0/qbar layff_0/w_n17_n22# 0.06fF
C54 vdd layff_4/a_1_n10# 0.21fF
C55 layff_3/a_107_n56# gnd 0.10fF
C56 clk layff_0/a_1_n56# 0.27fF
C57 gnd layff_0/a_27_n56# 0.46fF
C58 layff_4/q gnd 0.20fF
C59 vdd clk 1.73fF
C60 gnd layff_0/a_1_n56# 0.10fF
C61 clk layff_0/a_34_n56# 0.57fF
C62 layff_4/q layff_4/qbar 0.05fF
C63 layff_1/inv_0/w_0_n17# layff_1/qbar 0.09fF
C64 layff_3/d clk 0.08fF
C65 layff_2/q layff_2/qbar 0.05fF
C66 clk layff_0/w_n17_n22# 0.43fF
C67 vdd layff_4/qbar 0.21fF
C68 layff_4/q layff_4/inv_0/w_0_n17# 0.06fF
C69 layff_3/a_1_n56# layff_3/a_27_n56# 0.04fF
C70 layff_3/d gnd 0.05fF
C71 layff_2/q layff_2/inv_0/w_0_n17# 0.06fF
C72 layff_1/a_1_n56# layff_1/a_27_n56# 0.04fF
C73 vdd layff_4/inv_0/w_0_n17# 0.08fF
C74 layff_3/a_34_n56# layff_3/a_27_n56# 0.17fF
C75 clk layff_2/qbar 0.13fF
C76 layff_3/q gnd 0.20fF
C77 vdd layff_1/q 0.23fF
C78 layff_4/a_1_n10# layff_4/a_1_n56# 0.21fF
C79 layff_1/a_34_n56# layff_1/a_27_n56# 0.17fF
C80 vdd layff_3/a_1_n10# 0.21fF
C81 layff_3/a_34_n56# layff_3/a_1_n56# 0.11fF
C82 gnd layff_2/qbar 0.05fF
C83 layff_2/a_1_n10# layff_2/a_1_n56# 0.21fF
C84 clk layff_4/a_1_n56# 0.27fF
C85 gnd layff_4/a_27_n56# 0.46fF
C86 layff_1/a_34_n56# layff_1/a_1_n56# 0.11fF
C87 layff_3/qbar layff_3/a_107_n56# 0.16fF
C88 layff_3/w_n17_n22# layff_3/a_1_n56# 0.06fF
C89 vdd layff_2/a_34_n56# 0.21fF
C90 layff_0/d layff_0/a_1_n56# 0.05fF
C91 layff_1/qbar layff_1/a_107_n56# 0.16fF
C92 gnd layff_4/a_1_n56# 0.10fF
C93 clk layff_4/a_34_n56# 0.57fF
C94 layff_4/w_n17_n22# layff_4/a_1_n10# 0.12fF
C95 layff_1/w_n17_n22# layff_1/a_1_n56# 0.06fF
C96 layff_3/w_n17_n22# layff_3/a_34_n56# 0.20fF
C97 vdd layff_2/w_n17_n22# 0.37fF
C98 layff_2/w_n17_n22# layff_2/a_1_n10# 0.12fF
C99 layff_4/w_n17_n22# clk 0.43fF
C100 layff_1/w_n17_n22# layff_1/a_34_n56# 0.20fF
C101 layff_3/qbar vdd 0.21fF
C102 layff_0/w_n17_n22# layff_0/d 0.13fF
C103 layff_4/qbar layff_4/a_34_n56# 0.15fF
C104 clk layff_1/qbar 0.13fF
C105 layff_2/qbar layff_2/a_34_n56# 0.15fF
C106 vdd layff_0/q 0.23fF
C107 layff_4/qbar layff_4/w_n17_n22# 0.06fF
C108 gnd layff_1/qbar 0.05fF
C109 layff_2/qbar layff_2/w_n17_n22# 0.06fF
C110 layff_3/qbar layff_3/q 0.05fF
C111 layff_3/a_1_n56# clk 0.27fF
C112 layff_3/a_27_n56# gnd 0.46fF
C113 gnd layff_2/a_107_n56# 0.10fF
C114 vdd layff_1/a_34_n56# 0.21fF
C115 layff_3/inv_0/w_0_n17# layff_3/qbar 0.09fF
C116 layff_3/a_1_n56# gnd 0.10fF
C117 layff_3/a_34_n56# clk 0.57fF
C118 layff_0/inv_0/w_0_n17# layff_0/qbar 0.09fF
C119 vdd layff_1/w_n17_n22# 0.37fF
C120 layff_1/q layff_1/qbar 0.05fF
C121 layff_3/w_n17_n22# clk 0.43fF
C122 clk layff_2/d 0.08fF
C123 layff_1/q layff_1/inv_0/w_0_n17# 0.06fF
C124 layff_0/a_1_n56# layff_0/a_27_n56# 0.04fF
C125 gnd layff_2/d 0.05fF
C126 clk layff_0/qbar 0.13fF
C127 vdd layff_4/q 0.23fF
C128 layff_3/a_1_n10# layff_3/a_1_n56# 0.21fF
C129 layff_0/a_34_n56# layff_0/a_27_n56# 0.17fF
C130 gnd layff_0/qbar 0.05fF
C131 layff_1/a_1_n10# layff_1/a_1_n56# 0.21fF
C132 vdd layff_2/a_1_n10# 0.21fF
C133 gnd layff_1/a_107_n56# 0.10fF
C134 layff_0/a_34_n56# layff_0/a_1_n56# 0.11fF
C135 vdd layff_0/a_34_n56# 0.21fF
C136 layff_4/d layff_4/a_1_n56# 0.05fF
C137 layff_0/qbar layff_0/a_107_n56# 0.16fF
C138 layff_3/w_n17_n22# layff_3/a_1_n10# 0.12fF
C139 gnd layff_2/q 0.20fF
C140 layff_0/w_n17_n22# layff_0/a_1_n56# 0.06fF
C141 layff_2/d layff_2/a_1_n56# 0.05fF
C142 vdd layff_0/w_n17_n22# 0.37fF
C143 layff_1/w_n17_n22# layff_1/a_1_n10# 0.12fF
C144 layff_3/q vdd 0.23fF
C145 clk layff_1/d 0.08fF
C146 layff_0/w_n17_n22# layff_0/a_34_n56# 0.20fF
C147 layff_4/w_n17_n22# layff_4/d 0.13fF
C148 vdd layff_2/qbar 0.21fF
C149 layff_3/qbar layff_3/a_34_n56# 0.15fF
C150 layff_3/inv_0/w_0_n17# vdd 0.08fF
C151 gnd layff_1/d 0.05fF
C152 layff_4/qbar clk 0.13fF
C153 layff_2/w_n17_n22# layff_2/d 0.13fF
C154 layff_1/qbar layff_1/a_34_n56# 0.15fF
C155 vdd layff_2/inv_0/w_0_n17# 0.08fF
C156 layff_3/qbar layff_3/w_n17_n22# 0.06fF
C157 layff_4/qbar gnd 0.05fF
C158 layff_1/qbar layff_1/w_n17_n22# 0.06fF
C159 vdd layff_1/a_1_n10# 0.21fF
C160 gnd layff_0/a_107_n56# 0.10fF
C161 layff_2/a_107_n56# Gnd 0.09fF
C162 layff_2/a_27_n56# Gnd 0.19fF
C163 layff_2/a_1_n56# Gnd 0.34fF
C164 layff_2/a_1_n10# Gnd 0.00fF
C165 layff_2/a_34_n56# Gnd 0.73fF
C166 layff_2/d Gnd 0.30fF
C167 layff_2/w_n17_n22# Gnd 7.79fF
C168 layff_2/q Gnd 0.23fF
C169 layff_2/qbar Gnd 0.45fF
C170 layff_2/inv_0/w_0_n17# Gnd 1.00fF
C171 layff_1/a_107_n56# Gnd 0.09fF
C172 layff_1/a_27_n56# Gnd 0.19fF
C173 layff_1/a_1_n56# Gnd 0.34fF
C174 layff_1/a_1_n10# Gnd 0.00fF
C175 layff_1/a_34_n56# Gnd 0.73fF
C176 layff_1/d Gnd 0.30fF
C177 layff_1/w_n17_n22# Gnd 7.79fF
C178 layff_1/q Gnd 0.23fF
C179 layff_1/qbar Gnd 0.45fF
C180 layff_1/inv_0/w_0_n17# Gnd 1.00fF
C181 layff_0/a_107_n56# Gnd 0.09fF
C182 layff_0/a_27_n56# Gnd 0.19fF
C183 layff_0/a_1_n56# Gnd 0.34fF
C184 layff_0/a_1_n10# Gnd 0.00fF
C185 layff_0/a_34_n56# Gnd 0.73fF
C186 layff_0/d Gnd 0.30fF
C187 layff_0/w_n17_n22# Gnd 7.79fF
C188 layff_0/q Gnd 0.23fF
C189 layff_0/qbar Gnd 0.45fF
C190 layff_0/inv_0/w_0_n17# Gnd 1.00fF
C191 layff_4/a_107_n56# Gnd 0.09fF
C192 layff_4/a_27_n56# Gnd 0.19fF
C193 layff_4/a_1_n56# Gnd 0.34fF
C194 layff_4/a_1_n10# Gnd 0.00fF
C195 layff_4/a_34_n56# Gnd 0.73fF
C196 clk Gnd 7.18fF
C197 layff_4/d Gnd 0.30fF
C198 layff_4/w_n17_n22# Gnd 7.79fF
C199 layff_4/q Gnd 0.23fF
C200 vdd Gnd 10.93fF
C201 layff_4/qbar Gnd 0.45fF
C202 layff_4/inv_0/w_0_n17# Gnd 1.00fF
C203 layff_3/a_107_n56# Gnd 0.09fF
C204 layff_3/a_27_n56# Gnd 0.19fF
C205 layff_3/a_1_n56# Gnd 0.34fF
C206 layff_3/a_1_n10# Gnd 0.00fF
C207 layff_3/a_34_n56# Gnd 0.73fF
C208 layff_3/d Gnd 0.30fF
C209 layff_3/w_n17_n22# Gnd 7.79fF
C210 layff_3/q Gnd 0.23fF
C211 layff_3/qbar Gnd 0.45fF
C212 layff_3/inv_0/w_0_n17# Gnd 1.00fF

.tran 0.1n 100n

.control
set hcopypscolor = 1 *White background for saving plots
set color1=black 
set color0=white 


run
plot 6+V(layff_1/q) 4+V(layff_1/d) 2+V(clk)
*plot V(Q) V(D) V(clk)

.endc