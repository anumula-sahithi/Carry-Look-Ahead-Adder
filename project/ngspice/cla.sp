sahithi anumula 2023112002


.include TSMC_180nm.txt
.include XOR.subckt
.include AND.subckt
.include FLIP.subckt
.include INV.subckt

.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd	vdd	gnd	'SUPPLY'
.param fac={10}
.param width_P={fac*LAMBDA*2}
.param width_N={fac*LAMBDA}
.param width_keeper = {0.1 * width_N}


.param w_ap = {fac*LAMBDA*4}
.param w_an = {fac*LAMBDA*2}
.param w_bp = {fac*LAMBDA*6}
.param w_bn = {fac*LAMBDA*3}
.param w_cp = {fac*LAMBDA*3}
.param w_cn = {fac*LAMBDA*1.5}
.param w_dp = {fac*LAMBDA*8}
.param w_dn = {fac*LAMBDA*4}
.param w_ep = {fac*LAMBDA*2.666666}
.param w_en = {fac*LAMBDA*1.33333}
.param w_fn = {fac*LAMBDA*5}
.param w_fp = {fac*LAMBDA*10}
.param w_gn = {fac*LAMBDA*2.5}
.param w_gp = {fac*LAMBDA*5}
.param w_hn = {fac*LAMBDA*1.25}
.param w_hp = {fac*LAMBDA*3.333333}
.param w_in = {fac*LAMBDA*1.6666666}
.param w_ip = {fac*LAMBDA*2.5}



****************************************************

vin_a1 p1 0 pulse 0 1.8 0ns 0ns 0ns 7ns 14ns
vin_a2 p2 0 pulse 0 1.8 0ns 0ns 0ns 8ns 16ns
vin_a3 p3 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns
vin_a4 p4 0 pulse 0 1.8 0ns 0ns 0ns 20ns 50ns

* Signal B = 1100
vin_b1 g1 0 pulse 1.8 0 0ns 0ns 0ns 3ns 13ns
vin_b2 g2 0 pulse 1.8 0 0ns 0ns 0ns 4ns 23ns
vin_b3 g3 0 pulse 1.8 0 0ns 0ns 0ns 8ns 23ns
vin_b4 g4 0 pulse 1.8 0 0ns 0ns 0ns 9ns 23ns

vin_c0 c0 0 pulse(1.8 0 0 0 0 10n 20n)




M1 vdd C0 G vdd CMOSP W={w_ap}   L={2*LAMBDA}
+ AS={5*w_ap*LAMBDA} PS={10*LAMBDA+2*w_ap} AD={5*w_ap*LAMBDA} PD={10*LAMBDA+2*w_ap} 

M2 G G1 H vdd CMOSP W={w_ap}   L={2*LAMBDA}
+ AS={5*w_ap*LAMBDA} PS={10*LAMBDA+2*w_ap} AD={5*w_ap*LAMBDA} PD={10*LAMBDA+2*w_ap} 

M3 H P1 I gnd CMOSN W={w_an}   L={2*LAMBDA}
+ AS={5*w_an*LAMBDA} PS={10*LAMBDA+2*w_an} AD={5*w_an*LAMBDA} PD={10*LAMBDA+2*w_an}

M4 I C0 gnd gnd CMOSN W={w_an}   L={2*LAMBDA}
+ AS={5*w_an*LAMBDA} PS={10*LAMBDA+2*w_an} AD={5*w_an*LAMBDA} PD={10*LAMBDA+2*w_an}

M5 vdd P1 G vdd CMOSP W={w_ap}   L={2*LAMBDA}
+ AS={5*w_ap*LAMBDA} PS={10*LAMBDA+2*w_ap} AD={5*w_ap*LAMBDA} PD={10*LAMBDA+2*w_ap} 

M6 H G1 gnd gnd CMOSN W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

Xi1 H C1 vdd gnd INV




**********************************************************************************************

M9 vdd C0 A vdd CMOSP W={w_bp}   L={2*LAMBDA}
+ AS={5*w_bp*LAMBDA} PS={10*LAMBDA+2*w_bp} AD={5*w_bp*LAMBDA} PD={10*LAMBDA+2*w_bp} 

M10 A G1 B vdd CMOSP W={w_bp}   L={2*LAMBDA}
+ AS={5*w_bp*LAMBDA} PS={10*LAMBDA+2*w_bp} AD={5*w_bp*LAMBDA} PD={10*LAMBDA+2*w_bp} 

M11 B G2 C vdd CMOSP W={w_bp}   L={2*LAMBDA}
+ AS={5*w_bp*LAMBDA} PS={10*LAMBDA+2*w_bp} AD={5*w_bp*LAMBDA} PD={10*LAMBDA+2*w_bp} 

M12 C P2 E gnd CMOSN W={w_bn}   L={2*LAMBDA}
+ AS={5*w_bn*LAMBDA} PS={10*LAMBDA+2*w_bn} AD={5*w_bn*LAMBDA} PD={10*LAMBDA+2*w_bn}

M13 E P1 F gnd CMOSN W={w_bn}   L={2*LAMBDA}
+ AS={5*w_bn*LAMBDA} PS={10*LAMBDA+2*w_bn} AD={5*w_bn*LAMBDA} PD={10*LAMBDA+2*w_bn}

