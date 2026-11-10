v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {colmux: generated from cells.sp (colmux)} -200 -120 0 0 0.5 0.5 {}
C {iopin.sym} -200 0 0 0 {name=p0 lab=bl}
C {iopin.sym} -200 40 0 0 {name=p1 lab=blb}
C {iopin.sym} -200 80 0 0 {name=p2 lab=dl}
C {iopin.sym} -200 120 0 0 {name=p3 lab=dlb}
C {iopin.sym} -200 160 0 0 {name=p4 lab=csel}
C {iopin.sym} -200 200 0 0 {name=p5 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 200 0 0 0 {name=MN1 L=0.15 W=0.84 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 220 -30 280 -30 {lab=bl}
C {lab_pin.sym} 280 -30 0 1 {name=l1 sig_type=std_logic lab=bl}
N 180 0 120 0 {lab=csel}
C {lab_pin.sym} 120 0 0 0 {name=l2 sig_type=std_logic lab=csel}
N 220 30 280 30 {lab=dl}
C {lab_pin.sym} 280 30 0 1 {name=l3 sig_type=std_logic lab=dl}
N 220 0 360 0 {lab=vss}
C {lab_pin.sym} 360 0 0 1 {name=l4 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 620 0 0 0 {name=MN2 L=0.15 W=0.84 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 640 -30 700 -30 {lab=blb}
C {lab_pin.sym} 700 -30 0 1 {name=l5 sig_type=std_logic lab=blb}
N 600 0 540 0 {lab=csel}
C {lab_pin.sym} 540 0 0 0 {name=l6 sig_type=std_logic lab=csel}
N 640 30 700 30 {lab=dlb}
C {lab_pin.sym} 700 30 0 1 {name=l7 sig_type=std_logic lab=dlb}
N 640 0 780 0 {lab=vss}
C {lab_pin.sym} 780 0 0 1 {name=l8 sig_type=std_logic lab=vss}
