v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {nand3: generated from cells.sp (nand3 wn=1.26 wp=0.84)} -200 -120 0 0 0.5 0.5 {}
C {iopin.sym} -200 0 0 0 {name=p0 lab=a}
C {iopin.sym} -200 40 0 0 {name=p1 lab=b}
C {iopin.sym} -200 80 0 0 {name=p2 lab=c}
C {iopin.sym} -200 120 0 0 {name=p3 lab=y}
C {iopin.sym} -200 160 0 0 {name=p4 lab=vdd}
C {iopin.sym} -200 200 0 0 {name=p5 lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 200 0 0 0 {name=MP1 L=0.15 W=0.84 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 220 30 280 30 {lab=y}
C {lab_pin.sym} 280 30 0 1 {name=l1 sig_type=std_logic lab=y}
N 180 0 120 0 {lab=a}
C {lab_pin.sym} 120 0 0 0 {name=l2 sig_type=std_logic lab=a}
N 220 -30 280 -30 {lab=vdd}
C {lab_pin.sym} 280 -30 0 1 {name=l3 sig_type=std_logic lab=vdd}
N 220 0 360 0 {lab=vdd}
C {lab_pin.sym} 360 0 0 1 {name=l4 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 620 0 0 0 {name=MP2 L=0.15 W=0.84 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 640 30 700 30 {lab=y}
C {lab_pin.sym} 700 30 0 1 {name=l5 sig_type=std_logic lab=y}
N 600 0 540 0 {lab=b}
C {lab_pin.sym} 540 0 0 0 {name=l6 sig_type=std_logic lab=b}
N 640 -30 700 -30 {lab=vdd}
C {lab_pin.sym} 700 -30 0 1 {name=l7 sig_type=std_logic lab=vdd}
N 640 0 780 0 {lab=vdd}
C {lab_pin.sym} 780 0 0 1 {name=l8 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1040 0 0 0 {name=MP3 L=0.15 W=0.84 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1060 30 1120 30 {lab=y}
C {lab_pin.sym} 1120 30 0 1 {name=l9 sig_type=std_logic lab=y}
N 1020 0 960 0 {lab=c}
C {lab_pin.sym} 960 0 0 0 {name=l10 sig_type=std_logic lab=c}
N 1060 -30 1120 -30 {lab=vdd}
C {lab_pin.sym} 1120 -30 0 1 {name=l11 sig_type=std_logic lab=vdd}
N 1060 0 1200 0 {lab=vdd}
C {lab_pin.sym} 1200 0 0 1 {name=l12 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 1460 0 0 0 {name=MN1 L=0.15 W=1.26 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1480 -30 1540 -30 {lab=y}
C {lab_pin.sym} 1540 -30 0 1 {name=l13 sig_type=std_logic lab=y}
N 1440 0 1380 0 {lab=a}
C {lab_pin.sym} 1380 0 0 0 {name=l14 sig_type=std_logic lab=a}
N 1480 30 1540 30 {lab=n1}
C {lab_pin.sym} 1540 30 0 1 {name=l15 sig_type=std_logic lab=n1}
N 1480 0 1620 0 {lab=vss}
C {lab_pin.sym} 1620 0 0 1 {name=l16 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1880 0 0 0 {name=MN2 L=0.15 W=1.26 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1900 -30 1960 -30 {lab=n1}
C {lab_pin.sym} 1960 -30 0 1 {name=l17 sig_type=std_logic lab=n1}
N 1860 0 1800 0 {lab=b}
C {lab_pin.sym} 1800 0 0 0 {name=l18 sig_type=std_logic lab=b}
N 1900 30 1960 30 {lab=n2}
C {lab_pin.sym} 1960 30 0 1 {name=l19 sig_type=std_logic lab=n2}
N 1900 0 2040 0 {lab=vss}
C {lab_pin.sym} 2040 0 0 1 {name=l20 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 200 220 0 0 {name=MN3 L=0.15 W=1.26 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 220 190 280 190 {lab=n2}
C {lab_pin.sym} 280 190 0 1 {name=l21 sig_type=std_logic lab=n2}
N 180 220 120 220 {lab=c}
C {lab_pin.sym} 120 220 0 0 {name=l22 sig_type=std_logic lab=c}
N 220 250 280 250 {lab=vss}
C {lab_pin.sym} 280 250 0 1 {name=l23 sig_type=std_logic lab=vss}
N 220 220 360 220 {lab=vss}
C {lab_pin.sym} 360 220 0 1 {name=l24 sig_type=std_logic lab=vss}
