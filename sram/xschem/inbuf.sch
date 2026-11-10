v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {inbuf: generated from cells.sp (inbuf)} -200 -120 0 0 0.5 0.5 {}
C {iopin.sym} -200 0 0 0 {name=p0 lab=pad}
C {iopin.sym} -200 40 0 0 {name=p1 lab=y}
C {iopin.sym} -200 80 0 0 {name=p2 lab=vdd}
C {iopin.sym} -200 120 0 0 {name=p3 lab=vss}
C {inv_wn0p84_wp1p68.sym} 200 0 0 0 {name=X1}
N 120 -40 80 -40 {lab=pad}
C {lab_pin.sym} 80 -40 0 0 {name=l1 sig_type=std_logic lab=pad}
N 280 -40 320 -40 {lab=n1}
C {lab_pin.sym} 320 -40 0 1 {name=l2 sig_type=std_logic lab=n1}
N 120 -20 80 -20 {lab=vdd}
C {lab_pin.sym} 80 -20 0 0 {name=l3 sig_type=std_logic lab=vdd}
N 280 -20 320 -20 {lab=vss}
C {lab_pin.sym} 320 -20 0 1 {name=l4 sig_type=std_logic lab=vss}
C {inv_wn1p68_wp3p36.sym} 620 0 0 0 {name=X2}
N 540 -40 500 -40 {lab=n1}
C {lab_pin.sym} 500 -40 0 0 {name=l5 sig_type=std_logic lab=n1}
N 700 -40 740 -40 {lab=y}
C {lab_pin.sym} 740 -40 0 1 {name=l6 sig_type=std_logic lab=y}
N 540 -20 500 -20 {lab=vdd}
C {lab_pin.sym} 500 -20 0 0 {name=l7 sig_type=std_logic lab=vdd}
N 700 -20 740 -20 {lab=vss}
C {lab_pin.sym} 740 -20 0 1 {name=l8 sig_type=std_logic lab=vss}
