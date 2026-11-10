v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {tb_bitcell: write 0, read, write 1, read on one 6T cell with precharge and 50 fF bitlines} -200 -160 0 0 0.5 0.5 {}
C {bitcell.sym} 400 0 0 0 {name=xcell}
C {precharge.sym} 400 -300 0 0 {name=xpre}
N 320 -40 280 -40 {lab=bl}
C {lab_pin.sym} 280 -40 0 0 {name=l1 sig_type=std_logic lab=bl}
N 480 -40 520 -40 {lab=blb}
C {lab_pin.sym} 520 -40 0 1 {name=l2 sig_type=std_logic lab=blb}
N 320 -20 280 -20 {lab=wl}
C {lab_pin.sym} 280 -20 0 0 {name=l3 sig_type=std_logic lab=wl}
N 480 -20 520 -20 {lab=vdd}
C {lab_pin.sym} 520 -20 0 1 {name=l4 sig_type=std_logic lab=vdd}
N 320 0 280 0 {lab=0}
C {lab_pin.sym} 280 0 0 0 {name=l5 sig_type=std_logic lab=0}
N 320 -340 280 -340 {lab=bl}
C {lab_pin.sym} 280 -340 0 0 {name=l6 sig_type=std_logic lab=bl}
N 480 -340 520 -340 {lab=blb}
C {lab_pin.sym} 520 -340 0 1 {name=l7 sig_type=std_logic lab=blb}
N 320 -320 280 -320 {lab=pcb}
C {lab_pin.sym} 280 -320 0 0 {name=l8 sig_type=std_logic lab=pcb}
N 480 -320 520 -320 {lab=vdd}
C {lab_pin.sym} 520 -320 0 1 {name=l9 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 700 0 0 0 {name=Mw0 L=0.15 W=1.68 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 720 -30 760 -30 {lab=bl}
C {lab_pin.sym} 760 -30 0 1 {name=l10 sig_type=std_logic lab=bl}
N 680 0 640 0 {lab=w0}
C {lab_pin.sym} 640 0 0 0 {name=l11 sig_type=std_logic lab=w0}
N 720 30 760 30 {lab=0}
C {lab_pin.sym} 760 30 0 1 {name=l12 sig_type=std_logic lab=0}
N 720 0 760 0 {lab=0}
C {lab_pin.sym} 760 0 0 1 {name=l13 sig_type=std_logic lab=0}
C {sky130_fd_pr/nfet_01v8.sym} 900 0 0 0 {name=Mw1 L=0.15 W=1.68 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}
N 920 -30 960 -30 {lab=blb}
C {lab_pin.sym} 960 -30 0 1 {name=l14 sig_type=std_logic lab=blb}
N 880 0 840 0 {lab=w1}
C {lab_pin.sym} 840 0 0 0 {name=l15 sig_type=std_logic lab=w1}
N 920 30 960 30 {lab=0}
C {lab_pin.sym} 960 30 0 1 {name=l16 sig_type=std_logic lab=0}
N 920 0 960 0 {lab=0}
C {lab_pin.sym} 960 0 0 1 {name=l17 sig_type=std_logic lab=0}
C {capa.sym} 1200 0 0 0 {name=Cbl value=50f}
N 1200 -30 1160 -30 {lab=bl}
C {lab_pin.sym} 1160 -30 0 0 {name=l18 sig_type=std_logic lab=bl}
N 1200 30 1240 30 {lab=0}
C {lab_pin.sym} 1240 30 0 1 {name=l19 sig_type=std_logic lab=0}
C {capa.sym} 1320 0 0 0 {name=Cblb value=50f}
N 1320 -30 1280 -30 {lab=blb}
C {lab_pin.sym} 1280 -30 0 0 {name=l20 sig_type=std_logic lab=blb}
N 1320 30 1360 30 {lab=0}
C {lab_pin.sym} 1360 30 0 1 {name=l21 sig_type=std_logic lab=0}
C {vsource.sym} 1500 0 0 0 {name=Vvdd value="1.8"}
N 1500 -30 1460 -30 {lab=vdd}
C {lab_pin.sym} 1460 -30 0 0 {name=l22 sig_type=std_logic lab=vdd}
N 1500 30 1540 30 {lab=0}
C {lab_pin.sym} 1540 30 0 1 {name=l23 sig_type=std_logic lab=0}
C {vsource.sym} 1640 0 0 0 {name=Vpcb value="PWL(0 0 1n 0 1.1n 1.8 3n 1.8 3.1n 0 4n 0 4.1n 1.8 6n 1.8 6.1n 0 7n 0 7.1n 1.8 9n 1.8 9.1n 0 10n 0 10.1n 1.8 12n 1.8 12.1n 0)"}
N 1640 -30 1600 -30 {lab=pcb}
C {lab_pin.sym} 1600 -30 0 0 {name=l24 sig_type=std_logic lab=pcb}
N 1640 30 1680 30 {lab=0}
C {lab_pin.sym} 1680 30 0 1 {name=l25 sig_type=std_logic lab=0}
C {vsource.sym} 1780 0 0 0 {name=Vwl value="PWL(0 0 1.2n 0 1.3n 1.8 2.8n 1.8 2.9n 0 4.2n 0 4.3n 1.8 5.8n 1.8 5.9n 0 7.2n 0 7.3n 1.8 8.8n 1.8 8.9n 0 10.2n 0 10.3n 1.8 11.8n 1.8 11.9n 0)"}
N 1780 -30 1740 -30 {lab=wl}
C {lab_pin.sym} 1740 -30 0 0 {name=l26 sig_type=std_logic lab=wl}
N 1780 30 1820 30 {lab=0}
C {lab_pin.sym} 1820 30 0 1 {name=l27 sig_type=std_logic lab=0}
C {vsource.sym} 1920 0 0 0 {name=Vw0 value="PWL(0 0 1.2n 0 1.3n 1.8 2.8n 1.8 2.9n 0)"}
N 1920 -30 1880 -30 {lab=w0}
C {lab_pin.sym} 1880 -30 0 0 {name=l28 sig_type=std_logic lab=w0}
N 1920 30 1960 30 {lab=0}
C {lab_pin.sym} 1960 30 0 1 {name=l29 sig_type=std_logic lab=0}
C {vsource.sym} 2060 0 0 0 {name=Vw1 value="PWL(0 0 7.2n 0 7.3n 1.8 8.8n 1.8 8.9n 0)"}
N 2060 -30 2020 -30 {lab=w1}
C {lab_pin.sym} 2020 -30 0 0 {name=l30 sig_type=std_logic lab=w1}
N 2060 30 2100 30 {lab=0}
C {lab_pin.sym} 2100 30 0 1 {name=l31 sig_type=std_logic lab=0}
C {code_shown.sym} -200 200 0 0 {name=sim only_toplevel=false value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.ic v(xcell.q)=1.8 v(xcell.qb)=0
.tran 10p 12n
.control
run
set wr_singlescale
set wr_vecnames
wrdata tb_bitcell.dat v(xcell.q) v(xcell.qb) v(bl) v(blb) v(wl) v(pcb)
.endc"}
