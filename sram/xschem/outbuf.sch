v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {outbuf: generated from cells.sp (outbuf)} -200 -120 0 0 0.5 0.5 {}
C {iopin.sym} -200 0 0 0 {name=p0 lab=a}
C {iopin.sym} -200 40 0 0 {name=p1 lab=y}
C {iopin.sym} -200 80 0 0 {name=p2 lab=vdd}
C {iopin.sym} -200 120 0 0 {name=p3 lab=vss}
C {inv.sym} 200 0 0 0 {name=X1}
N 120 -40 80 -40 {lab=a}
C {lab_pin.sym} 80 -40 0 0 {name=l1 sig_type=std_logic lab=a}
N 280 -40 320 -40 {lab=n1}
C {lab_pin.sym} 320 -40 0 1 {name=l2 sig_type=std_logic lab=n1}
N 120 -20 80 -20 {lab=vdd}
C {lab_pin.sym} 80 -20 0 0 {name=l3 sig_type=std_logic lab=vdd}
N 280 -20 320 -20 {lab=vss}
C {lab_pin.sym} 320 -20 0 1 {name=l4 sig_type=std_logic lab=vss}
C {inv_wn1p68_wp3p36.sym} 620 0 0 0 {name=X2}
N 540 -40 500 -40 {lab=n1}
C {lab_pin.sym} 500 -40 0 0 {name=l5 sig_type=std_logic lab=n1}
N 700 -40 740 -40 {lab=n2}
C {lab_pin.sym} 740 -40 0 1 {name=l6 sig_type=std_logic lab=n2}
N 540 -20 500 -20 {lab=vdd}
C {lab_pin.sym} 500 -20 0 0 {name=l7 sig_type=std_logic lab=vdd}
N 700 -20 740 -20 {lab=vss}
C {lab_pin.sym} 740 -20 0 1 {name=l8 sig_type=std_logic lab=vss}
C {inv_wn6p72_wp13p44.sym} 1040 0 0 0 {name=X3}
N 960 -40 920 -40 {lab=n2}
C {lab_pin.sym} 920 -40 0 0 {name=l9 sig_type=std_logic lab=n2}
N 1120 -40 1160 -40 {lab=n3}
C {lab_pin.sym} 1160 -40 0 1 {name=l10 sig_type=std_logic lab=n3}
N 960 -20 920 -20 {lab=vdd}
C {lab_pin.sym} 920 -20 0 0 {name=l11 sig_type=std_logic lab=vdd}
N 1120 -20 1160 -20 {lab=vss}
C {lab_pin.sym} 1160 -20 0 1 {name=l12 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 1460 0 0 0 {name=MP4_0 L=0.15 W=55.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1480 30 1540 30 {lab=n4}
C {lab_pin.sym} 1540 30 0 1 {name=l13 sig_type=std_logic lab=n4}
N 1440 0 1380 0 {lab=n3}
C {lab_pin.sym} 1380 0 0 0 {name=l14 sig_type=std_logic lab=n3}
N 1480 -30 1540 -30 {lab=vdd}
C {lab_pin.sym} 1540 -30 0 1 {name=l15 sig_type=std_logic lab=vdd}
N 1480 0 1620 0 {lab=vdd}
C {lab_pin.sym} 1620 0 0 1 {name=l16 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 1880 0 0 0 {name=MN4_0 L=0.15 W=27.0 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1900 -30 1960 -30 {lab=n4}
C {lab_pin.sym} 1960 -30 0 1 {name=l17 sig_type=std_logic lab=n4}
N 1860 0 1800 0 {lab=n3}
C {lab_pin.sym} 1800 0 0 0 {name=l18 sig_type=std_logic lab=n3}
N 1900 30 1960 30 {lab=vss}
C {lab_pin.sym} 1960 30 0 1 {name=l19 sig_type=std_logic lab=vss}
N 1900 0 2040 0 {lab=vss}
C {lab_pin.sym} 2040 0 0 1 {name=l20 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 200 220 0 0 {name=MP5_0 L=0.15 W=71.67 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 220 250 280 250 {lab=n5}
C {lab_pin.sym} 280 250 0 1 {name=l21 sig_type=std_logic lab=n5}
N 180 220 120 220 {lab=n4}
C {lab_pin.sym} 120 220 0 0 {name=l22 sig_type=std_logic lab=n4}
N 220 190 280 190 {lab=vdd}
C {lab_pin.sym} 280 190 0 1 {name=l23 sig_type=std_logic lab=vdd}
N 220 220 360 220 {lab=vdd}
C {lab_pin.sym} 360 220 0 1 {name=l24 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 620 220 0 0 {name=MP5_1 L=0.15 W=71.67 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 640 250 700 250 {lab=n5}
C {lab_pin.sym} 700 250 0 1 {name=l25 sig_type=std_logic lab=n5}
N 600 220 540 220 {lab=n4}
C {lab_pin.sym} 540 220 0 0 {name=l26 sig_type=std_logic lab=n4}
N 640 190 700 190 {lab=vdd}
C {lab_pin.sym} 700 190 0 1 {name=l27 sig_type=std_logic lab=vdd}
N 640 220 780 220 {lab=vdd}
C {lab_pin.sym} 780 220 0 1 {name=l28 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1040 220 0 0 {name=MP5_2 L=0.15 W=71.67 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1060 250 1120 250 {lab=n5}
C {lab_pin.sym} 1120 250 0 1 {name=l29 sig_type=std_logic lab=n5}
N 1020 220 960 220 {lab=n4}
C {lab_pin.sym} 960 220 0 0 {name=l30 sig_type=std_logic lab=n4}
N 1060 190 1120 190 {lab=vdd}
C {lab_pin.sym} 1120 190 0 1 {name=l31 sig_type=std_logic lab=vdd}
N 1060 220 1200 220 {lab=vdd}
C {lab_pin.sym} 1200 220 0 1 {name=l32 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 1460 220 0 0 {name=MN5_0 L=0.15 W=54.0 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1480 190 1540 190 {lab=n5}
C {lab_pin.sym} 1540 190 0 1 {name=l33 sig_type=std_logic lab=n5}
N 1440 220 1380 220 {lab=n4}
C {lab_pin.sym} 1380 220 0 0 {name=l34 sig_type=std_logic lab=n4}
N 1480 250 1540 250 {lab=vss}
C {lab_pin.sym} 1540 250 0 1 {name=l35 sig_type=std_logic lab=vss}
N 1480 220 1620 220 {lab=vss}
C {lab_pin.sym} 1620 220 0 1 {name=l36 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1880 220 0 0 {name=MN5_1 L=0.15 W=54.0 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1900 190 1960 190 {lab=n5}
C {lab_pin.sym} 1960 190 0 1 {name=l37 sig_type=std_logic lab=n5}
N 1860 220 1800 220 {lab=n4}
C {lab_pin.sym} 1800 220 0 0 {name=l38 sig_type=std_logic lab=n4}
N 1900 250 1960 250 {lab=vss}
C {lab_pin.sym} 1960 250 0 1 {name=l39 sig_type=std_logic lab=vss}
N 1900 220 2040 220 {lab=vss}
C {lab_pin.sym} 2040 220 0 1 {name=l40 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 200 440 0 0 {name=MP6_0 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 220 470 280 470 {lab=yd}
C {lab_pin.sym} 280 470 0 1 {name=l41 sig_type=std_logic lab=yd}
N 180 440 120 440 {lab=n5}
C {lab_pin.sym} 120 440 0 0 {name=l42 sig_type=std_logic lab=n5}
N 220 410 280 410 {lab=vdd}
C {lab_pin.sym} 280 410 0 1 {name=l43 sig_type=std_logic lab=vdd}
N 220 440 360 440 {lab=vdd}
C {lab_pin.sym} 360 440 0 1 {name=l44 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 620 440 0 0 {name=MP6_1 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 640 470 700 470 {lab=yd}
C {lab_pin.sym} 700 470 0 1 {name=l45 sig_type=std_logic lab=yd}
N 600 440 540 440 {lab=n5}
C {lab_pin.sym} 540 440 0 0 {name=l46 sig_type=std_logic lab=n5}
N 640 410 700 410 {lab=vdd}
C {lab_pin.sym} 700 410 0 1 {name=l47 sig_type=std_logic lab=vdd}
N 640 440 780 440 {lab=vdd}
C {lab_pin.sym} 780 440 0 1 {name=l48 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1040 440 0 0 {name=MP6_2 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1060 470 1120 470 {lab=yd}
C {lab_pin.sym} 1120 470 0 1 {name=l49 sig_type=std_logic lab=yd}
N 1020 440 960 440 {lab=n5}
C {lab_pin.sym} 960 440 0 0 {name=l50 sig_type=std_logic lab=n5}
N 1060 410 1120 410 {lab=vdd}
C {lab_pin.sym} 1120 410 0 1 {name=l51 sig_type=std_logic lab=vdd}
N 1060 440 1200 440 {lab=vdd}
C {lab_pin.sym} 1200 440 0 1 {name=l52 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1460 440 0 0 {name=MP6_3 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1480 470 1540 470 {lab=yd}
C {lab_pin.sym} 1540 470 0 1 {name=l53 sig_type=std_logic lab=yd}
N 1440 440 1380 440 {lab=n5}
C {lab_pin.sym} 1380 440 0 0 {name=l54 sig_type=std_logic lab=n5}
N 1480 410 1540 410 {lab=vdd}
C {lab_pin.sym} 1540 410 0 1 {name=l55 sig_type=std_logic lab=vdd}
N 1480 440 1620 440 {lab=vdd}
C {lab_pin.sym} 1620 440 0 1 {name=l56 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1880 440 0 0 {name=MP6_4 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1900 470 1960 470 {lab=yd}
C {lab_pin.sym} 1960 470 0 1 {name=l57 sig_type=std_logic lab=yd}
N 1860 440 1800 440 {lab=n5}
C {lab_pin.sym} 1800 440 0 0 {name=l58 sig_type=std_logic lab=n5}
N 1900 410 1960 410 {lab=vdd}
C {lab_pin.sym} 1960 410 0 1 {name=l59 sig_type=std_logic lab=vdd}
N 1900 440 2040 440 {lab=vdd}
C {lab_pin.sym} 2040 440 0 1 {name=l60 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 200 660 0 0 {name=MP6_5 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 220 690 280 690 {lab=yd}
C {lab_pin.sym} 280 690 0 1 {name=l61 sig_type=std_logic lab=yd}
N 180 660 120 660 {lab=n5}
C {lab_pin.sym} 120 660 0 0 {name=l62 sig_type=std_logic lab=n5}
N 220 630 280 630 {lab=vdd}
C {lab_pin.sym} 280 630 0 1 {name=l63 sig_type=std_logic lab=vdd}
N 220 660 360 660 {lab=vdd}
C {lab_pin.sym} 360 660 0 1 {name=l64 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 620 660 0 0 {name=MP6_6 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 640 690 700 690 {lab=yd}
C {lab_pin.sym} 700 690 0 1 {name=l65 sig_type=std_logic lab=yd}
N 600 660 540 660 {lab=n5}
C {lab_pin.sym} 540 660 0 0 {name=l66 sig_type=std_logic lab=n5}
N 640 630 700 630 {lab=vdd}
C {lab_pin.sym} 700 630 0 1 {name=l67 sig_type=std_logic lab=vdd}
N 640 660 780 660 {lab=vdd}
C {lab_pin.sym} 780 660 0 1 {name=l68 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1040 660 0 0 {name=MP6_7 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1060 690 1120 690 {lab=yd}
C {lab_pin.sym} 1120 690 0 1 {name=l69 sig_type=std_logic lab=yd}
N 1020 660 960 660 {lab=n5}
C {lab_pin.sym} 960 660 0 0 {name=l70 sig_type=std_logic lab=n5}
N 1060 630 1120 630 {lab=vdd}
C {lab_pin.sym} 1120 630 0 1 {name=l71 sig_type=std_logic lab=vdd}
N 1060 660 1200 660 {lab=vdd}
C {lab_pin.sym} 1200 660 0 1 {name=l72 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1460 660 0 0 {name=MP6_8 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1480 690 1540 690 {lab=yd}
C {lab_pin.sym} 1540 690 0 1 {name=l73 sig_type=std_logic lab=yd}
N 1440 660 1380 660 {lab=n5}
C {lab_pin.sym} 1380 660 0 0 {name=l74 sig_type=std_logic lab=n5}
N 1480 630 1540 630 {lab=vdd}
C {lab_pin.sym} 1540 630 0 1 {name=l75 sig_type=std_logic lab=vdd}
N 1480 660 1620 660 {lab=vdd}
C {lab_pin.sym} 1620 660 0 1 {name=l76 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 1880 660 0 0 {name=MP6_9 L=0.15 W=86.0 nf=1 mult=1 model=pfet_01v8 spiceprefix=X}
N 1900 690 1960 690 {lab=yd}
C {lab_pin.sym} 1960 690 0 1 {name=l77 sig_type=std_logic lab=yd}
N 1860 660 1800 660 {lab=n5}
C {lab_pin.sym} 1800 660 0 0 {name=l78 sig_type=std_logic lab=n5}
N 1900 630 1960 630 {lab=vdd}
C {lab_pin.sym} 1960 630 0 1 {name=l79 sig_type=std_logic lab=vdd}
N 1900 660 2040 660 {lab=vdd}
C {lab_pin.sym} 2040 660 0 1 {name=l80 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 200 880 0 0 {name=MN6_0 L=0.15 W=86.0 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 220 850 280 850 {lab=yd}
C {lab_pin.sym} 280 850 0 1 {name=l81 sig_type=std_logic lab=yd}
N 180 880 120 880 {lab=n5}
C {lab_pin.sym} 120 880 0 0 {name=l82 sig_type=std_logic lab=n5}
N 220 910 280 910 {lab=vss}
C {lab_pin.sym} 280 910 0 1 {name=l83 sig_type=std_logic lab=vss}
N 220 880 360 880 {lab=vss}
C {lab_pin.sym} 360 880 0 1 {name=l84 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 620 880 0 0 {name=MN6_1 L=0.15 W=86.0 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 640 850 700 850 {lab=yd}
C {lab_pin.sym} 700 850 0 1 {name=l85 sig_type=std_logic lab=yd}
N 600 880 540 880 {lab=n5}
C {lab_pin.sym} 540 880 0 0 {name=l86 sig_type=std_logic lab=n5}
N 640 910 700 910 {lab=vss}
C {lab_pin.sym} 700 910 0 1 {name=l87 sig_type=std_logic lab=vss}
N 640 880 780 880 {lab=vss}
C {lab_pin.sym} 780 880 0 1 {name=l88 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1040 880 0 0 {name=MN6_2 L=0.15 W=86.0 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1060 850 1120 850 {lab=yd}
C {lab_pin.sym} 1120 850 0 1 {name=l89 sig_type=std_logic lab=yd}
N 1020 880 960 880 {lab=n5}
C {lab_pin.sym} 960 880 0 0 {name=l90 sig_type=std_logic lab=n5}
N 1060 910 1120 910 {lab=vss}
C {lab_pin.sym} 1120 910 0 1 {name=l91 sig_type=std_logic lab=vss}
N 1060 880 1200 880 {lab=vss}
C {lab_pin.sym} 1200 880 0 1 {name=l92 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1460 880 0 0 {name=MN6_3 L=0.15 W=86.0 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1480 850 1540 850 {lab=yd}
C {lab_pin.sym} 1540 850 0 1 {name=l93 sig_type=std_logic lab=yd}
N 1440 880 1380 880 {lab=n5}
C {lab_pin.sym} 1380 880 0 0 {name=l94 sig_type=std_logic lab=n5}
N 1480 910 1540 910 {lab=vss}
C {lab_pin.sym} 1540 910 0 1 {name=l95 sig_type=std_logic lab=vss}
N 1480 880 1620 880 {lab=vss}
C {lab_pin.sym} 1620 880 0 1 {name=l96 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 1880 880 0 0 {name=MN6_4 L=0.15 W=86.0 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 1900 850 1960 850 {lab=yd}
C {lab_pin.sym} 1960 850 0 1 {name=l97 sig_type=std_logic lab=yd}
N 1860 880 1800 880 {lab=n5}
C {lab_pin.sym} 1800 880 0 0 {name=l98 sig_type=std_logic lab=n5}
N 1900 910 1960 910 {lab=vss}
C {lab_pin.sym} 1960 910 0 1 {name=l99 sig_type=std_logic lab=vss}
N 1900 880 2040 880 {lab=vss}
C {lab_pin.sym} 2040 880 0 1 {name=l100 sig_type=std_logic lab=vss}
C {res.sym} 200 1100 0 0 {name=Rterm value=20}
N 200 1070 160 1070 {lab=yd}
C {lab_pin.sym} 160 1070 0 0 {name=l101 sig_type=std_logic lab=yd}
N 200 1130 240 1130 {lab=y}
C {lab_pin.sym} 240 1130 0 1 {name=l102 sig_type=std_logic lab=y}
