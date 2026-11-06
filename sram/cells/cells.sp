* ============================================================
*  256x1 SRAM (16x16 array) -- transistor-level leaf cells
*  Technology: SkyWater SKY130 (1.8 V core devices)
*  Units: W/L in um (.option scale=1u comes from the model lib)
* ============================================================

* ---- device wrappers: add drain/source junction area & perimeter
*      (diffusion extension 0.29 um) so junction caps are modelled
.subckt nmos d g s b w=0.42 l=0.15 
X1 d g s b sky130_fd_pr__nfet_01v8 w={w} l={l} ad={w*0.29} as={w*0.29} pd={2*(w+0.29)} ps={2*(w+0.29)}
.ends nmos
.subckt pmos d g s b w=0.84 l=0.15 
X1 d g s b sky130_fd_pr__pfet_01v8 w={w} l={l} ad={w*0.29} as={w*0.29} pd={2*(w+0.29)} ps={2*(w+0.29)}
.ends pmos

* ---- basic gates ------------------------------------------------
.subckt inv a y vdd vss wn=0.42 wp=0.84
XP y a vdd vdd pmos w={wp}
XN y a vss vss nmos w={wn}
.ends inv

.subckt nand2 a b y vdd vss wn=0.84 wp=0.84
XP1 y a vdd vdd pmos w={wp}
XP2 y b vdd vdd pmos w={wp}
XN1 y a n1 vss nmos w={wn}
XN2 n1 b vss vss nmos w={wn}
.ends nand2

.subckt nand3 a b c y vdd vss wn=1.26 wp=0.84
XP1 y a vdd vdd pmos w={wp}
XP2 y b vdd vdd pmos w={wp}
XP3 y c vdd vdd pmos w={wp}
XN1 y a n1 vss nmos w={wn}
XN2 n1 b n2 vss nmos w={wn}
XN3 n2 c vss vss nmos w={wn}
.ends nand3

* ---- 6T bit cell  (PD=0.63, PG=0.42, PU=0.42 ; cell ratio 1.5) --
.subckt bitcell bl blb wl vdd vss
XPU1 q  qb vdd vdd pmos w=0.42
XPD1 q  qb vss vss nmos w=0.63
XPU2 qb q  vdd vdd pmos w=0.42
XPD2 qb q  vss vss nmos w=0.63
XPG1 bl  wl q  vss nmos w=0.42
XPG2 blb wl qb vss nmos w=0.42
.ends bitcell

* ---- positive-edge master-slave TG flip-flop (Q and QB outputs) --
*  master transparent while clk=0, slave transparent while clk=1
.subckt dff d clk q qb vdd vss
XCI clk ckb vdd vss inv
XCI2 ckb ck vdd vss inv
* master
XT1N d ckb m1 vss nmos w=0.42
XT1P d ck  m1 vdd pmos w=0.42
XM1 m1 m2 vdd vss inv
XM2 m2 m3 vdd vss inv
XT2N m3 ck  m1 vss nmos w=0.42
XT2P m3 ckb m1 vdd pmos w=0.42
* slave
XT3N m2 ck  s1 vss nmos w=0.42
XT3P m2 ckb s1 vdd pmos w=0.42
XS1 s1 q  vdd vss inv wn=0.63 wp=1.26
XS2 q  qb vdd vss inv
XT4N qb ckb s1 vss nmos w=0.42
XT4P qb ck  s1 vdd pmos w=0.42
.ends dff

* ---- column periphery (one per column) ---------------------------
*  precharge + equalise, active low pcb (CLK high phase)
.subckt precharge bl blb pcb vdd
XP1 bl  pcb vdd vdd pmos w=0.84
XP2 blb pcb vdd vdd pmos w=0.84
XP3 bl  pcb blb vdd pmos w=0.42
.ends precharge
*  16:1 column mux slice: NMOS pass gates bitline pair -> data line pair
.subckt colmux bl blb dl dlb csel vss
XN1 bl  csel dl  vss nmos w=0.84
XN2 blb csel dlb vss nmos w=0.84
.ends colmux

* ---- shared read / write circuit (one for the whole array) ------
*  write: we=1 pulls DL low when din=0, DLB low when din=1
*  read : DL precharged high; skewed inverter senses DL falling
*         rd = ~Q(selected cell)
.subckt rwckt dl dlb we din dinb pcb rd vdd vss
XPD1 dl  pcb vdd vdd pmos w=1.26
XPD2 dlb pcb vdd vdd pmos w=1.26
XPE  dl  pcb dlb vdd pmos w=0.42
XW1 dl  we  w1 vss nmos w=1.68
XW2 w1  dinb vss vss nmos w=1.68
XW3 dlb we  w2 vss nmos w=1.68
XW4 w2  din vss vss nmos w=1.68
XSA dl rd vdd vss inv wn=0.42 wp=1.26
.ends rwckt

* ---- bond wire + I/O pad equivalent -----------------------------
*  bond wire: R=0.2 ohm, L=2 nH (~2 mm Au wire); pad+package C=1 pF
*  ESD: double diode clamp to the I/O rails
.model desd D(is=1e-14 cjo=0.2p rs=2)
.subckt bondpad ext pad vddio vss
Rbw ext n1 0.2
Lbw n1 pad 2n
Cpad pad vss 1p
D1 pad vddio desd
D2 vss pad desd
.ends bondpad

*  input buffer after pad (2 inverters, non-inverting)
.subckt inbuf pad y vdd vss
X1 pad n1 vdd vss inv wn=0.84 wp=1.68
X2 n1 y vdd vss inv wn=1.68 wp=3.36
.ends inbuf

*  output driver: 6-stage tapered chain (fan-out 4/stage), non-inverting
*  final stage Wp=860um / Wn=430um built from parallel fingers (<=90um each)
.subckt outbuf a y vdd vss
X1 a  n1 vdd vss inv wn=0.42 wp=0.84
X2 n1 n2 vdd vss inv wn=1.68 wp=3.36
X3 n2 n3 vdd vss inv wn=6.72 wp=13.44
XP4_0 n4 n3 vdd vdd pmos w=55.0
XN4_0 n4 n3 vss vss nmos w=27.0
XP5_0 n5 n4 vdd vdd pmos w=71.67
XP5_1 n5 n4 vdd vdd pmos w=71.67
XP5_2 n5 n4 vdd vdd pmos w=71.67
XN5_0 n5 n4 vss vss nmos w=54.0
XN5_1 n5 n4 vss vss nmos w=54.0
XP6_0 yd n5 vdd vdd pmos w=86.0
XP6_1 yd n5 vdd vdd pmos w=86.0
XP6_2 yd n5 vdd vdd pmos w=86.0
XP6_3 yd n5 vdd vdd pmos w=86.0
XP6_4 yd n5 vdd vdd pmos w=86.0
XP6_5 yd n5 vdd vdd pmos w=86.0
XP6_6 yd n5 vdd vdd pmos w=86.0
XP6_7 yd n5 vdd vdd pmos w=86.0
XP6_8 yd n5 vdd vdd pmos w=86.0
XP6_9 yd n5 vdd vdd pmos w=86.0
XN6_0 yd n5 vss vss nmos w=86.0
XN6_1 yd n5 vss vss nmos w=86.0
XN6_2 yd n5 vss vss nmos w=86.0
XN6_3 yd n5 vss vss nmos w=86.0
XN6_4 yd n5 vss vss nmos w=86.0
* series termination (~Z0 of bond wire + load) to damp L-C ringing
Rterm yd y 20
.ends outbuf