M14 F C0 gnd gnd CMOSN W={w_bn}   L={2*LAMBDA}
+ AS={5*w_bn*LAMBDA} PS={10*LAMBDA+2*w_bn} AD={5*w_bn*LAMBDA} PD={10*LAMBDA+2*w_bn}

M15 vdd P1 A vdd CMOSP W={w_bp}   L={2*LAMBDA}
+ AS={5*w_bp*LAMBDA} PS={10*LAMBDA+2*w_bp} AD={5*w_bp*LAMBDA} PD={10*LAMBDA+2*w_bp} 

M16 vdd P2 B vdd CMOSP W={w_cp}   L={2*LAMBDA}
+ AS={5*w_cp*LAMBDA} PS={10*LAMBDA+2*w_cp} AD={5*w_cp*LAMBDA} PD={10*LAMBDA+2*w_cp} 

M17 E G1 gnd gnd CMOSN W={w_cn}   L={2*LAMBDA}
+ AS={5*w_cn*LAMBDA} PS={10*LAMBDA+2*w_cn} AD={5*w_cn*LAMBDA} PD={10*LAMBDA+2*width_N}

M18 C G2 gnd gnd CMOSN W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}



Xi2 C C2 vdd gnd INV


***************************************************************************************************

M21 vdd C0 J vdd CMOSP W={w_dp}   L={2*LAMBDA}
+ AS={5*w_dp*LAMBDA} PS={10*LAMBDA+2*w_dp} AD={5*w_dp*LAMBDA} PD={10*LAMBDA+2*w_dp}

M22 J G1 K vdd CMOSP W={w_dp}   L={2*LAMBDA}
+ AS={5*w_dp*LAMBDA} PS={10*LAMBDA+2*w_dp} AD={5*w_dp*LAMBDA} PD={10*LAMBDA+2*w_dp}

M23 K G2 L vdd CMOSP W={w_dp}   L={2*LAMBDA}
+ AS={5*w_dp*LAMBDA} PS={10*LAMBDA+2*w_dp} AD={5*w_dp*LAMBDA} PD={10*LAMBDA+2*w_dp}

M24 L G3 M vdd CMOSP W={w_dp}   L={2*LAMBDA}
+ AS={5*w_dp*LAMBDA} PS={10*LAMBDA+2*w_dp} AD={5*w_dp*LAMBDA} PD={10*LAMBDA+2*w_dp}

M25 M P3 N gnd CMOSN W={w_dn}   L={2*LAMBDA}
+ AS={5*w_dn*LAMBDA} PS={10*LAMBDA+2*w_dn} AD={5*w_dn*LAMBDA} PD={10*LAMBDA+2*w_dn}

M26 N P2 O gnd CMOSN W={w_dn}   L={2*LAMBDA}
+ AS={5*w_dn*LAMBDA} PS={10*LAMBDA+2*w_dn} AD={5*w_dn*LAMBDA} PD={10*LAMBDA+2*w_dn}

M27 O P1 P gnd CMOSN W={w_dn}   L={2*LAMBDA}
+ AS={5*w_dn*LAMBDA} PS={10*LAMBDA+2*w_dn} AD={5*w_dn*LAMBDA} PD={10*LAMBDA+2*w_dn}

M28 P C0 gnd gnd CMOSN W={w_dn}   L={2*LAMBDA}
+ AS={5*w_dn*LAMBDA} PS={10*LAMBDA+2*w_dn} AD={5*w_dn*LAMBDA} PD={10*LAMBDA+2*w_dn}

M29 vdd P1 J vdd CMOSP W={w_dp}   L={2*LAMBDA}
+ AS={5*w_dp*LAMBDA} PS={10*LAMBDA+2*w_dp} AD={5*w_dp*LAMBDA} PD={10*LAMBDA+2*w_dp}

M30 vdd P2 K vdd CMOSP W={w_ap}   L={2*LAMBDA}
+ AS={5*w_ap*LAMBDA} PS={10*LAMBDA+2*w_ap} AD={5*w_ap*LAMBDA} PD={10*LAMBDA+2*w_ap}

M31 vdd P3 L vdd CMOSP W={w_ep}   L={2*LAMBDA}
+ AS={5*w_ep*LAMBDA} PS={10*LAMBDA+2*w_ep} AD={5*w_ep*LAMBDA} PD={10*LAMBDA+2*w_ep}

M32 O G1 gnd gnd CMOSN W={w_an}   L={2*LAMBDA}
+ AS={5*w_an*LAMBDA} PS={10*LAMBDA+2*w_an} AD={5*w_an*LAMBDA} PD={10*LAMBDA+2*w_an}

M33 N G2 gnd gnd CMOSN W={w_en}   L={2*LAMBDA}
+ AS={5*w_en*LAMBDA} PS={10*LAMBDA+2*w_en} AD={5*w_en*LAMBDA} PD={10*LAMBDA+2*w_en}

M34 M G3 gnd gnd CMOSN W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}



Xi3 M C3 vdd gnd INV

