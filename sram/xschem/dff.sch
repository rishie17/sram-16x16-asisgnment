v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {dff: generated from cells.sp (dff)} -200 -120 0 0 0.5 0.5 {}
C {iopin.sym} -200 0 0 0 {name=p0 lab=d}
C {iopin.sym} -200 40 0 0 {name=p1 lab=clk}
C {iopin.sym} -200 80 0 0 {name=p2 lab=q}
C {iopin.sym} -200 120 0 0 {name=p3 lab=qb}
C {iopin.sym} -200 160 0 0 {name=p4 lab=vdd}
C {iopin.sym} -200 200 0 0 {name=p5 lab=vss}
C {inv.sym} 200 0 0 0 {name=XCI}
N 120 -40 80 -40 {lab=clk}
C {lab_pin.sym} 80 -40 0 0 {name=l1 sig_type=std_logic lab=clk}
N 280 -40 320 -40 {lab=ckb}
C {lab_pin.sym} 320 -40 0 1 {name=l2 sig_type=std_logic lab=ckb}
N 120 -20 80 -20 {lab=vdd}
C {lab_pin.sym} 80 -20 0 0 {name=l3 sig_type=std_logic lab=vdd}
N 280 -20 320 -20 {lab=vss}
C {lab_pin.sym} 320 -20 0 1 {name=l4 sig_type=std_logic lab=vss}
C {inv.sym} 620 0 0 0 {name=XCI2}
N 540 -40 500 -40 {lab=ckb}
C {lab_pin.sym} 500 -40 0 0 {name=l5 sig_type=std_logic lab=ckb}
N 700 -40 740 -40 {lab=ck}
C {lab_pin.sym} 740 -40 0 1 {name=l6 sig_type=std_logic lab=ck}
N 540 -20 500 -20 {lab=vdd}
C {lab_pin.sym} 500 -20 0 0 {name=l7 sig_type=std_logic lab=vdd}
N 700 -20 740 -20 {lab=vss}
C {lab_pin.sym} 740 -20 0 1 {name=l8 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1040 0 0 0 {name=MT1N L=0.15 W=0.42 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1060 -30 1120 -30 {lab=d}
C {lab_pin.sym} 1120 -30 0 1 {name=l9 sig_type=std_logic lab=d}
N 1020 0 960 0 {lab=ckb}
C {lab_pin.sym} 960 0 0 0 {name=l10 sig_type=std_logic lab=ckb}
N 1060 30 1120 30 {lab=m1}
C {lab_pin.sym} 1120 30 0 1 {name=l11 sig_type=std_logic lab=m1}
N 1060 0 1200 0 {lab=vss}
C {lab_pin.sym} 1200 0 0 1 {name=l12 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 1460 0 0 0 {name=MT1P L=0.15 W=0.42 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1480 30 1540 30 {lab=d}
C {lab_pin.sym} 1540 30 0 1 {name=l13 sig_type=std_logic lab=d}
N 1440 0 1380 0 {lab=ck}
C {lab_pin.sym} 1380 0 0 0 {name=l14 sig_type=std_logic lab=ck}
N 1480 -30 1540 -30 {lab=m1}
C {lab_pin.sym} 1540 -30 0 1 {name=l15 sig_type=std_logic lab=m1}
N 1480 0 1620 0 {lab=vdd}
C {lab_pin.sym} 1620 0 0 1 {name=l16 sig_type=std_logic lab=vdd}
C {inv.sym} 1880 0 0 0 {name=XM1}
N 1800 -40 1760 -40 {lab=m1}
C {lab_pin.sym} 1760 -40 0 0 {name=l17 sig_type=std_logic lab=m1}
N 1960 -40 2000 -40 {lab=m2}
C {lab_pin.sym} 2000 -40 0 1 {name=l18 sig_type=std_logic lab=m2}
N 1800 -20 1760 -20 {lab=vdd}
C {lab_pin.sym} 1760 -20 0 0 {name=l19 sig_type=std_logic lab=vdd}
N 1960 -20 2000 -20 {lab=vss}
C {lab_pin.sym} 2000 -20 0 1 {name=l20 sig_type=std_logic lab=vss}
C {inv.sym} 200 220 0 0 {name=XM2}
N 120 180 80 180 {lab=m2}
C {lab_pin.sym} 80 180 0 0 {name=l21 sig_type=std_logic lab=m2}
N 280 180 320 180 {lab=m3}
C {lab_pin.sym} 320 180 0 1 {name=l22 sig_type=std_logic lab=m3}
N 120 200 80 200 {lab=vdd}
C {lab_pin.sym} 80 200 0 0 {name=l23 sig_type=std_logic lab=vdd}
N 280 200 320 200 {lab=vss}
C {lab_pin.sym} 320 200 0 1 {name=l24 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 620 220 0 0 {name=MT2N L=0.15 W=0.42 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 640 190 700 190 {lab=m3}
C {lab_pin.sym} 700 190 0 1 {name=l25 sig_type=std_logic lab=m3}
N 600 220 540 220 {lab=ck}
C {lab_pin.sym} 540 220 0 0 {name=l26 sig_type=std_logic lab=ck}
N 640 250 700 250 {lab=m1}
C {lab_pin.sym} 700 250 0 1 {name=l27 sig_type=std_logic lab=m1}
N 640 220 780 220 {lab=vss}
C {lab_pin.sym} 780 220 0 1 {name=l28 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 1040 220 0 0 {name=MT2P L=0.15 W=0.42 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1060 250 1120 250 {lab=m3}
C {lab_pin.sym} 1120 250 0 1 {name=l29 sig_type=std_logic lab=m3}
N 1020 220 960 220 {lab=ckb}
C {lab_pin.sym} 960 220 0 0 {name=l30 sig_type=std_logic lab=ckb}
N 1060 190 1120 190 {lab=m1}
C {lab_pin.sym} 1120 190 0 1 {name=l31 sig_type=std_logic lab=m1}
N 1060 220 1200 220 {lab=vdd}
C {lab_pin.sym} 1200 220 0 1 {name=l32 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 1460 220 0 0 {name=MT3N L=0.15 W=0.42 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1480 190 1540 190 {lab=m2}
C {lab_pin.sym} 1540 190 0 1 {name=l33 sig_type=std_logic lab=m2}
N 1440 220 1380 220 {lab=ck}
C {lab_pin.sym} 1380 220 0 0 {name=l34 sig_type=std_logic lab=ck}
N 1480 250 1540 250 {lab=s1}
C {lab_pin.sym} 1540 250 0 1 {name=l35 sig_type=std_logic lab=s1}
N 1480 220 1620 220 {lab=vss}
C {lab_pin.sym} 1620 220 0 1 {name=l36 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 1880 220 0 0 {name=MT3P L=0.15 W=0.42 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1900 250 1960 250 {lab=m2}
C {lab_pin.sym} 1960 250 0 1 {name=l37 sig_type=std_logic lab=m2}
N 1860 220 1800 220 {lab=ckb}
C {lab_pin.sym} 1800 220 0 0 {name=l38 sig_type=std_logic lab=ckb}
N 1900 190 1960 190 {lab=s1}
C {lab_pin.sym} 1960 190 0 1 {name=l39 sig_type=std_logic lab=s1}
N 1900 220 2040 220 {lab=vdd}
C {lab_pin.sym} 2040 220 0 1 {name=l40 sig_type=std_logic lab=vdd}
C {inv_wn0p63_wp1p26.sym} 200 440 0 0 {name=XS1}
N 120 400 80 400 {lab=s1}
C {lab_pin.sym} 80 400 0 0 {name=l41 sig_type=std_logic lab=s1}
N 280 400 320 400 {lab=q}
C {lab_pin.sym} 320 400 0 1 {name=l42 sig_type=std_logic lab=q}
N 120 420 80 420 {lab=vdd}
C {lab_pin.sym} 80 420 0 0 {name=l43 sig_type=std_logic lab=vdd}
N 280 420 320 420 {lab=vss}
C {lab_pin.sym} 320 420 0 1 {name=l44 sig_type=std_logic lab=vss}
C {inv.sym} 620 440 0 0 {name=XS2}
N 540 400 500 400 {lab=q}
C {lab_pin.sym} 500 400 0 0 {name=l45 sig_type=std_logic lab=q}
N 700 400 740 400 {lab=qb}
C {lab_pin.sym} 740 400 0 1 {name=l46 sig_type=std_logic lab=qb}
N 540 420 500 420 {lab=vdd}
C {lab_pin.sym} 500 420 0 0 {name=l47 sig_type=std_logic lab=vdd}
N 700 420 740 420 {lab=vss}
C {lab_pin.sym} 740 420 0 1 {name=l48 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1040 440 0 0 {name=MT4N L=0.15 W=0.42 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1060 410 1120 410 {lab=qb}
C {lab_pin.sym} 1120 410 0 1 {name=l49 sig_type=std_logic lab=qb}
N 1020 440 960 440 {lab=ckb}
C {lab_pin.sym} 960 440 0 0 {name=l50 sig_type=std_logic lab=ckb}
N 1060 470 1120 470 {lab=s1}
C {lab_pin.sym} 1120 470 0 1 {name=l51 sig_type=std_logic lab=s1}
N 1060 440 1200 440 {lab=vss}
C {lab_pin.sym} 1200 440 0 1 {name=l52 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 1460 440 0 0 {name=MT4P L=0.15 W=0.42 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1480 470 1540 470 {lab=qb}
C {lab_pin.sym} 1540 470 0 1 {name=l53 sig_type=std_logic lab=qb}
N 1440 440 1380 440 {lab=ck}
C {lab_pin.sym} 1380 440 0 0 {name=l54 sig_type=std_logic lab=ck}
N 1480 410 1540 410 {lab=s1}
C {lab_pin.sym} 1540 410 0 1 {name=l55 sig_type=std_logic lab=s1}
N 1480 440 1620 440 {lab=vdd}
C {lab_pin.sym} 1620 440 0 1 {name=l56 sig_type=std_logic lab=vdd}
