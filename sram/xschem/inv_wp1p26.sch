v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {inv_wp1p26: generated from cells.sp (inv wn=0.42 wp=1.26)} -200 -120 0 0 0.5 0.5 {}
C {iopin.sym} -200 0 0 0 {name=p0 lab=a}
C {iopin.sym} -200 40 0 0 {name=p1 lab=y}
C {iopin.sym} -200 80 0 0 {name=p2 lab=vdd}
C {iopin.sym} -200 120 0 0 {name=p3 lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 200 0 0 0 {name=MP L=0.15 W=1.26 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 220 30 280 30 {lab=y}
C {lab_pin.sym} 280 30 0 1 {name=l1 sig_type=std_logic lab=y}
N 180 0 120 0 {lab=a}
C {lab_pin.sym} 120 0 0 0 {name=l2 sig_type=std_logic lab=a}
N 220 -30 280 -30 {lab=vdd}
C {lab_pin.sym} 280 -30 0 1 {name=l3 sig_type=std_logic lab=vdd}
N 220 0 360 0 {lab=vdd}
C {lab_pin.sym} 360 0 0 1 {name=l4 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 620 0 0 0 {name=MN L=0.15 W=0.42 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 640 -30 700 -30 {lab=y}
C {lab_pin.sym} 700 -30 0 1 {name=l5 sig_type=std_logic lab=y}
N 600 0 540 0 {lab=a}
C {lab_pin.sym} 540 0 0 0 {name=l6 sig_type=std_logic lab=a}
N 640 30 700 30 {lab=vss}
C {lab_pin.sym} 700 30 0 1 {name=l7 sig_type=std_logic lab=vss}
N 640 0 780 0 {lab=vss}
C {lab_pin.sym} 780 0 0 1 {name=l8 sig_type=std_logic lab=vss}