***********************************************************************************************


M37 vdd C0 Q vdd CMOSP W={w_fp}   L={2*LAMBDA}
+ AS={5*w_fp*LAMBDA} PS={10*LAMBDA+2*w_fp} AD={5*w_fp*LAMBDA} PD={10*LAMBDA+2*w_fp}

M38 Q G1 R vdd CMOSP W={w_fp}   L={2*LAMBDA}
+ AS={5*w_fp*LAMBDA} PS={10*LAMBDA+2*w_fp} AD={5*w_fp*LAMBDA} PD={10*LAMBDA+2*w_fp}

M39 R G2 S vdd CMOSP W={w_fp}   L={2*LAMBDA}
+ AS={5*w_fp*LAMBDA} PS={10*LAMBDA+2*w_fp} AD={5*w_fp*LAMBDA} PD={10*LAMBDA+2*w_fp}

M40 S G3 T vdd CMOSP W={w_fp}   L={2*LAMBDA}
+ AS={5*w_fp*LAMBDA} PS={10*LAMBDA+2*w_fp} AD={5*w_fp*LAMBDA} PD={10*LAMBDA+2*w_fp}

M41 T G4 U vdd CMOSP W={w_fp}   L={2*LAMBDA}
+ AS={5*w_fp*LAMBDA} PS={10*LAMBDA+2*w_fp} AD={5*w_fp*LAMBDA} PD={10*LAMBDA+2*w_fp}

M42 U P4 V gnd CMOSN W={w_fn}   L={2*LAMBDA}
+ AS={5*w_fn*LAMBDA} PS={10*LAMBDA+2*w_fn} AD={5*w_fn*LAMBDA} PD={10*LAMBDA+2*w_fn}

M43 V P3 W gnd CMOSN W={w_fn}   L={2*LAMBDA}
+ AS={5*w_fn*LAMBDA} PS={10*LAMBDA+2*w_fn} AD={5*w_fn*LAMBDA} PD={10*LAMBDA+2*w_fn}

M44 W P2 X gnd CMOSN W={w_fn}   L={2*LAMBDA}
+ AS={5*w_fn*LAMBDA} PS={10*LAMBDA+2*w_fn} AD={5*w_fn*LAMBDA} PD={10*LAMBDA+2*w_fn}

M45 X P1 Y gnd CMOSN W={w_fn}   L={2*LAMBDA}
+ AS={5*w_fn*LAMBDA} PS={10*LAMBDA+2*w_fn} AD={5*w_fn*LAMBDA} PD={10*LAMBDA+2*w_fn}

M46 Y C0 gnd gnd CMOSN W={w_fn}   L={2*LAMBDA}
+ AS={5*w_fn*LAMBDA} PS={10*LAMBDA+2*w_fn} AD={5*w_fn*LAMBDA} PD={10*LAMBDA+2*w_fn}

M47 vdd P1 Q vdd CMOSP W={w_fp}   L={2*LAMBDA}
+ AS={5*w_fp*LAMBDA} PS={10*LAMBDA+2*w_fp} AD={5*w_fp*LAMBDA} PD={10*LAMBDA+2*w_fp}

M48 vdd P2 R vdd CMOSP W={w_gp}   L={2*LAMBDA}
+ AS={5*w_gp*LAMBDA} PS={10*LAMBDA+2*w_gp} AD={5*w_gp*LAMBDA} PD={10*LAMBDA+2*w_gp}

M49 vdd P3 S vdd CMOSP W={w_hp}   L={2*LAMBDA}
+ AS={5*w_hp*LAMBDA} PS={10*LAMBDA+2*w_hp} AD={5*w_hp*LAMBDA} PD={10*LAMBDA+2*w_hp}

M50 vdd P4 T vdd CMOSP W={w_ip}   L={2*LAMBDA}
+ AS={5*w_ip*LAMBDA} PS={10*LAMBDA+2*w_ip} AD={5*w_ip*LAMBDA} PD={10*LAMBDA+2*w_ip}

M51 X G1 gnd gnd CMOSN W={w_gn}   L={2*LAMBDA}
+ AS={5*w_gn*LAMBDA} PS={10*LAMBDA+2*w_gn} AD={5*w_gn*LAMBDA} PD={10*LAMBDA+2*w_gn}

M52 W G2 gnd gnd CMOSN W={w_in}   L={2*LAMBDA}
+ AS={5*w_in*LAMBDA} PS={10*LAMBDA+2*w_in} AD={5*w_in*LAMBDA} PD={10*LAMBDA+2*w_in}

M53 V G3 gnd gnd CMOSN W={w_hn}   L={2*LAMBDA}
+ AS={5*w_hn*LAMBDA} PS={10*LAMBDA+2*w_hn} AD={5*w_hn*LAMBDA} PD={10*LAMBDA+2*w_hn}

M54 U G4 gnd gnd CMOSN W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}


Xi4 U C_4 vdd gnd INV




.tran  0.1n 100n


.control
set hcopypscolor = 1 *White background for saving plots
set color1=white
set color0=black


run

 plot V(c0) 2+V(c1) 4+V(c2) 6+V(c3) 8+V(C_4)




.endc
