sahithi anumula - 2023112002
.include TSMC_180nm.txt
.param SUPPLY=1.8
.optional scale = 0.09u


.global gnd vdd
Vdd vdd gnd 'SUPPLY'

vin_a1 a_1 0 pulse 0 1.8 0ns 0ns 0ns 7ns 14ns
vin_a2 a_2 0 pulse 0 1.8 0ns 0ns 0ns 8ns 16ns
vin_a3 a_3 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns
vin_a4 a_4 0 pulse 0 1.8 0ns 0ns 0ns 20ns 52ns

* Signal B = 1100
vin_b1 b_1 0 pulse 1.8 0 0ns 0ns 0ns 3ns 13ns
vin_b2 b_2 0 pulse 1.8 0 0ns 0ns 0ns 4ns 23ns
vin_b3 b_3 0 pulse 1.8 0 0ns 0ns 0ns 8ns 23ns
vin_b4 b_4 0 pulse 1.8 0 0ns 0ns 0ns 9ns 23ns

vin_c0 c0 0 pulse(1.8 0 0 0 0 10n 20n)
Vclk clk 0 pulse(0 1.8 0 0 0 10n 20n)


* SPICE3 file created from com.ext - technology: scmos

.option scale=0.09u

M1000 pg_block_0/pg_0/copyxor_0/b_bar b1 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=4814 ps=2748
M1001 pg_block_0/pg_0/copyxor_0/b_bar b1 vdd pg_block_0/pg_0/copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=10620 ps=5068
M1002 a1 pg_block_0/pg_0/copyxor_0/b_bar p1 Gnd CMOSN w=10 l=2
+  ad=150 pd=90 as=104 ps=62
M1003 p1 a1 pg_block_0/pg_0/copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 a1 b1 p1 pg_block_0/pg_0/copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=300 pd=150 as=300 ps=150
M1005 p1 a1 b1 pg_block_0/pg_0/copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1006 pg_block_0/pg_0/and_0/b_bar b1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1007 pg_block_0/pg_0/and_0/b_bar b1 vdd pg_block_0/pg_0/and_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1008 g1 b1 a1 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1009 g1 pg_block_0/pg_0/and_0/b_bar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 g1 pg_block_0/pg_0/and_0/b_bar a1 pg_block_0/pg_0/and_0/w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1011 pg_block_0/pg_1/copyxor_0/b_bar b2 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1012 pg_block_0/pg_1/copyxor_0/b_bar b2 vdd pg_block_0/pg_1/copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1013 a2 pg_block_0/pg_1/copyxor_0/b_bar p2 Gnd CMOSN w=10 l=2
+  ad=150 pd=90 as=154 ps=92
M1014 p2 a2 pg_block_0/pg_1/copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 a2 b2 p2 pg_block_0/pg_1/copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=300 pd=150 as=300 ps=150
M1016 p2 a2 b2 pg_block_0/pg_1/copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1017 pg_block_0/pg_1/and_0/b_bar b2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1018 pg_block_0/pg_1/and_0/b_bar b2 vdd pg_block_0/pg_1/and_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1019 g2 b2 a2 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1020 g2 pg_block_0/pg_1/and_0/b_bar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1021 g2 pg_block_0/pg_1/and_0/b_bar a2 pg_block_0/pg_1/and_0/w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1022 pg_block_0/pg_2/copyxor_0/b_bar b3 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1023 pg_block_0/pg_2/copyxor_0/b_bar b3 vdd pg_block_0/pg_2/copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1024 a3 pg_block_0/pg_2/copyxor_0/b_bar p3 Gnd CMOSN w=10 l=2
+  ad=150 pd=90 as=154 ps=92
M1025 p3 a3 pg_block_0/pg_2/copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1026 a3 b3 p3 pg_block_0/pg_2/copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=300 pd=150 as=325 ps=170
M1027 p3 a3 b3 pg_block_0/pg_2/copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1028 pg_block_0/pg_2/and_0/b_bar b3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1029 pg_block_0/pg_2/and_0/b_bar b3 vdd pg_block_0/pg_2/and_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1030 g3 b3 a3 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1031 g3 pg_block_0/pg_2/and_0/b_bar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1032 g3 pg_block_0/pg_2/and_0/b_bar a3 pg_block_0/pg_2/and_0/w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1033 pg_block_0/pg_3/copyxor_0/b_bar b4 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1034 pg_block_0/pg_3/copyxor_0/b_bar b4 vdd pg_block_0/pg_3/copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1035 a4 pg_block_0/pg_3/copyxor_0/b_bar p4 Gnd CMOSN w=10 l=2
+  ad=150 pd=90 as=154 ps=92
M1036 p4 a4 pg_block_0/pg_3/copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1037 a4 b4 p4 pg_block_0/pg_3/copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=300 pd=150 as=300 ps=150
M1038 p4 a4 b4 pg_block_0/pg_3/copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1039 pg_block_0/pg_3/and_0/b_bar b4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1040 pg_block_0/pg_3/and_0/b_bar b4 vdd pg_block_0/pg_3/and_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1041 g4 b4 a4 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1042 g4 pg_block_0/pg_3/and_0/b_bar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1043 g4 pg_block_0/pg_3/and_0/b_bar a4 pg_block_0/pg_3/and_0/w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1044 sum_block_0/copyxor_0/b_bar p1 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1045 sum_block_0/copyxor_0/b_bar p1 vdd sum_block_0/copyxor_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1046 C0 sum_block_0/copyxor_0/b_bar s_1 Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=104 ps=62
M1047 s_1 C0 sum_block_0/copyxor_0/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1048 C0 p1 s_1 sum_block_0/copyxor_0/w_43_n26# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1049 s_1 C0 p1 sum_block_0/copyxor_0/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1050 sum_block_0/copyxor_1/b_bar c1 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1051 sum_block_0/copyxor_1/b_bar c1 vdd sum_block_0/copyxor_1/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1052 p2 sum_block_0/copyxor_1/b_bar s_2 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=104 ps=62
M1053 s_2 p2 sum_block_0/copyxor_1/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1054 p2 c1 s_2 sum_block_0/copyxor_1/w_43_n26# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1055 s_2 p2 c1 sum_block_0/copyxor_1/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1056 sum_block_0/copyxor_2/b_bar c2 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1057 sum_block_0/copyxor_2/b_bar c2 vdd sum_block_0/copyxor_2/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1058 p3 sum_block_0/copyxor_2/b_bar s_3 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=104 ps=62
M1059 s_3 p3 sum_block_0/copyxor_2/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1060 p3 c2 s_3 sum_block_0/copyxor_2/w_43_n26# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1061 s_3 p3 c2 sum_block_0/copyxor_2/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1062 sum_block_0/copyxor_3/b_bar c3 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1063 sum_block_0/copyxor_3/b_bar c3 vdd sum_block_0/copyxor_3/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1064 p4 sum_block_0/copyxor_3/b_bar s_4 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=104 ps=62
M1065 s_4 p4 sum_block_0/copyxor_3/b_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1066 p4 c3 s_4 sum_block_0/copyxor_3/w_43_n26# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1067 s_4 p4 c3 sum_block_0/copyxor_3/w_41_n84# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1068 a2 ff1_0/layff_3/qbar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1069 a2 ff1_0/layff_3/qbar vdd ff1_0/layff_3/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1070 ff1_0/layff_3/a_1_n56# clk ff1_0/layff_3/a_1_n10# ff1_0/layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1071 ff1_0/layff_3/a_1_n56# a_2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1072 vdd ff1_0/layff_3/a_34_n56# ff1_0/layff_3/qbar ff1_0/layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1073 gnd ff1_0/layff_3/a_34_n56# ff1_0/layff_3/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1074 ff1_0/layff_3/a_34_n56# ff1_0/layff_3/a_1_n56# ff1_0/layff_3/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1075 ff1_0/layff_3/a_107_n56# clk ff1_0/layff_3/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1076 gnd clk ff1_0/layff_3/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1077 ff1_0/layff_3/a_1_n10# a_2 vdd ff1_0/layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1078 vdd clk ff1_0/layff_3/a_34_n56# ff1_0/layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1079 b3 ff1_0/layff_4/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1080 b3 ff1_0/layff_4/qbar vdd ff1_0/layff_4/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1081 ff1_0/layff_4/a_1_n56# clk ff1_0/layff_4/a_1_n10# ff1_0/layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1082 ff1_0/layff_4/a_1_n56# b_3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1083 vdd ff1_0/layff_4/a_34_n56# ff1_0/layff_4/qbar ff1_0/layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1084 gnd ff1_0/layff_4/a_34_n56# ff1_0/layff_4/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1085 ff1_0/layff_4/a_34_n56# ff1_0/layff_4/a_1_n56# ff1_0/layff_4/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1086 ff1_0/layff_4/a_107_n56# clk ff1_0/layff_4/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1087 gnd clk ff1_0/layff_4/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1088 ff1_0/layff_4/a_1_n10# b_3 vdd ff1_0/layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1089 vdd clk ff1_0/layff_4/a_34_n56# ff1_0/layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1090 b4 ff1_0/layff_6/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1091 b4 ff1_0/layff_6/qbar vdd ff1_0/layff_6/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1092 ff1_0/layff_6/a_1_n56# ff1_0/layff_6/clk ff1_0/layff_6/a_1_n10# ff1_0/layff_6/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1093 ff1_0/layff_6/a_1_n56# b_4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1094 vdd ff1_0/layff_6/a_34_n56# ff1_0/layff_6/qbar ff1_0/layff_6/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1095 gnd ff1_0/layff_6/a_34_n56# ff1_0/layff_6/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1096 ff1_0/layff_6/a_34_n56# ff1_0/layff_6/a_1_n56# ff1_0/layff_6/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1097 ff1_0/layff_6/a_107_n56# ff1_0/layff_6/clk ff1_0/layff_6/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1098 gnd ff1_0/layff_6/clk ff1_0/layff_6/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1099 ff1_0/layff_6/a_1_n10# b_4 vdd ff1_0/layff_6/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1100 vdd ff1_0/layff_6/clk ff1_0/layff_6/a_34_n56# ff1_0/layff_6/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1101 a3 ff1_0/layff_5/qbar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1102 a3 ff1_0/layff_5/qbar vdd ff1_0/layff_5/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1103 ff1_0/layff_5/a_1_n56# clk ff1_0/layff_5/a_1_n10# ff1_0/layff_5/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1104 ff1_0/layff_5/a_1_n56# a_3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1105 vdd ff1_0/layff_5/a_34_n56# ff1_0/layff_5/qbar ff1_0/layff_5/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1106 gnd ff1_0/layff_5/a_34_n56# ff1_0/layff_5/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1107 ff1_0/layff_5/a_34_n56# ff1_0/layff_5/a_1_n56# ff1_0/layff_5/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1108 ff1_0/layff_5/a_107_n56# clk ff1_0/layff_5/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1109 gnd clk ff1_0/layff_5/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1110 ff1_0/layff_5/a_1_n10# a_3 vdd ff1_0/layff_5/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1111 vdd clk ff1_0/layff_5/a_34_n56# ff1_0/layff_5/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1112 a4 ff1_0/layff_7/qbar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1113 a4 ff1_0/layff_7/qbar vdd ff1_0/layff_7/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1114 ff1_0/layff_7/a_1_n56# clk ff1_0/layff_7/a_1_n10# ff1_0/layff_7/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1115 ff1_0/layff_7/a_1_n56# a_4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1116 vdd ff1_0/layff_7/a_34_n56# ff1_0/layff_7/qbar ff1_0/layff_7/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1117 gnd ff1_0/layff_7/a_34_n56# ff1_0/layff_7/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1118 ff1_0/layff_7/a_34_n56# ff1_0/layff_7/a_1_n56# ff1_0/layff_7/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1119 ff1_0/layff_7/a_107_n56# clk ff1_0/layff_7/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1120 gnd clk ff1_0/layff_7/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 ff1_0/layff_7/a_1_n10# a_4 vdd ff1_0/layff_7/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1122 vdd clk ff1_0/layff_7/a_34_n56# ff1_0/layff_7/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1123 b1 ff1_0/layff_0/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1124 b1 ff1_0/layff_0/qbar vdd ff1_0/layff_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1125 ff1_0/layff_0/a_1_n56# clk ff1_0/layff_0/a_1_n10# ff1_0/layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1126 ff1_0/layff_0/a_1_n56# b_1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1127 vdd ff1_0/layff_0/a_34_n56# ff1_0/layff_0/qbar ff1_0/layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1128 gnd ff1_0/layff_0/a_34_n56# ff1_0/layff_0/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1129 ff1_0/layff_0/a_34_n56# ff1_0/layff_0/a_1_n56# ff1_0/layff_0/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1130 ff1_0/layff_0/a_107_n56# clk ff1_0/layff_0/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1131 gnd clk ff1_0/layff_0/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1132 ff1_0/layff_0/a_1_n10# b_1 vdd ff1_0/layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1133 vdd clk ff1_0/layff_0/a_34_n56# ff1_0/layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1134 a1 ff1_0/layff_1/qbar gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1135 a1 ff1_0/layff_1/qbar vdd ff1_0/layff_1/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1136 ff1_0/layff_1/a_1_n56# clk ff1_0/layff_1/a_1_n10# ff1_0/layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1137 ff1_0/layff_1/a_1_n56# a_1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1138 vdd ff1_0/layff_1/a_34_n56# ff1_0/layff_1/qbar ff1_0/layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1139 gnd ff1_0/layff_1/a_34_n56# ff1_0/layff_1/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1140 ff1_0/layff_1/a_34_n56# ff1_0/layff_1/a_1_n56# ff1_0/layff_1/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1141 ff1_0/layff_1/a_107_n56# clk ff1_0/layff_1/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1142 gnd clk ff1_0/layff_1/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1143 ff1_0/layff_1/a_1_n10# a_1 vdd ff1_0/layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1144 vdd clk ff1_0/layff_1/a_34_n56# ff1_0/layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1145 b2 ff1_0/layff_2/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1146 b2 ff1_0/layff_2/qbar vdd ff1_0/layff_2/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1147 ff1_0/layff_2/a_1_n56# clk ff1_0/layff_2/a_1_n10# ff1_0/layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1148 ff1_0/layff_2/a_1_n56# b_2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1149 vdd ff1_0/layff_2/a_34_n56# ff1_0/layff_2/qbar ff1_0/layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1150 gnd ff1_0/layff_2/a_34_n56# ff1_0/layff_2/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1151 ff1_0/layff_2/a_34_n56# ff1_0/layff_2/a_1_n56# ff1_0/layff_2/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1152 ff1_0/layff_2/a_107_n56# clk ff1_0/layff_2/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1153 gnd clk ff1_0/layff_2/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1154 ff1_0/layff_2/a_1_n10# b_2 vdd ff1_0/layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1155 vdd clk ff1_0/layff_2/a_34_n56# ff1_0/layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1156 c_4 carry_block_0/val_c4_0/c4bar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1157 c_4 carry_block_0/val_c4_0/c4bar vdd carry_block_0/val_c4_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1158 vdd p2 carry_block_0/val_c4_0/a_n42_n27# carry_block_0/val_c4_0/w_n108_n41# CMOSP w=50 l=2
+  ad=0 pd=0 as=1250 ps=530
M1159 vdd p3 carry_block_0/val_c4_0/a_7_n27# carry_block_0/val_c4_0/w_n108_n41# CMOSP w=33 l=2
+  ad=0 pd=0 as=1165 ps=496
M1160 carry_block_0/val_c4_0/a_n14_n160# p2 carry_block_0/val_c4_0/a_n67_n175# Gnd CMOSN w=50 l=2
+  ad=580 pd=262 as=625 ps=280
M1161 carry_block_0/val_c4_0/a_n94_n27# C0 vdd carry_block_0/val_c4_0/w_n108_n41# CMOSP w=100 l=2
+  ad=1500 pd=630 as=0 ps=0
M1162 carry_block_0/val_c4_0/a_n42_n27# g1 carry_block_0/val_c4_0/a_n94_n27# carry_block_0/val_c4_0/w_n108_n41# CMOSP w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1163 carry_block_0/val_c4_0/a_7_n27# g2 carry_block_0/val_c4_0/a_n42_n27# carry_block_0/val_c4_0/w_n108_n41# CMOSP w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1164 gnd g4 carry_block_0/val_c4_0/c4bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=300 ps=140
M1165 vdd p1 carry_block_0/val_c4_0/a_n94_n27# carry_block_0/val_c4_0/w_n108_n41# CMOSP w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1166 carry_block_0/val_c4_0/a_51_n27# g3 carry_block_0/val_c4_0/a_7_n27# carry_block_0/val_c4_0/w_n108_n41# CMOSP w=100 l=2
+  ad=1125 pd=480 as=0 ps=0
M1167 gnd g1 carry_block_0/val_c4_0/a_n67_n175# Gnd CMOSN w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1168 carry_block_0/val_c4_0/a_30_n140# p3 carry_block_0/val_c4_0/a_n14_n160# Gnd CMOSN w=50 l=2
+  ad=565 pd=256 as=0 ps=0
M1169 carry_block_0/val_c4_0/c4bar p4 carry_block_0/val_c4_0/a_30_n140# Gnd CMOSN w=50 l=2
+  ad=0 pd=0 as=0 ps=0
M1170 gnd g2 carry_block_0/val_c4_0/a_n14_n160# Gnd CMOSN w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1171 carry_block_0/val_c4_0/a_n94_n185# C0 gnd Gnd CMOSN w=50 l=2
+  ad=500 pd=220 as=0 ps=0
M1172 carry_block_0/val_c4_0/c4bar g4 carry_block_0/val_c4_0/a_51_n27# carry_block_0/val_c4_0/w_n108_n41# CMOSP w=100 l=2
+  ad=500 pd=210 as=0 ps=0
M1173 vdd p4 carry_block_0/val_c4_0/a_51_n27# carry_block_0/val_c4_0/w_n108_n41# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1174 carry_block_0/val_c4_0/a_n67_n175# p1 carry_block_0/val_c4_0/a_n94_n185# Gnd CMOSN w=50 l=2
+  ad=0 pd=0 as=0 ps=0
M1175 gnd g3 carry_block_0/val_c4_0/a_30_n140# Gnd CMOSN w=13 l=2
+  ad=0 pd=0 as=0 ps=0
M1176 c2 carry_block_0/val_c2_0/c2_bar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1177 c2 carry_block_0/val_c2_0/c2_bar vdd carry_block_0/val_c2_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1178 carry_block_0/val_c2_0/b g1 carry_block_0/val_c2_0/a carry_block_0/val_c2_0/w_n49_n15# CMOSP w=60 l=2
+  ad=1082 pd=488 as=1152 ps=508
M1179 carry_block_0/val_c2_0/e C0 gnd Gnd CMOSN w=30 l=2
+  ad=300 pd=140 as=0 ps=0
** SOURCE/DRAIN TIED
M1180 carry_block_0/val_c2_0/b p2 vdd carry_block_0/val_c2_0/w_n49_n15# CMOSP w=30 l=2
+  ad=0 pd=0 as=0 ps=0
M1181 carry_block_0/val_c2_0/c2_bar p2 carry_block_0/val_c2_0/d Gnd CMOSN w=30 l=2
+  ad=200 pd=100 as=375 ps=180
M1182 carry_block_0/val_c2_0/c2_bar g2 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1183 vdd p1 carry_block_0/val_c2_0/a carry_block_0/val_c2_0/w_n49_n15# CMOSP w=60 l=2
+  ad=0 pd=0 as=0 ps=0
** SOURCE/DRAIN TIED
M1184 carry_block_0/val_c2_0/a p1 vdd carry_block_0/val_c2_0/w_n49_n15# CMOSP w=60 l=2
+  ad=0 pd=0 as=0 ps=0
M1185 carry_block_0/val_c2_0/d g1 gnd Gnd CMOSN w=15 l=2
+  ad=0 pd=0 as=0 ps=0
M1186 carry_block_0/val_c2_0/d p1 carry_block_0/val_c2_0/e Gnd CMOSN w=30 l=2
+  ad=0 pd=0 as=0 ps=0
M1187 vdd p2 carry_block_0/val_c2_0/b carry_block_0/val_c2_0/w_n49_n15# CMOSP w=30 l=2
+  ad=0 pd=0 as=0 ps=0
M1188 carry_block_0/val_c2_0/c2_bar g2 carry_block_0/val_c2_0/b carry_block_0/val_c2_0/w_n49_n15# CMOSP w=60 l=2
+  ad=404 pd=182 as=0 ps=0
M1189 carry_block_0/val_c2_0/a C0 vdd carry_block_0/val_c2_0/w_n49_n15# CMOSP w=60 l=2
+  ad=0 pd=0 as=0 ps=0
M1190 c3 carry_block_0/val_c3_0/n gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1191 c3 carry_block_0/val_c3_0/n vdd carry_block_0/val_c3_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1192 carry_block_0/val_c3_0/k C0 vdd carry_block_0/val_c3_0/w_n23_n72# CMOSP w=80 l=2
+  ad=1200 pd=510 as=0 ps=0
M1193 carry_block_0/val_c3_0/o g2 gnd Gnd CMOSN w=13 l=2
+  ad=465 pd=216 as=0 ps=0
M1194 carry_block_0/val_c3_0/l g1 carry_block_0/val_c3_0/k carry_block_0/val_c3_0/w_n23_n72# CMOSP w=80 l=2
+  ad=1000 pd=430 as=0 ps=0
M1195 carry_block_0/val_c3_0/p g1 gnd Gnd CMOSN w=20 l=2
+  ad=500 pd=230 as=0 ps=0
M1196 vdd p3 carry_block_0/val_c3_0/m carry_block_0/val_c3_0/w_n23_n72# CMOSP w=26 l=2
+  ad=0 pd=0 as=930 ps=402
M1197 vdd p2 carry_block_0/val_c3_0/l carry_block_0/val_c3_0/w_n23_n72# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1198 carry_block_0/val_c3_0/n p3 carry_block_0/val_c3_0/o Gnd CMOSN w=40 l=2
+  ad=250 pd=120 as=0 ps=0
M1199 carry_block_0/val_c3_0/p p1 carry_block_0/val_c3_0/q Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=400 ps=180
M1200 vdd p1 carry_block_0/val_c3_0/k carry_block_0/val_c3_0/w_n23_n72# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1201 carry_block_0/val_c3_0/q C0 gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1202 carry_block_0/val_c3_0/o p2 carry_block_0/val_c3_0/p Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1203 carry_block_0/val_c3_0/m g2 carry_block_0/val_c3_0/l carry_block_0/val_c3_0/w_n23_n72# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1204 carry_block_0/val_c3_0/n g3 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1205 carry_block_0/val_c3_0/n g3 carry_block_0/val_c3_0/m carry_block_0/val_c3_0/w_n23_n72# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1206 c1 carry_block_0/val_c1_0/c1bar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1207 c1 carry_block_0/val_c1_0/c1bar vdd carry_block_0/val_c1_0/inverterl_0/w_0_n17# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1208 carry_block_0/val_c1_0/c1bar p1 carry_block_0/val_c1_0/a_1_283# Gnd CMOSN w=20 l=2
+  ad=150 pd=80 as=200 ps=100
M1209 carry_block_0/val_c1_0/a_1_365# C0 vdd carry_block_0/val_c1_0/w_n13_353# CMOSP w=40 l=2
+  ad=600 pd=270 as=0 ps=0
M1210 carry_block_0/val_c1_0/c1bar g1 carry_block_0/val_c1_0/a_1_365# carry_block_0/val_c1_0/w_n13_353# CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1211 carry_block_0/val_c1_0/a_1_283# C0 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1212 vdd p1 carry_block_0/val_c1_0/a_1_365# carry_block_0/val_c1_0/w_n13_353# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1213 gnd g1 carry_block_0/val_c1_0/c1bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1214 s4 ff2_0/layff_3/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1215 s4 ff2_0/layff_3/qbar vdd ff2_0/layff_3/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1216 ff2_0/layff_3/a_1_n56# ff2_0/clk ff2_0/layff_3/a_1_n10# ff2_0/layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1217 ff2_0/layff_3/a_1_n56# s_4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1218 vdd ff2_0/layff_3/a_34_n56# ff2_0/layff_3/qbar ff2_0/layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1219 gnd ff2_0/layff_3/a_34_n56# ff2_0/layff_3/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1220 ff2_0/layff_3/a_34_n56# ff2_0/layff_3/a_1_n56# ff2_0/layff_3/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1221 ff2_0/layff_3/a_107_n56# ff2_0/clk ff2_0/layff_3/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1222 gnd ff2_0/clk ff2_0/layff_3/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1223 ff2_0/layff_3/a_1_n10# s_4 vdd ff2_0/layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1224 vdd ff2_0/clk ff2_0/layff_3/a_34_n56# ff2_0/layff_3/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1225 c4 ff2_0/layff_4/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1226 c4 ff2_0/layff_4/qbar vdd ff2_0/layff_4/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1227 ff2_0/layff_4/a_1_n56# ff2_0/clk ff2_0/layff_4/a_1_n10# ff2_0/layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1228 ff2_0/layff_4/a_1_n56# c_4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1229 vdd ff2_0/layff_4/a_34_n56# ff2_0/layff_4/qbar ff2_0/layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1230 gnd ff2_0/layff_4/a_34_n56# ff2_0/layff_4/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1231 ff2_0/layff_4/a_34_n56# ff2_0/layff_4/a_1_n56# ff2_0/layff_4/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1232 ff2_0/layff_4/a_107_n56# ff2_0/clk ff2_0/layff_4/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1233 gnd ff2_0/clk ff2_0/layff_4/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1234 ff2_0/layff_4/a_1_n10# c_4 vdd ff2_0/layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1235 vdd ff2_0/clk ff2_0/layff_4/a_34_n56# ff2_0/layff_4/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1236 s1 ff2_0/layff_0/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1237 s1 ff2_0/layff_0/qbar vdd ff2_0/layff_0/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1238 ff2_0/layff_0/a_1_n56# ff2_0/clk ff2_0/layff_0/a_1_n10# ff2_0/layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1239 ff2_0/layff_0/a_1_n56# s_1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1240 vdd ff2_0/layff_0/a_34_n56# ff2_0/layff_0/qbar ff2_0/layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1241 gnd ff2_0/layff_0/a_34_n56# ff2_0/layff_0/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1242 ff2_0/layff_0/a_34_n56# ff2_0/layff_0/a_1_n56# ff2_0/layff_0/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1243 ff2_0/layff_0/a_107_n56# ff2_0/clk ff2_0/layff_0/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1244 gnd ff2_0/clk ff2_0/layff_0/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1245 ff2_0/layff_0/a_1_n10# s_1 vdd ff2_0/layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1246 vdd ff2_0/clk ff2_0/layff_0/a_34_n56# ff2_0/layff_0/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1247 s2 ff2_0/layff_1/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1248 s2 ff2_0/layff_1/qbar vdd ff2_0/layff_1/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1249 ff2_0/layff_1/a_1_n56# ff2_0/clk ff2_0/layff_1/a_1_n10# ff2_0/layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1250 ff2_0/layff_1/a_1_n56# s_2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1251 vdd ff2_0/layff_1/a_34_n56# ff2_0/layff_1/qbar ff2_0/layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1252 gnd ff2_0/layff_1/a_34_n56# ff2_0/layff_1/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1253 ff2_0/layff_1/a_34_n56# ff2_0/layff_1/a_1_n56# ff2_0/layff_1/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1254 ff2_0/layff_1/a_107_n56# ff2_0/clk ff2_0/layff_1/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1255 gnd ff2_0/clk ff2_0/layff_1/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1256 ff2_0/layff_1/a_1_n10# s_2 vdd ff2_0/layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1257 vdd ff2_0/clk ff2_0/layff_1/a_34_n56# ff2_0/layff_1/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1258 s3 ff2_0/layff_2/qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1259 s3 ff2_0/layff_2/qbar vdd ff2_0/layff_2/inv_0/w_0_n17# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1260 ff2_0/layff_2/a_1_n56# ff2_0/clk ff2_0/layff_2/a_1_n10# ff2_0/layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1261 ff2_0/layff_2/a_1_n56# s_3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1262 vdd ff2_0/layff_2/a_34_n56# ff2_0/layff_2/qbar ff2_0/layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=1 ps=1
M1263 gnd ff2_0/layff_2/a_34_n56# ff2_0/layff_2/a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1264 ff2_0/layff_2/a_34_n56# ff2_0/layff_2/a_1_n56# ff2_0/layff_2/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1265 ff2_0/layff_2/a_107_n56# ff2_0/clk ff2_0/layff_2/qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=1 ps=1
M1266 gnd ff2_0/clk ff2_0/layff_2/a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1267 ff2_0/layff_2/a_1_n10# s_3 vdd ff2_0/layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1268 vdd ff2_0/clk ff2_0/layff_2/a_34_n56# ff2_0/layff_2/w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
C0 gnd p1 1.17fF
C1 b4 pg_block_0/pg_3/and_0/b_bar 0.40fF
C2 pg_block_0/pg_3/and_0/b_bar pg_block_0/pg_3/and_0/w_72_39# 0.11fF
C3 vdd carry_block_0/val_c1_0/w_n13_353# 0.20fF
C4 a3 pg_block_0/pg_2/copyxor_0/w_43_n26# 0.05fF
C5 vdd s_2 0.12fF
C6 clk a_2 0.08fF
C7 sum_block_0/copyxor_2/w_43_n26# p3 0.05fF
C8 gnd g3 0.10fF
C9 pg_block_0/pg_0/and_0/w_72_39# g1 0.06fF
C10 ff1_0/layff_7/a_34_n56# ff1_0/layff_7/a_1_n56# 0.11fF
C11 C0 carry_block_0/val_c2_0/w_n49_n15# 0.22fF
C12 carry_block_0/val_c3_0/p g1 0.08fF
C13 vdd pg_block_0/pg_1/copyxor_0/b_bar 0.23fF
C14 clk ff1_0/layff_4/a_34_n56# 0.57fF
C15 b4 pg_block_0/pg_3/copyxor_0/b_bar 0.05fF
C16 a2 pg_block_0/pg_1/and_0/b_bar 0.07fF
C17 s2 ff2_0/layff_1/inv_0/w_0_n17# 0.06fF
C18 ff2_0/layff_0/a_1_n56# ff2_0/layff_0/a_27_n56# 0.04fF
C19 p2 carry_block_0/val_c3_0/w_n23_n72# 0.48fF
C20 a1 pg_block_0/pg_0/copyxor_0/w_43_n26# 0.05fF
C21 ff2_0/layff_0/a_1_n56# s_1 0.05fF
C22 g1 carry_block_0/val_c2_0/d 0.08fF
C23 ff1_0/layff_5/a_1_n10# ff1_0/layff_5/a_1_n56# 0.21fF
C24 p1 c2 0.29fF
C25 gnd c4 0.20fF
C26 C0 carry_block_0/val_c1_0/w_n13_353# 0.10fF
C27 ff1_0/layff_5/a_1_n56# a_3 0.05fF
C28 ff2_0/layff_2/a_27_n56# ff2_0/layff_2/a_34_n56# 0.17fF
C29 ff2_0/layff_1/a_34_n56# ff2_0/layff_1/a_1_n56# 0.11fF
C30 ff1_0/layff_5/w_n17_n22# ff1_0/layff_5/a_34_n56# 0.20fF
C31 carry_block_0/val_c3_0/n p3 0.12fF
C32 b1 pg_block_0/pg_0/copyxor_0/w_43_n26# 0.10fF
C33 gnd ff1_0/layff_7/a_107_n56# 0.10fF
C34 gnd ff1_0/layff_4/a_1_n56# 0.10fF
C35 p1 g4 0.09fF
C36 vdd ff2_0/layff_1/a_34_n56# 0.21fF
C37 p4 g2 0.09fF
C38 vdd ff1_0/layff_5/w_n17_n22# 0.37fF
C39 vdd ff1_0/layff_7/qbar 0.21fF
C40 p2 g1 2.17fF
C41 c3 sum_block_0/copyxor_3/w_41_n84# 0.08fF
C42 g3 g4 0.16fF
C43 ff1_0/layff_4/qbar b3 0.05fF
C44 c1 carry_block_0/val_c1_0/c1bar 0.05fF
C45 gnd a1 0.29fF
C46 carry_block_0/val_c4_0/w_n108_n41# g4 0.11fF
C47 carry_block_0/val_c3_0/q carry_block_0/val_c3_0/p 0.54fF
C48 c1 carry_block_0/val_c1_0/inverterl_0/w_0_n17# 0.06fF
C49 carry_block_0/val_c2_0/w_n49_n15# g1 0.22fF
C50 vdd carry_block_0/val_c1_0/c1bar 0.02fF
C51 ff1_0/layff_5/a_1_n56# clk 0.27fF
C52 b1 pg_block_0/pg_0/copyxor_0/b_bar 0.05fF
C53 vdd ff2_0/layff_0/inv_0/w_0_n17# 0.08fF
C54 ff2_0/layff_0/inv_0/w_0_n17# ff2_0/layff_0/qbar 0.09fF
C55 vdd carry_block_0/val_c1_0/inverterl_0/w_0_n17# 0.08fF
C56 p2 p3 0.27fF
C57 a3 b3 0.28fF
C58 ff2_0/layff_3/a_1_n56# ff2_0/layff_3/a_1_n10# 0.21fF
C59 vdd carry_block_0/val_c4_0/a_n94_n27# 2.24fF
C60 vdd carry_block_0/val_c3_0/inv_0/w_0_n17# 0.08fF
C61 sum_block_0/copyxor_2/inverterl_0/w_0_n17# c2 0.09fF
C62 gnd b1 0.61fF
C63 c1 p1 0.14fF
C64 ff1_0/layff_2/qbar ff1_0/layff_2/a_34_n56# 0.15fF
C65 vdd pg_block_0/pg_0/and_0/inv_0/w_0_n17# 0.08fF
C66 carry_block_0/val_c2_0/c2_bar carry_block_0/val_c2_0/b 0.72fF
C67 vdd carry_block_0/val_c4_0/a_51_n27# 0.38fF
C68 carry_block_0/val_c1_0/w_n13_353# g1 0.10fF
C69 vdd ff1_0/layff_1/a_34_n56# 0.21fF
C70 ff1_0/layff_2/qbar ff1_0/layff_2/a_107_n56# 0.16fF
C71 b1 ff1_0/layff_0/inv_0/w_0_n17# 0.06fF
C72 vdd p1 0.15fF
C73 carry_block_0/val_c2_0/e carry_block_0/val_c2_0/d 0.31fF
C74 vdd ff2_0/layff_2/w_n17_n22# 0.37fF
C75 ff2_0/layff_1/qbar ff2_0/layff_1/w_n17_n22# 0.06fF
C76 carry_block_0/val_c4_0/a_n67_n175# carry_block_0/val_c4_0/a_n14_n160# 0.52fF
C77 ff1_0/layff_3/w_n17_n22# ff1_0/layff_3/a_1_n10# 0.12fF
C78 p1 carry_block_0/val_c2_0/a 0.08fF
C79 p1 carry_block_0/val_c4_0/a_n94_n185# 0.03fF
C80 ff1_0/layff_1/qbar gnd 0.05fF
C81 p2 pg_block_0/pg_1/copyxor_0/w_43_n26# 0.04fF
C82 vdd carry_block_0/val_c4_0/w_n108_n41# 0.64fF
C83 ff1_0/layff_5/a_27_n56# gnd 0.46fF
C84 pg_block_0/pg_3/copyxor_0/b_bar p4 1.06fF
C85 ff1_0/layff_1/a_34_n56# ff1_0/layff_1/a_1_n56# 0.11fF
C86 clk ff1_0/layff_7/a_34_n56# 0.57fF
C87 ff1_0/layff_7/w_n17_n22# ff1_0/layff_7/a_1_n10# 0.12fF
C88 ff2_0/layff_0/w_n17_n22# ff2_0/clk 0.43fF
C89 ff1_0/layff_6/qbar ff1_0/layff_6/a_34_n56# 0.15fF
C90 vdd ff2_0/layff_0/a_1_n10# 0.21fF
C91 ff2_0/layff_4/a_1_n56# c_4 0.05fF
C92 p1 sum_block_0/copyxor_0/inverterl_0/w_0_n17# 0.09fF
C93 clk ff1_0/layff_2/a_1_n56# 0.27fF
C94 ff2_0/layff_2/w_n17_n22# ff2_0/layff_2/a_34_n56# 0.20fF
C95 c3 p4 0.07fF
C96 p1 C0 11.82fF
C97 ff2_0/layff_4/a_1_n56# gnd 0.10fF
C98 p2 carry_block_0/val_c4_0/a_n42_n27# 0.08fF
C99 vdd c4 0.23fF
C100 ff1_0/layff_6/a_1_n56# ff1_0/layff_6/a_34_n56# 0.11fF
C101 sum_block_0/copyxor_0/w_41_n84# p1 0.08fF
C102 g3 C0 0.17fF
C103 ff1_0/layff_2/a_1_n10# ff1_0/layff_2/a_1_n56# 0.21fF
C104 b4 p4 0.21fF
C105 ff1_0/layff_0/w_n17_n22# ff1_0/layff_0/a_1_n10# 0.12fF
C106 pg_block_0/pg_1/copyxor_0/b_bar pg_block_0/pg_1/copyxor_0/inverterl_0/w_0_n17# 0.06fF
C107 ff2_0/layff_3/a_1_n56# ff2_0/layff_3/a_27_n56# 0.04fF
C108 ff2_0/layff_3/a_1_n56# gnd 0.10fF
C109 s_4 ff2_0/clk 0.17fF
C110 C0 carry_block_0/val_c4_0/w_n108_n41# 0.11fF
C111 ff2_0/layff_4/w_n17_n22# ff2_0/layff_4/qbar 0.06fF
C112 pg_block_0/pg_2/and_0/inv_0/w_0_n17# pg_block_0/pg_2/and_0/b_bar 0.06fF
C113 s_3 ff2_0/layff_2/w_n17_n22# 0.13fF
C114 a_1 gnd 0.05fF
C115 p1 carry_block_0/val_c3_0/w_n23_n72# 0.24fF
C116 c_4 carry_block_0/val_c4_0/c4bar 0.05fF
C117 gnd a4 0.26fF
C118 ff1_0/layff_5/qbar ff1_0/layff_5/w_n17_n22# 0.06fF
C119 g3 carry_block_0/val_c3_0/w_n23_n72# 0.24fF
C120 pg_block_0/pg_0/and_0/w_72_39# pg_block_0/pg_0/and_0/b_bar 0.11fF
C121 clk ff1_0/layff_3/w_n17_n22# 0.43fF
C122 vdd sum_block_0/copyxor_2/inverterl_0/w_0_n17# 0.08fF
C123 gnd carry_block_0/val_c4_0/c4bar 0.25fF
C124 a_4 ff1_0/layff_7/a_1_n56# 0.05fF
C125 ff2_0/layff_0/w_n17_n22# ff2_0/layff_0/a_1_n56# 0.06fF
C126 vdd carry_block_0/val_c1_0/a_1_365# 0.96fF
C127 s_2 ff2_0/clk 0.17fF
C128 carry_block_0/val_c1_0/c1bar g1 0.21fF
C129 c1 sum_block_0/copyxor_1/w_41_n84# 0.08fF
C130 vdd a1 0.53fF
C131 vdd ff1_0/layff_3/inv_0/w_0_n17# 0.08fF
C132 gnd ff1_0/layff_2/a_27_n56# 0.46fF
C133 sum_block_0/copyxor_3/w_41_n84# p4 0.12fF
C134 gnd pg_block_0/pg_2/and_0/b_bar 0.24fF
C135 vdd ff1_0/layff_5/inv_0/w_0_n17# 0.08fF
C136 p2 a2 1.45fF
C137 gnd pg_block_0/pg_0/copyxor_0/b_bar 0.10fF
C138 a2 pg_block_0/pg_1/and_0/w_72_39# 0.06fF
C139 c_4 gnd 0.29fF
C140 sum_block_0/copyxor_3/b_bar gnd 0.10fF
C141 ff2_0/layff_0/a_107_n56# gnd 0.10fF
C142 vdd ff1_0/layff_0/w_n17_n22# 0.37fF
C143 gnd ff2_0/layff_3/a_27_n56# 0.46fF
C144 ff1_0/layff_5/a_1_n10# ff1_0/layff_5/w_n17_n22# 0.12fF
C145 b3 pg_block_0/pg_2/copyxor_0/inverterl_0/w_0_n17# 0.09fF
C146 ff2_0/layff_4/a_34_n56# ff2_0/layff_4/qbar 0.15fF
C147 vdd b1 0.54fF
C148 p1 g1 7.06fF
C149 ff1_0/layff_5/w_n17_n22# a_3 0.13fF
C150 ff1_0/layff_5/a_27_n56# ff1_0/layff_5/a_34_n56# 0.17fF
C151 ff1_0/layff_1/qbar ff1_0/layff_1/a_107_n56# 0.16fF
C152 vdd ff1_0/layff_6/a_34_n56# 0.21fF
C153 g3 g1 0.17fF
C154 ff1_0/layff_4/w_n17_n22# ff1_0/layff_4/a_1_n56# 0.06fF
C155 gnd ff1_0/layff_3/a_1_n56# 0.10fF
C156 ff1_0/layff_3/a_34_n56# ff1_0/layff_3/a_1_n56# 0.11fF
C157 carry_block_0/val_c4_0/w_n108_n41# g1 0.11fF
C158 a4 g4 0.64fF
C159 vdd ff1_0/layff_1/qbar 0.21fF
C160 b2 ff1_0/layff_2/qbar 0.05fF
C161 gnd ff1_0/layff_6/qbar 0.05fF
C162 ff2_0/layff_4/inv_0/w_0_n17# ff2_0/layff_4/qbar 0.09fF
C163 carry_block_0/val_c4_0/c4bar g4 0.15fF
C164 p1 p3 0.26fF
C165 ff2_0/clk ff2_0/layff_1/a_34_n56# 0.57fF
C166 vdd ff2_0/layff_2/inv_0/w_0_n17# 0.08fF
C167 g3 p3 3.18fF
C168 gnd c2 0.38fF
C169 gnd ff1_0/layff_6/a_1_n56# 0.10fF
C170 carry_block_0/val_c4_0/w_n108_n41# p3 0.50fF
C171 vdd ff1_0/layff_4/inv_0/w_0_n17# 0.08fF
C172 ff1_0/layff_4/a_1_n56# ff1_0/layff_4/a_27_n56# 0.04fF
C173 carry_block_0/val_c3_0/p carry_block_0/val_c3_0/o 0.55fF
C174 clk ff1_0/layff_5/w_n17_n22# 0.43fF
C175 vdd ff2_0/layff_3/a_1_n10# 0.21fF
C176 ff1_0/layff_7/qbar clk 0.13fF
C177 carry_block_0/val_c3_0/o carry_block_0/val_c3_0/n 0.52fF
C178 ff2_0/layff_2/qbar ff2_0/layff_2/w_n17_n22# 0.06fF
C179 gnd g4 0.10fF
C180 vdd carry_block_0/val_c4_0/a_7_n27# 0.48fF
C181 carry_block_0/val_c2_0/c2_bar carry_block_0/val_c2_0/inv_0/w_0_n17# 0.09fF
C182 carry_block_0/val_c4_0/a_n94_n27# carry_block_0/val_c4_0/a_n42_n27# 1.03fF
C183 gnd b_4 0.05fF
C184 carry_block_0/val_c2_0/c2_bar carry_block_0/val_c2_0/d 0.38fF
C185 vdd a4 0.37fF
C186 pg_block_0/pg_3/and_0/b_bar pg_block_0/pg_3/and_0/inv_0/w_0_n17# 0.06fF
C187 p2 g2 3.55fF
C188 vdd ff1_0/layff_2/inv_0/w_0_n17# 0.08fF
C189 a1 g1 0.64fF
C190 vdd carry_block_0/val_c4_0/c4bar 0.02fF
C191 pg_block_0/pg_1/and_0/w_72_39# g2 0.06fF
C192 ff2_0/clk ff2_0/layff_2/w_n17_n22# 0.43fF
C193 vdd ff2_0/layff_2/a_1_n10# 0.21fF
C194 ff1_0/layff_0/a_27_n56# gnd 0.46fF
C195 carry_block_0/val_c2_0/w_n49_n15# g2 0.22fF
C196 vdd pg_block_0/pg_2/and_0/b_bar 0.33fF
C197 a_1 ff1_0/layff_1/a_1_n56# 0.05fF
C198 ff1_0/layff_5/inv_0/w_0_n17# ff1_0/layff_5/qbar 0.09fF
C199 vdd pg_block_0/pg_2/and_0/inv_0/w_0_n17# 0.08fF
C200 b2 pg_block_0/pg_1/and_0/b_bar 0.40fF
C201 ff1_0/layff_1/a_34_n56# clk 0.57fF
C202 gnd ff2_0/layff_1/a_1_n56# 0.10fF
C203 a_4 clk 0.08fF
C204 ff1_0/layff_7/w_n17_n22# ff1_0/layff_7/a_34_n56# 0.20fF
C205 gnd ff1_0/layff_1/a_107_n56# 0.10fF
C206 vdd pg_block_0/pg_0/copyxor_0/b_bar 0.23fF
C207 vdd ff2_0/layff_0/a_34_n56# 0.21fF
C208 carry_block_0/val_c4_0/w_n108_n41# carry_block_0/val_c4_0/a_n42_n27# 0.41fF
C209 g3 carry_block_0/val_c4_0/a_30_n140# 0.09fF
C210 ff2_0/layff_0/qbar ff2_0/layff_0/a_34_n56# 0.15fF
C211 vdd pg_block_0/pg_1/and_0/inv_0/w_0_n17# 0.08fF
C212 vdd c_4 0.23fF
C213 gnd c1 0.37fF
C214 vdd sum_block_0/copyxor_3/b_bar 0.23fF
C215 p2 carry_block_0/val_c2_0/c2_bar 0.04fF
C216 ff2_0/layff_0/qbar ff2_0/layff_0/a_107_n56# 0.16fF
C217 c3 carry_block_0/val_c3_0/n 0.05fF
C218 ff1_0/layff_6/a_1_n56# b_4 0.05fF
C219 ff2_0/layff_4/a_107_n56# ff2_0/layff_4/qbar 0.16fF
C220 c2 sum_block_0/copyxor_2/w_41_n84# 0.08fF
C221 ff1_0/layff_2/a_34_n56# ff1_0/layff_2/a_1_n56# 0.11fF
C222 b4 pg_block_0/pg_3/and_0/inv_0/w_0_n17# 0.09fF
C223 vdd gnd 2.91fF
C224 ff2_0/layff_0/qbar gnd 0.05fF
C225 ff1_0/layff_0/w_n17_n22# ff1_0/layff_0/a_34_n56# 0.20fF
C226 vdd ff1_0/layff_3/a_34_n56# 0.21fF
C227 carry_block_0/val_c2_0/c2_bar carry_block_0/val_c2_0/w_n49_n15# 0.14fF
C228 s4 gnd 0.20fF
C229 ff1_0/layff_3/a_107_n56# gnd 0.10fF
C230 vdd ff1_0/layff_0/inv_0/w_0_n17# 0.08fF
C231 gnd carry_block_0/val_c4_0/a_n94_n185# 0.52fF
C232 gnd pg_block_0/pg_2/copyxor_0/b_bar 0.10fF
C233 ff2_0/layff_4/a_34_n56# ff2_0/layff_4/w_n17_n22# 0.20fF
C234 ff2_0/layff_3/w_n17_n22# s_4 0.13fF
C235 pg_block_0/pg_3/copyxor_0/w_43_n26# a4 0.05fF
C236 ff1_0/layff_1/a_1_n56# gnd 0.10fF
C237 p1 carry_block_0/val_c3_0/k 0.08fF
C238 ff1_0/layff_6/w_n17_n22# ff1_0/layff_6/clk 0.43fF
C239 vdd ff1_0/layff_6/qbar 0.21fF
C240 ff1_0/layff_4/qbar ff1_0/layff_4/a_34_n56# 0.15fF
C241 vdd c2 0.41fF
C242 gnd C0 0.25fF
C243 ff1_0/layff_4/qbar ff1_0/layff_4/a_107_n56# 0.16fF
C244 ff1_0/layff_7/a_34_n56# ff1_0/layff_7/a_27_n56# 0.17fF
C245 pg_block_0/pg_2/and_0/w_72_39# a3 0.06fF
C246 ff2_0/layff_0/a_1_n10# ff2_0/layff_0/a_1_n56# 0.21fF
C247 c3 p2 0.23fF
C248 clk ff1_0/layff_4/a_1_n56# 0.27fF
C249 pg_block_0/pg_3/copyxor_0/inverterl_0/w_0_n17# pg_block_0/pg_3/copyxor_0/b_bar 0.06fF
C250 s2 ff2_0/layff_1/qbar 0.05fF
C251 pg_block_0/pg_0/and_0/b_bar pg_block_0/pg_0/and_0/inv_0/w_0_n17# 0.06fF
C252 s_3 gnd 0.05fF
C253 ff2_0/layff_4/a_1_n10# ff2_0/layff_4/a_1_n56# 0.21fF
C254 vdd ff1_0/layff_0/a_1_n10# 0.21fF
C255 c3 s_4 0.21fF
C256 ff2_0/layff_1/w_n17_n22# ff2_0/layff_1/a_1_n10# 0.12fF
C257 C0 c2 0.22fF
C258 b4 pg_block_0/pg_3/copyxor_0/inverterl_0/w_0_n17# 0.09fF
C259 gnd ff1_0/layff_7/a_1_n56# 0.10fF
C260 ff2_0/layff_1/a_34_n56# ff2_0/layff_1/a_27_n56# 0.17fF
C261 clk ff1_0/layff_0/w_n17_n22# 0.43fF
C262 ff2_0/layff_2/inv_0/w_0_n17# ff2_0/layff_2/qbar 0.09fF
C263 carry_block_0/val_c4_0/a_7_n27# p3 0.08fF
C264 s_3 c2 0.21fF
C265 b4 ff1_0/layff_6/inv_0/w_0_n17# 0.06fF
C266 gnd ff1_0/layff_4/a_27_n56# 0.46fF
C267 gnd ff2_0/layff_3/a_107_n56# 0.10fF
C268 vdd ff1_0/layff_5/a_34_n56# 0.21fF
C269 ff1_0/layff_3/inv_0/w_0_n17# a2 0.06fF
C270 C0 g4 0.09fF
C271 gnd ff2_0/layff_2/a_107_n56# 0.10fF
C272 vdd c1 0.43fF
C273 sum_block_0/copyxor_3/w_41_n84# s_4 0.08fF
C274 gnd g1 0.10fF
C275 s1 ff2_0/layff_0/inv_0/w_0_n17# 0.06fF
C276 ff2_0/layff_4/a_1_n56# ff2_0/layff_4/a_27_n56# 0.04fF
C277 vdd carry_block_0/val_c3_0/m 0.27fF
C278 ff1_0/layff_1/qbar clk 0.13fF
C279 gnd ff1_0/layff_5/qbar 0.05fF
C280 p1 g2 0.86fF
C281 ff1_0/layff_7/qbar ff1_0/layff_7/w_n17_n22# 0.06fF
C282 ff2_0/layff_4/a_1_n56# ff2_0/clk 0.27fF
C283 vdd ff2_0/layff_0/qbar 0.21fF
C284 vdd carry_block_0/val_c2_0/a 1.26fF
C285 g3 g2 0.17fF
C286 vdd s4 0.23fF
C287 s_1 sum_block_0/copyxor_0/b_bar 1.06fF
C288 vdd pg_block_0/pg_2/copyxor_0/b_bar 0.23fF
C289 ff2_0/layff_2/a_1_n56# ff2_0/layff_2/a_27_n56# 0.04fF
C290 ff2_0/layff_3/a_1_n56# ff2_0/clk 0.27fF
C291 carry_block_0/val_c4_0/w_n108_n41# g2 0.11fF
C292 gnd p3 0.33fF
C293 s_3 sum_block_0/copyxor_2/w_41_n84# 0.08fF
C294 ff1_0/layff_0/qbar ff1_0/layff_0/w_n17_n22# 0.06fF
C295 a1 pg_block_0/pg_0/and_0/b_bar 0.07fF
C296 c1 C0 0.12fF
C297 carry_block_0/val_c4_0/a_n42_n27# carry_block_0/val_c4_0/a_7_n27# 1.03fF
C298 vdd sum_block_0/copyxor_0/inverterl_0/w_0_n17# 0.08fF
C299 vdd ff1_0/layff_2/w_n17_n22# 0.37fF
C300 b1 ff1_0/layff_0/qbar 0.05fF
C301 vdd ff2_0/layff_2/a_34_n56# 0.21fF
C302 ff2_0/layff_1/qbar ff2_0/layff_1/a_34_n56# 0.15fF
C303 vdd C0 2.84fF
C304 ff1_0/layff_3/a_1_n56# ff1_0/layff_3/a_1_n10# 0.21fF
C305 ff1_0/layff_1/w_n17_n22# ff1_0/layff_1/a_1_n10# 0.12fF
C306 p1 pg_block_0/pg_0/copyxor_0/w_41_n84# 0.08fF
C307 p2 carry_block_0/val_c3_0/l 0.08fF
C308 a_1 clk 0.08fF
C309 gnd a_3 0.05fF
C310 ff2_0/layff_1/qbar ff2_0/layff_1/a_107_n56# 0.16fF
C311 p2 b2 0.21fF
C312 ff1_0/layff_7/w_n17_n22# a_4 0.13fF
C313 ff1_0/layff_1/a_34_n56# ff1_0/layff_1/a_27_n56# 0.17fF
C314 carry_block_0/val_c4_0/c4bar carry_block_0/val_c4_0/a_30_n140# 0.52fF
C315 gnd ff2_0/layff_2/qbar 0.05fF
C316 b1 pg_block_0/pg_0/and_0/b_bar 0.40fF
C317 vdd s_3 0.12fF
C318 ff2_0/layff_0/a_34_n56# ff2_0/clk 0.57fF
C319 p2 p4 0.09fF
C320 vdd ff1_0/layff_4/w_n17_n22# 0.37fF
C321 c2 p3 0.41fF
C322 vdd ff2_0/layff_1/inv_0/w_0_n17# 0.08fF
C323 carry_block_0/val_c3_0/m carry_block_0/val_c3_0/w_n23_n72# 0.55fF
C324 g1 g4 0.09fF
C325 vdd carry_block_0/val_c3_0/w_n23_n72# 0.42fF
C326 c_4 ff2_0/clk 0.08fF
C327 gnd carry_block_0/val_c3_0/q 0.55fF
C328 p2 carry_block_0/val_c2_0/b 0.08fF
C329 ff1_0/layff_6/a_1_n10# ff1_0/layff_6/w_n17_n22# 0.12fF
C330 b_2 ff1_0/layff_2/a_1_n56# 0.05fF
C331 ff1_0/layff_3/qbar ff1_0/layff_3/w_n17_n22# 0.06fF
C332 ff1_0/layff_0/w_n17_n22# b_1 0.13fF
C333 ff2_0/layff_4/a_27_n56# gnd 0.46fF
C334 a2 pg_block_0/pg_1/copyxor_0/w_41_n84# 0.12fF
C335 s_2 ff2_0/layff_1/w_n17_n22# 0.13fF
C336 c3 carry_block_0/val_c3_0/inv_0/w_0_n17# 0.06fF
C337 ff1_0/layff_6/a_27_n56# ff1_0/layff_6/a_34_n56# 0.17fF
C338 carry_block_0/val_c2_0/w_n49_n15# carry_block_0/val_c2_0/b 0.32fF
C339 p4 s_4 1.45fF
C340 sum_block_0/copyxor_0/w_41_n84# C0 0.12fF
C341 gnd carry_block_0/val_c2_0/e 0.42fF
C342 g4 p3 0.09fF
C343 gnd carry_block_0/val_c4_0/a_30_n140# 0.16fF
C344 clk gnd 0.81fF
C345 clk ff1_0/layff_3/a_34_n56# 0.57fF
C346 ff1_0/layff_5/qbar ff1_0/layff_5/a_34_n56# 0.15fF
C347 sum_block_0/copyxor_1/w_43_n26# p2 0.05fF
C348 C0 carry_block_0/val_c3_0/w_n23_n72# 0.24fF
C349 b2 pg_block_0/pg_1/copyxor_0/b_bar 0.05fF
C350 ff2_0/layff_3/qbar gnd 0.05fF
C351 ff1_0/layff_0/a_27_n56# ff1_0/layff_0/a_34_n56# 0.17fF
C352 sum_block_0/copyxor_2/w_41_n84# p3 0.12fF
C353 clk ff1_0/layff_3/a_1_n56# 0.27fF
C354 b4 pg_block_0/pg_3/copyxor_0/w_41_n84# 0.08fF
C355 ff2_0/layff_0/a_34_n56# ff2_0/layff_0/a_1_n56# 0.11fF
C356 sum_block_0/copyxor_0/w_43_n26# s_1 0.04fF
C357 sum_block_0/copyxor_1/b_bar s_2 1.06fF
C358 pg_block_0/pg_1/and_0/b_bar pg_block_0/pg_1/and_0/w_72_39# 0.11fF
C359 sum_block_0/copyxor_3/inverterl_0/w_0_n17# sum_block_0/copyxor_3/b_bar 0.06fF
C360 ff2_0/layff_0/w_n17_n22# s_1 0.13fF
C361 vdd ff1_0/layff_5/qbar 0.21fF
C362 a1 pg_block_0/pg_0/copyxor_0/w_41_n84# 0.12fF
C363 ff2_0/layff_0/a_1_n56# gnd 0.10fF
C364 gnd a2 0.37fF
C365 ff2_0/layff_2/a_1_n56# ff2_0/layff_2/w_n17_n22# 0.06fF
C366 vdd ff2_0/layff_4/a_1_n10# 0.21fF
C367 vdd ff1_0/layff_0/a_34_n56# 0.21fF
C368 ff2_0/layff_4/qbar c4 0.05fF
C369 ff2_0/layff_1/w_n17_n22# ff2_0/layff_1/a_34_n56# 0.20fF
C370 carry_block_0/val_c3_0/m p3 0.08fF
C371 vdd p3 0.15fF
C372 ff1_0/layff_7/inv_0/w_0_n17# ff1_0/layff_7/qbar 0.09fF
C373 gnd ff1_0/layff_3/a_27_n56# 0.46fF
C374 ff1_0/layff_3/a_34_n56# ff1_0/layff_3/a_27_n56# 0.17fF
C375 sum_block_0/copyxor_1/w_43_n26# s_2 0.04fF
C376 vdd ff1_0/layff_3/a_1_n10# 0.21fF
C377 b1 pg_block_0/pg_0/copyxor_0/w_41_n84# 0.08fF
C378 C0 g1 1.00fF
C379 gnd ff1_0/layff_0/qbar 0.05fF
C380 a_2 ff1_0/layff_3/w_n17_n22# 0.13fF
C381 ff1_0/layff_3/a_1_n56# ff1_0/layff_3/a_27_n56# 0.04fF
C382 ff1_0/layff_4/inv_0/w_0_n17# b3 0.06fF
C383 pg_block_0/pg_2/copyxor_0/b_bar p3 1.06fF
C384 vdd pg_block_0/pg_1/copyxor_0/inverterl_0/w_0_n17# 0.08fF
C385 vdd ff1_0/layff_5/a_1_n10# 0.21fF
C386 ff1_0/layff_0/inv_0/w_0_n17# ff1_0/layff_0/qbar 0.09fF
C387 ff2_0/clk ff2_0/layff_1/a_1_n56# 0.27fF
C388 vdd ff2_0/layff_2/qbar 0.21fF
C389 g1 carry_block_0/val_c3_0/w_n23_n72# 0.24fF
C390 gnd pg_block_0/pg_0/and_0/b_bar 0.24fF
C391 C0 p3 0.25fF
C392 ff1_0/layff_4/a_1_n10# ff1_0/layff_4/a_1_n56# 0.21fF
C393 gnd ff1_0/layff_6/a_27_n56# 0.46fF
C394 ff2_0/layff_3/a_1_n56# ff2_0/layff_3/a_34_n56# 0.11fF
C395 clk ff1_0/layff_5/a_34_n56# 0.57fF
C396 vdd ff2_0/clk 1.73fF
C397 ff2_0/layff_0/qbar ff2_0/clk 0.13fF
C398 gnd b_1 0.05fF
C399 s_3 p3 1.45fF
C400 pg_block_0/pg_2/and_0/b_bar b3 0.40fF
C401 ff2_0/layff_3/w_n17_n22# ff2_0/layff_3/a_1_n10# 0.12fF
C402 vdd carry_block_0/val_c4_0/a_n42_n27# 0.68fF
C403 carry_block_0/val_c3_0/w_n23_n72# p3 0.56fF
C404 pg_block_0/pg_2/and_0/inv_0/w_0_n17# b3 0.09fF
C405 ff2_0/layff_2/qbar ff2_0/layff_2/a_34_n56# 0.15fF
C406 p4 carry_block_0/val_c4_0/a_51_n27# 0.09fF
C407 ff2_0/layff_3/a_1_n56# ff2_0/layff_3/w_n17_n22# 0.06fF
C408 vdd clk 2.78fF
C409 p1 p4 0.09fF
C410 pg_block_0/pg_2/copyxor_0/w_41_n84# p3 0.08fF
C411 vdd ff2_0/layff_3/qbar 0.21fF
C412 g3 p4 0.16fF
C413 vdd ff1_0/layff_2/a_1_n10# 0.21fF
C414 pg_block_0/pg_3/copyxor_0/w_41_n84# p4 0.08fF
C415 ff2_0/clk ff2_0/layff_2/a_34_n56# 0.57fF
C416 ff1_0/layff_1/w_n17_n22# ff1_0/layff_1/a_34_n56# 0.20fF
C417 sum_block_0/copyxor_1/inverterl_0/w_0_n17# c1 0.09fF
C418 gnd b3 0.72fF
C419 ff1_0/layff_6/a_1_n56# ff1_0/layff_6/a_27_n56# 0.04fF
C420 gnd g2 0.10fF
C421 s4 ff2_0/layff_3/qbar 0.05fF
C422 carry_block_0/val_c4_0/w_n108_n41# p4 0.55fF
C423 ff1_0/layff_5/a_107_n56# gnd 0.10fF
C424 vdd sum_block_0/copyxor_1/inverterl_0/w_0_n17# 0.08fF
C425 ff1_0/layff_1/a_1_n56# clk 0.27fF
C426 a4 pg_block_0/pg_3/and_0/b_bar 0.07fF
C427 gnd ff2_0/layff_1/a_27_n56# 0.46fF
C428 carry_block_0/val_c4_0/inv_0/w_0_n17# carry_block_0/val_c4_0/c4bar 0.09fF
C429 clk ff1_0/layff_2/w_n17_n22# 0.43fF
C430 vdd sum_block_0/copyxor_3/inverterl_0/w_0_n17# 0.08fF
C431 ff2_0/layff_3/a_34_n56# ff2_0/layff_3/a_27_n56# 0.17fF
C432 s_3 ff2_0/clk 0.17fF
C433 vdd a2 0.60fF
C434 g1 p3 0.25fF
C435 ff1_0/layff_2/w_n17_n22# ff1_0/layff_2/a_1_n10# 0.12fF
C436 s1 gnd 0.10fF
C437 vdd carry_block_0/val_c3_0/k 1.65fF
C438 gnd carry_block_0/val_c3_0/o 0.13fF
C439 ff1_0/layff_2/a_34_n56# ff1_0/layff_2/a_27_n56# 0.17fF
C440 a3 g3 0.64fF
C441 ff1_0/layff_0/w_n17_n22# ff1_0/layff_0/a_1_n56# 0.06fF
C442 gnd carry_block_0/val_c2_0/c2_bar 0.27fF
C443 carry_block_0/val_c4_0/inv_0/w_0_n17# c_4 0.06fF
C444 ff1_0/layff_4/w_n17_n22# clk 0.43fF
C445 pg_block_0/pg_0/copyxor_0/inverterl_0/w_0_n17# b1 0.09fF
C446 vdd ff1_0/layff_0/qbar 0.21fF
C447 gnd carry_block_0/val_c4_0/a_n14_n160# 0.16fF
C448 ff2_0/layff_2/a_107_n56# ff2_0/layff_2/qbar 0.16fF
C449 p1 s_1 0.21fF
C450 gnd pg_block_0/pg_3/and_0/b_bar 0.24fF
C451 b4 a4 0.28fF
C452 ff1_0/layff_1/a_27_n56# gnd 0.46fF
C453 a4 pg_block_0/pg_3/and_0/w_72_39# 0.06fF
C454 ff1_0/layff_6/clk ff1_0/layff_6/a_34_n56# 0.57fF
C455 ff1_0/layff_3/inv_0/w_0_n17# ff1_0/layff_3/qbar 0.09fF
C456 clk ff1_0/layff_7/a_1_n56# 0.27fF
C457 pg_block_0/pg_2/and_0/w_72_39# g3 0.06fF
C458 vdd pg_block_0/pg_0/and_0/b_bar 0.33fF
C459 g4 g2 0.09fF
C460 gnd ff1_0/layff_2/a_107_n56# 0.10fF
C461 gnd pg_block_0/pg_3/copyxor_0/b_bar 0.10fF
C462 carry_block_0/val_c2_0/c2_bar c2 0.05fF
C463 sum_block_0/copyxor_3/b_bar c3 0.05fF
C464 p2 carry_block_0/val_c2_0/w_n49_n15# 0.37fF
C465 c3 gnd 0.39fF
C466 ff2_0/layff_1/qbar gnd 0.05fF
C467 carry_block_0/val_c3_0/w_n23_n72# carry_block_0/val_c3_0/k 0.49fF
C468 ff2_0/layff_3/qbar ff2_0/layff_3/a_107_n56# 0.16fF
C469 gnd ff2_0/layff_4/qbar 0.05fF
C470 ff1_0/layff_5/a_1_n56# ff1_0/layff_5/w_n17_n22# 0.06fF
C471 ff2_0/layff_2/a_1_n56# ff2_0/layff_2/a_1_n10# 0.21fF
C472 gnd b4 0.72fF
C473 clk ff1_0/layff_5/qbar 0.13fF
C474 b_3 ff1_0/layff_4/a_1_n56# 0.05fF
C475 s3 ff2_0/layff_2/inv_0/w_0_n17# 0.06fF
C476 ff2_0/layff_1/a_1_n56# ff2_0/layff_1/a_27_n56# 0.04fF
C477 gnd ff1_0/layff_7/a_27_n56# 0.46fF
C478 a3 ff1_0/layff_5/inv_0/w_0_n17# 0.06fF
C479 p2 s_2 1.45fF
C480 clk ff1_0/layff_0/a_34_n56# 0.57fF
C481 vdd b3 0.46fF
C482 p1 sum_block_0/copyxor_0/b_bar 0.05fF
C483 p2 pg_block_0/pg_1/copyxor_0/b_bar 1.06fF
C484 c3 c2 0.23fF
C485 b4 ff1_0/layff_6/qbar 0.05fF
C486 c3 sum_block_0/copyxor_3/w_43_n26# 0.10fF
C487 ff2_0/layff_4/inv_0/w_0_n17# c4 0.06fF
C488 gnd ff2_0/layff_2/a_1_n56# 0.10fF
C489 b3 pg_block_0/pg_2/copyxor_0/b_bar 0.05fF
C490 ff2_0/clk ff2_0/layff_2/qbar 0.13fF
C491 ff1_0/layff_1/qbar ff1_0/layff_1/w_n17_n22# 0.06fF
C492 ff1_0/layff_4/a_34_n56# ff1_0/layff_4/a_1_n56# 0.11fF
C493 vdd ff2_0/layff_3/a_34_n56# 0.21fF
C494 pg_block_0/pg_0/copyxor_0/inverterl_0/w_0_n17# pg_block_0/pg_0/copyxor_0/b_bar 0.06fF
C495 ff1_0/layff_7/inv_0/w_0_n17# a4 0.06fF
C496 vdd s1 0.23fF
C497 b2 pg_block_0/pg_1/copyxor_0/w_41_n84# 0.08fF
C498 clk a_3 0.08fF
C499 s1 ff2_0/layff_0/qbar 0.05fF
C500 ff1_0/layff_7/qbar ff1_0/layff_7/a_34_n56# 0.15fF
C501 ff1_0/layff_4/inv_0/w_0_n17# ff1_0/layff_4/qbar 0.09fF
C502 pg_block_0/pg_2/copyxor_0/w_43_n26# p3 0.04fF
C503 C0 g2 0.42fF
C504 ff1_0/layff_2/inv_0/w_0_n17# ff1_0/layff_2/qbar 0.09fF
C505 ff2_0/layff_4/a_1_n56# ff2_0/layff_4/w_n17_n22# 0.06fF
C506 vdd ff2_0/layff_3/w_n17_n22# 0.37fF
C507 sum_block_0/copyxor_2/inverterl_0/w_0_n17# sum_block_0/copyxor_2/b_bar 0.06fF
C508 gnd ff1_0/layff_0/a_1_n56# 0.10fF
C509 carry_block_0/val_c3_0/n carry_block_0/val_c3_0/inv_0/w_0_n17# 0.09fF
C510 ff1_0/layff_2/inv_0/w_0_n17# b2 0.06fF
C511 pg_block_0/pg_3/and_0/w_72_39# g4 0.06fF
C512 vdd carry_block_0/val_c4_0/inv_0/w_0_n17# 0.08fF
C513 vdd ff1_0/layff_7/w_n17_n22# 0.37fF
C514 gnd ff1_0/layff_6/clk 0.09fF
C515 ff1_0/layff_0/qbar ff1_0/layff_0/a_34_n56# 0.15fF
C516 vdd pg_block_0/pg_3/and_0/b_bar 0.33fF
C517 a4 p4 1.45fF
C518 vdd ff1_0/layff_2/a_34_n56# 0.21fF
C519 carry_block_0/val_c3_0/w_n23_n72# g2 0.24fF
C520 ff1_0/layff_1/w_n17_n22# a_1 0.13fF
C521 ff2_0/layff_3/qbar ff2_0/clk 0.13fF
C522 g3 carry_block_0/val_c3_0/n 0.09fF
C523 ff1_0/layff_0/a_107_n56# gnd 0.10fF
C524 vdd pg_block_0/pg_3/copyxor_0/b_bar 0.23fF
C525 gnd s3 0.20fF
C526 b2 pg_block_0/pg_1/and_0/inv_0/w_0_n17# 0.09fF
C527 pg_block_0/pg_1/copyxor_0/w_43_n26# a2 0.05fF
C528 pg_block_0/pg_2/copyxor_0/w_41_n84# b3 0.08fF
C529 gnd ff1_0/layff_2/qbar 0.05fF
C530 ff1_0/layff_6/qbar ff1_0/layff_6/clk 0.13fF
C531 ff1_0/layff_1/a_1_n56# ff1_0/layff_1/a_27_n56# 0.04fF
C532 ff2_0/layff_0/a_1_n56# ff2_0/clk 0.27fF
C533 gnd b2 0.73fF
C534 vdd c3 0.33fF
C535 ff1_0/layff_2/w_n17_n22# ff1_0/layff_2/a_34_n56# 0.20fF
C536 ff1_0/layff_3/qbar gnd 0.05fF
C537 vdd ff2_0/layff_1/qbar 0.21fF
C538 ff1_0/layff_3/qbar ff1_0/layff_3/a_34_n56# 0.15fF
C539 vdd ff2_0/layff_4/qbar 0.21fF
C540 ff2_0/layff_4/a_1_n56# ff2_0/layff_4/a_34_n56# 0.11fF
C541 ff1_0/layff_6/a_1_n56# ff1_0/layff_6/clk 0.27fF
C542 sum_block_0/copyxor_0/w_43_n26# p1 0.10fF
C543 vdd b4 0.40fF
C544 ff1_0/layff_1/inv_0/w_0_n17# a1 0.06fF
C545 c_4 ff2_0/layff_4/w_n17_n22# 0.13fF
C546 ff1_0/layff_4/qbar gnd 0.05fF
C547 gnd sum_block_0/copyxor_1/b_bar 0.10fF
C548 ff1_0/layff_0/a_1_n10# ff1_0/layff_0/a_1_n56# 0.21fF
C549 a3 pg_block_0/pg_2/and_0/b_bar 0.07fF
C550 p2 p1 0.46fF
C551 gnd carry_block_0/val_c4_0/a_n67_n175# 0.28fF
C552 g1 g2 0.46fF
C553 p2 g3 0.17fF
C554 vdd ff1_0/layff_4/a_1_n10# 0.21fF
C555 carry_block_0/val_c1_0/c1bar carry_block_0/val_c1_0/w_n13_353# 0.08fF
C556 p1 carry_block_0/val_c2_0/w_n49_n15# 0.20fF
C557 ff1_0/layff_5/a_107_n56# ff1_0/layff_5/qbar 0.16fF
C558 pg_block_0/pg_0/and_0/w_72_39# a1 0.06fF
C559 p2 carry_block_0/val_c4_0/w_n108_n41# 0.40fF
C560 b_4 ff1_0/layff_6/clk 0.08fF
C561 ff1_0/layff_6/w_n17_n22# ff1_0/layff_6/a_34_n56# 0.20fF
C562 gnd b_2 0.05fF
C563 ff1_0/layff_7/w_n17_n22# ff1_0/layff_7/a_1_n56# 0.06fF
C564 ff2_0/layff_0/w_n17_n22# ff2_0/layff_0/a_1_n10# 0.12fF
C565 ff1_0/layff_0/a_27_n56# ff1_0/layff_0/a_1_n56# 0.04fF
C566 clk ff1_0/layff_0/qbar 0.13fF
C567 sum_block_0/copyxor_3/w_43_n26# p4 0.05fF
C568 gnd a3 0.36fF
C569 pg_block_0/pg_2/and_0/w_72_39# pg_block_0/pg_2/and_0/b_bar 0.11fF
C570 b3 p3 0.21fF
C571 pg_block_0/pg_1/and_0/inv_0/w_0_n17# pg_block_0/pg_1/and_0/b_bar 0.06fF
C572 ff2_0/layff_0/a_34_n56# ff2_0/layff_0/a_27_n56# 0.17fF
C573 g2 p3 3.13fF
C574 ff2_0/layff_1/inv_0/w_0_n17# ff2_0/layff_1/qbar 0.09fF
C575 gnd pg_block_0/pg_1/and_0/b_bar 0.24fF
C576 p1 carry_block_0/val_c1_0/w_n13_353# 0.10fF
C577 b_3 gnd 0.05fF
C578 ff2_0/layff_0/a_27_n56# gnd 0.46fF
C579 ff1_0/layff_1/inv_0/w_0_n17# ff1_0/layff_1/qbar 0.09fF
C580 ff2_0/layff_2/a_1_n56# ff2_0/layff_2/a_34_n56# 0.11fF
C581 gnd s_1 0.05fF
C582 ff1_0/layff_5/a_1_n56# ff1_0/layff_5/a_27_n56# 0.04fF
C583 vdd pg_block_0/pg_0/copyxor_0/inverterl_0/w_0_n17# 0.08fF
C584 pg_block_0/pg_3/copyxor_0/w_43_n26# b4 0.10fF
C585 p4 g4 0.09fF
C586 ff2_0/layff_1/w_n17_n22# ff2_0/layff_1/a_1_n56# 0.06fF
C587 vdd ff1_0/layff_6/clk 0.27fF
C588 ff1_0/layff_4/w_n17_n22# ff1_0/layff_4/a_1_n10# 0.12fF
C589 gnd a_2 0.05fF
C590 clk b_1 0.08fF
C591 a_2 ff1_0/layff_3/a_1_n56# 0.05fF
C592 s_3 ff2_0/layff_2/a_1_n56# 0.05fF
C593 carry_block_0/val_c4_0/a_n14_n160# p3 0.04fF
C594 ff1_0/layff_7/a_1_n56# ff1_0/layff_7/a_27_n56# 0.04fF
C595 vdd ff2_0/layff_1/w_n17_n22# 0.37fF
C596 vdd ff1_0/layff_7/inv_0/w_0_n17# 0.08fF
C597 gnd ff1_0/layff_4/a_107_n56# 0.10fF
C598 vdd s3 0.23fF
C599 p2 sum_block_0/copyxor_1/w_41_n84# 0.12fF
C600 gnd sum_block_0/copyxor_2/b_bar 0.10fF
C601 vdd ff1_0/layff_2/qbar 0.21fF
C602 carry_block_0/val_c3_0/l carry_block_0/val_c3_0/m 0.90fF
C603 vdd carry_block_0/val_c3_0/l 0.41fF
C604 vdd b2 0.72fF
C605 vdd ff1_0/layff_3/qbar 0.21fF
C606 ff2_0/layff_3/a_34_n56# ff2_0/clk 0.57fF
C607 carry_block_0/val_c1_0/c1bar carry_block_0/val_c1_0/inverterl_0/w_0_n17# 0.09fF
C608 carry_block_0/val_c1_0/a_1_283# carry_block_0/val_c1_0/c1bar 0.21fF
C609 c1 sum_block_0/copyxor_1/b_bar 0.05fF
C610 ff1_0/layff_3/qbar ff1_0/layff_3/a_107_n56# 0.16fF
C611 vdd carry_block_0/val_c2_0/b 0.31fF
C612 vdd ff2_0/layff_3/inv_0/w_0_n17# 0.08fF
C613 c3 p3 0.18fF
C614 vdd ff1_0/layff_4/qbar 0.21fF
C615 vdd sum_block_0/copyxor_1/b_bar 0.23fF
C616 carry_block_0/val_c1_0/w_n13_353# carry_block_0/val_c1_0/a_1_365# 0.24fF
C617 ff1_0/layff_2/qbar ff1_0/layff_2/w_n17_n22# 0.06fF
C618 gnd sum_block_0/copyxor_0/b_bar 0.10fF
C619 carry_block_0/val_c2_0/a carry_block_0/val_c2_0/b 0.73fF
C620 vdd ff2_0/layff_4/w_n17_n22# 0.37fF
C621 ff2_0/layff_3/w_n17_n22# ff2_0/clk 0.43fF
C622 vdd ff1_0/layff_1/w_n17_n22# 0.37fF
C623 s4 ff2_0/layff_3/inv_0/w_0_n17# 0.06fF
C624 sum_block_0/copyxor_2/b_bar c2 0.05fF
C625 ff2_0/layff_3/qbar ff2_0/layff_3/a_34_n56# 0.15fF
C626 vdd ff1_0/layff_7/a_1_n10# 0.21fF
C627 sum_block_0/copyxor_1/w_41_n84# s_2 0.08fF
C628 b3 pg_block_0/pg_2/copyxor_0/w_43_n26# 0.10fF
C629 carry_block_0/val_c4_0/a_n94_n185# carry_block_0/val_c4_0/a_n67_n175# 0.52fF
C630 sum_block_0/copyxor_1/w_43_n26# c1 0.10fF
C631 ff1_0/layff_6/a_1_n10# ff1_0/layff_6/a_1_n56# 0.21fF
C632 a2 g2 0.64fF
C633 p1 carry_block_0/val_c4_0/a_n94_n27# 0.06fF
C634 carry_block_0/val_c4_0/a_n14_n160# carry_block_0/val_c4_0/a_30_n140# 0.52fF
C635 C0 p4 0.09fF
C636 ff1_0/layff_5/a_1_n56# gnd 0.10fF
C637 vdd a3 0.44fF
C638 ff1_0/layff_1/w_n17_n22# ff1_0/layff_1/a_1_n56# 0.06fF
C639 ff2_0/layff_3/w_n17_n22# ff2_0/layff_3/qbar 0.06fF
C640 ff1_0/layff_7/w_n17_n22# clk 0.43fF
C641 ff1_0/layff_6/qbar ff1_0/layff_6/w_n17_n22# 0.06fF
C642 carry_block_0/val_c3_0/l carry_block_0/val_c3_0/w_n23_n72# 0.48fF
C643 carry_block_0/val_c4_0/w_n108_n41# carry_block_0/val_c4_0/a_n94_n27# 0.49fF
C644 vdd pg_block_0/pg_1/and_0/b_bar 0.33fF
C645 clk ff1_0/layff_2/a_34_n56# 0.57fF
C646 ff1_0/layff_2/w_n17_n22# b_2 0.13fF
C647 ff1_0/layff_7/qbar ff1_0/layff_7/a_107_n56# 0.16fF
C648 p1 g3 0.17fF
C649 carry_block_0/val_c4_0/w_n108_n41# carry_block_0/val_c4_0/a_51_n27# 0.37fF
C650 p2 pg_block_0/pg_1/copyxor_0/w_41_n84# 0.08fF
C651 gnd carry_block_0/val_c3_0/p 0.78fF
C652 ff1_0/layff_6/a_1_n56# ff1_0/layff_6/w_n17_n22# 0.06fF
C653 ff2_0/layff_1/qbar ff2_0/clk 0.13fF
C654 ff1_0/layff_4/qbar ff1_0/layff_4/w_n17_n22# 0.06fF
C655 c2 sum_block_0/copyxor_2/w_43_n26# 0.10fF
C656 vdd s_1 0.13fF
C657 pg_block_0/pg_3/copyxor_0/w_43_n26# p4 0.04fF
C658 vdd ff2_0/layff_4/a_34_n56# 0.21fF
C659 ff2_0/clk ff2_0/layff_4/qbar 0.13fF
C660 p1 carry_block_0/val_c4_0/w_n108_n41# 0.11fF
C661 ff2_0/layff_4/a_107_n56# gnd 0.10fF
C662 gnd carry_block_0/val_c3_0/n 0.18fF
C663 g3 carry_block_0/val_c4_0/w_n108_n41# 0.11fF
C664 ff1_0/layff_2/a_1_n56# ff1_0/layff_2/a_27_n56# 0.04fF
C665 ff1_0/layff_0/a_34_n56# ff1_0/layff_0/a_1_n56# 0.11fF
C666 gnd carry_block_0/val_c2_0/d 0.15fF
C667 ff2_0/layff_3/a_1_n56# s_4 0.05fF
C668 vdd ff1_0/layff_4/a_34_n56# 0.21fF
C669 ff1_0/layff_6/w_n17_n22# b_4 0.13fF
C670 carry_block_0/val_c1_0/c1bar carry_block_0/val_c1_0/a_1_365# 0.61fF
C671 ff2_0/layff_0/w_n17_n22# ff2_0/layff_0/a_34_n56# 0.20fF
C672 vdd ff2_0/layff_4/inv_0/w_0_n17# 0.08fF
C673 C0 s_1 1.45fF
C674 ff2_0/layff_2/a_1_n56# ff2_0/clk 0.27fF
C675 gnd ff1_0/layff_2/a_1_n56# 0.10fF
C676 vdd sum_block_0/copyxor_2/b_bar 0.23fF
C677 ff1_0/layff_7/a_1_n10# ff1_0/layff_7/a_1_n56# 0.21fF
C678 sum_block_0/copyxor_0/w_41_n84# s_1 0.08fF
C679 vdd ff1_0/layff_6/a_1_n10# 0.21fF
C680 ff1_0/layff_4/w_n17_n22# b_3 0.13fF
C681 p4 g1 0.09fF
C682 sum_block_0/copyxor_3/inverterl_0/w_0_n17# c3 0.09fF
C683 carry_block_0/val_c2_0/inv_0/w_0_n17# c2 0.06fF
C684 pg_block_0/pg_2/copyxor_0/w_41_n84# a3 0.12fF
C685 p2 gnd 0.23fF
C686 s2 gnd 0.20fF
C687 carry_block_0/val_c4_0/a_n67_n175# g1 0.08fF
C688 p1 carry_block_0/val_c1_0/a_1_365# 0.08fF
C689 p1 a1 1.45fF
C690 sum_block_0/copyxor_3/b_bar s_4 1.06fF
C691 vdd sum_block_0/copyxor_0/b_bar 0.23fF
C692 ff1_0/layff_5/a_1_n56# ff1_0/layff_5/a_34_n56# 0.11fF
C693 p4 p3 0.09fF
C694 vdd ff1_0/layff_6/w_n17_n22# 0.37fF
C695 ff1_0/layff_4/w_n17_n22# ff1_0/layff_4/a_34_n56# 0.20fF
C696 gnd s_4 0.05fF
C697 ff2_0/layff_1/a_1_n10# ff2_0/layff_1/a_1_n56# 0.21fF
C698 ff1_0/layff_3/a_34_n56# ff1_0/layff_3/w_n17_n22# 0.20fF
C699 ff2_0/layff_4/a_1_n10# ff2_0/layff_4/w_n17_n22# 0.12fF
C700 b2 pg_block_0/pg_1/copyxor_0/inverterl_0/w_0_n17# 0.09fF
C701 b1 pg_block_0/pg_0/and_0/inv_0/w_0_n17# 0.09fF
C702 ff1_0/layff_3/a_1_n56# ff1_0/layff_3/w_n17_n22# 0.06fF
C703 s3 ff2_0/layff_2/qbar 0.05fF
C704 vdd ff1_0/layff_1/inv_0/w_0_n17# 0.08fF
C705 p2 c2 0.12fF
C706 a3 ff1_0/layff_5/qbar 0.05fF
C707 clk ff1_0/layff_0/a_1_n56# 0.27fF
C708 s_3 sum_block_0/copyxor_2/b_bar 1.06fF
C709 sum_block_0/copyxor_0/inverterl_0/w_0_n17# sum_block_0/copyxor_0/b_bar 0.06fF
C710 carry_block_0/val_c3_0/o g2 0.09fF
C711 vdd pg_block_0/pg_2/copyxor_0/inverterl_0/w_0_n17# 0.08fF
C712 b1 p1 0.21fF
C713 ff2_0/clk ff2_0/layff_1/w_n17_n22# 0.43fF
C714 vdd ff2_0/layff_1/a_1_n10# 0.21fF
C715 pg_block_0/pg_1/copyxor_0/w_43_n26# b2 0.10fF
C716 gnd s_2 0.05fF
C717 clk ff1_0/layff_6/clk 0.08fF
C718 carry_block_0/val_c2_0/c2_bar g2 0.08fF
C719 gnd ff2_0/layff_2/a_27_n56# 0.46fF
C720 pg_block_0/pg_2/copyxor_0/inverterl_0/w_0_n17# pg_block_0/pg_2/copyxor_0/b_bar 0.06fF
C721 gnd pg_block_0/pg_1/copyxor_0/b_bar 0.10fF
C722 carry_block_0/val_c4_0/a_n14_n160# g2 0.09fF
C723 sum_block_0/copyxor_3/w_43_n26# s_4 0.04fF
C724 a3 p3 1.45fF
C725 ff1_0/layff_4/a_34_n56# ff1_0/layff_4/a_27_n56# 0.17fF
C726 ff1_0/layff_1/qbar ff1_0/layff_1/a_34_n56# 0.15fF
C727 gnd ff1_0/layff_6/a_107_n56# 0.10fF
C728 vdd pg_block_0/pg_3/and_0/inv_0/w_0_n17# 0.08fF
C729 p2 g4 0.09fF
C730 ff1_0/layff_6/inv_0/w_0_n17# ff1_0/layff_6/qbar 0.09fF
C731 ff1_0/layff_7/qbar a4 0.05fF
C732 carry_block_0/val_c3_0/m carry_block_0/val_c3_0/n 0.92fF
C733 ff2_0/layff_3/w_n17_n22# ff2_0/layff_3/a_34_n56# 0.20fF
C734 clk ff1_0/layff_2/qbar 0.13fF
C735 vdd carry_block_0/val_c2_0/inv_0/w_0_n17# 0.08fF
C736 ff1_0/layff_3/qbar clk 0.13fF
C737 s_3 sum_block_0/copyxor_2/w_43_n26# 0.04fF
C738 ff2_0/clk ff2_0/layff_4/w_n17_n22# 0.43fF
C739 vdd ff1_0/layff_1/a_1_n10# 0.21fF
C740 ff1_0/layff_6/a_107_n56# ff1_0/layff_6/qbar 0.16fF
C741 vdd ff1_0/layff_7/a_34_n56# 0.21fF
C742 carry_block_0/val_c4_0/a_7_n27# carry_block_0/val_c4_0/a_51_n27# 1.03fF
C743 ff1_0/layff_4/qbar clk 0.13fF
C744 p1 pg_block_0/pg_0/copyxor_0/w_43_n26# 0.04fF
C745 ff1_0/layff_1/w_n17_n22# clk 0.43fF
C746 ff2_0/layff_3/inv_0/w_0_n17# ff2_0/layff_3/qbar 0.09fF
C747 p2 c1 0.41fF
C748 ff1_0/layff_7/qbar gnd 0.05fF
C749 ff1_0/layff_1/a_1_n10# ff1_0/layff_1/a_1_n56# 0.21fF
C750 vdd ff2_0/layff_0/w_n17_n22# 0.37fF
C751 carry_block_0/val_c4_0/c4bar carry_block_0/val_c4_0/a_51_n27# 1.03fF
C752 gnd ff2_0/layff_1/a_107_n56# 0.10fF
C753 ff2_0/layff_0/qbar ff2_0/layff_0/w_n17_n22# 0.06fF
C754 b2 a2 0.28fF
C755 b1 a1 0.28fF
C756 ff1_0/layff_0/a_107_n56# ff1_0/layff_0/qbar 0.16fF
C757 ff1_0/layff_3/qbar a2 0.05fF
C758 vdd p2 0.82fF
C759 clk b_2 0.08fF
C760 vdd s2 0.23fF
C761 carry_block_0/val_c3_0/l carry_block_0/val_c3_0/k 0.89fF
C762 carry_block_0/val_c4_0/w_n108_n41# carry_block_0/val_c4_0/a_7_n27# 0.38fF
C763 a4 pg_block_0/pg_3/copyxor_0/w_41_n84# 0.12fF
C764 sum_block_0/copyxor_1/inverterl_0/w_0_n17# sum_block_0/copyxor_1/b_bar 0.06fF
C765 gnd carry_block_0/val_c1_0/c1bar 0.20fF
C766 ff2_0/layff_2/w_n17_n22# ff2_0/layff_2/a_1_n10# 0.12fF
C767 ff1_0/layff_2/w_n17_n22# ff1_0/layff_2/a_1_n56# 0.06fF
C768 carry_block_0/val_c3_0/n carry_block_0/val_c3_0/w_n23_n72# 0.19fF
C769 vdd carry_block_0/val_c2_0/w_n49_n15# 0.31fF
C770 s_1 ff2_0/clk 0.17fF
C771 ff2_0/layff_4/a_27_n56# ff2_0/layff_4/a_34_n56# 0.17fF
C772 vdd pg_block_0/pg_3/copyxor_0/inverterl_0/w_0_n17# 0.08fF
C773 vdd s_4 0.12fF
C774 ff2_0/layff_4/a_34_n56# ff2_0/clk 0.57fF
C775 carry_block_0/val_c1_0/a_1_283# gnd 0.21fF
C776 carry_block_0/val_c2_0/w_n49_n15# carry_block_0/val_c2_0/a 0.31fF
C777 carry_block_0/val_c4_0/c4bar carry_block_0/val_c4_0/w_n108_n41# 0.15fF
C778 vdd ff1_0/layff_3/w_n17_n22# 0.37fF
C779 b_1 ff1_0/layff_0/a_1_n56# 0.05fF
C780 p1 pg_block_0/pg_0/copyxor_0/b_bar 1.06fF
C781 ff1_0/layff_1/qbar a1 0.05fF
C782 sum_block_0/copyxor_0/w_43_n26# C0 0.05fF
C783 s_2 ff2_0/layff_1/a_1_n56# 0.05fF
C784 b_3 clk 0.08fF
C785 c1 s_2 0.21fF
C786 p2 C0 0.44fF
C787 a_4 gnd 0.05fF
C788 vdd ff1_0/layff_6/inv_0/w_0_n17# 0.08fF
C789 m1_1461_n28# Gnd 0.02fF
C790 ff2_0/layff_2/a_107_n56# Gnd 0.09fF
C791 ff2_0/layff_2/a_27_n56# Gnd 0.19fF
C792 ff2_0/layff_2/a_1_n56# Gnd 0.34fF
C793 ff2_0/layff_2/a_1_n10# Gnd 0.00fF
C794 ff2_0/layff_2/a_34_n56# Gnd 0.73fF
C795 ff2_0/layff_2/w_n17_n22# Gnd 7.79fF
C796 s3 Gnd 0.32fF
C797 ff2_0/layff_2/qbar Gnd 0.45fF
C798 ff2_0/layff_2/inv_0/w_0_n17# Gnd 1.00fF
C799 ff2_0/layff_1/a_107_n56# Gnd 0.09fF
C800 ff2_0/layff_1/a_27_n56# Gnd 0.19fF
C801 ff2_0/layff_1/a_1_n56# Gnd 0.34fF
C802 ff2_0/layff_1/a_1_n10# Gnd 0.00fF
C803 ff2_0/layff_1/a_34_n56# Gnd 0.73fF
C804 ff2_0/layff_1/w_n17_n22# Gnd 7.79fF
C805 s2 Gnd 0.31fF
C806 ff2_0/layff_1/qbar Gnd 0.45fF
C807 ff2_0/layff_1/inv_0/w_0_n17# Gnd 1.00fF
C808 ff2_0/layff_0/a_107_n56# Gnd 0.09fF
C809 ff2_0/layff_0/a_27_n56# Gnd 0.19fF
C810 ff2_0/layff_0/a_1_n56# Gnd 0.34fF
C811 ff2_0/layff_0/a_1_n10# Gnd 0.00fF
C812 ff2_0/layff_0/a_34_n56# Gnd 0.73fF
C813 ff2_0/layff_0/w_n17_n22# Gnd 7.79fF
C814 s1 Gnd 0.31fF
C815 ff2_0/layff_0/qbar Gnd 0.45fF
C816 ff2_0/layff_0/inv_0/w_0_n17# Gnd 1.00fF
C817 ff2_0/layff_4/a_107_n56# Gnd 0.09fF
C818 ff2_0/layff_4/a_27_n56# Gnd 0.19fF
C819 ff2_0/layff_4/a_1_n56# Gnd 0.34fF
C820 ff2_0/layff_4/a_1_n10# Gnd 0.00fF
C821 ff2_0/layff_4/a_34_n56# Gnd 0.73fF
C822 ff2_0/clk Gnd 7.18fF
C823 ff2_0/layff_4/w_n17_n22# Gnd 7.79fF
C824 c4 Gnd 0.16fF
C825 vdd Gnd 27.44fF
C826 ff2_0/layff_4/qbar Gnd 0.45fF
C827 ff2_0/layff_4/inv_0/w_0_n17# Gnd 1.00fF
C828 ff2_0/layff_3/a_107_n56# Gnd 0.09fF
C829 ff2_0/layff_3/a_27_n56# Gnd 0.19fF
C830 ff2_0/layff_3/a_1_n56# Gnd 0.34fF
C831 ff2_0/layff_3/a_1_n10# Gnd 0.00fF
C832 ff2_0/layff_3/a_34_n56# Gnd 0.73fF
C833 ff2_0/layff_3/w_n17_n22# Gnd 7.79fF
C834 s4 Gnd 0.20fF
C835 ff2_0/layff_3/qbar Gnd 0.45fF
C836 ff2_0/layff_3/inv_0/w_0_n17# Gnd 1.00fF
C837 carry_block_0/val_c1_0/a_1_283# Gnd 0.08fF
C838 carry_block_0/val_c1_0/a_1_365# Gnd 0.11fF
C839 carry_block_0/val_c1_0/w_n13_353# Gnd 4.44fF
C840 carry_block_0/val_c1_0/c1bar Gnd 0.43fF
C841 carry_block_0/val_c1_0/inverterl_0/w_0_n17# Gnd 1.00fF
C842 carry_block_0/val_c3_0/o Gnd 0.38fF
C843 carry_block_0/val_c3_0/m Gnd 0.00fF
C844 carry_block_0/val_c3_0/p Gnd 0.58fF
C845 carry_block_0/val_c3_0/q Gnd 0.22fF
C846 carry_block_0/val_c3_0/l Gnd 0.00fF
C847 carry_block_0/val_c3_0/k Gnd 0.00fF
C848 carry_block_0/val_c3_0/w_n23_n72# Gnd 0.70fF
C849 carry_block_0/val_c3_0/n Gnd 1.28fF
C850 carry_block_0/val_c3_0/inv_0/w_0_n17# Gnd 1.00fF
C851 carry_block_0/val_c2_0/d Gnd 0.30fF
C852 carry_block_0/val_c2_0/e Gnd 0.19fF
C853 carry_block_0/val_c2_0/w_n49_n15# Gnd 14.47fF
C854 carry_block_0/val_c2_0/c2_bar Gnd 1.10fF
C855 carry_block_0/val_c2_0/inv_0/w_0_n17# Gnd 1.00fF
C856 carry_block_0/val_c4_0/a_30_n140# Gnd 0.24fF
C857 carry_block_0/val_c4_0/a_51_n27# Gnd 0.00fF
C858 carry_block_0/val_c4_0/a_n14_n160# Gnd 0.26fF
C859 carry_block_0/val_c4_0/a_7_n27# Gnd 0.00fF
C860 carry_block_0/val_c4_0/a_n67_n175# Gnd 0.29fF
C861 carry_block_0/val_c4_0/a_n94_n185# Gnd 0.16fF
C862 carry_block_0/val_c4_0/a_n42_n27# Gnd 0.00fF
C863 carry_block_0/val_c4_0/a_n94_n27# Gnd 0.00fF
C864 g3 Gnd 4.66fF
C865 p3 Gnd 7.18fF
C866 g2 Gnd 7.78fF
C867 p2 Gnd 14.99fF
C868 g1 Gnd 12.52fF
C869 C0 Gnd 10.27fF
C870 carry_block_0/val_c4_0/w_n108_n41# Gnd 26.49fF
C871 c_4 Gnd 0.56fF
C872 carry_block_0/val_c4_0/c4bar Gnd 0.74fF
C873 carry_block_0/val_c4_0/inv_0/w_0_n17# Gnd 1.00fF
C874 ff1_0/layff_2/a_107_n56# Gnd 0.09fF
C875 ff1_0/layff_2/a_27_n56# Gnd 0.19fF
C876 ff1_0/layff_2/a_1_n56# Gnd 0.34fF
C877 ff1_0/layff_2/a_1_n10# Gnd 0.00fF
C878 ff1_0/layff_2/a_34_n56# Gnd 0.73fF
C879 b_2 Gnd 0.29fF
C880 ff1_0/layff_2/w_n17_n22# Gnd 7.79fF
C881 ff1_0/layff_2/qbar Gnd 0.45fF
C882 ff1_0/layff_2/inv_0/w_0_n17# Gnd 1.00fF
C883 ff1_0/layff_1/a_107_n56# Gnd 0.09fF
C884 ff1_0/layff_1/a_27_n56# Gnd 0.19fF
C885 ff1_0/layff_1/a_1_n56# Gnd 0.34fF
C886 ff1_0/layff_1/a_1_n10# Gnd 0.00fF
C887 ff1_0/layff_1/a_34_n56# Gnd 0.73fF
C888 a_1 Gnd 0.35fF
C889 ff1_0/layff_1/w_n17_n22# Gnd 7.79fF
C890 ff1_0/layff_1/qbar Gnd 0.45fF
C891 ff1_0/layff_1/inv_0/w_0_n17# Gnd 1.00fF
C892 ff1_0/layff_0/a_107_n56# Gnd 0.09fF
C893 ff1_0/layff_0/a_27_n56# Gnd 0.19fF
C894 ff1_0/layff_0/a_1_n56# Gnd 0.34fF
C895 ff1_0/layff_0/a_1_n10# Gnd 0.00fF
C896 ff1_0/layff_0/a_34_n56# Gnd 0.73fF
C897 b_1 Gnd 0.37fF
C898 ff1_0/layff_0/w_n17_n22# Gnd 7.79fF
C899 ff1_0/layff_0/qbar Gnd 0.45fF
C900 ff1_0/layff_0/inv_0/w_0_n17# Gnd 1.00fF
C901 ff1_0/layff_7/a_107_n56# Gnd 0.09fF
C902 ff1_0/layff_7/a_27_n56# Gnd 0.19fF
C903 ff1_0/layff_7/a_1_n56# Gnd 0.34fF
C904 ff1_0/layff_7/a_1_n10# Gnd 0.00fF
C905 ff1_0/layff_7/a_34_n56# Gnd 0.73fF
C906 clk Gnd 17.12fF
C907 a_4 Gnd 0.29fF
C908 ff1_0/layff_7/w_n17_n22# Gnd 7.79fF
C909 ff1_0/layff_7/qbar Gnd 0.45fF
C910 ff1_0/layff_7/inv_0/w_0_n17# Gnd 1.00fF
C911 ff1_0/layff_5/a_107_n56# Gnd 0.09fF
C912 ff1_0/layff_5/a_27_n56# Gnd 0.19fF
C913 ff1_0/layff_5/a_1_n56# Gnd 0.34fF
C914 ff1_0/layff_5/a_1_n10# Gnd 0.00fF
C915 ff1_0/layff_5/a_34_n56# Gnd 0.73fF
C916 a_3 Gnd 0.33fF
C917 ff1_0/layff_5/w_n17_n22# Gnd 7.79fF
C918 ff1_0/layff_5/qbar Gnd 0.45fF
C919 ff1_0/layff_5/inv_0/w_0_n17# Gnd 1.00fF
C920 ff1_0/layff_6/a_107_n56# Gnd 0.09fF
C921 ff1_0/layff_6/a_27_n56# Gnd 0.19fF
C922 ff1_0/layff_6/a_1_n56# Gnd 0.34fF
C923 ff1_0/layff_6/a_1_n10# Gnd 0.00fF
C924 ff1_0/layff_6/a_34_n56# Gnd 0.73fF
C925 ff1_0/layff_6/clk Gnd 0.92fF
C926 b_4 Gnd 0.34fF
C927 ff1_0/layff_6/w_n17_n22# Gnd 7.79fF
C928 ff1_0/layff_6/qbar Gnd 0.45fF
C929 ff1_0/layff_6/inv_0/w_0_n17# Gnd 1.00fF
C930 ff1_0/layff_4/a_107_n56# Gnd 0.09fF
C931 ff1_0/layff_4/a_27_n56# Gnd 0.19fF
C932 ff1_0/layff_4/a_1_n56# Gnd 0.34fF
C933 ff1_0/layff_4/a_1_n10# Gnd 0.00fF
C934 ff1_0/layff_4/a_34_n56# Gnd 0.73fF
C935 b_3 Gnd 0.35fF
C936 ff1_0/layff_4/w_n17_n22# Gnd 7.79fF
C937 ff1_0/layff_4/qbar Gnd 0.45fF
C938 ff1_0/layff_4/inv_0/w_0_n17# Gnd 1.00fF
C939 ff1_0/layff_3/a_107_n56# Gnd 0.09fF
C940 ff1_0/layff_3/a_27_n56# Gnd 0.19fF
C941 ff1_0/layff_3/a_1_n56# Gnd 0.34fF
C942 ff1_0/layff_3/a_1_n10# Gnd 0.00fF
C943 ff1_0/layff_3/a_34_n56# Gnd 0.73fF
C944 a_2 Gnd 0.35fF
C945 ff1_0/layff_3/w_n17_n22# Gnd 7.79fF
C946 ff1_0/layff_3/qbar Gnd 0.45fF
C947 ff1_0/layff_3/inv_0/w_0_n17# Gnd 1.00fF
C948 s_4 Gnd 2.30fF
C949 sum_block_0/copyxor_3/w_41_n84# Gnd 1.49fF
C950 sum_block_0/copyxor_3/w_43_n26# Gnd 1.34fF
C951 sum_block_0/copyxor_3/b_bar Gnd 0.79fF
C952 c3 Gnd 1.33fF
C953 sum_block_0/copyxor_3/inverterl_0/w_0_n17# Gnd 1.00fF
C954 s_3 Gnd 2.28fF
C955 sum_block_0/copyxor_2/w_41_n84# Gnd 1.49fF
C956 sum_block_0/copyxor_2/w_43_n26# Gnd 1.34fF
C957 sum_block_0/copyxor_2/b_bar Gnd 0.79fF
C958 sum_block_0/copyxor_2/inverterl_0/w_0_n17# Gnd 1.00fF
C959 s_2 Gnd 2.23fF
C960 sum_block_0/copyxor_1/w_41_n84# Gnd 1.49fF
C961 sum_block_0/copyxor_1/w_43_n26# Gnd 1.34fF
C962 sum_block_0/copyxor_1/b_bar Gnd 0.79fF
C963 c1 Gnd 1.62fF
C964 sum_block_0/copyxor_1/inverterl_0/w_0_n17# Gnd 1.00fF
C965 s_1 Gnd 2.31fF
C966 sum_block_0/copyxor_0/w_41_n84# Gnd 1.49fF
C967 sum_block_0/copyxor_0/w_43_n26# Gnd 1.34fF
C968 sum_block_0/copyxor_0/b_bar Gnd 0.79fF
C969 p1 Gnd 9.77fF
C970 sum_block_0/copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF
C971 g4 Gnd 1.53fF
C972 pg_block_0/pg_3/and_0/b_bar Gnd 0.41fF
C973 pg_block_0/pg_3/and_0/inv_0/w_0_n17# Gnd 1.00fF
C974 a4 Gnd 9.51fF
C975 p4 Gnd 4.23fF
C976 pg_block_0/pg_3/copyxor_0/w_41_n84# Gnd 1.49fF
C977 pg_block_0/pg_3/copyxor_0/w_43_n26# Gnd 1.34fF
C978 gnd Gnd 12.01fF
C979 pg_block_0/pg_3/copyxor_0/b_bar Gnd 0.79fF
C980 b4 Gnd 3.50fF
C981 pg_block_0/pg_3/copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF
C982 pg_block_0/pg_2/and_0/b_bar Gnd 0.41fF
C983 pg_block_0/pg_2/and_0/inv_0/w_0_n17# Gnd 1.00fF
C984 a3 Gnd 4.14fF
C985 pg_block_0/pg_2/copyxor_0/w_41_n84# Gnd 1.49fF
C986 pg_block_0/pg_2/copyxor_0/w_43_n26# Gnd 1.34fF
C987 pg_block_0/pg_2/copyxor_0/b_bar Gnd 0.79fF
C988 b3 Gnd 1.66fF
C989 pg_block_0/pg_2/copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF
C990 pg_block_0/pg_1/and_0/b_bar Gnd 0.41fF
C991 pg_block_0/pg_1/and_0/inv_0/w_0_n17# Gnd 1.00fF
C992 a2 Gnd 4.50fF
C993 pg_block_0/pg_1/copyxor_0/w_41_n84# Gnd 1.49fF
C994 pg_block_0/pg_1/copyxor_0/w_43_n26# Gnd 1.34fF
C995 pg_block_0/pg_1/copyxor_0/b_bar Gnd 0.79fF
C996 b2 Gnd 5.90fF
C997 pg_block_0/pg_1/copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF
C998 pg_block_0/pg_0/and_0/b_bar Gnd 0.41fF
C999 pg_block_0/pg_0/and_0/inv_0/w_0_n17# Gnd 1.00fF
C1000 a1 Gnd 7.86fF
C1001 pg_block_0/pg_0/copyxor_0/w_41_n84# Gnd 1.49fF
C1002 pg_block_0/pg_0/copyxor_0/w_43_n26# Gnd 1.34fF
C1003 pg_block_0/pg_0/copyxor_0/b_bar Gnd 0.79fF
C1004 b1 Gnd 5.38fF
C1005 pg_block_0/pg_0/copyxor_0/inverterl_0/w_0_n17# Gnd 1.00fF




.tran 0.1n 100n 


.measure tran tpdr1 TRIG v(A4) VAL=0.9 RISE=2 TARG v(S_4) VAL=0.9 RISE=4
.measure tran tpdf1 TRIG v(A4) VAL=0.9 FALL=1 TARG v(S_4) VAL=0.9 FALL=3
.measure tran tpd1 param='(tpdr1+tpdf1)/2'
.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run
plot V(s1) 2+V(s2) 4+V(s3) 6+V(s4) 8+V(C4)

.endc

.end
