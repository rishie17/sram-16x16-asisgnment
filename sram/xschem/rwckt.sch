v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {rwckt: generated from cells.sp (rwckt)} -200 -120 0 0 0.5 0.5 {}
C {iopin.sym} -200 0 0 0 {name=p0 lab=dl}
C {iopin.sym} -200 40 0 0 {name=p1 lab=dlb}
C {iopin.sym} -200 80 0 0 {name=p2 lab=we}
C {iopin.sym} -200 120 0 0 {name=p3 lab=din}
C {iopin.sym} -200 160 0 0 {name=p4 lab=dinb}
C {iopin.sym} -200 200 0 0 {name=p5 lab=pcb}
C {iopin.sym} -200 240 0 0 {name=p6 lab=rd}
C {iopin.sym} -200 280 0 0 {name=p7 lab=vdd}
C {iopin.sym} -200 320 0 0 {name=p8 lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 200 0 0 0 {name=MPD1 L=0.15 W=1.26 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 220 30 280 30 {lab=dl}
C {lab_pin.sym} 280 30 0 1 {name=l1 sig_type=std_logic lab=dl}
N 180 0 120 0 {lab=pcb}
C {lab_pin.sym} 120 0 0 0 {name=l2 sig_type=std_logic lab=pcb}
N 220 -30 280 -30 {lab=vdd}
C {lab_pin.sym} 280 -30 0 1 {name=l3 sig_type=std_logic lab=vdd}
N 220 0 360 0 {lab=vdd}
C {lab_pin.sym} 360 0 0 1 {name=l4 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 620 0 0 0 {name=MPD2 L=0.15 W=1.26 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 640 30 700 30 {lab=dlb}
C {lab_pin.sym} 700 30 0 1 {name=l5 sig_type=std_logic lab=dlb}
N 600 0 540 0 {lab=pcb}
C {lab_pin.sym} 540 0 0 0 {name=l6 sig_type=std_logic lab=pcb}
N 640 -30 700 -30 {lab=vdd}
C {lab_pin.sym} 700 -30 0 1 {name=l7 sig_type=std_logic lab=vdd}
N 640 0 780 0 {lab=vdd}
C {lab_pin.sym} 780 0 0 1 {name=l8 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1040 0 0 0 {name=MPE L=0.15 W=0.42 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1060 30 1120 30 {lab=dl}
C {lab_pin.sym} 1120 30 0 1 {name=l9 sig_type=std_logic lab=dl}
N 1020 0 960 0 {lab=pcb}
C {lab_pin.sym} 960 0 0 0 {name=l10 sig_type=std_logic lab=pcb}
N 1060 -30 1120 -30 {lab=dlb}
C {lab_pin.sym} 1120 -30 0 1 {name=l11 sig_type=std_logic lab=dlb}
N 1060 0 1200 0 {lab=vdd}
C {lab_pin.sym} 1200 0 0 1 {name=l12 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 1460 0 0 0 {name=MW1 L=0.15 W=1.68 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1480 -30 1540 -30 {lab=dl}
C {lab_pin.sym} 1540 -30 0 1 {name=l13 sig_type=std_logic lab=dl}
N 1440 0 1380 0 {lab=we}
C {lab_pin.sym} 1380 0 0 0 {name=l14 sig_type=std_logic lab=we}
N 1480 30 1540 30 {lab=w1}
C {lab_pin.sym} 1540 30 0 1 {name=l15 sig_type=std_logic lab=w1}
N 1480 0 1620 0 {lab=vss}
C {lab_pin.sym} 1620 0 0 1 {name=l16 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1880 0 0 0 {name=MW2 L=0.15 W=1.68 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1900 -30 1960 -30 {lab=w1}
C {lab_pin.sym} 1960 -30 0 1 {name=l17 sig_type=std_logic lab=w1}
N 1860 0 1800 0 {lab=dinb}
C {lab_pin.sym} 1800 0 0 0 {name=l18 sig_type=std_logic lab=dinb}
N 1900 30 1960 30 {lab=vss}
C {lab_pin.sym} 1960 30 0 1 {name=l19 sig_type=std_logic lab=vss}
N 1900 0 2040 0 {lab=vss}
C {lab_pin.sym} 2040 0 0 1 {name=l20 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 200 220 0 0 {name=MW3 L=0.15 W=1.68 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 220 190 280 190 {lab=dlb}
C {lab_pin.sym} 280 190 0 1 {name=l21 sig_type=std_logic lab=dlb}
N 180 220 120 220 {lab=we}
C {lab_pin.sym} 120 220 0 0 {name=l22 sig_type=std_logic lab=we}
N 220 250 280 250 {lab=w2}
C {lab_pin.sym} 280 250 0 1 {name=l23 sig_type=std_logic lab=w2}
N 220 220 360 220 {lab=vss}
C {lab_pin.sym} 360 220 0 1 {name=l24 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 620 220 0 0 {name=MW4 L=0.15 W=1.68 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 640 190 700 190 {lab=w2}
C {lab_pin.sym} 700 190 0 1 {name=l25 sig_type=std_logic lab=w2}
N 600 220 540 220 {lab=din}
C {lab_pin.sym} 540 220 0 0 {name=l26 sig_type=std_logic lab=din}
N 640 250 700 250 {lab=vss}
C {lab_pin.sym} 700 250 0 1 {name=l27 sig_type=std_logic lab=vss}
N 640 220 780 220 {lab=vss}
C {lab_pin.sym} 780 220 0 1 {name=l28 sig_type=std_logic lab=vss}
C {inv_wp1p26.sym} 1040 220 0 0 {name=XSA}
N 960 180 920 180 {lab=dl}
C {lab_pin.sym} 920 180 0 0 {name=l29 sig_type=std_logic lab=dl}
N 1120 180 1160 180 {lab=rd}
C {lab_pin.sym} 1160 180 0 1 {name=l30 sig_type=std_logic lab=rd}
N 960 200 920 200 {lab=vdd}
C {lab_pin.sym} 920 200 0 0 {name=l31 sig_type=std_logic lab=vdd}
N 1120 200 1160 200 {lab=vss}
C {lab_pin.sym} 1160 200 0 1 {name=l32 sig_type=std_logic lab=vss}
