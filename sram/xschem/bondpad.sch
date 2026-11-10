v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {bondpad: generated from cells.sp (bondpad)} -200 -120 0 0 0.5 0.5 {}
C {iopin.sym} -200 0 0 0 {name=p0 lab=ext}
C {iopin.sym} -200 40 0 0 {name=p1 lab=pad}
C {iopin.sym} -200 80 0 0 {name=p2 lab=vddio}
C {iopin.sym} -200 120 0 0 {name=p3 lab=vss}
C {res.sym} 200 0 0 0 {name=Rbw value=0.2}
N 200 -30 160 -30 {lab=ext}
C {lab_pin.sym} 160 -30 0 0 {name=l1 sig_type=std_logic lab=ext}
N 200 30 240 30 {lab=n1}
C {lab_pin.sym} 240 30 0 1 {name=l2 sig_type=std_logic lab=n1}
C {ind.sym} 620 0 0 0 {name=Lbw value=2n}
N 620 -30 580 -30 {lab=n1}
C {lab_pin.sym} 580 -30 0 0 {name=l3 sig_type=std_logic lab=n1}
N 620 30 660 30 {lab=pad}
C {lab_pin.sym} 660 30 0 1 {name=l4 sig_type=std_logic lab=pad}
C {capa.sym} 1040 0 0 0 {name=Cpad value=1p}
N 1040 -30 1000 -30 {lab=pad}
C {lab_pin.sym} 1000 -30 0 0 {name=l5 sig_type=std_logic lab=pad}
N 1040 30 1080 30 {lab=vss}
C {lab_pin.sym} 1080 30 0 1 {name=l6 sig_type=std_logic lab=vss}
C {diode.sym} 1460 0 0 0 {name=D1 model=desd area=1}
N 1460 -30 1420 -30 {lab=pad}
C {lab_pin.sym} 1420 -30 0 0 {name=l7 sig_type=std_logic lab=pad}
N 1460 30 1500 30 {lab=vddio}
C {lab_pin.sym} 1500 30 0 1 {name=l8 sig_type=std_logic lab=vddio}
C {diode.sym} 1880 0 0 0 {name=D2 model=desd area=1}
N 1880 -30 1840 -30 {lab=vss}
C {lab_pin.sym} 1840 -30 0 0 {name=l9 sig_type=std_logic lab=vss}
N 1880 30 1920 30 {lab=pad}
C {lab_pin.sym} 1920 30 0 1 {name=l10 sig_type=std_logic lab=pad}
C {code_shown.sym} -200 220 0 0 {name=models only_toplevel=false value=".model desd D(is=1e-14 cjo=0.2p rs=2)"}
