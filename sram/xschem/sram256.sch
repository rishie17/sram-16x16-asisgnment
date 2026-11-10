v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {sram256: 256x1 SRAM top level, generated from gen_sram.py (same circuit as the simulations)} -200 -120 0 0 0.6 0.6 {}
C {ipin.sym} -200 0 0 0 {name=p0 lab=CLK}
C {ipin.sym} -200 40 0 0 {name=p1 lab=ADDR}
C {ipin.sym} -200 80 0 0 {name=p2 lab=RW}
C {ipin.sym} -200 120 0 0 {name=p3 lab=DIN}
C {opin.sym} -200 160 0 0 {name=p4 lab=DOUT}
C {iopin.sym} -200 200 0 0 {name=p5 lab=vdd}
C {iopin.sym} -200 240 0 0 {name=p6 lab=vddio}
C {iopin.sym} -200 280 0 0 {name=p7 lab=vss}
C {bondpad.sym} 200 0 0 0 {name=Xpad_CLK}
N 120 -40 80 -40 {lab=CLK}
C {lab_pin.sym} 80 -40 0 0 {name=l1 sig_type=std_logic lab=CLK}
N 280 -40 320 -40 {lab=clk_pad}
C {lab_pin.sym} 320 -40 0 1 {name=l2 sig_type=std_logic lab=clk_pad}
N 120 -20 80 -20 {lab=vddio}
C {lab_pin.sym} 80 -20 0 0 {name=l3 sig_type=std_logic lab=vddio}
N 280 -20 320 -20 {lab=vss}
C {lab_pin.sym} 320 -20 0 1 {name=l4 sig_type=std_logic lab=vss}
C {inbuf.sym} 520 0 0 0 {name=Xib_CLK}
N 440 -40 400 -40 {lab=clk_pad}
C {lab_pin.sym} 400 -40 0 0 {name=l5 sig_type=std_logic lab=clk_pad}
N 600 -40 640 -40 {lab=clk_in}
C {lab_pin.sym} 640 -40 0 1 {name=l6 sig_type=std_logic lab=clk_in}
N 440 -20 400 -20 {lab=vdd}
C {lab_pin.sym} 400 -20 0 0 {name=l7 sig_type=std_logic lab=vdd}
N 600 -20 640 -20 {lab=vss}
C {lab_pin.sym} 640 -20 0 1 {name=l8 sig_type=std_logic lab=vss}
C {bondpad.sym} 840 0 0 0 {name=Xpad_ADDR}
N 760 -40 720 -40 {lab=ADDR}
C {lab_pin.sym} 720 -40 0 0 {name=l9 sig_type=std_logic lab=ADDR}
N 920 -40 960 -40 {lab=addr_pad}
C {lab_pin.sym} 960 -40 0 1 {name=l10 sig_type=std_logic lab=addr_pad}
N 760 -20 720 -20 {lab=vddio}
C {lab_pin.sym} 720 -20 0 0 {name=l11 sig_type=std_logic lab=vddio}
N 920 -20 960 -20 {lab=vss}
C {lab_pin.sym} 960 -20 0 1 {name=l12 sig_type=std_logic lab=vss}
C {inbuf.sym} 1160 0 0 0 {name=Xib_ADDR}
N 1080 -40 1040 -40 {lab=addr_pad}
C {lab_pin.sym} 1040 -40 0 0 {name=l13 sig_type=std_logic lab=addr_pad}
N 1240 -40 1280 -40 {lab=addr_in}
C {lab_pin.sym} 1280 -40 0 1 {name=l14 sig_type=std_logic lab=addr_in}
N 1080 -20 1040 -20 {lab=vdd}
C {lab_pin.sym} 1040 -20 0 0 {name=l15 sig_type=std_logic lab=vdd}
N 1240 -20 1280 -20 {lab=vss}
C {lab_pin.sym} 1280 -20 0 1 {name=l16 sig_type=std_logic lab=vss}
C {bondpad.sym} 1480 0 0 0 {name=Xpad_RW}
N 1400 -40 1360 -40 {lab=RW}
C {lab_pin.sym} 1360 -40 0 0 {name=l17 sig_type=std_logic lab=RW}
N 1560 -40 1600 -40 {lab=rw_pad}
C {lab_pin.sym} 1600 -40 0 1 {name=l18 sig_type=std_logic lab=rw_pad}
N 1400 -20 1360 -20 {lab=vddio}
C {lab_pin.sym} 1360 -20 0 0 {name=l19 sig_type=std_logic lab=vddio}
N 1560 -20 1600 -20 {lab=vss}
C {lab_pin.sym} 1600 -20 0 1 {name=l20 sig_type=std_logic lab=vss}
C {inbuf.sym} 1800 0 0 0 {name=Xib_RW}
N 1720 -40 1680 -40 {lab=rw_pad}
C {lab_pin.sym} 1680 -40 0 0 {name=l21 sig_type=std_logic lab=rw_pad}
N 1880 -40 1920 -40 {lab=rw_in}
C {lab_pin.sym} 1920 -40 0 1 {name=l22 sig_type=std_logic lab=rw_in}
N 1720 -20 1680 -20 {lab=vdd}
C {lab_pin.sym} 1680 -20 0 0 {name=l23 sig_type=std_logic lab=vdd}
N 1880 -20 1920 -20 {lab=vss}
C {lab_pin.sym} 1920 -20 0 1 {name=l24 sig_type=std_logic lab=vss}
C {bondpad.sym} 2120 0 0 0 {name=Xpad_DIN}
N 2040 -40 2000 -40 {lab=DIN}
C {lab_pin.sym} 2000 -40 0 0 {name=l25 sig_type=std_logic lab=DIN}
N 2200 -40 2240 -40 {lab=din_pad}
C {lab_pin.sym} 2240 -40 0 1 {name=l26 sig_type=std_logic lab=din_pad}
N 2040 -20 2000 -20 {lab=vddio}
C {lab_pin.sym} 2000 -20 0 0 {name=l27 sig_type=std_logic lab=vddio}
N 2200 -20 2240 -20 {lab=vss}
C {lab_pin.sym} 2240 -20 0 1 {name=l28 sig_type=std_logic lab=vss}
C {inbuf.sym} 2440 0 0 0 {name=Xib_DIN}
N 2360 -40 2320 -40 {lab=din_pad}
C {lab_pin.sym} 2320 -40 0 0 {name=l29 sig_type=std_logic lab=din_pad}
N 2520 -40 2560 -40 {lab=din_in}
C {lab_pin.sym} 2560 -40 0 1 {name=l30 sig_type=std_logic lab=din_in}
N 2360 -20 2320 -20 {lab=vdd}
C {lab_pin.sym} 2320 -20 0 0 {name=l31 sig_type=std_logic lab=vdd}
N 2520 -20 2560 -20 {lab=vss}
C {lab_pin.sym} 2560 -20 0 1 {name=l32 sig_type=std_logic lab=vss}
C {bondpad.sym} 2760 0 0 0 {name=Xpad_DOUT}
N 2680 -40 2640 -40 {lab=DOUT}
C {lab_pin.sym} 2640 -40 0 0 {name=l33 sig_type=std_logic lab=DOUT}
N 2840 -40 2880 -40 {lab=dout_pad}
C {lab_pin.sym} 2880 -40 0 1 {name=l34 sig_type=std_logic lab=dout_pad}
N 2680 -20 2640 -20 {lab=vddio}
C {lab_pin.sym} 2640 -20 0 0 {name=l35 sig_type=std_logic lab=vddio}
N 2840 -20 2880 -20 {lab=vss}
C {lab_pin.sym} 2880 -20 0 1 {name=l36 sig_type=std_logic lab=vss}
C {inv_wn1p68_wp3p36.sym} 3080 0 0 0 {name=Xck_r1}
N 3000 -40 2960 -40 {lab=clk_in}
C {lab_pin.sym} 2960 -40 0 0 {name=l37 sig_type=std_logic lab=clk_in}
N 3160 -40 3200 -40 {lab=ckr_b}
C {lab_pin.sym} 3200 -40 0 1 {name=l38 sig_type=std_logic lab=ckr_b}
N 3000 -20 2960 -20 {lab=vdd}
C {lab_pin.sym} 2960 -20 0 0 {name=l39 sig_type=std_logic lab=vdd}
N 3160 -20 3200 -20 {lab=vss}
C {lab_pin.sym} 3200 -20 0 1 {name=l40 sig_type=std_logic lab=vss}
C {inv_wn3p36_wp6p72.sym} 3400 0 0 0 {name=Xck_r2}
N 3320 -40 3280 -40 {lab=ckr_b}
C {lab_pin.sym} 3280 -40 0 0 {name=l41 sig_type=std_logic lab=ckr_b}
N 3480 -40 3520 -40 {lab=ckr}
C {lab_pin.sym} 3520 -40 0 1 {name=l42 sig_type=std_logic lab=ckr}
N 3320 -20 3280 -20 {lab=vdd}
C {lab_pin.sym} 3280 -20 0 0 {name=l43 sig_type=std_logic lab=vdd}
N 3480 -20 3520 -20 {lab=vss}
C {lab_pin.sym} 3520 -20 0 1 {name=l44 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 3720 0 0 0 {name=Xck_a1}
N 3640 -40 3600 -40 {lab=ckr}
C {lab_pin.sym} 3600 -40 0 0 {name=l45 sig_type=std_logic lab=ckr}
N 3800 -40 3840 -40 {lab=cka_b}
C {lab_pin.sym} 3840 -40 0 1 {name=l46 sig_type=std_logic lab=cka_b}
N 3640 -20 3600 -20 {lab=vdd}
C {lab_pin.sym} 3600 -20 0 0 {name=l47 sig_type=std_logic lab=vdd}
N 3800 -20 3840 -20 {lab=vss}
C {lab_pin.sym} 3840 -20 0 1 {name=l48 sig_type=std_logic lab=vss}
C {inv_wn1p68_wp3p36.sym} 4040 0 0 0 {name=Xck_a2}
N 3960 -40 3920 -40 {lab=cka_b}
C {lab_pin.sym} 3920 -40 0 0 {name=l49 sig_type=std_logic lab=cka_b}
N 4120 -40 4160 -40 {lab=clk_ff}
C {lab_pin.sym} 4160 -40 0 1 {name=l50 sig_type=std_logic lab=clk_ff}
N 3960 -20 3920 -20 {lab=vdd}
C {lab_pin.sym} 3920 -20 0 0 {name=l51 sig_type=std_logic lab=vdd}
N 4120 -20 4160 -20 {lab=vss}
C {lab_pin.sym} 4160 -20 0 1 {name=l52 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4360 0 0 0 {name=Xck_b1}
N 4280 -40 4240 -40 {lab=ckr}
C {lab_pin.sym} 4240 -40 0 0 {name=l53 sig_type=std_logic lab=ckr}
N 4440 -40 4480 -40 {lab=ckb1}
C {lab_pin.sym} 4480 -40 0 1 {name=l54 sig_type=std_logic lab=ckb1}
N 4280 -20 4240 -20 {lab=vdd}
C {lab_pin.sym} 4240 -20 0 0 {name=l55 sig_type=std_logic lab=vdd}
N 4440 -20 4480 -20 {lab=vss}
C {lab_pin.sym} 4480 -20 0 1 {name=l56 sig_type=std_logic lab=vss}
C {inv_wn1p26_wp2p52.sym} 4680 0 0 0 {name=Xck_b2}
N 4600 -40 4560 -40 {lab=ckb1}
C {lab_pin.sym} 4560 -40 0 0 {name=l57 sig_type=std_logic lab=ckb1}
N 4760 -40 4800 -40 {lab=ckb2}
C {lab_pin.sym} 4800 -40 0 1 {name=l58 sig_type=std_logic lab=ckb2}
N 4600 -20 4560 -20 {lab=vdd}
C {lab_pin.sym} 4560 -20 0 0 {name=l59 sig_type=std_logic lab=vdd}
N 4760 -20 4800 -20 {lab=vss}
C {lab_pin.sym} 4800 -20 0 1 {name=l60 sig_type=std_logic lab=vss}
C {inv_wn2p52_wp5p04.sym} 5000 0 0 0 {name=Xck_b3}
N 4920 -40 4880 -40 {lab=ckb2}
C {lab_pin.sym} 4880 -40 0 0 {name=l61 sig_type=std_logic lab=ckb2}
N 5080 -40 5120 -40 {lab=clkb}
C {lab_pin.sym} 5120 -40 0 1 {name=l62 sig_type=std_logic lab=clkb}
N 4920 -20 4880 -20 {lab=vdd}
C {lab_pin.sym} 4880 -20 0 0 {name=l63 sig_type=std_logic lab=vdd}
N 5080 -20 5120 -20 {lab=vss}
C {lab_pin.sym} 5120 -20 0 1 {name=l64 sig_type=std_logic lab=vss}
C {inv.sym} 200 180 0 0 {name=Xck_d1}
N 120 140 80 140 {lab=ckr}
C {lab_pin.sym} 80 140 0 0 {name=l65 sig_type=std_logic lab=ckr}
N 280 140 320 140 {lab=d1}
C {lab_pin.sym} 320 140 0 1 {name=l66 sig_type=std_logic lab=d1}
N 120 160 80 160 {lab=vdd}
C {lab_pin.sym} 80 160 0 0 {name=l67 sig_type=std_logic lab=vdd}
N 280 160 320 160 {lab=vss}
C {lab_pin.sym} 320 160 0 1 {name=l68 sig_type=std_logic lab=vss}
C {inv.sym} 520 180 0 0 {name=Xck_d2}
N 440 140 400 140 {lab=d1}
C {lab_pin.sym} 400 140 0 0 {name=l69 sig_type=std_logic lab=d1}
N 600 140 640 140 {lab=d2}
C {lab_pin.sym} 640 140 0 1 {name=l70 sig_type=std_logic lab=d2}
N 440 160 400 160 {lab=vdd}
C {lab_pin.sym} 400 160 0 0 {name=l71 sig_type=std_logic lab=vdd}
N 600 160 640 160 {lab=vss}
C {lab_pin.sym} 640 160 0 1 {name=l72 sig_type=std_logic lab=vss}
C {inv.sym} 840 180 0 0 {name=Xck_d3}
N 760 140 720 140 {lab=d2}
C {lab_pin.sym} 720 140 0 0 {name=l73 sig_type=std_logic lab=d2}
N 920 140 960 140 {lab=d3}
C {lab_pin.sym} 960 140 0 1 {name=l74 sig_type=std_logic lab=d3}
N 760 160 720 160 {lab=vdd}
C {lab_pin.sym} 720 160 0 0 {name=l75 sig_type=std_logic lab=vdd}
N 920 160 960 160 {lab=vss}
C {lab_pin.sym} 960 160 0 1 {name=l76 sig_type=std_logic lab=vss}
C {inv.sym} 1160 180 0 0 {name=Xck_d4}
N 1080 140 1040 140 {lab=d3}
C {lab_pin.sym} 1040 140 0 0 {name=l77 sig_type=std_logic lab=d3}
N 1240 140 1280 140 {lab=d4}
C {lab_pin.sym} 1280 140 0 1 {name=l78 sig_type=std_logic lab=d4}
N 1080 160 1040 160 {lab=vdd}
C {lab_pin.sym} 1040 160 0 0 {name=l79 sig_type=std_logic lab=vdd}
N 1240 160 1280 160 {lab=vss}
C {lab_pin.sym} 1280 160 0 1 {name=l80 sig_type=std_logic lab=vss}
C {inv.sym} 1480 180 0 0 {name=Xck_d5}
N 1400 140 1360 140 {lab=d4}
C {lab_pin.sym} 1360 140 0 0 {name=l81 sig_type=std_logic lab=d4}
N 1560 140 1600 140 {lab=d5}
C {lab_pin.sym} 1600 140 0 1 {name=l82 sig_type=std_logic lab=d5}
N 1400 160 1360 160 {lab=vdd}
C {lab_pin.sym} 1360 160 0 0 {name=l83 sig_type=std_logic lab=vdd}
N 1560 160 1600 160 {lab=vss}
C {lab_pin.sym} 1600 160 0 1 {name=l84 sig_type=std_logic lab=vss}
C {inv.sym} 1800 180 0 0 {name=Xck_d6}
N 1720 140 1680 140 {lab=d5}
C {lab_pin.sym} 1680 140 0 0 {name=l85 sig_type=std_logic lab=d5}
N 1880 140 1920 140 {lab=d6}
C {lab_pin.sym} 1920 140 0 1 {name=l86 sig_type=std_logic lab=d6}
N 1720 160 1680 160 {lab=vdd}
C {lab_pin.sym} 1680 160 0 0 {name=l87 sig_type=std_logic lab=vdd}
N 1880 160 1920 160 {lab=vss}
C {lab_pin.sym} 1920 160 0 1 {name=l88 sig_type=std_logic lab=vss}
C {inv.sym} 2120 180 0 0 {name=Xck_d7}
N 2040 140 2000 140 {lab=d6}
C {lab_pin.sym} 2000 140 0 0 {name=l89 sig_type=std_logic lab=d6}
N 2200 140 2240 140 {lab=d7}
C {lab_pin.sym} 2240 140 0 1 {name=l90 sig_type=std_logic lab=d7}
N 2040 160 2000 160 {lab=vdd}
C {lab_pin.sym} 2000 160 0 0 {name=l91 sig_type=std_logic lab=vdd}
N 2200 160 2240 160 {lab=vss}
C {lab_pin.sym} 2240 160 0 1 {name=l92 sig_type=std_logic lab=vss}
C {inv.sym} 2440 180 0 0 {name=Xck_d8}
N 2360 140 2320 140 {lab=d7}
C {lab_pin.sym} 2320 140 0 0 {name=l93 sig_type=std_logic lab=d7}
N 2520 140 2560 140 {lab=ckd}
C {lab_pin.sym} 2560 140 0 1 {name=l94 sig_type=std_logic lab=ckd}
N 2360 160 2320 160 {lab=vdd}
C {lab_pin.sym} 2320 160 0 0 {name=l95 sig_type=std_logic lab=vdd}
N 2520 160 2560 160 {lab=vss}
C {lab_pin.sym} 2560 160 0 1 {name=l96 sig_type=std_logic lab=vss}
C {nand2_wn1p68_wp1p68.sym} 2760 180 0 0 {name=Xck_c1}
N 2680 140 2640 140 {lab=ckr}
C {lab_pin.sym} 2640 140 0 0 {name=l97 sig_type=std_logic lab=ckr}
N 2840 140 2880 140 {lab=ckd}
C {lab_pin.sym} 2880 140 0 1 {name=l98 sig_type=std_logic lab=ckd}
N 2680 160 2640 160 {lab=pc0}
C {lab_pin.sym} 2640 160 0 0 {name=l99 sig_type=std_logic lab=pc0}
N 2840 160 2880 160 {lab=vdd}
C {lab_pin.sym} 2880 160 0 1 {name=l100 sig_type=std_logic lab=vdd}
N 2680 180 2640 180 {lab=vss}
C {lab_pin.sym} 2640 180 0 0 {name=l101 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 3080 180 0 0 {name=Xck_c2}
N 3000 140 2960 140 {lab=pc0}
C {lab_pin.sym} 2960 140 0 0 {name=l102 sig_type=std_logic lab=pc0}
N 3160 140 3200 140 {lab=pc1}
C {lab_pin.sym} 3200 140 0 1 {name=l103 sig_type=std_logic lab=pc1}
N 3000 160 2960 160 {lab=vdd}
C {lab_pin.sym} 2960 160 0 0 {name=l104 sig_type=std_logic lab=vdd}
N 3160 160 3200 160 {lab=vss}
C {lab_pin.sym} 3200 160 0 1 {name=l105 sig_type=std_logic lab=vss}
C {inv_wn2p52_wp5p04.sym} 3400 180 0 0 {name=Xck_c3}
N 3320 140 3280 140 {lab=pc1}
C {lab_pin.sym} 3280 140 0 0 {name=l106 sig_type=std_logic lab=pc1}
N 3480 140 3520 140 {lab=pcb}
C {lab_pin.sym} 3520 140 0 1 {name=l107 sig_type=std_logic lab=pcb}
N 3320 160 3280 160 {lab=vdd}
C {lab_pin.sym} 3280 160 0 0 {name=l108 sig_type=std_logic lab=vdd}
N 3480 160 3520 160 {lab=vss}
C {lab_pin.sym} 3520 160 0 1 {name=l109 sig_type=std_logic lab=vss}
C {dff.sym} 3720 180 0 0 {name=Xff_a0}
N 3640 140 3600 140 {lab=addr_in}
C {lab_pin.sym} 3600 140 0 0 {name=l110 sig_type=std_logic lab=addr_in}
N 3800 140 3840 140 {lab=clk_ff}
C {lab_pin.sym} 3840 140 0 1 {name=l111 sig_type=std_logic lab=clk_ff}
N 3640 160 3600 160 {lab=a0}
C {lab_pin.sym} 3600 160 0 0 {name=l112 sig_type=std_logic lab=a0}
N 3800 160 3840 160 {lab=ab0}
C {lab_pin.sym} 3840 160 0 1 {name=l113 sig_type=std_logic lab=ab0}
N 3640 180 3600 180 {lab=vdd}
C {lab_pin.sym} 3600 180 0 0 {name=l114 sig_type=std_logic lab=vdd}
N 3800 180 3840 180 {lab=vss}
C {lab_pin.sym} 3840 180 0 1 {name=l115 sig_type=std_logic lab=vss}
C {dff.sym} 4040 180 0 0 {name=Xff_a1}
N 3960 140 3920 140 {lab=a0}
C {lab_pin.sym} 3920 140 0 0 {name=l116 sig_type=std_logic lab=a0}
N 4120 140 4160 140 {lab=clk_ff}
C {lab_pin.sym} 4160 140 0 1 {name=l117 sig_type=std_logic lab=clk_ff}
N 3960 160 3920 160 {lab=a1}
C {lab_pin.sym} 3920 160 0 0 {name=l118 sig_type=std_logic lab=a1}
N 4120 160 4160 160 {lab=ab1}
C {lab_pin.sym} 4160 160 0 1 {name=l119 sig_type=std_logic lab=ab1}
N 3960 180 3920 180 {lab=vdd}
C {lab_pin.sym} 3920 180 0 0 {name=l120 sig_type=std_logic lab=vdd}
N 4120 180 4160 180 {lab=vss}
C {lab_pin.sym} 4160 180 0 1 {name=l121 sig_type=std_logic lab=vss}
C {dff.sym} 4360 180 0 0 {name=Xff_a2}
N 4280 140 4240 140 {lab=a1}
C {lab_pin.sym} 4240 140 0 0 {name=l122 sig_type=std_logic lab=a1}
N 4440 140 4480 140 {lab=clk_ff}
C {lab_pin.sym} 4480 140 0 1 {name=l123 sig_type=std_logic lab=clk_ff}
N 4280 160 4240 160 {lab=a2}
C {lab_pin.sym} 4240 160 0 0 {name=l124 sig_type=std_logic lab=a2}
N 4440 160 4480 160 {lab=ab2}
C {lab_pin.sym} 4480 160 0 1 {name=l125 sig_type=std_logic lab=ab2}
N 4280 180 4240 180 {lab=vdd}
C {lab_pin.sym} 4240 180 0 0 {name=l126 sig_type=std_logic lab=vdd}
N 4440 180 4480 180 {lab=vss}
C {lab_pin.sym} 4480 180 0 1 {name=l127 sig_type=std_logic lab=vss}
C {dff.sym} 4680 180 0 0 {name=Xff_a3}
N 4600 140 4560 140 {lab=a2}
C {lab_pin.sym} 4560 140 0 0 {name=l128 sig_type=std_logic lab=a2}
N 4760 140 4800 140 {lab=clk_ff}
C {lab_pin.sym} 4800 140 0 1 {name=l129 sig_type=std_logic lab=clk_ff}
N 4600 160 4560 160 {lab=a3}
C {lab_pin.sym} 4560 160 0 0 {name=l130 sig_type=std_logic lab=a3}
N 4760 160 4800 160 {lab=ab3}
C {lab_pin.sym} 4800 160 0 1 {name=l131 sig_type=std_logic lab=ab3}
N 4600 180 4560 180 {lab=vdd}
C {lab_pin.sym} 4560 180 0 0 {name=l132 sig_type=std_logic lab=vdd}
N 4760 180 4800 180 {lab=vss}
C {lab_pin.sym} 4800 180 0 1 {name=l133 sig_type=std_logic lab=vss}
C {dff.sym} 5000 180 0 0 {name=Xff_a4}
N 4920 140 4880 140 {lab=a3}
C {lab_pin.sym} 4880 140 0 0 {name=l134 sig_type=std_logic lab=a3}
N 5080 140 5120 140 {lab=clk_ff}
C {lab_pin.sym} 5120 140 0 1 {name=l135 sig_type=std_logic lab=clk_ff}
N 4920 160 4880 160 {lab=a4}
C {lab_pin.sym} 4880 160 0 0 {name=l136 sig_type=std_logic lab=a4}
N 5080 160 5120 160 {lab=ab4}
C {lab_pin.sym} 5120 160 0 1 {name=l137 sig_type=std_logic lab=ab4}
N 4920 180 4880 180 {lab=vdd}
C {lab_pin.sym} 4880 180 0 0 {name=l138 sig_type=std_logic lab=vdd}
N 5080 180 5120 180 {lab=vss}
C {lab_pin.sym} 5120 180 0 1 {name=l139 sig_type=std_logic lab=vss}
C {dff.sym} 200 360 0 0 {name=Xff_a5}
N 120 320 80 320 {lab=a4}
C {lab_pin.sym} 80 320 0 0 {name=l140 sig_type=std_logic lab=a4}
N 280 320 320 320 {lab=clk_ff}
C {lab_pin.sym} 320 320 0 1 {name=l141 sig_type=std_logic lab=clk_ff}
N 120 340 80 340 {lab=a5}
C {lab_pin.sym} 80 340 0 0 {name=l142 sig_type=std_logic lab=a5}
N 280 340 320 340 {lab=ab5}
C {lab_pin.sym} 320 340 0 1 {name=l143 sig_type=std_logic lab=ab5}
N 120 360 80 360 {lab=vdd}
C {lab_pin.sym} 80 360 0 0 {name=l144 sig_type=std_logic lab=vdd}
N 280 360 320 360 {lab=vss}
C {lab_pin.sym} 320 360 0 1 {name=l145 sig_type=std_logic lab=vss}
C {dff.sym} 520 360 0 0 {name=Xff_a6}
N 440 320 400 320 {lab=a5}
C {lab_pin.sym} 400 320 0 0 {name=l146 sig_type=std_logic lab=a5}
N 600 320 640 320 {lab=clk_ff}
C {lab_pin.sym} 640 320 0 1 {name=l147 sig_type=std_logic lab=clk_ff}
N 440 340 400 340 {lab=a6}
C {lab_pin.sym} 400 340 0 0 {name=l148 sig_type=std_logic lab=a6}
N 600 340 640 340 {lab=ab6}
C {lab_pin.sym} 640 340 0 1 {name=l149 sig_type=std_logic lab=ab6}
N 440 360 400 360 {lab=vdd}
C {lab_pin.sym} 400 360 0 0 {name=l150 sig_type=std_logic lab=vdd}
N 600 360 640 360 {lab=vss}
C {lab_pin.sym} 640 360 0 1 {name=l151 sig_type=std_logic lab=vss}
C {dff.sym} 840 360 0 0 {name=Xff_a7}
N 760 320 720 320 {lab=a6}
C {lab_pin.sym} 720 320 0 0 {name=l152 sig_type=std_logic lab=a6}
N 920 320 960 320 {lab=clk_ff}
C {lab_pin.sym} 960 320 0 1 {name=l153 sig_type=std_logic lab=clk_ff}
N 760 340 720 340 {lab=a7}
C {lab_pin.sym} 720 340 0 0 {name=l154 sig_type=std_logic lab=a7}
N 920 340 960 340 {lab=ab7}
C {lab_pin.sym} 960 340 0 1 {name=l155 sig_type=std_logic lab=ab7}
N 760 360 720 360 {lab=vdd}
C {lab_pin.sym} 720 360 0 0 {name=l156 sig_type=std_logic lab=vdd}
N 920 360 960 360 {lab=vss}
C {lab_pin.sym} 960 360 0 1 {name=l157 sig_type=std_logic lab=vss}
C {dff.sym} 1160 360 0 0 {name=Xff_rw}
N 1080 320 1040 320 {lab=rw_in}
C {lab_pin.sym} 1040 320 0 0 {name=l158 sig_type=std_logic lab=rw_in}
N 1240 320 1280 320 {lab=clk_ff}
C {lab_pin.sym} 1280 320 0 1 {name=l159 sig_type=std_logic lab=clk_ff}
N 1080 340 1040 340 {lab=rwq}
C {lab_pin.sym} 1040 340 0 0 {name=l160 sig_type=std_logic lab=rwq}
N 1240 340 1280 340 {lab=rwqb}
C {lab_pin.sym} 1280 340 0 1 {name=l161 sig_type=std_logic lab=rwqb}
N 1080 360 1040 360 {lab=vdd}
C {lab_pin.sym} 1040 360 0 0 {name=l162 sig_type=std_logic lab=vdd}
N 1240 360 1280 360 {lab=vss}
C {lab_pin.sym} 1280 360 0 1 {name=l163 sig_type=std_logic lab=vss}
C {dff.sym} 1480 360 0 0 {name=Xff_din}
N 1400 320 1360 320 {lab=din_in}
C {lab_pin.sym} 1360 320 0 0 {name=l164 sig_type=std_logic lab=din_in}
N 1560 320 1600 320 {lab=clk_ff}
C {lab_pin.sym} 1600 320 0 1 {name=l165 sig_type=std_logic lab=clk_ff}
N 1400 340 1360 340 {lab=dinq}
C {lab_pin.sym} 1360 340 0 0 {name=l166 sig_type=std_logic lab=dinq}
N 1560 340 1600 340 {lab=dinqb}
C {lab_pin.sym} 1600 340 0 1 {name=l167 sig_type=std_logic lab=dinqb}
N 1400 360 1360 360 {lab=vdd}
C {lab_pin.sym} 1360 360 0 0 {name=l168 sig_type=std_logic lab=vdd}
N 1560 360 1600 360 {lab=vss}
C {lab_pin.sym} 1600 360 0 1 {name=l169 sig_type=std_logic lab=vss}
C {nand2.sym} 1800 360 0 0 {name=Xpd_rh0}
N 1720 320 1680 320 {lab=ab7}
C {lab_pin.sym} 1680 320 0 0 {name=l170 sig_type=std_logic lab=ab7}
N 1880 320 1920 320 {lab=ab6}
C {lab_pin.sym} 1920 320 0 1 {name=l171 sig_type=std_logic lab=ab6}
N 1720 340 1680 340 {lab=rhb0}
C {lab_pin.sym} 1680 340 0 0 {name=l172 sig_type=std_logic lab=rhb0}
N 1880 340 1920 340 {lab=vdd}
C {lab_pin.sym} 1920 340 0 1 {name=l173 sig_type=std_logic lab=vdd}
N 1720 360 1680 360 {lab=vss}
C {lab_pin.sym} 1680 360 0 0 {name=l174 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2120 360 0 0 {name=Xpi_rh0}
N 2040 320 2000 320 {lab=rhb0}
C {lab_pin.sym} 2000 320 0 0 {name=l175 sig_type=std_logic lab=rhb0}
N 2200 320 2240 320 {lab=rh0}
C {lab_pin.sym} 2240 320 0 1 {name=l176 sig_type=std_logic lab=rh0}
N 2040 340 2000 340 {lab=vdd}
C {lab_pin.sym} 2000 340 0 0 {name=l177 sig_type=std_logic lab=vdd}
N 2200 340 2240 340 {lab=vss}
C {lab_pin.sym} 2240 340 0 1 {name=l178 sig_type=std_logic lab=vss}
C {nand2.sym} 2440 360 0 0 {name=Xpd_rh1}
N 2360 320 2320 320 {lab=ab7}
C {lab_pin.sym} 2320 320 0 0 {name=l179 sig_type=std_logic lab=ab7}
N 2520 320 2560 320 {lab=a6}
C {lab_pin.sym} 2560 320 0 1 {name=l180 sig_type=std_logic lab=a6}
N 2360 340 2320 340 {lab=rhb1}
C {lab_pin.sym} 2320 340 0 0 {name=l181 sig_type=std_logic lab=rhb1}
N 2520 340 2560 340 {lab=vdd}
C {lab_pin.sym} 2560 340 0 1 {name=l182 sig_type=std_logic lab=vdd}
N 2360 360 2320 360 {lab=vss}
C {lab_pin.sym} 2320 360 0 0 {name=l183 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2760 360 0 0 {name=Xpi_rh1}
N 2680 320 2640 320 {lab=rhb1}
C {lab_pin.sym} 2640 320 0 0 {name=l184 sig_type=std_logic lab=rhb1}
N 2840 320 2880 320 {lab=rh1}
C {lab_pin.sym} 2880 320 0 1 {name=l185 sig_type=std_logic lab=rh1}
N 2680 340 2640 340 {lab=vdd}
C {lab_pin.sym} 2640 340 0 0 {name=l186 sig_type=std_logic lab=vdd}
N 2840 340 2880 340 {lab=vss}
C {lab_pin.sym} 2880 340 0 1 {name=l187 sig_type=std_logic lab=vss}
C {nand2.sym} 3080 360 0 0 {name=Xpd_rh2}
N 3000 320 2960 320 {lab=a7}
C {lab_pin.sym} 2960 320 0 0 {name=l188 sig_type=std_logic lab=a7}
N 3160 320 3200 320 {lab=ab6}
C {lab_pin.sym} 3200 320 0 1 {name=l189 sig_type=std_logic lab=ab6}
N 3000 340 2960 340 {lab=rhb2}
C {lab_pin.sym} 2960 340 0 0 {name=l190 sig_type=std_logic lab=rhb2}
N 3160 340 3200 340 {lab=vdd}
C {lab_pin.sym} 3200 340 0 1 {name=l191 sig_type=std_logic lab=vdd}
N 3000 360 2960 360 {lab=vss}
C {lab_pin.sym} 2960 360 0 0 {name=l192 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 3400 360 0 0 {name=Xpi_rh2}
N 3320 320 3280 320 {lab=rhb2}
C {lab_pin.sym} 3280 320 0 0 {name=l193 sig_type=std_logic lab=rhb2}
N 3480 320 3520 320 {lab=rh2}
C {lab_pin.sym} 3520 320 0 1 {name=l194 sig_type=std_logic lab=rh2}
N 3320 340 3280 340 {lab=vdd}
C {lab_pin.sym} 3280 340 0 0 {name=l195 sig_type=std_logic lab=vdd}
N 3480 340 3520 340 {lab=vss}
C {lab_pin.sym} 3520 340 0 1 {name=l196 sig_type=std_logic lab=vss}
C {nand2.sym} 3720 360 0 0 {name=Xpd_rh3}
N 3640 320 3600 320 {lab=a7}
C {lab_pin.sym} 3600 320 0 0 {name=l197 sig_type=std_logic lab=a7}
N 3800 320 3840 320 {lab=a6}
C {lab_pin.sym} 3840 320 0 1 {name=l198 sig_type=std_logic lab=a6}
N 3640 340 3600 340 {lab=rhb3}
C {lab_pin.sym} 3600 340 0 0 {name=l199 sig_type=std_logic lab=rhb3}
N 3800 340 3840 340 {lab=vdd}
C {lab_pin.sym} 3840 340 0 1 {name=l200 sig_type=std_logic lab=vdd}
N 3640 360 3600 360 {lab=vss}
C {lab_pin.sym} 3600 360 0 0 {name=l201 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4040 360 0 0 {name=Xpi_rh3}
N 3960 320 3920 320 {lab=rhb3}
C {lab_pin.sym} 3920 320 0 0 {name=l202 sig_type=std_logic lab=rhb3}
N 4120 320 4160 320 {lab=rh3}
C {lab_pin.sym} 4160 320 0 1 {name=l203 sig_type=std_logic lab=rh3}
N 3960 340 3920 340 {lab=vdd}
C {lab_pin.sym} 3920 340 0 0 {name=l204 sig_type=std_logic lab=vdd}
N 4120 340 4160 340 {lab=vss}
C {lab_pin.sym} 4160 340 0 1 {name=l205 sig_type=std_logic lab=vss}
C {nand2.sym} 4360 360 0 0 {name=Xpd_rl0}
N 4280 320 4240 320 {lab=ab5}
C {lab_pin.sym} 4240 320 0 0 {name=l206 sig_type=std_logic lab=ab5}
N 4440 320 4480 320 {lab=ab4}
C {lab_pin.sym} 4480 320 0 1 {name=l207 sig_type=std_logic lab=ab4}
N 4280 340 4240 340 {lab=rlb0}
C {lab_pin.sym} 4240 340 0 0 {name=l208 sig_type=std_logic lab=rlb0}
N 4440 340 4480 340 {lab=vdd}
C {lab_pin.sym} 4480 340 0 1 {name=l209 sig_type=std_logic lab=vdd}
N 4280 360 4240 360 {lab=vss}
C {lab_pin.sym} 4240 360 0 0 {name=l210 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4680 360 0 0 {name=Xpi_rl0}
N 4600 320 4560 320 {lab=rlb0}
C {lab_pin.sym} 4560 320 0 0 {name=l211 sig_type=std_logic lab=rlb0}
N 4760 320 4800 320 {lab=rl0}
C {lab_pin.sym} 4800 320 0 1 {name=l212 sig_type=std_logic lab=rl0}
N 4600 340 4560 340 {lab=vdd}
C {lab_pin.sym} 4560 340 0 0 {name=l213 sig_type=std_logic lab=vdd}
N 4760 340 4800 340 {lab=vss}
C {lab_pin.sym} 4800 340 0 1 {name=l214 sig_type=std_logic lab=vss}
C {nand2.sym} 5000 360 0 0 {name=Xpd_rl1}
N 4920 320 4880 320 {lab=ab5}
C {lab_pin.sym} 4880 320 0 0 {name=l215 sig_type=std_logic lab=ab5}
N 5080 320 5120 320 {lab=a4}
C {lab_pin.sym} 5120 320 0 1 {name=l216 sig_type=std_logic lab=a4}
N 4920 340 4880 340 {lab=rlb1}
C {lab_pin.sym} 4880 340 0 0 {name=l217 sig_type=std_logic lab=rlb1}
N 5080 340 5120 340 {lab=vdd}
C {lab_pin.sym} 5120 340 0 1 {name=l218 sig_type=std_logic lab=vdd}
N 4920 360 4880 360 {lab=vss}
C {lab_pin.sym} 4880 360 0 0 {name=l219 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 200 540 0 0 {name=Xpi_rl1}
N 120 500 80 500 {lab=rlb1}
C {lab_pin.sym} 80 500 0 0 {name=l220 sig_type=std_logic lab=rlb1}
N 280 500 320 500 {lab=rl1}
C {lab_pin.sym} 320 500 0 1 {name=l221 sig_type=std_logic lab=rl1}
N 120 520 80 520 {lab=vdd}
C {lab_pin.sym} 80 520 0 0 {name=l222 sig_type=std_logic lab=vdd}
N 280 520 320 520 {lab=vss}
C {lab_pin.sym} 320 520 0 1 {name=l223 sig_type=std_logic lab=vss}
C {nand2.sym} 520 540 0 0 {name=Xpd_rl2}
N 440 500 400 500 {lab=a5}
C {lab_pin.sym} 400 500 0 0 {name=l224 sig_type=std_logic lab=a5}
N 600 500 640 500 {lab=ab4}
C {lab_pin.sym} 640 500 0 1 {name=l225 sig_type=std_logic lab=ab4}
N 440 520 400 520 {lab=rlb2}
C {lab_pin.sym} 400 520 0 0 {name=l226 sig_type=std_logic lab=rlb2}
N 600 520 640 520 {lab=vdd}
C {lab_pin.sym} 640 520 0 1 {name=l227 sig_type=std_logic lab=vdd}
N 440 540 400 540 {lab=vss}
C {lab_pin.sym} 400 540 0 0 {name=l228 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 840 540 0 0 {name=Xpi_rl2}
N 760 500 720 500 {lab=rlb2}
C {lab_pin.sym} 720 500 0 0 {name=l229 sig_type=std_logic lab=rlb2}
N 920 500 960 500 {lab=rl2}
C {lab_pin.sym} 960 500 0 1 {name=l230 sig_type=std_logic lab=rl2}
N 760 520 720 520 {lab=vdd}
C {lab_pin.sym} 720 520 0 0 {name=l231 sig_type=std_logic lab=vdd}
N 920 520 960 520 {lab=vss}
C {lab_pin.sym} 960 520 0 1 {name=l232 sig_type=std_logic lab=vss}
C {nand2.sym} 1160 540 0 0 {name=Xpd_rl3}
N 1080 500 1040 500 {lab=a5}
C {lab_pin.sym} 1040 500 0 0 {name=l233 sig_type=std_logic lab=a5}
N 1240 500 1280 500 {lab=a4}
C {lab_pin.sym} 1280 500 0 1 {name=l234 sig_type=std_logic lab=a4}
N 1080 520 1040 520 {lab=rlb3}
C {lab_pin.sym} 1040 520 0 0 {name=l235 sig_type=std_logic lab=rlb3}
N 1240 520 1280 520 {lab=vdd}
C {lab_pin.sym} 1280 520 0 1 {name=l236 sig_type=std_logic lab=vdd}
N 1080 540 1040 540 {lab=vss}
C {lab_pin.sym} 1040 540 0 0 {name=l237 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 1480 540 0 0 {name=Xpi_rl3}
N 1400 500 1360 500 {lab=rlb3}
C {lab_pin.sym} 1360 500 0 0 {name=l238 sig_type=std_logic lab=rlb3}
N 1560 500 1600 500 {lab=rl3}
C {lab_pin.sym} 1600 500 0 1 {name=l239 sig_type=std_logic lab=rl3}
N 1400 520 1360 520 {lab=vdd}
C {lab_pin.sym} 1360 520 0 0 {name=l240 sig_type=std_logic lab=vdd}
N 1560 520 1600 520 {lab=vss}
C {lab_pin.sym} 1600 520 0 1 {name=l241 sig_type=std_logic lab=vss}
C {nand2.sym} 1800 540 0 0 {name=Xpd_ch0}
N 1720 500 1680 500 {lab=ab3}
C {lab_pin.sym} 1680 500 0 0 {name=l242 sig_type=std_logic lab=ab3}
N 1880 500 1920 500 {lab=ab2}
C {lab_pin.sym} 1920 500 0 1 {name=l243 sig_type=std_logic lab=ab2}
N 1720 520 1680 520 {lab=chb0}
C {lab_pin.sym} 1680 520 0 0 {name=l244 sig_type=std_logic lab=chb0}
N 1880 520 1920 520 {lab=vdd}
C {lab_pin.sym} 1920 520 0 1 {name=l245 sig_type=std_logic lab=vdd}
N 1720 540 1680 540 {lab=vss}
C {lab_pin.sym} 1680 540 0 0 {name=l246 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2120 540 0 0 {name=Xpi_ch0}
N 2040 500 2000 500 {lab=chb0}
C {lab_pin.sym} 2000 500 0 0 {name=l247 sig_type=std_logic lab=chb0}
N 2200 500 2240 500 {lab=ch0}
C {lab_pin.sym} 2240 500 0 1 {name=l248 sig_type=std_logic lab=ch0}
N 2040 520 2000 520 {lab=vdd}
C {lab_pin.sym} 2000 520 0 0 {name=l249 sig_type=std_logic lab=vdd}
N 2200 520 2240 520 {lab=vss}
C {lab_pin.sym} 2240 520 0 1 {name=l250 sig_type=std_logic lab=vss}
C {nand2.sym} 2440 540 0 0 {name=Xpd_ch1}
N 2360 500 2320 500 {lab=ab3}
C {lab_pin.sym} 2320 500 0 0 {name=l251 sig_type=std_logic lab=ab3}
N 2520 500 2560 500 {lab=a2}
C {lab_pin.sym} 2560 500 0 1 {name=l252 sig_type=std_logic lab=a2}
N 2360 520 2320 520 {lab=chb1}
C {lab_pin.sym} 2320 520 0 0 {name=l253 sig_type=std_logic lab=chb1}
N 2520 520 2560 520 {lab=vdd}
C {lab_pin.sym} 2560 520 0 1 {name=l254 sig_type=std_logic lab=vdd}
N 2360 540 2320 540 {lab=vss}
C {lab_pin.sym} 2320 540 0 0 {name=l255 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2760 540 0 0 {name=Xpi_ch1}
N 2680 500 2640 500 {lab=chb1}
C {lab_pin.sym} 2640 500 0 0 {name=l256 sig_type=std_logic lab=chb1}
N 2840 500 2880 500 {lab=ch1}
C {lab_pin.sym} 2880 500 0 1 {name=l257 sig_type=std_logic lab=ch1}
N 2680 520 2640 520 {lab=vdd}
C {lab_pin.sym} 2640 520 0 0 {name=l258 sig_type=std_logic lab=vdd}
N 2840 520 2880 520 {lab=vss}
C {lab_pin.sym} 2880 520 0 1 {name=l259 sig_type=std_logic lab=vss}
C {nand2.sym} 3080 540 0 0 {name=Xpd_ch2}
N 3000 500 2960 500 {lab=a3}
C {lab_pin.sym} 2960 500 0 0 {name=l260 sig_type=std_logic lab=a3}
N 3160 500 3200 500 {lab=ab2}
C {lab_pin.sym} 3200 500 0 1 {name=l261 sig_type=std_logic lab=ab2}
N 3000 520 2960 520 {lab=chb2}
C {lab_pin.sym} 2960 520 0 0 {name=l262 sig_type=std_logic lab=chb2}
N 3160 520 3200 520 {lab=vdd}
C {lab_pin.sym} 3200 520 0 1 {name=l263 sig_type=std_logic lab=vdd}
N 3000 540 2960 540 {lab=vss}
C {lab_pin.sym} 2960 540 0 0 {name=l264 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 3400 540 0 0 {name=Xpi_ch2}
N 3320 500 3280 500 {lab=chb2}
C {lab_pin.sym} 3280 500 0 0 {name=l265 sig_type=std_logic lab=chb2}
N 3480 500 3520 500 {lab=ch2}
C {lab_pin.sym} 3520 500 0 1 {name=l266 sig_type=std_logic lab=ch2}
N 3320 520 3280 520 {lab=vdd}
C {lab_pin.sym} 3280 520 0 0 {name=l267 sig_type=std_logic lab=vdd}
N 3480 520 3520 520 {lab=vss}
C {lab_pin.sym} 3520 520 0 1 {name=l268 sig_type=std_logic lab=vss}
C {nand2.sym} 3720 540 0 0 {name=Xpd_ch3}
N 3640 500 3600 500 {lab=a3}
C {lab_pin.sym} 3600 500 0 0 {name=l269 sig_type=std_logic lab=a3}
N 3800 500 3840 500 {lab=a2}
C {lab_pin.sym} 3840 500 0 1 {name=l270 sig_type=std_logic lab=a2}
N 3640 520 3600 520 {lab=chb3}
C {lab_pin.sym} 3600 520 0 0 {name=l271 sig_type=std_logic lab=chb3}
N 3800 520 3840 520 {lab=vdd}
C {lab_pin.sym} 3840 520 0 1 {name=l272 sig_type=std_logic lab=vdd}
N 3640 540 3600 540 {lab=vss}
C {lab_pin.sym} 3600 540 0 0 {name=l273 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4040 540 0 0 {name=Xpi_ch3}
N 3960 500 3920 500 {lab=chb3}
C {lab_pin.sym} 3920 500 0 0 {name=l274 sig_type=std_logic lab=chb3}
N 4120 500 4160 500 {lab=ch3}
C {lab_pin.sym} 4160 500 0 1 {name=l275 sig_type=std_logic lab=ch3}
N 3960 520 3920 520 {lab=vdd}
C {lab_pin.sym} 3920 520 0 0 {name=l276 sig_type=std_logic lab=vdd}
N 4120 520 4160 520 {lab=vss}
C {lab_pin.sym} 4160 520 0 1 {name=l277 sig_type=std_logic lab=vss}
C {nand2.sym} 4360 540 0 0 {name=Xpd_cl0}
N 4280 500 4240 500 {lab=ab1}
C {lab_pin.sym} 4240 500 0 0 {name=l278 sig_type=std_logic lab=ab1}
N 4440 500 4480 500 {lab=ab0}
C {lab_pin.sym} 4480 500 0 1 {name=l279 sig_type=std_logic lab=ab0}
N 4280 520 4240 520 {lab=clb0}
C {lab_pin.sym} 4240 520 0 0 {name=l280 sig_type=std_logic lab=clb0}
N 4440 520 4480 520 {lab=vdd}
C {lab_pin.sym} 4480 520 0 1 {name=l281 sig_type=std_logic lab=vdd}
N 4280 540 4240 540 {lab=vss}
C {lab_pin.sym} 4240 540 0 0 {name=l282 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4680 540 0 0 {name=Xpi_cl0}
N 4600 500 4560 500 {lab=clb0}
C {lab_pin.sym} 4560 500 0 0 {name=l283 sig_type=std_logic lab=clb0}
N 4760 500 4800 500 {lab=cl0}
C {lab_pin.sym} 4800 500 0 1 {name=l284 sig_type=std_logic lab=cl0}
N 4600 520 4560 520 {lab=vdd}
C {lab_pin.sym} 4560 520 0 0 {name=l285 sig_type=std_logic lab=vdd}
N 4760 520 4800 520 {lab=vss}
C {lab_pin.sym} 4800 520 0 1 {name=l286 sig_type=std_logic lab=vss}
C {nand2.sym} 5000 540 0 0 {name=Xpd_cl1}
N 4920 500 4880 500 {lab=ab1}
C {lab_pin.sym} 4880 500 0 0 {name=l287 sig_type=std_logic lab=ab1}
N 5080 500 5120 500 {lab=a0}
C {lab_pin.sym} 5120 500 0 1 {name=l288 sig_type=std_logic lab=a0}
N 4920 520 4880 520 {lab=clb1}
C {lab_pin.sym} 4880 520 0 0 {name=l289 sig_type=std_logic lab=clb1}
N 5080 520 5120 520 {lab=vdd}
C {lab_pin.sym} 5120 520 0 1 {name=l290 sig_type=std_logic lab=vdd}
N 4920 540 4880 540 {lab=vss}
C {lab_pin.sym} 4880 540 0 0 {name=l291 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 200 720 0 0 {name=Xpi_cl1}
N 120 680 80 680 {lab=clb1}
C {lab_pin.sym} 80 680 0 0 {name=l292 sig_type=std_logic lab=clb1}
N 280 680 320 680 {lab=cl1}
C {lab_pin.sym} 320 680 0 1 {name=l293 sig_type=std_logic lab=cl1}
N 120 700 80 700 {lab=vdd}
C {lab_pin.sym} 80 700 0 0 {name=l294 sig_type=std_logic lab=vdd}
N 280 700 320 700 {lab=vss}
C {lab_pin.sym} 320 700 0 1 {name=l295 sig_type=std_logic lab=vss}
C {nand2.sym} 520 720 0 0 {name=Xpd_cl2}
N 440 680 400 680 {lab=a1}
C {lab_pin.sym} 400 680 0 0 {name=l296 sig_type=std_logic lab=a1}
N 600 680 640 680 {lab=ab0}
C {lab_pin.sym} 640 680 0 1 {name=l297 sig_type=std_logic lab=ab0}
N 440 700 400 700 {lab=clb2}
C {lab_pin.sym} 400 700 0 0 {name=l298 sig_type=std_logic lab=clb2}
N 600 700 640 700 {lab=vdd}
C {lab_pin.sym} 640 700 0 1 {name=l299 sig_type=std_logic lab=vdd}
N 440 720 400 720 {lab=vss}
C {lab_pin.sym} 400 720 0 0 {name=l300 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 840 720 0 0 {name=Xpi_cl2}
N 760 680 720 680 {lab=clb2}
C {lab_pin.sym} 720 680 0 0 {name=l301 sig_type=std_logic lab=clb2}
N 920 680 960 680 {lab=cl2}
C {lab_pin.sym} 960 680 0 1 {name=l302 sig_type=std_logic lab=cl2}
N 760 700 720 700 {lab=vdd}
C {lab_pin.sym} 720 700 0 0 {name=l303 sig_type=std_logic lab=vdd}
N 920 700 960 700 {lab=vss}
C {lab_pin.sym} 960 700 0 1 {name=l304 sig_type=std_logic lab=vss}
C {nand2.sym} 1160 720 0 0 {name=Xpd_cl3}
N 1080 680 1040 680 {lab=a1}
C {lab_pin.sym} 1040 680 0 0 {name=l305 sig_type=std_logic lab=a1}
N 1240 680 1280 680 {lab=a0}
C {lab_pin.sym} 1280 680 0 1 {name=l306 sig_type=std_logic lab=a0}
N 1080 700 1040 700 {lab=clb3}
C {lab_pin.sym} 1040 700 0 0 {name=l307 sig_type=std_logic lab=clb3}
N 1240 700 1280 700 {lab=vdd}
C {lab_pin.sym} 1280 700 0 1 {name=l308 sig_type=std_logic lab=vdd}
N 1080 720 1040 720 {lab=vss}
C {lab_pin.sym} 1040 720 0 0 {name=l309 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 1480 720 0 0 {name=Xpi_cl3}
N 1400 680 1360 680 {lab=clb3}
C {lab_pin.sym} 1360 680 0 0 {name=l310 sig_type=std_logic lab=clb3}
N 1560 680 1600 680 {lab=cl3}
C {lab_pin.sym} 1600 680 0 1 {name=l311 sig_type=std_logic lab=cl3}
N 1400 700 1360 700 {lab=vdd}
C {lab_pin.sym} 1360 700 0 0 {name=l312 sig_type=std_logic lab=vdd}
N 1560 700 1600 700 {lab=vss}
C {lab_pin.sym} 1600 700 0 1 {name=l313 sig_type=std_logic lab=vss}
C {nand3.sym} 1800 720 0 0 {name=Xrd0}
N 1720 680 1680 680 {lab=rh0}
C {lab_pin.sym} 1680 680 0 0 {name=l314 sig_type=std_logic lab=rh0}
N 1880 680 1920 680 {lab=rl0}
C {lab_pin.sym} 1920 680 0 1 {name=l315 sig_type=std_logic lab=rl0}
N 1720 700 1680 700 {lab=clkb}
C {lab_pin.sym} 1680 700 0 0 {name=l316 sig_type=std_logic lab=clkb}
N 1880 700 1920 700 {lab=wlb0}
C {lab_pin.sym} 1920 700 0 1 {name=l317 sig_type=std_logic lab=wlb0}
N 1720 720 1680 720 {lab=vdd}
C {lab_pin.sym} 1680 720 0 0 {name=l318 sig_type=std_logic lab=vdd}
N 1880 720 1920 720 {lab=vss}
C {lab_pin.sym} 1920 720 0 1 {name=l319 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2120 720 0 0 {name=Xwd0}
N 2040 680 2000 680 {lab=wlb0}
C {lab_pin.sym} 2000 680 0 0 {name=l320 sig_type=std_logic lab=wlb0}
N 2200 680 2240 680 {lab=wl0}
C {lab_pin.sym} 2240 680 0 1 {name=l321 sig_type=std_logic lab=wl0}
N 2040 700 2000 700 {lab=vdd}
C {lab_pin.sym} 2000 700 0 0 {name=l322 sig_type=std_logic lab=vdd}
N 2200 700 2240 700 {lab=vss}
C {lab_pin.sym} 2240 700 0 1 {name=l323 sig_type=std_logic lab=vss}
C {nand3.sym} 2440 720 0 0 {name=Xrd1}
N 2360 680 2320 680 {lab=rh0}
C {lab_pin.sym} 2320 680 0 0 {name=l324 sig_type=std_logic lab=rh0}
N 2520 680 2560 680 {lab=rl1}
C {lab_pin.sym} 2560 680 0 1 {name=l325 sig_type=std_logic lab=rl1}
N 2360 700 2320 700 {lab=clkb}
C {lab_pin.sym} 2320 700 0 0 {name=l326 sig_type=std_logic lab=clkb}
N 2520 700 2560 700 {lab=wlb1}
C {lab_pin.sym} 2560 700 0 1 {name=l327 sig_type=std_logic lab=wlb1}
N 2360 720 2320 720 {lab=vdd}
C {lab_pin.sym} 2320 720 0 0 {name=l328 sig_type=std_logic lab=vdd}
N 2520 720 2560 720 {lab=vss}
C {lab_pin.sym} 2560 720 0 1 {name=l329 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2760 720 0 0 {name=Xwd1}
N 2680 680 2640 680 {lab=wlb1}
C {lab_pin.sym} 2640 680 0 0 {name=l330 sig_type=std_logic lab=wlb1}
N 2840 680 2880 680 {lab=wl1}
C {lab_pin.sym} 2880 680 0 1 {name=l331 sig_type=std_logic lab=wl1}
N 2680 700 2640 700 {lab=vdd}
C {lab_pin.sym} 2640 700 0 0 {name=l332 sig_type=std_logic lab=vdd}
N 2840 700 2880 700 {lab=vss}
C {lab_pin.sym} 2880 700 0 1 {name=l333 sig_type=std_logic lab=vss}
C {nand3.sym} 3080 720 0 0 {name=Xrd2}
N 3000 680 2960 680 {lab=rh0}
C {lab_pin.sym} 2960 680 0 0 {name=l334 sig_type=std_logic lab=rh0}
N 3160 680 3200 680 {lab=rl2}
C {lab_pin.sym} 3200 680 0 1 {name=l335 sig_type=std_logic lab=rl2}
N 3000 700 2960 700 {lab=clkb}
C {lab_pin.sym} 2960 700 0 0 {name=l336 sig_type=std_logic lab=clkb}
N 3160 700 3200 700 {lab=wlb2}
C {lab_pin.sym} 3200 700 0 1 {name=l337 sig_type=std_logic lab=wlb2}
N 3000 720 2960 720 {lab=vdd}
C {lab_pin.sym} 2960 720 0 0 {name=l338 sig_type=std_logic lab=vdd}
N 3160 720 3200 720 {lab=vss}
C {lab_pin.sym} 3200 720 0 1 {name=l339 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 3400 720 0 0 {name=Xwd2}
N 3320 680 3280 680 {lab=wlb2}
C {lab_pin.sym} 3280 680 0 0 {name=l340 sig_type=std_logic lab=wlb2}
N 3480 680 3520 680 {lab=wl2}
C {lab_pin.sym} 3520 680 0 1 {name=l341 sig_type=std_logic lab=wl2}
N 3320 700 3280 700 {lab=vdd}
C {lab_pin.sym} 3280 700 0 0 {name=l342 sig_type=std_logic lab=vdd}
N 3480 700 3520 700 {lab=vss}
C {lab_pin.sym} 3520 700 0 1 {name=l343 sig_type=std_logic lab=vss}
C {nand3.sym} 3720 720 0 0 {name=Xrd3}
N 3640 680 3600 680 {lab=rh0}
C {lab_pin.sym} 3600 680 0 0 {name=l344 sig_type=std_logic lab=rh0}
N 3800 680 3840 680 {lab=rl3}
C {lab_pin.sym} 3840 680 0 1 {name=l345 sig_type=std_logic lab=rl3}
N 3640 700 3600 700 {lab=clkb}
C {lab_pin.sym} 3600 700 0 0 {name=l346 sig_type=std_logic lab=clkb}
N 3800 700 3840 700 {lab=wlb3}
C {lab_pin.sym} 3840 700 0 1 {name=l347 sig_type=std_logic lab=wlb3}
N 3640 720 3600 720 {lab=vdd}
C {lab_pin.sym} 3600 720 0 0 {name=l348 sig_type=std_logic lab=vdd}
N 3800 720 3840 720 {lab=vss}
C {lab_pin.sym} 3840 720 0 1 {name=l349 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4040 720 0 0 {name=Xwd3}
N 3960 680 3920 680 {lab=wlb3}
C {lab_pin.sym} 3920 680 0 0 {name=l350 sig_type=std_logic lab=wlb3}
N 4120 680 4160 680 {lab=wl3}
C {lab_pin.sym} 4160 680 0 1 {name=l351 sig_type=std_logic lab=wl3}
N 3960 700 3920 700 {lab=vdd}
C {lab_pin.sym} 3920 700 0 0 {name=l352 sig_type=std_logic lab=vdd}
N 4120 700 4160 700 {lab=vss}
C {lab_pin.sym} 4160 700 0 1 {name=l353 sig_type=std_logic lab=vss}
C {nand3.sym} 4360 720 0 0 {name=Xrd4}
N 4280 680 4240 680 {lab=rh1}
C {lab_pin.sym} 4240 680 0 0 {name=l354 sig_type=std_logic lab=rh1}
N 4440 680 4480 680 {lab=rl0}
C {lab_pin.sym} 4480 680 0 1 {name=l355 sig_type=std_logic lab=rl0}
N 4280 700 4240 700 {lab=clkb}
C {lab_pin.sym} 4240 700 0 0 {name=l356 sig_type=std_logic lab=clkb}
N 4440 700 4480 700 {lab=wlb4}
C {lab_pin.sym} 4480 700 0 1 {name=l357 sig_type=std_logic lab=wlb4}
N 4280 720 4240 720 {lab=vdd}
C {lab_pin.sym} 4240 720 0 0 {name=l358 sig_type=std_logic lab=vdd}
N 4440 720 4480 720 {lab=vss}
C {lab_pin.sym} 4480 720 0 1 {name=l359 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4680 720 0 0 {name=Xwd4}
N 4600 680 4560 680 {lab=wlb4}
C {lab_pin.sym} 4560 680 0 0 {name=l360 sig_type=std_logic lab=wlb4}
N 4760 680 4800 680 {lab=wl4}
C {lab_pin.sym} 4800 680 0 1 {name=l361 sig_type=std_logic lab=wl4}
N 4600 700 4560 700 {lab=vdd}
C {lab_pin.sym} 4560 700 0 0 {name=l362 sig_type=std_logic lab=vdd}
N 4760 700 4800 700 {lab=vss}
C {lab_pin.sym} 4800 700 0 1 {name=l363 sig_type=std_logic lab=vss}
C {nand3.sym} 5000 720 0 0 {name=Xrd5}
N 4920 680 4880 680 {lab=rh1}
C {lab_pin.sym} 4880 680 0 0 {name=l364 sig_type=std_logic lab=rh1}
N 5080 680 5120 680 {lab=rl1}
C {lab_pin.sym} 5120 680 0 1 {name=l365 sig_type=std_logic lab=rl1}
N 4920 700 4880 700 {lab=clkb}
C {lab_pin.sym} 4880 700 0 0 {name=l366 sig_type=std_logic lab=clkb}
N 5080 700 5120 700 {lab=wlb5}
C {lab_pin.sym} 5120 700 0 1 {name=l367 sig_type=std_logic lab=wlb5}
N 4920 720 4880 720 {lab=vdd}
C {lab_pin.sym} 4880 720 0 0 {name=l368 sig_type=std_logic lab=vdd}
N 5080 720 5120 720 {lab=vss}
C {lab_pin.sym} 5120 720 0 1 {name=l369 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 200 900 0 0 {name=Xwd5}
N 120 860 80 860 {lab=wlb5}
C {lab_pin.sym} 80 860 0 0 {name=l370 sig_type=std_logic lab=wlb5}
N 280 860 320 860 {lab=wl5}
C {lab_pin.sym} 320 860 0 1 {name=l371 sig_type=std_logic lab=wl5}
N 120 880 80 880 {lab=vdd}
C {lab_pin.sym} 80 880 0 0 {name=l372 sig_type=std_logic lab=vdd}
N 280 880 320 880 {lab=vss}
C {lab_pin.sym} 320 880 0 1 {name=l373 sig_type=std_logic lab=vss}
C {nand3.sym} 520 900 0 0 {name=Xrd6}
N 440 860 400 860 {lab=rh1}
C {lab_pin.sym} 400 860 0 0 {name=l374 sig_type=std_logic lab=rh1}
N 600 860 640 860 {lab=rl2}
C {lab_pin.sym} 640 860 0 1 {name=l375 sig_type=std_logic lab=rl2}
N 440 880 400 880 {lab=clkb}
C {lab_pin.sym} 400 880 0 0 {name=l376 sig_type=std_logic lab=clkb}
N 600 880 640 880 {lab=wlb6}
C {lab_pin.sym} 640 880 0 1 {name=l377 sig_type=std_logic lab=wlb6}
N 440 900 400 900 {lab=vdd}
C {lab_pin.sym} 400 900 0 0 {name=l378 sig_type=std_logic lab=vdd}
N 600 900 640 900 {lab=vss}
C {lab_pin.sym} 640 900 0 1 {name=l379 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 840 900 0 0 {name=Xwd6}
N 760 860 720 860 {lab=wlb6}
C {lab_pin.sym} 720 860 0 0 {name=l380 sig_type=std_logic lab=wlb6}
N 920 860 960 860 {lab=wl6}
C {lab_pin.sym} 960 860 0 1 {name=l381 sig_type=std_logic lab=wl6}
N 760 880 720 880 {lab=vdd}
C {lab_pin.sym} 720 880 0 0 {name=l382 sig_type=std_logic lab=vdd}
N 920 880 960 880 {lab=vss}
C {lab_pin.sym} 960 880 0 1 {name=l383 sig_type=std_logic lab=vss}
C {nand3.sym} 1160 900 0 0 {name=Xrd7}
N 1080 860 1040 860 {lab=rh1}
C {lab_pin.sym} 1040 860 0 0 {name=l384 sig_type=std_logic lab=rh1}
N 1240 860 1280 860 {lab=rl3}
C {lab_pin.sym} 1280 860 0 1 {name=l385 sig_type=std_logic lab=rl3}
N 1080 880 1040 880 {lab=clkb}
C {lab_pin.sym} 1040 880 0 0 {name=l386 sig_type=std_logic lab=clkb}
N 1240 880 1280 880 {lab=wlb7}
C {lab_pin.sym} 1280 880 0 1 {name=l387 sig_type=std_logic lab=wlb7}
N 1080 900 1040 900 {lab=vdd}
C {lab_pin.sym} 1040 900 0 0 {name=l388 sig_type=std_logic lab=vdd}
N 1240 900 1280 900 {lab=vss}
C {lab_pin.sym} 1280 900 0 1 {name=l389 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 1480 900 0 0 {name=Xwd7}
N 1400 860 1360 860 {lab=wlb7}
C {lab_pin.sym} 1360 860 0 0 {name=l390 sig_type=std_logic lab=wlb7}
N 1560 860 1600 860 {lab=wl7}
C {lab_pin.sym} 1600 860 0 1 {name=l391 sig_type=std_logic lab=wl7}
N 1400 880 1360 880 {lab=vdd}
C {lab_pin.sym} 1360 880 0 0 {name=l392 sig_type=std_logic lab=vdd}
N 1560 880 1600 880 {lab=vss}
C {lab_pin.sym} 1600 880 0 1 {name=l393 sig_type=std_logic lab=vss}
C {nand3.sym} 1800 900 0 0 {name=Xrd8}
N 1720 860 1680 860 {lab=rh2}
C {lab_pin.sym} 1680 860 0 0 {name=l394 sig_type=std_logic lab=rh2}
N 1880 860 1920 860 {lab=rl0}
C {lab_pin.sym} 1920 860 0 1 {name=l395 sig_type=std_logic lab=rl0}
N 1720 880 1680 880 {lab=clkb}
C {lab_pin.sym} 1680 880 0 0 {name=l396 sig_type=std_logic lab=clkb}
N 1880 880 1920 880 {lab=wlb8}
C {lab_pin.sym} 1920 880 0 1 {name=l397 sig_type=std_logic lab=wlb8}
N 1720 900 1680 900 {lab=vdd}
C {lab_pin.sym} 1680 900 0 0 {name=l398 sig_type=std_logic lab=vdd}
N 1880 900 1920 900 {lab=vss}
C {lab_pin.sym} 1920 900 0 1 {name=l399 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2120 900 0 0 {name=Xwd8}
N 2040 860 2000 860 {lab=wlb8}
C {lab_pin.sym} 2000 860 0 0 {name=l400 sig_type=std_logic lab=wlb8}
N 2200 860 2240 860 {lab=wl8}
C {lab_pin.sym} 2240 860 0 1 {name=l401 sig_type=std_logic lab=wl8}
N 2040 880 2000 880 {lab=vdd}
C {lab_pin.sym} 2000 880 0 0 {name=l402 sig_type=std_logic lab=vdd}
N 2200 880 2240 880 {lab=vss}
C {lab_pin.sym} 2240 880 0 1 {name=l403 sig_type=std_logic lab=vss}
C {nand3.sym} 2440 900 0 0 {name=Xrd9}
N 2360 860 2320 860 {lab=rh2}
C {lab_pin.sym} 2320 860 0 0 {name=l404 sig_type=std_logic lab=rh2}
N 2520 860 2560 860 {lab=rl1}
C {lab_pin.sym} 2560 860 0 1 {name=l405 sig_type=std_logic lab=rl1}
N 2360 880 2320 880 {lab=clkb}
C {lab_pin.sym} 2320 880 0 0 {name=l406 sig_type=std_logic lab=clkb}
N 2520 880 2560 880 {lab=wlb9}
C {lab_pin.sym} 2560 880 0 1 {name=l407 sig_type=std_logic lab=wlb9}
N 2360 900 2320 900 {lab=vdd}
C {lab_pin.sym} 2320 900 0 0 {name=l408 sig_type=std_logic lab=vdd}
N 2520 900 2560 900 {lab=vss}
C {lab_pin.sym} 2560 900 0 1 {name=l409 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2760 900 0 0 {name=Xwd9}
N 2680 860 2640 860 {lab=wlb9}
C {lab_pin.sym} 2640 860 0 0 {name=l410 sig_type=std_logic lab=wlb9}
N 2840 860 2880 860 {lab=wl9}
C {lab_pin.sym} 2880 860 0 1 {name=l411 sig_type=std_logic lab=wl9}
N 2680 880 2640 880 {lab=vdd}
C {lab_pin.sym} 2640 880 0 0 {name=l412 sig_type=std_logic lab=vdd}
N 2840 880 2880 880 {lab=vss}
C {lab_pin.sym} 2880 880 0 1 {name=l413 sig_type=std_logic lab=vss}
C {nand3.sym} 3080 900 0 0 {name=Xrd10}
N 3000 860 2960 860 {lab=rh2}
C {lab_pin.sym} 2960 860 0 0 {name=l414 sig_type=std_logic lab=rh2}
N 3160 860 3200 860 {lab=rl2}
C {lab_pin.sym} 3200 860 0 1 {name=l415 sig_type=std_logic lab=rl2}
N 3000 880 2960 880 {lab=clkb}
C {lab_pin.sym} 2960 880 0 0 {name=l416 sig_type=std_logic lab=clkb}
N 3160 880 3200 880 {lab=wlb10}
C {lab_pin.sym} 3200 880 0 1 {name=l417 sig_type=std_logic lab=wlb10}
N 3000 900 2960 900 {lab=vdd}
C {lab_pin.sym} 2960 900 0 0 {name=l418 sig_type=std_logic lab=vdd}
N 3160 900 3200 900 {lab=vss}
C {lab_pin.sym} 3200 900 0 1 {name=l419 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 3400 900 0 0 {name=Xwd10}
N 3320 860 3280 860 {lab=wlb10}
C {lab_pin.sym} 3280 860 0 0 {name=l420 sig_type=std_logic lab=wlb10}
N 3480 860 3520 860 {lab=wl10}
C {lab_pin.sym} 3520 860 0 1 {name=l421 sig_type=std_logic lab=wl10}
N 3320 880 3280 880 {lab=vdd}
C {lab_pin.sym} 3280 880 0 0 {name=l422 sig_type=std_logic lab=vdd}
N 3480 880 3520 880 {lab=vss}
C {lab_pin.sym} 3520 880 0 1 {name=l423 sig_type=std_logic lab=vss}
C {nand3.sym} 3720 900 0 0 {name=Xrd11}
N 3640 860 3600 860 {lab=rh2}
C {lab_pin.sym} 3600 860 0 0 {name=l424 sig_type=std_logic lab=rh2}
N 3800 860 3840 860 {lab=rl3}
C {lab_pin.sym} 3840 860 0 1 {name=l425 sig_type=std_logic lab=rl3}
N 3640 880 3600 880 {lab=clkb}
C {lab_pin.sym} 3600 880 0 0 {name=l426 sig_type=std_logic lab=clkb}
N 3800 880 3840 880 {lab=wlb11}
C {lab_pin.sym} 3840 880 0 1 {name=l427 sig_type=std_logic lab=wlb11}
N 3640 900 3600 900 {lab=vdd}
C {lab_pin.sym} 3600 900 0 0 {name=l428 sig_type=std_logic lab=vdd}
N 3800 900 3840 900 {lab=vss}
C {lab_pin.sym} 3840 900 0 1 {name=l429 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4040 900 0 0 {name=Xwd11}
N 3960 860 3920 860 {lab=wlb11}
C {lab_pin.sym} 3920 860 0 0 {name=l430 sig_type=std_logic lab=wlb11}
N 4120 860 4160 860 {lab=wl11}
C {lab_pin.sym} 4160 860 0 1 {name=l431 sig_type=std_logic lab=wl11}
N 3960 880 3920 880 {lab=vdd}
C {lab_pin.sym} 3920 880 0 0 {name=l432 sig_type=std_logic lab=vdd}
N 4120 880 4160 880 {lab=vss}
C {lab_pin.sym} 4160 880 0 1 {name=l433 sig_type=std_logic lab=vss}
C {nand3.sym} 4360 900 0 0 {name=Xrd12}
N 4280 860 4240 860 {lab=rh3}
C {lab_pin.sym} 4240 860 0 0 {name=l434 sig_type=std_logic lab=rh3}
N 4440 860 4480 860 {lab=rl0}
C {lab_pin.sym} 4480 860 0 1 {name=l435 sig_type=std_logic lab=rl0}
N 4280 880 4240 880 {lab=clkb}
C {lab_pin.sym} 4240 880 0 0 {name=l436 sig_type=std_logic lab=clkb}
N 4440 880 4480 880 {lab=wlb12}
C {lab_pin.sym} 4480 880 0 1 {name=l437 sig_type=std_logic lab=wlb12}
N 4280 900 4240 900 {lab=vdd}
C {lab_pin.sym} 4240 900 0 0 {name=l438 sig_type=std_logic lab=vdd}
N 4440 900 4480 900 {lab=vss}
C {lab_pin.sym} 4480 900 0 1 {name=l439 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4680 900 0 0 {name=Xwd12}
N 4600 860 4560 860 {lab=wlb12}
C {lab_pin.sym} 4560 860 0 0 {name=l440 sig_type=std_logic lab=wlb12}
N 4760 860 4800 860 {lab=wl12}
C {lab_pin.sym} 4800 860 0 1 {name=l441 sig_type=std_logic lab=wl12}
N 4600 880 4560 880 {lab=vdd}
C {lab_pin.sym} 4560 880 0 0 {name=l442 sig_type=std_logic lab=vdd}
N 4760 880 4800 880 {lab=vss}
C {lab_pin.sym} 4800 880 0 1 {name=l443 sig_type=std_logic lab=vss}
C {nand3.sym} 5000 900 0 0 {name=Xrd13}
N 4920 860 4880 860 {lab=rh3}
C {lab_pin.sym} 4880 860 0 0 {name=l444 sig_type=std_logic lab=rh3}
N 5080 860 5120 860 {lab=rl1}
C {lab_pin.sym} 5120 860 0 1 {name=l445 sig_type=std_logic lab=rl1}
N 4920 880 4880 880 {lab=clkb}
C {lab_pin.sym} 4880 880 0 0 {name=l446 sig_type=std_logic lab=clkb}
N 5080 880 5120 880 {lab=wlb13}
C {lab_pin.sym} 5120 880 0 1 {name=l447 sig_type=std_logic lab=wlb13}
N 4920 900 4880 900 {lab=vdd}
C {lab_pin.sym} 4880 900 0 0 {name=l448 sig_type=std_logic lab=vdd}
N 5080 900 5120 900 {lab=vss}
C {lab_pin.sym} 5120 900 0 1 {name=l449 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 200 1080 0 0 {name=Xwd13}
N 120 1040 80 1040 {lab=wlb13}
C {lab_pin.sym} 80 1040 0 0 {name=l450 sig_type=std_logic lab=wlb13}
N 280 1040 320 1040 {lab=wl13}
C {lab_pin.sym} 320 1040 0 1 {name=l451 sig_type=std_logic lab=wl13}
N 120 1060 80 1060 {lab=vdd}
C {lab_pin.sym} 80 1060 0 0 {name=l452 sig_type=std_logic lab=vdd}
N 280 1060 320 1060 {lab=vss}
C {lab_pin.sym} 320 1060 0 1 {name=l453 sig_type=std_logic lab=vss}
C {nand3.sym} 520 1080 0 0 {name=Xrd14}
N 440 1040 400 1040 {lab=rh3}
C {lab_pin.sym} 400 1040 0 0 {name=l454 sig_type=std_logic lab=rh3}
N 600 1040 640 1040 {lab=rl2}
C {lab_pin.sym} 640 1040 0 1 {name=l455 sig_type=std_logic lab=rl2}
N 440 1060 400 1060 {lab=clkb}
C {lab_pin.sym} 400 1060 0 0 {name=l456 sig_type=std_logic lab=clkb}
N 600 1060 640 1060 {lab=wlb14}
C {lab_pin.sym} 640 1060 0 1 {name=l457 sig_type=std_logic lab=wlb14}
N 440 1080 400 1080 {lab=vdd}
C {lab_pin.sym} 400 1080 0 0 {name=l458 sig_type=std_logic lab=vdd}
N 600 1080 640 1080 {lab=vss}
C {lab_pin.sym} 640 1080 0 1 {name=l459 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 840 1080 0 0 {name=Xwd14}
N 760 1040 720 1040 {lab=wlb14}
C {lab_pin.sym} 720 1040 0 0 {name=l460 sig_type=std_logic lab=wlb14}
N 920 1040 960 1040 {lab=wl14}
C {lab_pin.sym} 960 1040 0 1 {name=l461 sig_type=std_logic lab=wl14}
N 760 1060 720 1060 {lab=vdd}
C {lab_pin.sym} 720 1060 0 0 {name=l462 sig_type=std_logic lab=vdd}
N 920 1060 960 1060 {lab=vss}
C {lab_pin.sym} 960 1060 0 1 {name=l463 sig_type=std_logic lab=vss}
C {nand3.sym} 1160 1080 0 0 {name=Xrd15}
N 1080 1040 1040 1040 {lab=rh3}
C {lab_pin.sym} 1040 1040 0 0 {name=l464 sig_type=std_logic lab=rh3}
N 1240 1040 1280 1040 {lab=rl3}
C {lab_pin.sym} 1280 1040 0 1 {name=l465 sig_type=std_logic lab=rl3}
N 1080 1060 1040 1060 {lab=clkb}
C {lab_pin.sym} 1040 1060 0 0 {name=l466 sig_type=std_logic lab=clkb}
N 1240 1060 1280 1060 {lab=wlb15}
C {lab_pin.sym} 1280 1060 0 1 {name=l467 sig_type=std_logic lab=wlb15}
N 1080 1080 1040 1080 {lab=vdd}
C {lab_pin.sym} 1040 1080 0 0 {name=l468 sig_type=std_logic lab=vdd}
N 1240 1080 1280 1080 {lab=vss}
C {lab_pin.sym} 1280 1080 0 1 {name=l469 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 1480 1080 0 0 {name=Xwd15}
N 1400 1040 1360 1040 {lab=wlb15}
C {lab_pin.sym} 1360 1040 0 0 {name=l470 sig_type=std_logic lab=wlb15}
N 1560 1040 1600 1040 {lab=wl15}
C {lab_pin.sym} 1600 1040 0 1 {name=l471 sig_type=std_logic lab=wl15}
N 1400 1060 1360 1060 {lab=vdd}
C {lab_pin.sym} 1360 1060 0 0 {name=l472 sig_type=std_logic lab=vdd}
N 1560 1060 1600 1060 {lab=vss}
C {lab_pin.sym} 1600 1060 0 1 {name=l473 sig_type=std_logic lab=vss}
C {nand2.sym} 1800 1080 0 0 {name=Xcd0}
N 1720 1040 1680 1040 {lab=ch0}
C {lab_pin.sym} 1680 1040 0 0 {name=l474 sig_type=std_logic lab=ch0}
N 1880 1040 1920 1040 {lab=cl0}
C {lab_pin.sym} 1920 1040 0 1 {name=l475 sig_type=std_logic lab=cl0}
N 1720 1060 1680 1060 {lab=cselb0}
C {lab_pin.sym} 1680 1060 0 0 {name=l476 sig_type=std_logic lab=cselb0}
N 1880 1060 1920 1060 {lab=vdd}
C {lab_pin.sym} 1920 1060 0 1 {name=l477 sig_type=std_logic lab=vdd}
N 1720 1080 1680 1080 {lab=vss}
C {lab_pin.sym} 1680 1080 0 0 {name=l478 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2120 1080 0 0 {name=Xcs0}
N 2040 1040 2000 1040 {lab=cselb0}
C {lab_pin.sym} 2000 1040 0 0 {name=l479 sig_type=std_logic lab=cselb0}
N 2200 1040 2240 1040 {lab=csel0}
C {lab_pin.sym} 2240 1040 0 1 {name=l480 sig_type=std_logic lab=csel0}
N 2040 1060 2000 1060 {lab=vdd}
C {lab_pin.sym} 2000 1060 0 0 {name=l481 sig_type=std_logic lab=vdd}
N 2200 1060 2240 1060 {lab=vss}
C {lab_pin.sym} 2240 1060 0 1 {name=l482 sig_type=std_logic lab=vss}
C {nand2.sym} 2440 1080 0 0 {name=Xcd1}
N 2360 1040 2320 1040 {lab=ch0}
C {lab_pin.sym} 2320 1040 0 0 {name=l483 sig_type=std_logic lab=ch0}
N 2520 1040 2560 1040 {lab=cl1}
C {lab_pin.sym} 2560 1040 0 1 {name=l484 sig_type=std_logic lab=cl1}
N 2360 1060 2320 1060 {lab=cselb1}
C {lab_pin.sym} 2320 1060 0 0 {name=l485 sig_type=std_logic lab=cselb1}
N 2520 1060 2560 1060 {lab=vdd}
C {lab_pin.sym} 2560 1060 0 1 {name=l486 sig_type=std_logic lab=vdd}
N 2360 1080 2320 1080 {lab=vss}
C {lab_pin.sym} 2320 1080 0 0 {name=l487 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2760 1080 0 0 {name=Xcs1}
N 2680 1040 2640 1040 {lab=cselb1}
C {lab_pin.sym} 2640 1040 0 0 {name=l488 sig_type=std_logic lab=cselb1}
N 2840 1040 2880 1040 {lab=csel1}
C {lab_pin.sym} 2880 1040 0 1 {name=l489 sig_type=std_logic lab=csel1}
N 2680 1060 2640 1060 {lab=vdd}
C {lab_pin.sym} 2640 1060 0 0 {name=l490 sig_type=std_logic lab=vdd}
N 2840 1060 2880 1060 {lab=vss}
C {lab_pin.sym} 2880 1060 0 1 {name=l491 sig_type=std_logic lab=vss}
C {nand2.sym} 3080 1080 0 0 {name=Xcd2}
N 3000 1040 2960 1040 {lab=ch0}
C {lab_pin.sym} 2960 1040 0 0 {name=l492 sig_type=std_logic lab=ch0}
N 3160 1040 3200 1040 {lab=cl2}
C {lab_pin.sym} 3200 1040 0 1 {name=l493 sig_type=std_logic lab=cl2}
N 3000 1060 2960 1060 {lab=cselb2}
C {lab_pin.sym} 2960 1060 0 0 {name=l494 sig_type=std_logic lab=cselb2}
N 3160 1060 3200 1060 {lab=vdd}
C {lab_pin.sym} 3200 1060 0 1 {name=l495 sig_type=std_logic lab=vdd}
N 3000 1080 2960 1080 {lab=vss}
C {lab_pin.sym} 2960 1080 0 0 {name=l496 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 3400 1080 0 0 {name=Xcs2}
N 3320 1040 3280 1040 {lab=cselb2}
C {lab_pin.sym} 3280 1040 0 0 {name=l497 sig_type=std_logic lab=cselb2}
N 3480 1040 3520 1040 {lab=csel2}
C {lab_pin.sym} 3520 1040 0 1 {name=l498 sig_type=std_logic lab=csel2}
N 3320 1060 3280 1060 {lab=vdd}
C {lab_pin.sym} 3280 1060 0 0 {name=l499 sig_type=std_logic lab=vdd}
N 3480 1060 3520 1060 {lab=vss}
C {lab_pin.sym} 3520 1060 0 1 {name=l500 sig_type=std_logic lab=vss}
C {nand2.sym} 3720 1080 0 0 {name=Xcd3}
N 3640 1040 3600 1040 {lab=ch0}
C {lab_pin.sym} 3600 1040 0 0 {name=l501 sig_type=std_logic lab=ch0}
N 3800 1040 3840 1040 {lab=cl3}
C {lab_pin.sym} 3840 1040 0 1 {name=l502 sig_type=std_logic lab=cl3}
N 3640 1060 3600 1060 {lab=cselb3}
C {lab_pin.sym} 3600 1060 0 0 {name=l503 sig_type=std_logic lab=cselb3}
N 3800 1060 3840 1060 {lab=vdd}
C {lab_pin.sym} 3840 1060 0 1 {name=l504 sig_type=std_logic lab=vdd}
N 3640 1080 3600 1080 {lab=vss}
C {lab_pin.sym} 3600 1080 0 0 {name=l505 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4040 1080 0 0 {name=Xcs3}
N 3960 1040 3920 1040 {lab=cselb3}
C {lab_pin.sym} 3920 1040 0 0 {name=l506 sig_type=std_logic lab=cselb3}
N 4120 1040 4160 1040 {lab=csel3}
C {lab_pin.sym} 4160 1040 0 1 {name=l507 sig_type=std_logic lab=csel3}
N 3960 1060 3920 1060 {lab=vdd}
C {lab_pin.sym} 3920 1060 0 0 {name=l508 sig_type=std_logic lab=vdd}
N 4120 1060 4160 1060 {lab=vss}
C {lab_pin.sym} 4160 1060 0 1 {name=l509 sig_type=std_logic lab=vss}
C {nand2.sym} 4360 1080 0 0 {name=Xcd4}
N 4280 1040 4240 1040 {lab=ch1}
C {lab_pin.sym} 4240 1040 0 0 {name=l510 sig_type=std_logic lab=ch1}
N 4440 1040 4480 1040 {lab=cl0}
C {lab_pin.sym} 4480 1040 0 1 {name=l511 sig_type=std_logic lab=cl0}
N 4280 1060 4240 1060 {lab=cselb4}
C {lab_pin.sym} 4240 1060 0 0 {name=l512 sig_type=std_logic lab=cselb4}
N 4440 1060 4480 1060 {lab=vdd}
C {lab_pin.sym} 4480 1060 0 1 {name=l513 sig_type=std_logic lab=vdd}
N 4280 1080 4240 1080 {lab=vss}
C {lab_pin.sym} 4240 1080 0 0 {name=l514 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4680 1080 0 0 {name=Xcs4}
N 4600 1040 4560 1040 {lab=cselb4}
C {lab_pin.sym} 4560 1040 0 0 {name=l515 sig_type=std_logic lab=cselb4}
N 4760 1040 4800 1040 {lab=csel4}
C {lab_pin.sym} 4800 1040 0 1 {name=l516 sig_type=std_logic lab=csel4}
N 4600 1060 4560 1060 {lab=vdd}
C {lab_pin.sym} 4560 1060 0 0 {name=l517 sig_type=std_logic lab=vdd}
N 4760 1060 4800 1060 {lab=vss}
C {lab_pin.sym} 4800 1060 0 1 {name=l518 sig_type=std_logic lab=vss}
C {nand2.sym} 5000 1080 0 0 {name=Xcd5}
N 4920 1040 4880 1040 {lab=ch1}
C {lab_pin.sym} 4880 1040 0 0 {name=l519 sig_type=std_logic lab=ch1}
N 5080 1040 5120 1040 {lab=cl1}
C {lab_pin.sym} 5120 1040 0 1 {name=l520 sig_type=std_logic lab=cl1}
N 4920 1060 4880 1060 {lab=cselb5}
C {lab_pin.sym} 4880 1060 0 0 {name=l521 sig_type=std_logic lab=cselb5}
N 5080 1060 5120 1060 {lab=vdd}
C {lab_pin.sym} 5120 1060 0 1 {name=l522 sig_type=std_logic lab=vdd}
N 4920 1080 4880 1080 {lab=vss}
C {lab_pin.sym} 4880 1080 0 0 {name=l523 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 200 1260 0 0 {name=Xcs5}
N 120 1220 80 1220 {lab=cselb5}
C {lab_pin.sym} 80 1220 0 0 {name=l524 sig_type=std_logic lab=cselb5}
N 280 1220 320 1220 {lab=csel5}
C {lab_pin.sym} 320 1220 0 1 {name=l525 sig_type=std_logic lab=csel5}
N 120 1240 80 1240 {lab=vdd}
C {lab_pin.sym} 80 1240 0 0 {name=l526 sig_type=std_logic lab=vdd}
N 280 1240 320 1240 {lab=vss}
C {lab_pin.sym} 320 1240 0 1 {name=l527 sig_type=std_logic lab=vss}
C {nand2.sym} 520 1260 0 0 {name=Xcd6}
N 440 1220 400 1220 {lab=ch1}
C {lab_pin.sym} 400 1220 0 0 {name=l528 sig_type=std_logic lab=ch1}
N 600 1220 640 1220 {lab=cl2}
C {lab_pin.sym} 640 1220 0 1 {name=l529 sig_type=std_logic lab=cl2}
N 440 1240 400 1240 {lab=cselb6}
C {lab_pin.sym} 400 1240 0 0 {name=l530 sig_type=std_logic lab=cselb6}
N 600 1240 640 1240 {lab=vdd}
C {lab_pin.sym} 640 1240 0 1 {name=l531 sig_type=std_logic lab=vdd}
N 440 1260 400 1260 {lab=vss}
C {lab_pin.sym} 400 1260 0 0 {name=l532 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 840 1260 0 0 {name=Xcs6}
N 760 1220 720 1220 {lab=cselb6}
C {lab_pin.sym} 720 1220 0 0 {name=l533 sig_type=std_logic lab=cselb6}
N 920 1220 960 1220 {lab=csel6}
C {lab_pin.sym} 960 1220 0 1 {name=l534 sig_type=std_logic lab=csel6}
N 760 1240 720 1240 {lab=vdd}
C {lab_pin.sym} 720 1240 0 0 {name=l535 sig_type=std_logic lab=vdd}
N 920 1240 960 1240 {lab=vss}
C {lab_pin.sym} 960 1240 0 1 {name=l536 sig_type=std_logic lab=vss}
C {nand2.sym} 1160 1260 0 0 {name=Xcd7}
N 1080 1220 1040 1220 {lab=ch1}
C {lab_pin.sym} 1040 1220 0 0 {name=l537 sig_type=std_logic lab=ch1}
N 1240 1220 1280 1220 {lab=cl3}
C {lab_pin.sym} 1280 1220 0 1 {name=l538 sig_type=std_logic lab=cl3}
N 1080 1240 1040 1240 {lab=cselb7}
C {lab_pin.sym} 1040 1240 0 0 {name=l539 sig_type=std_logic lab=cselb7}
N 1240 1240 1280 1240 {lab=vdd}
C {lab_pin.sym} 1280 1240 0 1 {name=l540 sig_type=std_logic lab=vdd}
N 1080 1260 1040 1260 {lab=vss}
C {lab_pin.sym} 1040 1260 0 0 {name=l541 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 1480 1260 0 0 {name=Xcs7}
N 1400 1220 1360 1220 {lab=cselb7}
C {lab_pin.sym} 1360 1220 0 0 {name=l542 sig_type=std_logic lab=cselb7}
N 1560 1220 1600 1220 {lab=csel7}
C {lab_pin.sym} 1600 1220 0 1 {name=l543 sig_type=std_logic lab=csel7}
N 1400 1240 1360 1240 {lab=vdd}
C {lab_pin.sym} 1360 1240 0 0 {name=l544 sig_type=std_logic lab=vdd}
N 1560 1240 1600 1240 {lab=vss}
C {lab_pin.sym} 1600 1240 0 1 {name=l545 sig_type=std_logic lab=vss}
C {nand2.sym} 1800 1260 0 0 {name=Xcd8}
N 1720 1220 1680 1220 {lab=ch2}
C {lab_pin.sym} 1680 1220 0 0 {name=l546 sig_type=std_logic lab=ch2}
N 1880 1220 1920 1220 {lab=cl0}
C {lab_pin.sym} 1920 1220 0 1 {name=l547 sig_type=std_logic lab=cl0}
N 1720 1240 1680 1240 {lab=cselb8}
C {lab_pin.sym} 1680 1240 0 0 {name=l548 sig_type=std_logic lab=cselb8}
N 1880 1240 1920 1240 {lab=vdd}
C {lab_pin.sym} 1920 1240 0 1 {name=l549 sig_type=std_logic lab=vdd}
N 1720 1260 1680 1260 {lab=vss}
C {lab_pin.sym} 1680 1260 0 0 {name=l550 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2120 1260 0 0 {name=Xcs8}
N 2040 1220 2000 1220 {lab=cselb8}
C {lab_pin.sym} 2000 1220 0 0 {name=l551 sig_type=std_logic lab=cselb8}
N 2200 1220 2240 1220 {lab=csel8}
C {lab_pin.sym} 2240 1220 0 1 {name=l552 sig_type=std_logic lab=csel8}
N 2040 1240 2000 1240 {lab=vdd}
C {lab_pin.sym} 2000 1240 0 0 {name=l553 sig_type=std_logic lab=vdd}
N 2200 1240 2240 1240 {lab=vss}
C {lab_pin.sym} 2240 1240 0 1 {name=l554 sig_type=std_logic lab=vss}
C {nand2.sym} 2440 1260 0 0 {name=Xcd9}
N 2360 1220 2320 1220 {lab=ch2}
C {lab_pin.sym} 2320 1220 0 0 {name=l555 sig_type=std_logic lab=ch2}
N 2520 1220 2560 1220 {lab=cl1}
C {lab_pin.sym} 2560 1220 0 1 {name=l556 sig_type=std_logic lab=cl1}
N 2360 1240 2320 1240 {lab=cselb9}
C {lab_pin.sym} 2320 1240 0 0 {name=l557 sig_type=std_logic lab=cselb9}
N 2520 1240 2560 1240 {lab=vdd}
C {lab_pin.sym} 2560 1240 0 1 {name=l558 sig_type=std_logic lab=vdd}
N 2360 1260 2320 1260 {lab=vss}
C {lab_pin.sym} 2320 1260 0 0 {name=l559 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 2760 1260 0 0 {name=Xcs9}
N 2680 1220 2640 1220 {lab=cselb9}
C {lab_pin.sym} 2640 1220 0 0 {name=l560 sig_type=std_logic lab=cselb9}
N 2840 1220 2880 1220 {lab=csel9}
C {lab_pin.sym} 2880 1220 0 1 {name=l561 sig_type=std_logic lab=csel9}
N 2680 1240 2640 1240 {lab=vdd}
C {lab_pin.sym} 2640 1240 0 0 {name=l562 sig_type=std_logic lab=vdd}
N 2840 1240 2880 1240 {lab=vss}
C {lab_pin.sym} 2880 1240 0 1 {name=l563 sig_type=std_logic lab=vss}
C {nand2.sym} 3080 1260 0 0 {name=Xcd10}
N 3000 1220 2960 1220 {lab=ch2}
C {lab_pin.sym} 2960 1220 0 0 {name=l564 sig_type=std_logic lab=ch2}
N 3160 1220 3200 1220 {lab=cl2}
C {lab_pin.sym} 3200 1220 0 1 {name=l565 sig_type=std_logic lab=cl2}
N 3000 1240 2960 1240 {lab=cselb10}
C {lab_pin.sym} 2960 1240 0 0 {name=l566 sig_type=std_logic lab=cselb10}
N 3160 1240 3200 1240 {lab=vdd}
C {lab_pin.sym} 3200 1240 0 1 {name=l567 sig_type=std_logic lab=vdd}
N 3000 1260 2960 1260 {lab=vss}
C {lab_pin.sym} 2960 1260 0 0 {name=l568 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 3400 1260 0 0 {name=Xcs10}
N 3320 1220 3280 1220 {lab=cselb10}
C {lab_pin.sym} 3280 1220 0 0 {name=l569 sig_type=std_logic lab=cselb10}
N 3480 1220 3520 1220 {lab=csel10}
C {lab_pin.sym} 3520 1220 0 1 {name=l570 sig_type=std_logic lab=csel10}
N 3320 1240 3280 1240 {lab=vdd}
C {lab_pin.sym} 3280 1240 0 0 {name=l571 sig_type=std_logic lab=vdd}
N 3480 1240 3520 1240 {lab=vss}
C {lab_pin.sym} 3520 1240 0 1 {name=l572 sig_type=std_logic lab=vss}
C {nand2.sym} 3720 1260 0 0 {name=Xcd11}
N 3640 1220 3600 1220 {lab=ch2}
C {lab_pin.sym} 3600 1220 0 0 {name=l573 sig_type=std_logic lab=ch2}
N 3800 1220 3840 1220 {lab=cl3}
C {lab_pin.sym} 3840 1220 0 1 {name=l574 sig_type=std_logic lab=cl3}
N 3640 1240 3600 1240 {lab=cselb11}
C {lab_pin.sym} 3600 1240 0 0 {name=l575 sig_type=std_logic lab=cselb11}
N 3800 1240 3840 1240 {lab=vdd}
C {lab_pin.sym} 3840 1240 0 1 {name=l576 sig_type=std_logic lab=vdd}
N 3640 1260 3600 1260 {lab=vss}
C {lab_pin.sym} 3600 1260 0 0 {name=l577 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4040 1260 0 0 {name=Xcs11}
N 3960 1220 3920 1220 {lab=cselb11}
C {lab_pin.sym} 3920 1220 0 0 {name=l578 sig_type=std_logic lab=cselb11}
N 4120 1220 4160 1220 {lab=csel11}
C {lab_pin.sym} 4160 1220 0 1 {name=l579 sig_type=std_logic lab=csel11}
N 3960 1240 3920 1240 {lab=vdd}
C {lab_pin.sym} 3920 1240 0 0 {name=l580 sig_type=std_logic lab=vdd}
N 4120 1240 4160 1240 {lab=vss}
C {lab_pin.sym} 4160 1240 0 1 {name=l581 sig_type=std_logic lab=vss}
C {nand2.sym} 4360 1260 0 0 {name=Xcd12}
N 4280 1220 4240 1220 {lab=ch3}
C {lab_pin.sym} 4240 1220 0 0 {name=l582 sig_type=std_logic lab=ch3}
N 4440 1220 4480 1220 {lab=cl0}
C {lab_pin.sym} 4480 1220 0 1 {name=l583 sig_type=std_logic lab=cl0}
N 4280 1240 4240 1240 {lab=cselb12}
C {lab_pin.sym} 4240 1240 0 0 {name=l584 sig_type=std_logic lab=cselb12}
N 4440 1240 4480 1240 {lab=vdd}
C {lab_pin.sym} 4480 1240 0 1 {name=l585 sig_type=std_logic lab=vdd}
N 4280 1260 4240 1260 {lab=vss}
C {lab_pin.sym} 4240 1260 0 0 {name=l586 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 4680 1260 0 0 {name=Xcs12}
N 4600 1220 4560 1220 {lab=cselb12}
C {lab_pin.sym} 4560 1220 0 0 {name=l587 sig_type=std_logic lab=cselb12}
N 4760 1220 4800 1220 {lab=csel12}
C {lab_pin.sym} 4800 1220 0 1 {name=l588 sig_type=std_logic lab=csel12}
N 4600 1240 4560 1240 {lab=vdd}
C {lab_pin.sym} 4560 1240 0 0 {name=l589 sig_type=std_logic lab=vdd}
N 4760 1240 4800 1240 {lab=vss}
C {lab_pin.sym} 4800 1240 0 1 {name=l590 sig_type=std_logic lab=vss}
C {nand2.sym} 5000 1260 0 0 {name=Xcd13}
N 4920 1220 4880 1220 {lab=ch3}
C {lab_pin.sym} 4880 1220 0 0 {name=l591 sig_type=std_logic lab=ch3}
N 5080 1220 5120 1220 {lab=cl1}
C {lab_pin.sym} 5120 1220 0 1 {name=l592 sig_type=std_logic lab=cl1}
N 4920 1240 4880 1240 {lab=cselb13}
C {lab_pin.sym} 4880 1240 0 0 {name=l593 sig_type=std_logic lab=cselb13}
N 5080 1240 5120 1240 {lab=vdd}
C {lab_pin.sym} 5120 1240 0 1 {name=l594 sig_type=std_logic lab=vdd}
N 4920 1260 4880 1260 {lab=vss}
C {lab_pin.sym} 4880 1260 0 0 {name=l595 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 200 1440 0 0 {name=Xcs13}
N 120 1400 80 1400 {lab=cselb13}
C {lab_pin.sym} 80 1400 0 0 {name=l596 sig_type=std_logic lab=cselb13}
N 280 1400 320 1400 {lab=csel13}
C {lab_pin.sym} 320 1400 0 1 {name=l597 sig_type=std_logic lab=csel13}
N 120 1420 80 1420 {lab=vdd}
C {lab_pin.sym} 80 1420 0 0 {name=l598 sig_type=std_logic lab=vdd}
N 280 1420 320 1420 {lab=vss}
C {lab_pin.sym} 320 1420 0 1 {name=l599 sig_type=std_logic lab=vss}
C {nand2.sym} 520 1440 0 0 {name=Xcd14}
N 440 1400 400 1400 {lab=ch3}
C {lab_pin.sym} 400 1400 0 0 {name=l600 sig_type=std_logic lab=ch3}
N 600 1400 640 1400 {lab=cl2}
C {lab_pin.sym} 640 1400 0 1 {name=l601 sig_type=std_logic lab=cl2}
N 440 1420 400 1420 {lab=cselb14}
C {lab_pin.sym} 400 1420 0 0 {name=l602 sig_type=std_logic lab=cselb14}
N 600 1420 640 1420 {lab=vdd}
C {lab_pin.sym} 640 1420 0 1 {name=l603 sig_type=std_logic lab=vdd}
N 440 1440 400 1440 {lab=vss}
C {lab_pin.sym} 400 1440 0 0 {name=l604 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 840 1440 0 0 {name=Xcs14}
N 760 1400 720 1400 {lab=cselb14}
C {lab_pin.sym} 720 1400 0 0 {name=l605 sig_type=std_logic lab=cselb14}
N 920 1400 960 1400 {lab=csel14}
C {lab_pin.sym} 960 1400 0 1 {name=l606 sig_type=std_logic lab=csel14}
N 760 1420 720 1420 {lab=vdd}
C {lab_pin.sym} 720 1420 0 0 {name=l607 sig_type=std_logic lab=vdd}
N 920 1420 960 1420 {lab=vss}
C {lab_pin.sym} 960 1420 0 1 {name=l608 sig_type=std_logic lab=vss}
C {nand2.sym} 1160 1440 0 0 {name=Xcd15}
N 1080 1400 1040 1400 {lab=ch3}
C {lab_pin.sym} 1040 1400 0 0 {name=l609 sig_type=std_logic lab=ch3}
N 1240 1400 1280 1400 {lab=cl3}
C {lab_pin.sym} 1280 1400 0 1 {name=l610 sig_type=std_logic lab=cl3}
N 1080 1420 1040 1420 {lab=cselb15}
C {lab_pin.sym} 1040 1420 0 0 {name=l611 sig_type=std_logic lab=cselb15}
N 1240 1420 1280 1420 {lab=vdd}
C {lab_pin.sym} 1280 1420 0 1 {name=l612 sig_type=std_logic lab=vdd}
N 1080 1440 1040 1440 {lab=vss}
C {lab_pin.sym} 1040 1440 0 0 {name=l613 sig_type=std_logic lab=vss}
C {inv_wn0p84_wp1p68.sym} 1480 1440 0 0 {name=Xcs15}
N 1400 1400 1360 1400 {lab=cselb15}
C {lab_pin.sym} 1360 1400 0 0 {name=l614 sig_type=std_logic lab=cselb15}
N 1560 1400 1600 1400 {lab=csel15}
C {lab_pin.sym} 1600 1400 0 1 {name=l615 sig_type=std_logic lab=csel15}
N 1400 1420 1360 1420 {lab=vdd}
C {lab_pin.sym} 1360 1420 0 0 {name=l616 sig_type=std_logic lab=vdd}
N 1560 1420 1600 1420 {lab=vss}
C {lab_pin.sym} 1600 1420 0 1 {name=l617 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 1440 0 0 {name=Xc_0_0}
N 1720 1400 1680 1400 {lab=bl0}
C {lab_pin.sym} 1680 1400 0 0 {name=l618 sig_type=std_logic lab=bl0}
N 1880 1400 1920 1400 {lab=blb0}
C {lab_pin.sym} 1920 1400 0 1 {name=l619 sig_type=std_logic lab=blb0}
N 1720 1420 1680 1420 {lab=wl0}
C {lab_pin.sym} 1680 1420 0 0 {name=l620 sig_type=std_logic lab=wl0}
N 1880 1420 1920 1420 {lab=vdd}
C {lab_pin.sym} 1920 1420 0 1 {name=l621 sig_type=std_logic lab=vdd}
N 1720 1440 1680 1440 {lab=vss}
C {lab_pin.sym} 1680 1440 0 0 {name=l622 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 1440 0 0 {name=Xc_0_1}
N 2040 1400 2000 1400 {lab=bl1}
C {lab_pin.sym} 2000 1400 0 0 {name=l623 sig_type=std_logic lab=bl1}
N 2200 1400 2240 1400 {lab=blb1}
C {lab_pin.sym} 2240 1400 0 1 {name=l624 sig_type=std_logic lab=blb1}
N 2040 1420 2000 1420 {lab=wl0}
C {lab_pin.sym} 2000 1420 0 0 {name=l625 sig_type=std_logic lab=wl0}
N 2200 1420 2240 1420 {lab=vdd}
C {lab_pin.sym} 2240 1420 0 1 {name=l626 sig_type=std_logic lab=vdd}
N 2040 1440 2000 1440 {lab=vss}
C {lab_pin.sym} 2000 1440 0 0 {name=l627 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 1440 0 0 {name=Xc_0_2}
N 2360 1400 2320 1400 {lab=bl2}
C {lab_pin.sym} 2320 1400 0 0 {name=l628 sig_type=std_logic lab=bl2}
N 2520 1400 2560 1400 {lab=blb2}
C {lab_pin.sym} 2560 1400 0 1 {name=l629 sig_type=std_logic lab=blb2}
N 2360 1420 2320 1420 {lab=wl0}
C {lab_pin.sym} 2320 1420 0 0 {name=l630 sig_type=std_logic lab=wl0}
N 2520 1420 2560 1420 {lab=vdd}
C {lab_pin.sym} 2560 1420 0 1 {name=l631 sig_type=std_logic lab=vdd}
N 2360 1440 2320 1440 {lab=vss}
C {lab_pin.sym} 2320 1440 0 0 {name=l632 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 1440 0 0 {name=Xc_0_3}
N 2680 1400 2640 1400 {lab=bl3}
C {lab_pin.sym} 2640 1400 0 0 {name=l633 sig_type=std_logic lab=bl3}
N 2840 1400 2880 1400 {lab=blb3}
C {lab_pin.sym} 2880 1400 0 1 {name=l634 sig_type=std_logic lab=blb3}
N 2680 1420 2640 1420 {lab=wl0}
C {lab_pin.sym} 2640 1420 0 0 {name=l635 sig_type=std_logic lab=wl0}
N 2840 1420 2880 1420 {lab=vdd}
C {lab_pin.sym} 2880 1420 0 1 {name=l636 sig_type=std_logic lab=vdd}
N 2680 1440 2640 1440 {lab=vss}
C {lab_pin.sym} 2640 1440 0 0 {name=l637 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 1440 0 0 {name=Xc_0_4}
N 3000 1400 2960 1400 {lab=bl4}
C {lab_pin.sym} 2960 1400 0 0 {name=l638 sig_type=std_logic lab=bl4}
N 3160 1400 3200 1400 {lab=blb4}
C {lab_pin.sym} 3200 1400 0 1 {name=l639 sig_type=std_logic lab=blb4}
N 3000 1420 2960 1420 {lab=wl0}
C {lab_pin.sym} 2960 1420 0 0 {name=l640 sig_type=std_logic lab=wl0}
N 3160 1420 3200 1420 {lab=vdd}
C {lab_pin.sym} 3200 1420 0 1 {name=l641 sig_type=std_logic lab=vdd}
N 3000 1440 2960 1440 {lab=vss}
C {lab_pin.sym} 2960 1440 0 0 {name=l642 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 1440 0 0 {name=Xc_0_5}
N 3320 1400 3280 1400 {lab=bl5}
C {lab_pin.sym} 3280 1400 0 0 {name=l643 sig_type=std_logic lab=bl5}
N 3480 1400 3520 1400 {lab=blb5}
C {lab_pin.sym} 3520 1400 0 1 {name=l644 sig_type=std_logic lab=blb5}
N 3320 1420 3280 1420 {lab=wl0}
C {lab_pin.sym} 3280 1420 0 0 {name=l645 sig_type=std_logic lab=wl0}
N 3480 1420 3520 1420 {lab=vdd}
C {lab_pin.sym} 3520 1420 0 1 {name=l646 sig_type=std_logic lab=vdd}
N 3320 1440 3280 1440 {lab=vss}
C {lab_pin.sym} 3280 1440 0 0 {name=l647 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 1440 0 0 {name=Xc_0_6}
N 3640 1400 3600 1400 {lab=bl6}
C {lab_pin.sym} 3600 1400 0 0 {name=l648 sig_type=std_logic lab=bl6}
N 3800 1400 3840 1400 {lab=blb6}
C {lab_pin.sym} 3840 1400 0 1 {name=l649 sig_type=std_logic lab=blb6}
N 3640 1420 3600 1420 {lab=wl0}
C {lab_pin.sym} 3600 1420 0 0 {name=l650 sig_type=std_logic lab=wl0}
N 3800 1420 3840 1420 {lab=vdd}
C {lab_pin.sym} 3840 1420 0 1 {name=l651 sig_type=std_logic lab=vdd}
N 3640 1440 3600 1440 {lab=vss}
C {lab_pin.sym} 3600 1440 0 0 {name=l652 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 1440 0 0 {name=Xc_0_7}
N 3960 1400 3920 1400 {lab=bl7}
C {lab_pin.sym} 3920 1400 0 0 {name=l653 sig_type=std_logic lab=bl7}
N 4120 1400 4160 1400 {lab=blb7}
C {lab_pin.sym} 4160 1400 0 1 {name=l654 sig_type=std_logic lab=blb7}
N 3960 1420 3920 1420 {lab=wl0}
C {lab_pin.sym} 3920 1420 0 0 {name=l655 sig_type=std_logic lab=wl0}
N 4120 1420 4160 1420 {lab=vdd}
C {lab_pin.sym} 4160 1420 0 1 {name=l656 sig_type=std_logic lab=vdd}
N 3960 1440 3920 1440 {lab=vss}
C {lab_pin.sym} 3920 1440 0 0 {name=l657 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 1440 0 0 {name=Xc_0_8}
N 4280 1400 4240 1400 {lab=bl8}
C {lab_pin.sym} 4240 1400 0 0 {name=l658 sig_type=std_logic lab=bl8}
N 4440 1400 4480 1400 {lab=blb8}
C {lab_pin.sym} 4480 1400 0 1 {name=l659 sig_type=std_logic lab=blb8}
N 4280 1420 4240 1420 {lab=wl0}
C {lab_pin.sym} 4240 1420 0 0 {name=l660 sig_type=std_logic lab=wl0}
N 4440 1420 4480 1420 {lab=vdd}
C {lab_pin.sym} 4480 1420 0 1 {name=l661 sig_type=std_logic lab=vdd}
N 4280 1440 4240 1440 {lab=vss}
C {lab_pin.sym} 4240 1440 0 0 {name=l662 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 1440 0 0 {name=Xc_0_9}
N 4600 1400 4560 1400 {lab=bl9}
C {lab_pin.sym} 4560 1400 0 0 {name=l663 sig_type=std_logic lab=bl9}
N 4760 1400 4800 1400 {lab=blb9}
C {lab_pin.sym} 4800 1400 0 1 {name=l664 sig_type=std_logic lab=blb9}
N 4600 1420 4560 1420 {lab=wl0}
C {lab_pin.sym} 4560 1420 0 0 {name=l665 sig_type=std_logic lab=wl0}
N 4760 1420 4800 1420 {lab=vdd}
C {lab_pin.sym} 4800 1420 0 1 {name=l666 sig_type=std_logic lab=vdd}
N 4600 1440 4560 1440 {lab=vss}
C {lab_pin.sym} 4560 1440 0 0 {name=l667 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 1440 0 0 {name=Xc_0_10}
N 4920 1400 4880 1400 {lab=bl10}
C {lab_pin.sym} 4880 1400 0 0 {name=l668 sig_type=std_logic lab=bl10}
N 5080 1400 5120 1400 {lab=blb10}
C {lab_pin.sym} 5120 1400 0 1 {name=l669 sig_type=std_logic lab=blb10}
N 4920 1420 4880 1420 {lab=wl0}
C {lab_pin.sym} 4880 1420 0 0 {name=l670 sig_type=std_logic lab=wl0}
N 5080 1420 5120 1420 {lab=vdd}
C {lab_pin.sym} 5120 1420 0 1 {name=l671 sig_type=std_logic lab=vdd}
N 4920 1440 4880 1440 {lab=vss}
C {lab_pin.sym} 4880 1440 0 0 {name=l672 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 1620 0 0 {name=Xc_0_11}
N 120 1580 80 1580 {lab=bl11}
C {lab_pin.sym} 80 1580 0 0 {name=l673 sig_type=std_logic lab=bl11}
N 280 1580 320 1580 {lab=blb11}
C {lab_pin.sym} 320 1580 0 1 {name=l674 sig_type=std_logic lab=blb11}
N 120 1600 80 1600 {lab=wl0}
C {lab_pin.sym} 80 1600 0 0 {name=l675 sig_type=std_logic lab=wl0}
N 280 1600 320 1600 {lab=vdd}
C {lab_pin.sym} 320 1600 0 1 {name=l676 sig_type=std_logic lab=vdd}
N 120 1620 80 1620 {lab=vss}
C {lab_pin.sym} 80 1620 0 0 {name=l677 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 1620 0 0 {name=Xc_0_12}
N 440 1580 400 1580 {lab=bl12}
C {lab_pin.sym} 400 1580 0 0 {name=l678 sig_type=std_logic lab=bl12}
N 600 1580 640 1580 {lab=blb12}
C {lab_pin.sym} 640 1580 0 1 {name=l679 sig_type=std_logic lab=blb12}
N 440 1600 400 1600 {lab=wl0}
C {lab_pin.sym} 400 1600 0 0 {name=l680 sig_type=std_logic lab=wl0}
N 600 1600 640 1600 {lab=vdd}
C {lab_pin.sym} 640 1600 0 1 {name=l681 sig_type=std_logic lab=vdd}
N 440 1620 400 1620 {lab=vss}
C {lab_pin.sym} 400 1620 0 0 {name=l682 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 1620 0 0 {name=Xc_0_13}
N 760 1580 720 1580 {lab=bl13}
C {lab_pin.sym} 720 1580 0 0 {name=l683 sig_type=std_logic lab=bl13}
N 920 1580 960 1580 {lab=blb13}
C {lab_pin.sym} 960 1580 0 1 {name=l684 sig_type=std_logic lab=blb13}
N 760 1600 720 1600 {lab=wl0}
C {lab_pin.sym} 720 1600 0 0 {name=l685 sig_type=std_logic lab=wl0}
N 920 1600 960 1600 {lab=vdd}
C {lab_pin.sym} 960 1600 0 1 {name=l686 sig_type=std_logic lab=vdd}
N 760 1620 720 1620 {lab=vss}
C {lab_pin.sym} 720 1620 0 0 {name=l687 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 1620 0 0 {name=Xc_0_14}
N 1080 1580 1040 1580 {lab=bl14}
C {lab_pin.sym} 1040 1580 0 0 {name=l688 sig_type=std_logic lab=bl14}
N 1240 1580 1280 1580 {lab=blb14}
C {lab_pin.sym} 1280 1580 0 1 {name=l689 sig_type=std_logic lab=blb14}
N 1080 1600 1040 1600 {lab=wl0}
C {lab_pin.sym} 1040 1600 0 0 {name=l690 sig_type=std_logic lab=wl0}
N 1240 1600 1280 1600 {lab=vdd}
C {lab_pin.sym} 1280 1600 0 1 {name=l691 sig_type=std_logic lab=vdd}
N 1080 1620 1040 1620 {lab=vss}
C {lab_pin.sym} 1040 1620 0 0 {name=l692 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 1620 0 0 {name=Xc_0_15}
N 1400 1580 1360 1580 {lab=bl15}
C {lab_pin.sym} 1360 1580 0 0 {name=l693 sig_type=std_logic lab=bl15}
N 1560 1580 1600 1580 {lab=blb15}
C {lab_pin.sym} 1600 1580 0 1 {name=l694 sig_type=std_logic lab=blb15}
N 1400 1600 1360 1600 {lab=wl0}
C {lab_pin.sym} 1360 1600 0 0 {name=l695 sig_type=std_logic lab=wl0}
N 1560 1600 1600 1600 {lab=vdd}
C {lab_pin.sym} 1600 1600 0 1 {name=l696 sig_type=std_logic lab=vdd}
N 1400 1620 1360 1620 {lab=vss}
C {lab_pin.sym} 1360 1620 0 0 {name=l697 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 1620 0 0 {name=Xc_1_0}
N 1720 1580 1680 1580 {lab=bl0}
C {lab_pin.sym} 1680 1580 0 0 {name=l698 sig_type=std_logic lab=bl0}
N 1880 1580 1920 1580 {lab=blb0}
C {lab_pin.sym} 1920 1580 0 1 {name=l699 sig_type=std_logic lab=blb0}
N 1720 1600 1680 1600 {lab=wl1}
C {lab_pin.sym} 1680 1600 0 0 {name=l700 sig_type=std_logic lab=wl1}
N 1880 1600 1920 1600 {lab=vdd}
C {lab_pin.sym} 1920 1600 0 1 {name=l701 sig_type=std_logic lab=vdd}
N 1720 1620 1680 1620 {lab=vss}
C {lab_pin.sym} 1680 1620 0 0 {name=l702 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 1620 0 0 {name=Xc_1_1}
N 2040 1580 2000 1580 {lab=bl1}
C {lab_pin.sym} 2000 1580 0 0 {name=l703 sig_type=std_logic lab=bl1}
N 2200 1580 2240 1580 {lab=blb1}
C {lab_pin.sym} 2240 1580 0 1 {name=l704 sig_type=std_logic lab=blb1}
N 2040 1600 2000 1600 {lab=wl1}
C {lab_pin.sym} 2000 1600 0 0 {name=l705 sig_type=std_logic lab=wl1}
N 2200 1600 2240 1600 {lab=vdd}
C {lab_pin.sym} 2240 1600 0 1 {name=l706 sig_type=std_logic lab=vdd}
N 2040 1620 2000 1620 {lab=vss}
C {lab_pin.sym} 2000 1620 0 0 {name=l707 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 1620 0 0 {name=Xc_1_2}
N 2360 1580 2320 1580 {lab=bl2}
C {lab_pin.sym} 2320 1580 0 0 {name=l708 sig_type=std_logic lab=bl2}
N 2520 1580 2560 1580 {lab=blb2}
C {lab_pin.sym} 2560 1580 0 1 {name=l709 sig_type=std_logic lab=blb2}
N 2360 1600 2320 1600 {lab=wl1}
C {lab_pin.sym} 2320 1600 0 0 {name=l710 sig_type=std_logic lab=wl1}
N 2520 1600 2560 1600 {lab=vdd}
C {lab_pin.sym} 2560 1600 0 1 {name=l711 sig_type=std_logic lab=vdd}
N 2360 1620 2320 1620 {lab=vss}
C {lab_pin.sym} 2320 1620 0 0 {name=l712 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 1620 0 0 {name=Xc_1_3}
N 2680 1580 2640 1580 {lab=bl3}
C {lab_pin.sym} 2640 1580 0 0 {name=l713 sig_type=std_logic lab=bl3}
N 2840 1580 2880 1580 {lab=blb3}
C {lab_pin.sym} 2880 1580 0 1 {name=l714 sig_type=std_logic lab=blb3}
N 2680 1600 2640 1600 {lab=wl1}
C {lab_pin.sym} 2640 1600 0 0 {name=l715 sig_type=std_logic lab=wl1}
N 2840 1600 2880 1600 {lab=vdd}
C {lab_pin.sym} 2880 1600 0 1 {name=l716 sig_type=std_logic lab=vdd}
N 2680 1620 2640 1620 {lab=vss}
C {lab_pin.sym} 2640 1620 0 0 {name=l717 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 1620 0 0 {name=Xc_1_4}
N 3000 1580 2960 1580 {lab=bl4}
C {lab_pin.sym} 2960 1580 0 0 {name=l718 sig_type=std_logic lab=bl4}
N 3160 1580 3200 1580 {lab=blb4}
C {lab_pin.sym} 3200 1580 0 1 {name=l719 sig_type=std_logic lab=blb4}
N 3000 1600 2960 1600 {lab=wl1}
C {lab_pin.sym} 2960 1600 0 0 {name=l720 sig_type=std_logic lab=wl1}
N 3160 1600 3200 1600 {lab=vdd}
C {lab_pin.sym} 3200 1600 0 1 {name=l721 sig_type=std_logic lab=vdd}
N 3000 1620 2960 1620 {lab=vss}
C {lab_pin.sym} 2960 1620 0 0 {name=l722 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 1620 0 0 {name=Xc_1_5}
N 3320 1580 3280 1580 {lab=bl5}
C {lab_pin.sym} 3280 1580 0 0 {name=l723 sig_type=std_logic lab=bl5}
N 3480 1580 3520 1580 {lab=blb5}
C {lab_pin.sym} 3520 1580 0 1 {name=l724 sig_type=std_logic lab=blb5}
N 3320 1600 3280 1600 {lab=wl1}
C {lab_pin.sym} 3280 1600 0 0 {name=l725 sig_type=std_logic lab=wl1}
N 3480 1600 3520 1600 {lab=vdd}
C {lab_pin.sym} 3520 1600 0 1 {name=l726 sig_type=std_logic lab=vdd}
N 3320 1620 3280 1620 {lab=vss}
C {lab_pin.sym} 3280 1620 0 0 {name=l727 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 1620 0 0 {name=Xc_1_6}
N 3640 1580 3600 1580 {lab=bl6}
C {lab_pin.sym} 3600 1580 0 0 {name=l728 sig_type=std_logic lab=bl6}
N 3800 1580 3840 1580 {lab=blb6}
C {lab_pin.sym} 3840 1580 0 1 {name=l729 sig_type=std_logic lab=blb6}
N 3640 1600 3600 1600 {lab=wl1}
C {lab_pin.sym} 3600 1600 0 0 {name=l730 sig_type=std_logic lab=wl1}
N 3800 1600 3840 1600 {lab=vdd}
C {lab_pin.sym} 3840 1600 0 1 {name=l731 sig_type=std_logic lab=vdd}
N 3640 1620 3600 1620 {lab=vss}
C {lab_pin.sym} 3600 1620 0 0 {name=l732 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 1620 0 0 {name=Xc_1_7}
N 3960 1580 3920 1580 {lab=bl7}
C {lab_pin.sym} 3920 1580 0 0 {name=l733 sig_type=std_logic lab=bl7}
N 4120 1580 4160 1580 {lab=blb7}
C {lab_pin.sym} 4160 1580 0 1 {name=l734 sig_type=std_logic lab=blb7}
N 3960 1600 3920 1600 {lab=wl1}
C {lab_pin.sym} 3920 1600 0 0 {name=l735 sig_type=std_logic lab=wl1}
N 4120 1600 4160 1600 {lab=vdd}
C {lab_pin.sym} 4160 1600 0 1 {name=l736 sig_type=std_logic lab=vdd}
N 3960 1620 3920 1620 {lab=vss}
C {lab_pin.sym} 3920 1620 0 0 {name=l737 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 1620 0 0 {name=Xc_1_8}
N 4280 1580 4240 1580 {lab=bl8}
C {lab_pin.sym} 4240 1580 0 0 {name=l738 sig_type=std_logic lab=bl8}
N 4440 1580 4480 1580 {lab=blb8}
C {lab_pin.sym} 4480 1580 0 1 {name=l739 sig_type=std_logic lab=blb8}
N 4280 1600 4240 1600 {lab=wl1}
C {lab_pin.sym} 4240 1600 0 0 {name=l740 sig_type=std_logic lab=wl1}
N 4440 1600 4480 1600 {lab=vdd}
C {lab_pin.sym} 4480 1600 0 1 {name=l741 sig_type=std_logic lab=vdd}
N 4280 1620 4240 1620 {lab=vss}
C {lab_pin.sym} 4240 1620 0 0 {name=l742 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 1620 0 0 {name=Xc_1_9}
N 4600 1580 4560 1580 {lab=bl9}
C {lab_pin.sym} 4560 1580 0 0 {name=l743 sig_type=std_logic lab=bl9}
N 4760 1580 4800 1580 {lab=blb9}
C {lab_pin.sym} 4800 1580 0 1 {name=l744 sig_type=std_logic lab=blb9}
N 4600 1600 4560 1600 {lab=wl1}
C {lab_pin.sym} 4560 1600 0 0 {name=l745 sig_type=std_logic lab=wl1}
N 4760 1600 4800 1600 {lab=vdd}
C {lab_pin.sym} 4800 1600 0 1 {name=l746 sig_type=std_logic lab=vdd}
N 4600 1620 4560 1620 {lab=vss}
C {lab_pin.sym} 4560 1620 0 0 {name=l747 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 1620 0 0 {name=Xc_1_10}
N 4920 1580 4880 1580 {lab=bl10}
C {lab_pin.sym} 4880 1580 0 0 {name=l748 sig_type=std_logic lab=bl10}
N 5080 1580 5120 1580 {lab=blb10}
C {lab_pin.sym} 5120 1580 0 1 {name=l749 sig_type=std_logic lab=blb10}
N 4920 1600 4880 1600 {lab=wl1}
C {lab_pin.sym} 4880 1600 0 0 {name=l750 sig_type=std_logic lab=wl1}
N 5080 1600 5120 1600 {lab=vdd}
C {lab_pin.sym} 5120 1600 0 1 {name=l751 sig_type=std_logic lab=vdd}
N 4920 1620 4880 1620 {lab=vss}
C {lab_pin.sym} 4880 1620 0 0 {name=l752 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 1800 0 0 {name=Xc_1_11}
N 120 1760 80 1760 {lab=bl11}
C {lab_pin.sym} 80 1760 0 0 {name=l753 sig_type=std_logic lab=bl11}
N 280 1760 320 1760 {lab=blb11}
C {lab_pin.sym} 320 1760 0 1 {name=l754 sig_type=std_logic lab=blb11}
N 120 1780 80 1780 {lab=wl1}
C {lab_pin.sym} 80 1780 0 0 {name=l755 sig_type=std_logic lab=wl1}
N 280 1780 320 1780 {lab=vdd}
C {lab_pin.sym} 320 1780 0 1 {name=l756 sig_type=std_logic lab=vdd}
N 120 1800 80 1800 {lab=vss}
C {lab_pin.sym} 80 1800 0 0 {name=l757 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 1800 0 0 {name=Xc_1_12}
N 440 1760 400 1760 {lab=bl12}
C {lab_pin.sym} 400 1760 0 0 {name=l758 sig_type=std_logic lab=bl12}
N 600 1760 640 1760 {lab=blb12}
C {lab_pin.sym} 640 1760 0 1 {name=l759 sig_type=std_logic lab=blb12}
N 440 1780 400 1780 {lab=wl1}
C {lab_pin.sym} 400 1780 0 0 {name=l760 sig_type=std_logic lab=wl1}
N 600 1780 640 1780 {lab=vdd}
C {lab_pin.sym} 640 1780 0 1 {name=l761 sig_type=std_logic lab=vdd}
N 440 1800 400 1800 {lab=vss}
C {lab_pin.sym} 400 1800 0 0 {name=l762 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 1800 0 0 {name=Xc_1_13}
N 760 1760 720 1760 {lab=bl13}
C {lab_pin.sym} 720 1760 0 0 {name=l763 sig_type=std_logic lab=bl13}
N 920 1760 960 1760 {lab=blb13}
C {lab_pin.sym} 960 1760 0 1 {name=l764 sig_type=std_logic lab=blb13}
N 760 1780 720 1780 {lab=wl1}
C {lab_pin.sym} 720 1780 0 0 {name=l765 sig_type=std_logic lab=wl1}
N 920 1780 960 1780 {lab=vdd}
C {lab_pin.sym} 960 1780 0 1 {name=l766 sig_type=std_logic lab=vdd}
N 760 1800 720 1800 {lab=vss}
C {lab_pin.sym} 720 1800 0 0 {name=l767 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 1800 0 0 {name=Xc_1_14}
N 1080 1760 1040 1760 {lab=bl14}
C {lab_pin.sym} 1040 1760 0 0 {name=l768 sig_type=std_logic lab=bl14}
N 1240 1760 1280 1760 {lab=blb14}
C {lab_pin.sym} 1280 1760 0 1 {name=l769 sig_type=std_logic lab=blb14}
N 1080 1780 1040 1780 {lab=wl1}
C {lab_pin.sym} 1040 1780 0 0 {name=l770 sig_type=std_logic lab=wl1}
N 1240 1780 1280 1780 {lab=vdd}
C {lab_pin.sym} 1280 1780 0 1 {name=l771 sig_type=std_logic lab=vdd}
N 1080 1800 1040 1800 {lab=vss}
C {lab_pin.sym} 1040 1800 0 0 {name=l772 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 1800 0 0 {name=Xc_1_15}
N 1400 1760 1360 1760 {lab=bl15}
C {lab_pin.sym} 1360 1760 0 0 {name=l773 sig_type=std_logic lab=bl15}
N 1560 1760 1600 1760 {lab=blb15}
C {lab_pin.sym} 1600 1760 0 1 {name=l774 sig_type=std_logic lab=blb15}
N 1400 1780 1360 1780 {lab=wl1}
C {lab_pin.sym} 1360 1780 0 0 {name=l775 sig_type=std_logic lab=wl1}
N 1560 1780 1600 1780 {lab=vdd}
C {lab_pin.sym} 1600 1780 0 1 {name=l776 sig_type=std_logic lab=vdd}
N 1400 1800 1360 1800 {lab=vss}
C {lab_pin.sym} 1360 1800 0 0 {name=l777 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 1800 0 0 {name=Xc_2_0}
N 1720 1760 1680 1760 {lab=bl0}
C {lab_pin.sym} 1680 1760 0 0 {name=l778 sig_type=std_logic lab=bl0}
N 1880 1760 1920 1760 {lab=blb0}
C {lab_pin.sym} 1920 1760 0 1 {name=l779 sig_type=std_logic lab=blb0}
N 1720 1780 1680 1780 {lab=wl2}
C {lab_pin.sym} 1680 1780 0 0 {name=l780 sig_type=std_logic lab=wl2}
N 1880 1780 1920 1780 {lab=vdd}
C {lab_pin.sym} 1920 1780 0 1 {name=l781 sig_type=std_logic lab=vdd}
N 1720 1800 1680 1800 {lab=vss}
C {lab_pin.sym} 1680 1800 0 0 {name=l782 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 1800 0 0 {name=Xc_2_1}
N 2040 1760 2000 1760 {lab=bl1}
C {lab_pin.sym} 2000 1760 0 0 {name=l783 sig_type=std_logic lab=bl1}
N 2200 1760 2240 1760 {lab=blb1}
C {lab_pin.sym} 2240 1760 0 1 {name=l784 sig_type=std_logic lab=blb1}
N 2040 1780 2000 1780 {lab=wl2}
C {lab_pin.sym} 2000 1780 0 0 {name=l785 sig_type=std_logic lab=wl2}
N 2200 1780 2240 1780 {lab=vdd}
C {lab_pin.sym} 2240 1780 0 1 {name=l786 sig_type=std_logic lab=vdd}
N 2040 1800 2000 1800 {lab=vss}
C {lab_pin.sym} 2000 1800 0 0 {name=l787 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 1800 0 0 {name=Xc_2_2}
N 2360 1760 2320 1760 {lab=bl2}
C {lab_pin.sym} 2320 1760 0 0 {name=l788 sig_type=std_logic lab=bl2}
N 2520 1760 2560 1760 {lab=blb2}
C {lab_pin.sym} 2560 1760 0 1 {name=l789 sig_type=std_logic lab=blb2}
N 2360 1780 2320 1780 {lab=wl2}
C {lab_pin.sym} 2320 1780 0 0 {name=l790 sig_type=std_logic lab=wl2}
N 2520 1780 2560 1780 {lab=vdd}
C {lab_pin.sym} 2560 1780 0 1 {name=l791 sig_type=std_logic lab=vdd}
N 2360 1800 2320 1800 {lab=vss}
C {lab_pin.sym} 2320 1800 0 0 {name=l792 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 1800 0 0 {name=Xc_2_3}
N 2680 1760 2640 1760 {lab=bl3}
C {lab_pin.sym} 2640 1760 0 0 {name=l793 sig_type=std_logic lab=bl3}
N 2840 1760 2880 1760 {lab=blb3}
C {lab_pin.sym} 2880 1760 0 1 {name=l794 sig_type=std_logic lab=blb3}
N 2680 1780 2640 1780 {lab=wl2}
C {lab_pin.sym} 2640 1780 0 0 {name=l795 sig_type=std_logic lab=wl2}
N 2840 1780 2880 1780 {lab=vdd}
C {lab_pin.sym} 2880 1780 0 1 {name=l796 sig_type=std_logic lab=vdd}
N 2680 1800 2640 1800 {lab=vss}
C {lab_pin.sym} 2640 1800 0 0 {name=l797 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 1800 0 0 {name=Xc_2_4}
N 3000 1760 2960 1760 {lab=bl4}
C {lab_pin.sym} 2960 1760 0 0 {name=l798 sig_type=std_logic lab=bl4}
N 3160 1760 3200 1760 {lab=blb4}
C {lab_pin.sym} 3200 1760 0 1 {name=l799 sig_type=std_logic lab=blb4}
N 3000 1780 2960 1780 {lab=wl2}
C {lab_pin.sym} 2960 1780 0 0 {name=l800 sig_type=std_logic lab=wl2}
N 3160 1780 3200 1780 {lab=vdd}
C {lab_pin.sym} 3200 1780 0 1 {name=l801 sig_type=std_logic lab=vdd}
N 3000 1800 2960 1800 {lab=vss}
C {lab_pin.sym} 2960 1800 0 0 {name=l802 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 1800 0 0 {name=Xc_2_5}
N 3320 1760 3280 1760 {lab=bl5}
C {lab_pin.sym} 3280 1760 0 0 {name=l803 sig_type=std_logic lab=bl5}
N 3480 1760 3520 1760 {lab=blb5}
C {lab_pin.sym} 3520 1760 0 1 {name=l804 sig_type=std_logic lab=blb5}
N 3320 1780 3280 1780 {lab=wl2}
C {lab_pin.sym} 3280 1780 0 0 {name=l805 sig_type=std_logic lab=wl2}
N 3480 1780 3520 1780 {lab=vdd}
C {lab_pin.sym} 3520 1780 0 1 {name=l806 sig_type=std_logic lab=vdd}
N 3320 1800 3280 1800 {lab=vss}
C {lab_pin.sym} 3280 1800 0 0 {name=l807 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 1800 0 0 {name=Xc_2_6}
N 3640 1760 3600 1760 {lab=bl6}
C {lab_pin.sym} 3600 1760 0 0 {name=l808 sig_type=std_logic lab=bl6}
N 3800 1760 3840 1760 {lab=blb6}
C {lab_pin.sym} 3840 1760 0 1 {name=l809 sig_type=std_logic lab=blb6}
N 3640 1780 3600 1780 {lab=wl2}
C {lab_pin.sym} 3600 1780 0 0 {name=l810 sig_type=std_logic lab=wl2}
N 3800 1780 3840 1780 {lab=vdd}
C {lab_pin.sym} 3840 1780 0 1 {name=l811 sig_type=std_logic lab=vdd}
N 3640 1800 3600 1800 {lab=vss}
C {lab_pin.sym} 3600 1800 0 0 {name=l812 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 1800 0 0 {name=Xc_2_7}
N 3960 1760 3920 1760 {lab=bl7}
C {lab_pin.sym} 3920 1760 0 0 {name=l813 sig_type=std_logic lab=bl7}
N 4120 1760 4160 1760 {lab=blb7}
C {lab_pin.sym} 4160 1760 0 1 {name=l814 sig_type=std_logic lab=blb7}
N 3960 1780 3920 1780 {lab=wl2}
C {lab_pin.sym} 3920 1780 0 0 {name=l815 sig_type=std_logic lab=wl2}
N 4120 1780 4160 1780 {lab=vdd}
C {lab_pin.sym} 4160 1780 0 1 {name=l816 sig_type=std_logic lab=vdd}
N 3960 1800 3920 1800 {lab=vss}
C {lab_pin.sym} 3920 1800 0 0 {name=l817 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 1800 0 0 {name=Xc_2_8}
N 4280 1760 4240 1760 {lab=bl8}
C {lab_pin.sym} 4240 1760 0 0 {name=l818 sig_type=std_logic lab=bl8}
N 4440 1760 4480 1760 {lab=blb8}
C {lab_pin.sym} 4480 1760 0 1 {name=l819 sig_type=std_logic lab=blb8}
N 4280 1780 4240 1780 {lab=wl2}
C {lab_pin.sym} 4240 1780 0 0 {name=l820 sig_type=std_logic lab=wl2}
N 4440 1780 4480 1780 {lab=vdd}
C {lab_pin.sym} 4480 1780 0 1 {name=l821 sig_type=std_logic lab=vdd}
N 4280 1800 4240 1800 {lab=vss}
C {lab_pin.sym} 4240 1800 0 0 {name=l822 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 1800 0 0 {name=Xc_2_9}
N 4600 1760 4560 1760 {lab=bl9}
C {lab_pin.sym} 4560 1760 0 0 {name=l823 sig_type=std_logic lab=bl9}
N 4760 1760 4800 1760 {lab=blb9}
C {lab_pin.sym} 4800 1760 0 1 {name=l824 sig_type=std_logic lab=blb9}
N 4600 1780 4560 1780 {lab=wl2}
C {lab_pin.sym} 4560 1780 0 0 {name=l825 sig_type=std_logic lab=wl2}
N 4760 1780 4800 1780 {lab=vdd}
C {lab_pin.sym} 4800 1780 0 1 {name=l826 sig_type=std_logic lab=vdd}
N 4600 1800 4560 1800 {lab=vss}
C {lab_pin.sym} 4560 1800 0 0 {name=l827 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 1800 0 0 {name=Xc_2_10}
N 4920 1760 4880 1760 {lab=bl10}
C {lab_pin.sym} 4880 1760 0 0 {name=l828 sig_type=std_logic lab=bl10}
N 5080 1760 5120 1760 {lab=blb10}
C {lab_pin.sym} 5120 1760 0 1 {name=l829 sig_type=std_logic lab=blb10}
N 4920 1780 4880 1780 {lab=wl2}
C {lab_pin.sym} 4880 1780 0 0 {name=l830 sig_type=std_logic lab=wl2}
N 5080 1780 5120 1780 {lab=vdd}
C {lab_pin.sym} 5120 1780 0 1 {name=l831 sig_type=std_logic lab=vdd}
N 4920 1800 4880 1800 {lab=vss}
C {lab_pin.sym} 4880 1800 0 0 {name=l832 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 1980 0 0 {name=Xc_2_11}
N 120 1940 80 1940 {lab=bl11}
C {lab_pin.sym} 80 1940 0 0 {name=l833 sig_type=std_logic lab=bl11}
N 280 1940 320 1940 {lab=blb11}
C {lab_pin.sym} 320 1940 0 1 {name=l834 sig_type=std_logic lab=blb11}
N 120 1960 80 1960 {lab=wl2}
C {lab_pin.sym} 80 1960 0 0 {name=l835 sig_type=std_logic lab=wl2}
N 280 1960 320 1960 {lab=vdd}
C {lab_pin.sym} 320 1960 0 1 {name=l836 sig_type=std_logic lab=vdd}
N 120 1980 80 1980 {lab=vss}
C {lab_pin.sym} 80 1980 0 0 {name=l837 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 1980 0 0 {name=Xc_2_12}
N 440 1940 400 1940 {lab=bl12}
C {lab_pin.sym} 400 1940 0 0 {name=l838 sig_type=std_logic lab=bl12}
N 600 1940 640 1940 {lab=blb12}
C {lab_pin.sym} 640 1940 0 1 {name=l839 sig_type=std_logic lab=blb12}
N 440 1960 400 1960 {lab=wl2}
C {lab_pin.sym} 400 1960 0 0 {name=l840 sig_type=std_logic lab=wl2}
N 600 1960 640 1960 {lab=vdd}
C {lab_pin.sym} 640 1960 0 1 {name=l841 sig_type=std_logic lab=vdd}
N 440 1980 400 1980 {lab=vss}
C {lab_pin.sym} 400 1980 0 0 {name=l842 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 1980 0 0 {name=Xc_2_13}
N 760 1940 720 1940 {lab=bl13}
C {lab_pin.sym} 720 1940 0 0 {name=l843 sig_type=std_logic lab=bl13}
N 920 1940 960 1940 {lab=blb13}
C {lab_pin.sym} 960 1940 0 1 {name=l844 sig_type=std_logic lab=blb13}
N 760 1960 720 1960 {lab=wl2}
C {lab_pin.sym} 720 1960 0 0 {name=l845 sig_type=std_logic lab=wl2}
N 920 1960 960 1960 {lab=vdd}
C {lab_pin.sym} 960 1960 0 1 {name=l846 sig_type=std_logic lab=vdd}
N 760 1980 720 1980 {lab=vss}
C {lab_pin.sym} 720 1980 0 0 {name=l847 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 1980 0 0 {name=Xc_2_14}
N 1080 1940 1040 1940 {lab=bl14}
C {lab_pin.sym} 1040 1940 0 0 {name=l848 sig_type=std_logic lab=bl14}
N 1240 1940 1280 1940 {lab=blb14}
C {lab_pin.sym} 1280 1940 0 1 {name=l849 sig_type=std_logic lab=blb14}
N 1080 1960 1040 1960 {lab=wl2}
C {lab_pin.sym} 1040 1960 0 0 {name=l850 sig_type=std_logic lab=wl2}
N 1240 1960 1280 1960 {lab=vdd}
C {lab_pin.sym} 1280 1960 0 1 {name=l851 sig_type=std_logic lab=vdd}
N 1080 1980 1040 1980 {lab=vss}
C {lab_pin.sym} 1040 1980 0 0 {name=l852 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 1980 0 0 {name=Xc_2_15}
N 1400 1940 1360 1940 {lab=bl15}
C {lab_pin.sym} 1360 1940 0 0 {name=l853 sig_type=std_logic lab=bl15}
N 1560 1940 1600 1940 {lab=blb15}
C {lab_pin.sym} 1600 1940 0 1 {name=l854 sig_type=std_logic lab=blb15}
N 1400 1960 1360 1960 {lab=wl2}
C {lab_pin.sym} 1360 1960 0 0 {name=l855 sig_type=std_logic lab=wl2}
N 1560 1960 1600 1960 {lab=vdd}
C {lab_pin.sym} 1600 1960 0 1 {name=l856 sig_type=std_logic lab=vdd}
N 1400 1980 1360 1980 {lab=vss}
C {lab_pin.sym} 1360 1980 0 0 {name=l857 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 1980 0 0 {name=Xc_3_0}
N 1720 1940 1680 1940 {lab=bl0}
C {lab_pin.sym} 1680 1940 0 0 {name=l858 sig_type=std_logic lab=bl0}
N 1880 1940 1920 1940 {lab=blb0}
C {lab_pin.sym} 1920 1940 0 1 {name=l859 sig_type=std_logic lab=blb0}
N 1720 1960 1680 1960 {lab=wl3}
C {lab_pin.sym} 1680 1960 0 0 {name=l860 sig_type=std_logic lab=wl3}
N 1880 1960 1920 1960 {lab=vdd}
C {lab_pin.sym} 1920 1960 0 1 {name=l861 sig_type=std_logic lab=vdd}
N 1720 1980 1680 1980 {lab=vss}
C {lab_pin.sym} 1680 1980 0 0 {name=l862 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 1980 0 0 {name=Xc_3_1}
N 2040 1940 2000 1940 {lab=bl1}
C {lab_pin.sym} 2000 1940 0 0 {name=l863 sig_type=std_logic lab=bl1}
N 2200 1940 2240 1940 {lab=blb1}
C {lab_pin.sym} 2240 1940 0 1 {name=l864 sig_type=std_logic lab=blb1}
N 2040 1960 2000 1960 {lab=wl3}
C {lab_pin.sym} 2000 1960 0 0 {name=l865 sig_type=std_logic lab=wl3}
N 2200 1960 2240 1960 {lab=vdd}
C {lab_pin.sym} 2240 1960 0 1 {name=l866 sig_type=std_logic lab=vdd}
N 2040 1980 2000 1980 {lab=vss}
C {lab_pin.sym} 2000 1980 0 0 {name=l867 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 1980 0 0 {name=Xc_3_2}
N 2360 1940 2320 1940 {lab=bl2}
C {lab_pin.sym} 2320 1940 0 0 {name=l868 sig_type=std_logic lab=bl2}
N 2520 1940 2560 1940 {lab=blb2}
C {lab_pin.sym} 2560 1940 0 1 {name=l869 sig_type=std_logic lab=blb2}
N 2360 1960 2320 1960 {lab=wl3}
C {lab_pin.sym} 2320 1960 0 0 {name=l870 sig_type=std_logic lab=wl3}
N 2520 1960 2560 1960 {lab=vdd}
C {lab_pin.sym} 2560 1960 0 1 {name=l871 sig_type=std_logic lab=vdd}
N 2360 1980 2320 1980 {lab=vss}
C {lab_pin.sym} 2320 1980 0 0 {name=l872 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 1980 0 0 {name=Xc_3_3}
N 2680 1940 2640 1940 {lab=bl3}
C {lab_pin.sym} 2640 1940 0 0 {name=l873 sig_type=std_logic lab=bl3}
N 2840 1940 2880 1940 {lab=blb3}
C {lab_pin.sym} 2880 1940 0 1 {name=l874 sig_type=std_logic lab=blb3}
N 2680 1960 2640 1960 {lab=wl3}
C {lab_pin.sym} 2640 1960 0 0 {name=l875 sig_type=std_logic lab=wl3}
N 2840 1960 2880 1960 {lab=vdd}
C {lab_pin.sym} 2880 1960 0 1 {name=l876 sig_type=std_logic lab=vdd}
N 2680 1980 2640 1980 {lab=vss}
C {lab_pin.sym} 2640 1980 0 0 {name=l877 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 1980 0 0 {name=Xc_3_4}
N 3000 1940 2960 1940 {lab=bl4}
C {lab_pin.sym} 2960 1940 0 0 {name=l878 sig_type=std_logic lab=bl4}
N 3160 1940 3200 1940 {lab=blb4}
C {lab_pin.sym} 3200 1940 0 1 {name=l879 sig_type=std_logic lab=blb4}
N 3000 1960 2960 1960 {lab=wl3}
C {lab_pin.sym} 2960 1960 0 0 {name=l880 sig_type=std_logic lab=wl3}
N 3160 1960 3200 1960 {lab=vdd}
C {lab_pin.sym} 3200 1960 0 1 {name=l881 sig_type=std_logic lab=vdd}
N 3000 1980 2960 1980 {lab=vss}
C {lab_pin.sym} 2960 1980 0 0 {name=l882 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 1980 0 0 {name=Xc_3_5}
N 3320 1940 3280 1940 {lab=bl5}
C {lab_pin.sym} 3280 1940 0 0 {name=l883 sig_type=std_logic lab=bl5}
N 3480 1940 3520 1940 {lab=blb5}
C {lab_pin.sym} 3520 1940 0 1 {name=l884 sig_type=std_logic lab=blb5}
N 3320 1960 3280 1960 {lab=wl3}
C {lab_pin.sym} 3280 1960 0 0 {name=l885 sig_type=std_logic lab=wl3}
N 3480 1960 3520 1960 {lab=vdd}
C {lab_pin.sym} 3520 1960 0 1 {name=l886 sig_type=std_logic lab=vdd}
N 3320 1980 3280 1980 {lab=vss}
C {lab_pin.sym} 3280 1980 0 0 {name=l887 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 1980 0 0 {name=Xc_3_6}
N 3640 1940 3600 1940 {lab=bl6}
C {lab_pin.sym} 3600 1940 0 0 {name=l888 sig_type=std_logic lab=bl6}
N 3800 1940 3840 1940 {lab=blb6}
C {lab_pin.sym} 3840 1940 0 1 {name=l889 sig_type=std_logic lab=blb6}
N 3640 1960 3600 1960 {lab=wl3}
C {lab_pin.sym} 3600 1960 0 0 {name=l890 sig_type=std_logic lab=wl3}
N 3800 1960 3840 1960 {lab=vdd}
C {lab_pin.sym} 3840 1960 0 1 {name=l891 sig_type=std_logic lab=vdd}
N 3640 1980 3600 1980 {lab=vss}
C {lab_pin.sym} 3600 1980 0 0 {name=l892 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 1980 0 0 {name=Xc_3_7}
N 3960 1940 3920 1940 {lab=bl7}
C {lab_pin.sym} 3920 1940 0 0 {name=l893 sig_type=std_logic lab=bl7}
N 4120 1940 4160 1940 {lab=blb7}
C {lab_pin.sym} 4160 1940 0 1 {name=l894 sig_type=std_logic lab=blb7}
N 3960 1960 3920 1960 {lab=wl3}
C {lab_pin.sym} 3920 1960 0 0 {name=l895 sig_type=std_logic lab=wl3}
N 4120 1960 4160 1960 {lab=vdd}
C {lab_pin.sym} 4160 1960 0 1 {name=l896 sig_type=std_logic lab=vdd}
N 3960 1980 3920 1980 {lab=vss}
C {lab_pin.sym} 3920 1980 0 0 {name=l897 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 1980 0 0 {name=Xc_3_8}
N 4280 1940 4240 1940 {lab=bl8}
C {lab_pin.sym} 4240 1940 0 0 {name=l898 sig_type=std_logic lab=bl8}
N 4440 1940 4480 1940 {lab=blb8}
C {lab_pin.sym} 4480 1940 0 1 {name=l899 sig_type=std_logic lab=blb8}
N 4280 1960 4240 1960 {lab=wl3}
C {lab_pin.sym} 4240 1960 0 0 {name=l900 sig_type=std_logic lab=wl3}
N 4440 1960 4480 1960 {lab=vdd}
C {lab_pin.sym} 4480 1960 0 1 {name=l901 sig_type=std_logic lab=vdd}
N 4280 1980 4240 1980 {lab=vss}
C {lab_pin.sym} 4240 1980 0 0 {name=l902 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 1980 0 0 {name=Xc_3_9}
N 4600 1940 4560 1940 {lab=bl9}
C {lab_pin.sym} 4560 1940 0 0 {name=l903 sig_type=std_logic lab=bl9}
N 4760 1940 4800 1940 {lab=blb9}
C {lab_pin.sym} 4800 1940 0 1 {name=l904 sig_type=std_logic lab=blb9}
N 4600 1960 4560 1960 {lab=wl3}
C {lab_pin.sym} 4560 1960 0 0 {name=l905 sig_type=std_logic lab=wl3}
N 4760 1960 4800 1960 {lab=vdd}
C {lab_pin.sym} 4800 1960 0 1 {name=l906 sig_type=std_logic lab=vdd}
N 4600 1980 4560 1980 {lab=vss}
C {lab_pin.sym} 4560 1980 0 0 {name=l907 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 1980 0 0 {name=Xc_3_10}
N 4920 1940 4880 1940 {lab=bl10}
C {lab_pin.sym} 4880 1940 0 0 {name=l908 sig_type=std_logic lab=bl10}
N 5080 1940 5120 1940 {lab=blb10}
C {lab_pin.sym} 5120 1940 0 1 {name=l909 sig_type=std_logic lab=blb10}
N 4920 1960 4880 1960 {lab=wl3}
C {lab_pin.sym} 4880 1960 0 0 {name=l910 sig_type=std_logic lab=wl3}
N 5080 1960 5120 1960 {lab=vdd}
C {lab_pin.sym} 5120 1960 0 1 {name=l911 sig_type=std_logic lab=vdd}
N 4920 1980 4880 1980 {lab=vss}
C {lab_pin.sym} 4880 1980 0 0 {name=l912 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 2160 0 0 {name=Xc_3_11}
N 120 2120 80 2120 {lab=bl11}
C {lab_pin.sym} 80 2120 0 0 {name=l913 sig_type=std_logic lab=bl11}
N 280 2120 320 2120 {lab=blb11}
C {lab_pin.sym} 320 2120 0 1 {name=l914 sig_type=std_logic lab=blb11}
N 120 2140 80 2140 {lab=wl3}
C {lab_pin.sym} 80 2140 0 0 {name=l915 sig_type=std_logic lab=wl3}
N 280 2140 320 2140 {lab=vdd}
C {lab_pin.sym} 320 2140 0 1 {name=l916 sig_type=std_logic lab=vdd}
N 120 2160 80 2160 {lab=vss}
C {lab_pin.sym} 80 2160 0 0 {name=l917 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 2160 0 0 {name=Xc_3_12}
N 440 2120 400 2120 {lab=bl12}
C {lab_pin.sym} 400 2120 0 0 {name=l918 sig_type=std_logic lab=bl12}
N 600 2120 640 2120 {lab=blb12}
C {lab_pin.sym} 640 2120 0 1 {name=l919 sig_type=std_logic lab=blb12}
N 440 2140 400 2140 {lab=wl3}
C {lab_pin.sym} 400 2140 0 0 {name=l920 sig_type=std_logic lab=wl3}
N 600 2140 640 2140 {lab=vdd}
C {lab_pin.sym} 640 2140 0 1 {name=l921 sig_type=std_logic lab=vdd}
N 440 2160 400 2160 {lab=vss}
C {lab_pin.sym} 400 2160 0 0 {name=l922 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 2160 0 0 {name=Xc_3_13}
N 760 2120 720 2120 {lab=bl13}
C {lab_pin.sym} 720 2120 0 0 {name=l923 sig_type=std_logic lab=bl13}
N 920 2120 960 2120 {lab=blb13}
C {lab_pin.sym} 960 2120 0 1 {name=l924 sig_type=std_logic lab=blb13}
N 760 2140 720 2140 {lab=wl3}
C {lab_pin.sym} 720 2140 0 0 {name=l925 sig_type=std_logic lab=wl3}
N 920 2140 960 2140 {lab=vdd}
C {lab_pin.sym} 960 2140 0 1 {name=l926 sig_type=std_logic lab=vdd}
N 760 2160 720 2160 {lab=vss}
C {lab_pin.sym} 720 2160 0 0 {name=l927 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 2160 0 0 {name=Xc_3_14}
N 1080 2120 1040 2120 {lab=bl14}
C {lab_pin.sym} 1040 2120 0 0 {name=l928 sig_type=std_logic lab=bl14}
N 1240 2120 1280 2120 {lab=blb14}
C {lab_pin.sym} 1280 2120 0 1 {name=l929 sig_type=std_logic lab=blb14}
N 1080 2140 1040 2140 {lab=wl3}
C {lab_pin.sym} 1040 2140 0 0 {name=l930 sig_type=std_logic lab=wl3}
N 1240 2140 1280 2140 {lab=vdd}
C {lab_pin.sym} 1280 2140 0 1 {name=l931 sig_type=std_logic lab=vdd}
N 1080 2160 1040 2160 {lab=vss}
C {lab_pin.sym} 1040 2160 0 0 {name=l932 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 2160 0 0 {name=Xc_3_15}
N 1400 2120 1360 2120 {lab=bl15}
C {lab_pin.sym} 1360 2120 0 0 {name=l933 sig_type=std_logic lab=bl15}
N 1560 2120 1600 2120 {lab=blb15}
C {lab_pin.sym} 1600 2120 0 1 {name=l934 sig_type=std_logic lab=blb15}
N 1400 2140 1360 2140 {lab=wl3}
C {lab_pin.sym} 1360 2140 0 0 {name=l935 sig_type=std_logic lab=wl3}
N 1560 2140 1600 2140 {lab=vdd}
C {lab_pin.sym} 1600 2140 0 1 {name=l936 sig_type=std_logic lab=vdd}
N 1400 2160 1360 2160 {lab=vss}
C {lab_pin.sym} 1360 2160 0 0 {name=l937 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 2160 0 0 {name=Xc_4_0}
N 1720 2120 1680 2120 {lab=bl0}
C {lab_pin.sym} 1680 2120 0 0 {name=l938 sig_type=std_logic lab=bl0}
N 1880 2120 1920 2120 {lab=blb0}
C {lab_pin.sym} 1920 2120 0 1 {name=l939 sig_type=std_logic lab=blb0}
N 1720 2140 1680 2140 {lab=wl4}
C {lab_pin.sym} 1680 2140 0 0 {name=l940 sig_type=std_logic lab=wl4}
N 1880 2140 1920 2140 {lab=vdd}
C {lab_pin.sym} 1920 2140 0 1 {name=l941 sig_type=std_logic lab=vdd}
N 1720 2160 1680 2160 {lab=vss}
C {lab_pin.sym} 1680 2160 0 0 {name=l942 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 2160 0 0 {name=Xc_4_1}
N 2040 2120 2000 2120 {lab=bl1}
C {lab_pin.sym} 2000 2120 0 0 {name=l943 sig_type=std_logic lab=bl1}
N 2200 2120 2240 2120 {lab=blb1}
C {lab_pin.sym} 2240 2120 0 1 {name=l944 sig_type=std_logic lab=blb1}
N 2040 2140 2000 2140 {lab=wl4}
C {lab_pin.sym} 2000 2140 0 0 {name=l945 sig_type=std_logic lab=wl4}
N 2200 2140 2240 2140 {lab=vdd}
C {lab_pin.sym} 2240 2140 0 1 {name=l946 sig_type=std_logic lab=vdd}
N 2040 2160 2000 2160 {lab=vss}
C {lab_pin.sym} 2000 2160 0 0 {name=l947 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 2160 0 0 {name=Xc_4_2}
N 2360 2120 2320 2120 {lab=bl2}
C {lab_pin.sym} 2320 2120 0 0 {name=l948 sig_type=std_logic lab=bl2}
N 2520 2120 2560 2120 {lab=blb2}
C {lab_pin.sym} 2560 2120 0 1 {name=l949 sig_type=std_logic lab=blb2}
N 2360 2140 2320 2140 {lab=wl4}
C {lab_pin.sym} 2320 2140 0 0 {name=l950 sig_type=std_logic lab=wl4}
N 2520 2140 2560 2140 {lab=vdd}
C {lab_pin.sym} 2560 2140 0 1 {name=l951 sig_type=std_logic lab=vdd}
N 2360 2160 2320 2160 {lab=vss}
C {lab_pin.sym} 2320 2160 0 0 {name=l952 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 2160 0 0 {name=Xc_4_3}
N 2680 2120 2640 2120 {lab=bl3}
C {lab_pin.sym} 2640 2120 0 0 {name=l953 sig_type=std_logic lab=bl3}
N 2840 2120 2880 2120 {lab=blb3}
C {lab_pin.sym} 2880 2120 0 1 {name=l954 sig_type=std_logic lab=blb3}
N 2680 2140 2640 2140 {lab=wl4}
C {lab_pin.sym} 2640 2140 0 0 {name=l955 sig_type=std_logic lab=wl4}
N 2840 2140 2880 2140 {lab=vdd}
C {lab_pin.sym} 2880 2140 0 1 {name=l956 sig_type=std_logic lab=vdd}
N 2680 2160 2640 2160 {lab=vss}
C {lab_pin.sym} 2640 2160 0 0 {name=l957 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 2160 0 0 {name=Xc_4_4}
N 3000 2120 2960 2120 {lab=bl4}
C {lab_pin.sym} 2960 2120 0 0 {name=l958 sig_type=std_logic lab=bl4}
N 3160 2120 3200 2120 {lab=blb4}
C {lab_pin.sym} 3200 2120 0 1 {name=l959 sig_type=std_logic lab=blb4}
N 3000 2140 2960 2140 {lab=wl4}
C {lab_pin.sym} 2960 2140 0 0 {name=l960 sig_type=std_logic lab=wl4}
N 3160 2140 3200 2140 {lab=vdd}
C {lab_pin.sym} 3200 2140 0 1 {name=l961 sig_type=std_logic lab=vdd}
N 3000 2160 2960 2160 {lab=vss}
C {lab_pin.sym} 2960 2160 0 0 {name=l962 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 2160 0 0 {name=Xc_4_5}
N 3320 2120 3280 2120 {lab=bl5}
C {lab_pin.sym} 3280 2120 0 0 {name=l963 sig_type=std_logic lab=bl5}
N 3480 2120 3520 2120 {lab=blb5}
C {lab_pin.sym} 3520 2120 0 1 {name=l964 sig_type=std_logic lab=blb5}
N 3320 2140 3280 2140 {lab=wl4}
C {lab_pin.sym} 3280 2140 0 0 {name=l965 sig_type=std_logic lab=wl4}
N 3480 2140 3520 2140 {lab=vdd}
C {lab_pin.sym} 3520 2140 0 1 {name=l966 sig_type=std_logic lab=vdd}
N 3320 2160 3280 2160 {lab=vss}
C {lab_pin.sym} 3280 2160 0 0 {name=l967 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 2160 0 0 {name=Xc_4_6}
N 3640 2120 3600 2120 {lab=bl6}
C {lab_pin.sym} 3600 2120 0 0 {name=l968 sig_type=std_logic lab=bl6}
N 3800 2120 3840 2120 {lab=blb6}
C {lab_pin.sym} 3840 2120 0 1 {name=l969 sig_type=std_logic lab=blb6}
N 3640 2140 3600 2140 {lab=wl4}
C {lab_pin.sym} 3600 2140 0 0 {name=l970 sig_type=std_logic lab=wl4}
N 3800 2140 3840 2140 {lab=vdd}
C {lab_pin.sym} 3840 2140 0 1 {name=l971 sig_type=std_logic lab=vdd}
N 3640 2160 3600 2160 {lab=vss}
C {lab_pin.sym} 3600 2160 0 0 {name=l972 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 2160 0 0 {name=Xc_4_7}
N 3960 2120 3920 2120 {lab=bl7}
C {lab_pin.sym} 3920 2120 0 0 {name=l973 sig_type=std_logic lab=bl7}
N 4120 2120 4160 2120 {lab=blb7}
C {lab_pin.sym} 4160 2120 0 1 {name=l974 sig_type=std_logic lab=blb7}
N 3960 2140 3920 2140 {lab=wl4}
C {lab_pin.sym} 3920 2140 0 0 {name=l975 sig_type=std_logic lab=wl4}
N 4120 2140 4160 2140 {lab=vdd}
C {lab_pin.sym} 4160 2140 0 1 {name=l976 sig_type=std_logic lab=vdd}
N 3960 2160 3920 2160 {lab=vss}
C {lab_pin.sym} 3920 2160 0 0 {name=l977 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 2160 0 0 {name=Xc_4_8}
N 4280 2120 4240 2120 {lab=bl8}
C {lab_pin.sym} 4240 2120 0 0 {name=l978 sig_type=std_logic lab=bl8}
N 4440 2120 4480 2120 {lab=blb8}
C {lab_pin.sym} 4480 2120 0 1 {name=l979 sig_type=std_logic lab=blb8}
N 4280 2140 4240 2140 {lab=wl4}
C {lab_pin.sym} 4240 2140 0 0 {name=l980 sig_type=std_logic lab=wl4}
N 4440 2140 4480 2140 {lab=vdd}
C {lab_pin.sym} 4480 2140 0 1 {name=l981 sig_type=std_logic lab=vdd}
N 4280 2160 4240 2160 {lab=vss}
C {lab_pin.sym} 4240 2160 0 0 {name=l982 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 2160 0 0 {name=Xc_4_9}
N 4600 2120 4560 2120 {lab=bl9}
C {lab_pin.sym} 4560 2120 0 0 {name=l983 sig_type=std_logic lab=bl9}
N 4760 2120 4800 2120 {lab=blb9}
C {lab_pin.sym} 4800 2120 0 1 {name=l984 sig_type=std_logic lab=blb9}
N 4600 2140 4560 2140 {lab=wl4}
C {lab_pin.sym} 4560 2140 0 0 {name=l985 sig_type=std_logic lab=wl4}
N 4760 2140 4800 2140 {lab=vdd}
C {lab_pin.sym} 4800 2140 0 1 {name=l986 sig_type=std_logic lab=vdd}
N 4600 2160 4560 2160 {lab=vss}
C {lab_pin.sym} 4560 2160 0 0 {name=l987 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 2160 0 0 {name=Xc_4_10}
N 4920 2120 4880 2120 {lab=bl10}
C {lab_pin.sym} 4880 2120 0 0 {name=l988 sig_type=std_logic lab=bl10}
N 5080 2120 5120 2120 {lab=blb10}
C {lab_pin.sym} 5120 2120 0 1 {name=l989 sig_type=std_logic lab=blb10}
N 4920 2140 4880 2140 {lab=wl4}
C {lab_pin.sym} 4880 2140 0 0 {name=l990 sig_type=std_logic lab=wl4}
N 5080 2140 5120 2140 {lab=vdd}
C {lab_pin.sym} 5120 2140 0 1 {name=l991 sig_type=std_logic lab=vdd}
N 4920 2160 4880 2160 {lab=vss}
C {lab_pin.sym} 4880 2160 0 0 {name=l992 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 2340 0 0 {name=Xc_4_11}
N 120 2300 80 2300 {lab=bl11}
C {lab_pin.sym} 80 2300 0 0 {name=l993 sig_type=std_logic lab=bl11}
N 280 2300 320 2300 {lab=blb11}
C {lab_pin.sym} 320 2300 0 1 {name=l994 sig_type=std_logic lab=blb11}
N 120 2320 80 2320 {lab=wl4}
C {lab_pin.sym} 80 2320 0 0 {name=l995 sig_type=std_logic lab=wl4}
N 280 2320 320 2320 {lab=vdd}
C {lab_pin.sym} 320 2320 0 1 {name=l996 sig_type=std_logic lab=vdd}
N 120 2340 80 2340 {lab=vss}
C {lab_pin.sym} 80 2340 0 0 {name=l997 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 2340 0 0 {name=Xc_4_12}
N 440 2300 400 2300 {lab=bl12}
C {lab_pin.sym} 400 2300 0 0 {name=l998 sig_type=std_logic lab=bl12}
N 600 2300 640 2300 {lab=blb12}
C {lab_pin.sym} 640 2300 0 1 {name=l999 sig_type=std_logic lab=blb12}
N 440 2320 400 2320 {lab=wl4}
C {lab_pin.sym} 400 2320 0 0 {name=l1000 sig_type=std_logic lab=wl4}
N 600 2320 640 2320 {lab=vdd}
C {lab_pin.sym} 640 2320 0 1 {name=l1001 sig_type=std_logic lab=vdd}
N 440 2340 400 2340 {lab=vss}
C {lab_pin.sym} 400 2340 0 0 {name=l1002 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 2340 0 0 {name=Xc_4_13}
N 760 2300 720 2300 {lab=bl13}
C {lab_pin.sym} 720 2300 0 0 {name=l1003 sig_type=std_logic lab=bl13}
N 920 2300 960 2300 {lab=blb13}
C {lab_pin.sym} 960 2300 0 1 {name=l1004 sig_type=std_logic lab=blb13}
N 760 2320 720 2320 {lab=wl4}
C {lab_pin.sym} 720 2320 0 0 {name=l1005 sig_type=std_logic lab=wl4}
N 920 2320 960 2320 {lab=vdd}
C {lab_pin.sym} 960 2320 0 1 {name=l1006 sig_type=std_logic lab=vdd}
N 760 2340 720 2340 {lab=vss}
C {lab_pin.sym} 720 2340 0 0 {name=l1007 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 2340 0 0 {name=Xc_4_14}
N 1080 2300 1040 2300 {lab=bl14}
C {lab_pin.sym} 1040 2300 0 0 {name=l1008 sig_type=std_logic lab=bl14}
N 1240 2300 1280 2300 {lab=blb14}
C {lab_pin.sym} 1280 2300 0 1 {name=l1009 sig_type=std_logic lab=blb14}
N 1080 2320 1040 2320 {lab=wl4}
C {lab_pin.sym} 1040 2320 0 0 {name=l1010 sig_type=std_logic lab=wl4}
N 1240 2320 1280 2320 {lab=vdd}
C {lab_pin.sym} 1280 2320 0 1 {name=l1011 sig_type=std_logic lab=vdd}
N 1080 2340 1040 2340 {lab=vss}
C {lab_pin.sym} 1040 2340 0 0 {name=l1012 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 2340 0 0 {name=Xc_4_15}
N 1400 2300 1360 2300 {lab=bl15}
C {lab_pin.sym} 1360 2300 0 0 {name=l1013 sig_type=std_logic lab=bl15}
N 1560 2300 1600 2300 {lab=blb15}
C {lab_pin.sym} 1600 2300 0 1 {name=l1014 sig_type=std_logic lab=blb15}
N 1400 2320 1360 2320 {lab=wl4}
C {lab_pin.sym} 1360 2320 0 0 {name=l1015 sig_type=std_logic lab=wl4}
N 1560 2320 1600 2320 {lab=vdd}
C {lab_pin.sym} 1600 2320 0 1 {name=l1016 sig_type=std_logic lab=vdd}
N 1400 2340 1360 2340 {lab=vss}
C {lab_pin.sym} 1360 2340 0 0 {name=l1017 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 2340 0 0 {name=Xc_5_0}
N 1720 2300 1680 2300 {lab=bl0}
C {lab_pin.sym} 1680 2300 0 0 {name=l1018 sig_type=std_logic lab=bl0}
N 1880 2300 1920 2300 {lab=blb0}
C {lab_pin.sym} 1920 2300 0 1 {name=l1019 sig_type=std_logic lab=blb0}
N 1720 2320 1680 2320 {lab=wl5}
C {lab_pin.sym} 1680 2320 0 0 {name=l1020 sig_type=std_logic lab=wl5}
N 1880 2320 1920 2320 {lab=vdd}
C {lab_pin.sym} 1920 2320 0 1 {name=l1021 sig_type=std_logic lab=vdd}
N 1720 2340 1680 2340 {lab=vss}
C {lab_pin.sym} 1680 2340 0 0 {name=l1022 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 2340 0 0 {name=Xc_5_1}
N 2040 2300 2000 2300 {lab=bl1}
C {lab_pin.sym} 2000 2300 0 0 {name=l1023 sig_type=std_logic lab=bl1}
N 2200 2300 2240 2300 {lab=blb1}
C {lab_pin.sym} 2240 2300 0 1 {name=l1024 sig_type=std_logic lab=blb1}
N 2040 2320 2000 2320 {lab=wl5}
C {lab_pin.sym} 2000 2320 0 0 {name=l1025 sig_type=std_logic lab=wl5}
N 2200 2320 2240 2320 {lab=vdd}
C {lab_pin.sym} 2240 2320 0 1 {name=l1026 sig_type=std_logic lab=vdd}
N 2040 2340 2000 2340 {lab=vss}
C {lab_pin.sym} 2000 2340 0 0 {name=l1027 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 2340 0 0 {name=Xc_5_2}
N 2360 2300 2320 2300 {lab=bl2}
C {lab_pin.sym} 2320 2300 0 0 {name=l1028 sig_type=std_logic lab=bl2}
N 2520 2300 2560 2300 {lab=blb2}
C {lab_pin.sym} 2560 2300 0 1 {name=l1029 sig_type=std_logic lab=blb2}
N 2360 2320 2320 2320 {lab=wl5}
C {lab_pin.sym} 2320 2320 0 0 {name=l1030 sig_type=std_logic lab=wl5}
N 2520 2320 2560 2320 {lab=vdd}
C {lab_pin.sym} 2560 2320 0 1 {name=l1031 sig_type=std_logic lab=vdd}
N 2360 2340 2320 2340 {lab=vss}
C {lab_pin.sym} 2320 2340 0 0 {name=l1032 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 2340 0 0 {name=Xc_5_3}
N 2680 2300 2640 2300 {lab=bl3}
C {lab_pin.sym} 2640 2300 0 0 {name=l1033 sig_type=std_logic lab=bl3}
N 2840 2300 2880 2300 {lab=blb3}
C {lab_pin.sym} 2880 2300 0 1 {name=l1034 sig_type=std_logic lab=blb3}
N 2680 2320 2640 2320 {lab=wl5}
C {lab_pin.sym} 2640 2320 0 0 {name=l1035 sig_type=std_logic lab=wl5}
N 2840 2320 2880 2320 {lab=vdd}
C {lab_pin.sym} 2880 2320 0 1 {name=l1036 sig_type=std_logic lab=vdd}
N 2680 2340 2640 2340 {lab=vss}
C {lab_pin.sym} 2640 2340 0 0 {name=l1037 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 2340 0 0 {name=Xc_5_4}
N 3000 2300 2960 2300 {lab=bl4}
C {lab_pin.sym} 2960 2300 0 0 {name=l1038 sig_type=std_logic lab=bl4}
N 3160 2300 3200 2300 {lab=blb4}
C {lab_pin.sym} 3200 2300 0 1 {name=l1039 sig_type=std_logic lab=blb4}
N 3000 2320 2960 2320 {lab=wl5}
C {lab_pin.sym} 2960 2320 0 0 {name=l1040 sig_type=std_logic lab=wl5}
N 3160 2320 3200 2320 {lab=vdd}
C {lab_pin.sym} 3200 2320 0 1 {name=l1041 sig_type=std_logic lab=vdd}
N 3000 2340 2960 2340 {lab=vss}
C {lab_pin.sym} 2960 2340 0 0 {name=l1042 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 2340 0 0 {name=Xc_5_5}
N 3320 2300 3280 2300 {lab=bl5}
C {lab_pin.sym} 3280 2300 0 0 {name=l1043 sig_type=std_logic lab=bl5}
N 3480 2300 3520 2300 {lab=blb5}
C {lab_pin.sym} 3520 2300 0 1 {name=l1044 sig_type=std_logic lab=blb5}
N 3320 2320 3280 2320 {lab=wl5}
C {lab_pin.sym} 3280 2320 0 0 {name=l1045 sig_type=std_logic lab=wl5}
N 3480 2320 3520 2320 {lab=vdd}
C {lab_pin.sym} 3520 2320 0 1 {name=l1046 sig_type=std_logic lab=vdd}
N 3320 2340 3280 2340 {lab=vss}
C {lab_pin.sym} 3280 2340 0 0 {name=l1047 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 2340 0 0 {name=Xc_5_6}
N 3640 2300 3600 2300 {lab=bl6}
C {lab_pin.sym} 3600 2300 0 0 {name=l1048 sig_type=std_logic lab=bl6}
N 3800 2300 3840 2300 {lab=blb6}
C {lab_pin.sym} 3840 2300 0 1 {name=l1049 sig_type=std_logic lab=blb6}
N 3640 2320 3600 2320 {lab=wl5}
C {lab_pin.sym} 3600 2320 0 0 {name=l1050 sig_type=std_logic lab=wl5}
N 3800 2320 3840 2320 {lab=vdd}
C {lab_pin.sym} 3840 2320 0 1 {name=l1051 sig_type=std_logic lab=vdd}
N 3640 2340 3600 2340 {lab=vss}
C {lab_pin.sym} 3600 2340 0 0 {name=l1052 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 2340 0 0 {name=Xc_5_7}
N 3960 2300 3920 2300 {lab=bl7}
C {lab_pin.sym} 3920 2300 0 0 {name=l1053 sig_type=std_logic lab=bl7}
N 4120 2300 4160 2300 {lab=blb7}
C {lab_pin.sym} 4160 2300 0 1 {name=l1054 sig_type=std_logic lab=blb7}
N 3960 2320 3920 2320 {lab=wl5}
C {lab_pin.sym} 3920 2320 0 0 {name=l1055 sig_type=std_logic lab=wl5}
N 4120 2320 4160 2320 {lab=vdd}
C {lab_pin.sym} 4160 2320 0 1 {name=l1056 sig_type=std_logic lab=vdd}
N 3960 2340 3920 2340 {lab=vss}
C {lab_pin.sym} 3920 2340 0 0 {name=l1057 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 2340 0 0 {name=Xc_5_8}
N 4280 2300 4240 2300 {lab=bl8}
C {lab_pin.sym} 4240 2300 0 0 {name=l1058 sig_type=std_logic lab=bl8}
N 4440 2300 4480 2300 {lab=blb8}
C {lab_pin.sym} 4480 2300 0 1 {name=l1059 sig_type=std_logic lab=blb8}
N 4280 2320 4240 2320 {lab=wl5}
C {lab_pin.sym} 4240 2320 0 0 {name=l1060 sig_type=std_logic lab=wl5}
N 4440 2320 4480 2320 {lab=vdd}
C {lab_pin.sym} 4480 2320 0 1 {name=l1061 sig_type=std_logic lab=vdd}
N 4280 2340 4240 2340 {lab=vss}
C {lab_pin.sym} 4240 2340 0 0 {name=l1062 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 2340 0 0 {name=Xc_5_9}
N 4600 2300 4560 2300 {lab=bl9}
C {lab_pin.sym} 4560 2300 0 0 {name=l1063 sig_type=std_logic lab=bl9}
N 4760 2300 4800 2300 {lab=blb9}
C {lab_pin.sym} 4800 2300 0 1 {name=l1064 sig_type=std_logic lab=blb9}
N 4600 2320 4560 2320 {lab=wl5}
C {lab_pin.sym} 4560 2320 0 0 {name=l1065 sig_type=std_logic lab=wl5}
N 4760 2320 4800 2320 {lab=vdd}
C {lab_pin.sym} 4800 2320 0 1 {name=l1066 sig_type=std_logic lab=vdd}
N 4600 2340 4560 2340 {lab=vss}
C {lab_pin.sym} 4560 2340 0 0 {name=l1067 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 2340 0 0 {name=Xc_5_10}
N 4920 2300 4880 2300 {lab=bl10}
C {lab_pin.sym} 4880 2300 0 0 {name=l1068 sig_type=std_logic lab=bl10}
N 5080 2300 5120 2300 {lab=blb10}
C {lab_pin.sym} 5120 2300 0 1 {name=l1069 sig_type=std_logic lab=blb10}
N 4920 2320 4880 2320 {lab=wl5}
C {lab_pin.sym} 4880 2320 0 0 {name=l1070 sig_type=std_logic lab=wl5}
N 5080 2320 5120 2320 {lab=vdd}
C {lab_pin.sym} 5120 2320 0 1 {name=l1071 sig_type=std_logic lab=vdd}
N 4920 2340 4880 2340 {lab=vss}
C {lab_pin.sym} 4880 2340 0 0 {name=l1072 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 2520 0 0 {name=Xc_5_11}
N 120 2480 80 2480 {lab=bl11}
C {lab_pin.sym} 80 2480 0 0 {name=l1073 sig_type=std_logic lab=bl11}
N 280 2480 320 2480 {lab=blb11}
C {lab_pin.sym} 320 2480 0 1 {name=l1074 sig_type=std_logic lab=blb11}
N 120 2500 80 2500 {lab=wl5}
C {lab_pin.sym} 80 2500 0 0 {name=l1075 sig_type=std_logic lab=wl5}
N 280 2500 320 2500 {lab=vdd}
C {lab_pin.sym} 320 2500 0 1 {name=l1076 sig_type=std_logic lab=vdd}
N 120 2520 80 2520 {lab=vss}
C {lab_pin.sym} 80 2520 0 0 {name=l1077 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 2520 0 0 {name=Xc_5_12}
N 440 2480 400 2480 {lab=bl12}
C {lab_pin.sym} 400 2480 0 0 {name=l1078 sig_type=std_logic lab=bl12}
N 600 2480 640 2480 {lab=blb12}
C {lab_pin.sym} 640 2480 0 1 {name=l1079 sig_type=std_logic lab=blb12}
N 440 2500 400 2500 {lab=wl5}
C {lab_pin.sym} 400 2500 0 0 {name=l1080 sig_type=std_logic lab=wl5}
N 600 2500 640 2500 {lab=vdd}
C {lab_pin.sym} 640 2500 0 1 {name=l1081 sig_type=std_logic lab=vdd}
N 440 2520 400 2520 {lab=vss}
C {lab_pin.sym} 400 2520 0 0 {name=l1082 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 2520 0 0 {name=Xc_5_13}
N 760 2480 720 2480 {lab=bl13}
C {lab_pin.sym} 720 2480 0 0 {name=l1083 sig_type=std_logic lab=bl13}
N 920 2480 960 2480 {lab=blb13}
C {lab_pin.sym} 960 2480 0 1 {name=l1084 sig_type=std_logic lab=blb13}
N 760 2500 720 2500 {lab=wl5}
C {lab_pin.sym} 720 2500 0 0 {name=l1085 sig_type=std_logic lab=wl5}
N 920 2500 960 2500 {lab=vdd}
C {lab_pin.sym} 960 2500 0 1 {name=l1086 sig_type=std_logic lab=vdd}
N 760 2520 720 2520 {lab=vss}
C {lab_pin.sym} 720 2520 0 0 {name=l1087 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 2520 0 0 {name=Xc_5_14}
N 1080 2480 1040 2480 {lab=bl14}
C {lab_pin.sym} 1040 2480 0 0 {name=l1088 sig_type=std_logic lab=bl14}
N 1240 2480 1280 2480 {lab=blb14}
C {lab_pin.sym} 1280 2480 0 1 {name=l1089 sig_type=std_logic lab=blb14}
N 1080 2500 1040 2500 {lab=wl5}
C {lab_pin.sym} 1040 2500 0 0 {name=l1090 sig_type=std_logic lab=wl5}
N 1240 2500 1280 2500 {lab=vdd}
C {lab_pin.sym} 1280 2500 0 1 {name=l1091 sig_type=std_logic lab=vdd}
N 1080 2520 1040 2520 {lab=vss}
C {lab_pin.sym} 1040 2520 0 0 {name=l1092 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 2520 0 0 {name=Xc_5_15}
N 1400 2480 1360 2480 {lab=bl15}
C {lab_pin.sym} 1360 2480 0 0 {name=l1093 sig_type=std_logic lab=bl15}
N 1560 2480 1600 2480 {lab=blb15}
C {lab_pin.sym} 1600 2480 0 1 {name=l1094 sig_type=std_logic lab=blb15}
N 1400 2500 1360 2500 {lab=wl5}
C {lab_pin.sym} 1360 2500 0 0 {name=l1095 sig_type=std_logic lab=wl5}
N 1560 2500 1600 2500 {lab=vdd}
C {lab_pin.sym} 1600 2500 0 1 {name=l1096 sig_type=std_logic lab=vdd}
N 1400 2520 1360 2520 {lab=vss}
C {lab_pin.sym} 1360 2520 0 0 {name=l1097 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 2520 0 0 {name=Xc_6_0}
N 1720 2480 1680 2480 {lab=bl0}
C {lab_pin.sym} 1680 2480 0 0 {name=l1098 sig_type=std_logic lab=bl0}
N 1880 2480 1920 2480 {lab=blb0}
C {lab_pin.sym} 1920 2480 0 1 {name=l1099 sig_type=std_logic lab=blb0}
N 1720 2500 1680 2500 {lab=wl6}
C {lab_pin.sym} 1680 2500 0 0 {name=l1100 sig_type=std_logic lab=wl6}
N 1880 2500 1920 2500 {lab=vdd}
C {lab_pin.sym} 1920 2500 0 1 {name=l1101 sig_type=std_logic lab=vdd}
N 1720 2520 1680 2520 {lab=vss}
C {lab_pin.sym} 1680 2520 0 0 {name=l1102 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 2520 0 0 {name=Xc_6_1}
N 2040 2480 2000 2480 {lab=bl1}
C {lab_pin.sym} 2000 2480 0 0 {name=l1103 sig_type=std_logic lab=bl1}
N 2200 2480 2240 2480 {lab=blb1}
C {lab_pin.sym} 2240 2480 0 1 {name=l1104 sig_type=std_logic lab=blb1}
N 2040 2500 2000 2500 {lab=wl6}
C {lab_pin.sym} 2000 2500 0 0 {name=l1105 sig_type=std_logic lab=wl6}
N 2200 2500 2240 2500 {lab=vdd}
C {lab_pin.sym} 2240 2500 0 1 {name=l1106 sig_type=std_logic lab=vdd}
N 2040 2520 2000 2520 {lab=vss}
C {lab_pin.sym} 2000 2520 0 0 {name=l1107 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 2520 0 0 {name=Xc_6_2}
N 2360 2480 2320 2480 {lab=bl2}
C {lab_pin.sym} 2320 2480 0 0 {name=l1108 sig_type=std_logic lab=bl2}
N 2520 2480 2560 2480 {lab=blb2}
C {lab_pin.sym} 2560 2480 0 1 {name=l1109 sig_type=std_logic lab=blb2}
N 2360 2500 2320 2500 {lab=wl6}
C {lab_pin.sym} 2320 2500 0 0 {name=l1110 sig_type=std_logic lab=wl6}
N 2520 2500 2560 2500 {lab=vdd}
C {lab_pin.sym} 2560 2500 0 1 {name=l1111 sig_type=std_logic lab=vdd}
N 2360 2520 2320 2520 {lab=vss}
C {lab_pin.sym} 2320 2520 0 0 {name=l1112 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 2520 0 0 {name=Xc_6_3}
N 2680 2480 2640 2480 {lab=bl3}
C {lab_pin.sym} 2640 2480 0 0 {name=l1113 sig_type=std_logic lab=bl3}
N 2840 2480 2880 2480 {lab=blb3}
C {lab_pin.sym} 2880 2480 0 1 {name=l1114 sig_type=std_logic lab=blb3}
N 2680 2500 2640 2500 {lab=wl6}
C {lab_pin.sym} 2640 2500 0 0 {name=l1115 sig_type=std_logic lab=wl6}
N 2840 2500 2880 2500 {lab=vdd}
C {lab_pin.sym} 2880 2500 0 1 {name=l1116 sig_type=std_logic lab=vdd}
N 2680 2520 2640 2520 {lab=vss}
C {lab_pin.sym} 2640 2520 0 0 {name=l1117 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 2520 0 0 {name=Xc_6_4}
N 3000 2480 2960 2480 {lab=bl4}
C {lab_pin.sym} 2960 2480 0 0 {name=l1118 sig_type=std_logic lab=bl4}
N 3160 2480 3200 2480 {lab=blb4}
C {lab_pin.sym} 3200 2480 0 1 {name=l1119 sig_type=std_logic lab=blb4}
N 3000 2500 2960 2500 {lab=wl6}
C {lab_pin.sym} 2960 2500 0 0 {name=l1120 sig_type=std_logic lab=wl6}
N 3160 2500 3200 2500 {lab=vdd}
C {lab_pin.sym} 3200 2500 0 1 {name=l1121 sig_type=std_logic lab=vdd}
N 3000 2520 2960 2520 {lab=vss}
C {lab_pin.sym} 2960 2520 0 0 {name=l1122 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 2520 0 0 {name=Xc_6_5}
N 3320 2480 3280 2480 {lab=bl5}
C {lab_pin.sym} 3280 2480 0 0 {name=l1123 sig_type=std_logic lab=bl5}
N 3480 2480 3520 2480 {lab=blb5}
C {lab_pin.sym} 3520 2480 0 1 {name=l1124 sig_type=std_logic lab=blb5}
N 3320 2500 3280 2500 {lab=wl6}
C {lab_pin.sym} 3280 2500 0 0 {name=l1125 sig_type=std_logic lab=wl6}
N 3480 2500 3520 2500 {lab=vdd}
C {lab_pin.sym} 3520 2500 0 1 {name=l1126 sig_type=std_logic lab=vdd}
N 3320 2520 3280 2520 {lab=vss}
C {lab_pin.sym} 3280 2520 0 0 {name=l1127 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 2520 0 0 {name=Xc_6_6}
N 3640 2480 3600 2480 {lab=bl6}
C {lab_pin.sym} 3600 2480 0 0 {name=l1128 sig_type=std_logic lab=bl6}
N 3800 2480 3840 2480 {lab=blb6}
C {lab_pin.sym} 3840 2480 0 1 {name=l1129 sig_type=std_logic lab=blb6}
N 3640 2500 3600 2500 {lab=wl6}
C {lab_pin.sym} 3600 2500 0 0 {name=l1130 sig_type=std_logic lab=wl6}
N 3800 2500 3840 2500 {lab=vdd}
C {lab_pin.sym} 3840 2500 0 1 {name=l1131 sig_type=std_logic lab=vdd}
N 3640 2520 3600 2520 {lab=vss}
C {lab_pin.sym} 3600 2520 0 0 {name=l1132 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 2520 0 0 {name=Xc_6_7}
N 3960 2480 3920 2480 {lab=bl7}
C {lab_pin.sym} 3920 2480 0 0 {name=l1133 sig_type=std_logic lab=bl7}
N 4120 2480 4160 2480 {lab=blb7}
C {lab_pin.sym} 4160 2480 0 1 {name=l1134 sig_type=std_logic lab=blb7}
N 3960 2500 3920 2500 {lab=wl6}
C {lab_pin.sym} 3920 2500 0 0 {name=l1135 sig_type=std_logic lab=wl6}
N 4120 2500 4160 2500 {lab=vdd}
C {lab_pin.sym} 4160 2500 0 1 {name=l1136 sig_type=std_logic lab=vdd}
N 3960 2520 3920 2520 {lab=vss}
C {lab_pin.sym} 3920 2520 0 0 {name=l1137 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 2520 0 0 {name=Xc_6_8}
N 4280 2480 4240 2480 {lab=bl8}
C {lab_pin.sym} 4240 2480 0 0 {name=l1138 sig_type=std_logic lab=bl8}
N 4440 2480 4480 2480 {lab=blb8}
C {lab_pin.sym} 4480 2480 0 1 {name=l1139 sig_type=std_logic lab=blb8}
N 4280 2500 4240 2500 {lab=wl6}
C {lab_pin.sym} 4240 2500 0 0 {name=l1140 sig_type=std_logic lab=wl6}
N 4440 2500 4480 2500 {lab=vdd}
C {lab_pin.sym} 4480 2500 0 1 {name=l1141 sig_type=std_logic lab=vdd}
N 4280 2520 4240 2520 {lab=vss}
C {lab_pin.sym} 4240 2520 0 0 {name=l1142 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 2520 0 0 {name=Xc_6_9}
N 4600 2480 4560 2480 {lab=bl9}
C {lab_pin.sym} 4560 2480 0 0 {name=l1143 sig_type=std_logic lab=bl9}
N 4760 2480 4800 2480 {lab=blb9}
C {lab_pin.sym} 4800 2480 0 1 {name=l1144 sig_type=std_logic lab=blb9}
N 4600 2500 4560 2500 {lab=wl6}
C {lab_pin.sym} 4560 2500 0 0 {name=l1145 sig_type=std_logic lab=wl6}
N 4760 2500 4800 2500 {lab=vdd}
C {lab_pin.sym} 4800 2500 0 1 {name=l1146 sig_type=std_logic lab=vdd}
N 4600 2520 4560 2520 {lab=vss}
C {lab_pin.sym} 4560 2520 0 0 {name=l1147 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 2520 0 0 {name=Xc_6_10}
N 4920 2480 4880 2480 {lab=bl10}
C {lab_pin.sym} 4880 2480 0 0 {name=l1148 sig_type=std_logic lab=bl10}
N 5080 2480 5120 2480 {lab=blb10}
C {lab_pin.sym} 5120 2480 0 1 {name=l1149 sig_type=std_logic lab=blb10}
N 4920 2500 4880 2500 {lab=wl6}
C {lab_pin.sym} 4880 2500 0 0 {name=l1150 sig_type=std_logic lab=wl6}
N 5080 2500 5120 2500 {lab=vdd}
C {lab_pin.sym} 5120 2500 0 1 {name=l1151 sig_type=std_logic lab=vdd}
N 4920 2520 4880 2520 {lab=vss}
C {lab_pin.sym} 4880 2520 0 0 {name=l1152 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 2700 0 0 {name=Xc_6_11}
N 120 2660 80 2660 {lab=bl11}
C {lab_pin.sym} 80 2660 0 0 {name=l1153 sig_type=std_logic lab=bl11}
N 280 2660 320 2660 {lab=blb11}
C {lab_pin.sym} 320 2660 0 1 {name=l1154 sig_type=std_logic lab=blb11}
N 120 2680 80 2680 {lab=wl6}
C {lab_pin.sym} 80 2680 0 0 {name=l1155 sig_type=std_logic lab=wl6}
N 280 2680 320 2680 {lab=vdd}
C {lab_pin.sym} 320 2680 0 1 {name=l1156 sig_type=std_logic lab=vdd}
N 120 2700 80 2700 {lab=vss}
C {lab_pin.sym} 80 2700 0 0 {name=l1157 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 2700 0 0 {name=Xc_6_12}
N 440 2660 400 2660 {lab=bl12}
C {lab_pin.sym} 400 2660 0 0 {name=l1158 sig_type=std_logic lab=bl12}
N 600 2660 640 2660 {lab=blb12}
C {lab_pin.sym} 640 2660 0 1 {name=l1159 sig_type=std_logic lab=blb12}
N 440 2680 400 2680 {lab=wl6}
C {lab_pin.sym} 400 2680 0 0 {name=l1160 sig_type=std_logic lab=wl6}
N 600 2680 640 2680 {lab=vdd}
C {lab_pin.sym} 640 2680 0 1 {name=l1161 sig_type=std_logic lab=vdd}
N 440 2700 400 2700 {lab=vss}
C {lab_pin.sym} 400 2700 0 0 {name=l1162 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 2700 0 0 {name=Xc_6_13}
N 760 2660 720 2660 {lab=bl13}
C {lab_pin.sym} 720 2660 0 0 {name=l1163 sig_type=std_logic lab=bl13}
N 920 2660 960 2660 {lab=blb13}
C {lab_pin.sym} 960 2660 0 1 {name=l1164 sig_type=std_logic lab=blb13}
N 760 2680 720 2680 {lab=wl6}
C {lab_pin.sym} 720 2680 0 0 {name=l1165 sig_type=std_logic lab=wl6}
N 920 2680 960 2680 {lab=vdd}
C {lab_pin.sym} 960 2680 0 1 {name=l1166 sig_type=std_logic lab=vdd}
N 760 2700 720 2700 {lab=vss}
C {lab_pin.sym} 720 2700 0 0 {name=l1167 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 2700 0 0 {name=Xc_6_14}
N 1080 2660 1040 2660 {lab=bl14}
C {lab_pin.sym} 1040 2660 0 0 {name=l1168 sig_type=std_logic lab=bl14}
N 1240 2660 1280 2660 {lab=blb14}
C {lab_pin.sym} 1280 2660 0 1 {name=l1169 sig_type=std_logic lab=blb14}
N 1080 2680 1040 2680 {lab=wl6}
C {lab_pin.sym} 1040 2680 0 0 {name=l1170 sig_type=std_logic lab=wl6}
N 1240 2680 1280 2680 {lab=vdd}
C {lab_pin.sym} 1280 2680 0 1 {name=l1171 sig_type=std_logic lab=vdd}
N 1080 2700 1040 2700 {lab=vss}
C {lab_pin.sym} 1040 2700 0 0 {name=l1172 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 2700 0 0 {name=Xc_6_15}
N 1400 2660 1360 2660 {lab=bl15}
C {lab_pin.sym} 1360 2660 0 0 {name=l1173 sig_type=std_logic lab=bl15}
N 1560 2660 1600 2660 {lab=blb15}
C {lab_pin.sym} 1600 2660 0 1 {name=l1174 sig_type=std_logic lab=blb15}
N 1400 2680 1360 2680 {lab=wl6}
C {lab_pin.sym} 1360 2680 0 0 {name=l1175 sig_type=std_logic lab=wl6}
N 1560 2680 1600 2680 {lab=vdd}
C {lab_pin.sym} 1600 2680 0 1 {name=l1176 sig_type=std_logic lab=vdd}
N 1400 2700 1360 2700 {lab=vss}
C {lab_pin.sym} 1360 2700 0 0 {name=l1177 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 2700 0 0 {name=Xc_7_0}
N 1720 2660 1680 2660 {lab=bl0}
C {lab_pin.sym} 1680 2660 0 0 {name=l1178 sig_type=std_logic lab=bl0}
N 1880 2660 1920 2660 {lab=blb0}
C {lab_pin.sym} 1920 2660 0 1 {name=l1179 sig_type=std_logic lab=blb0}
N 1720 2680 1680 2680 {lab=wl7}
C {lab_pin.sym} 1680 2680 0 0 {name=l1180 sig_type=std_logic lab=wl7}
N 1880 2680 1920 2680 {lab=vdd}
C {lab_pin.sym} 1920 2680 0 1 {name=l1181 sig_type=std_logic lab=vdd}
N 1720 2700 1680 2700 {lab=vss}
C {lab_pin.sym} 1680 2700 0 0 {name=l1182 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 2700 0 0 {name=Xc_7_1}
N 2040 2660 2000 2660 {lab=bl1}
C {lab_pin.sym} 2000 2660 0 0 {name=l1183 sig_type=std_logic lab=bl1}
N 2200 2660 2240 2660 {lab=blb1}
C {lab_pin.sym} 2240 2660 0 1 {name=l1184 sig_type=std_logic lab=blb1}
N 2040 2680 2000 2680 {lab=wl7}
C {lab_pin.sym} 2000 2680 0 0 {name=l1185 sig_type=std_logic lab=wl7}
N 2200 2680 2240 2680 {lab=vdd}
C {lab_pin.sym} 2240 2680 0 1 {name=l1186 sig_type=std_logic lab=vdd}
N 2040 2700 2000 2700 {lab=vss}
C {lab_pin.sym} 2000 2700 0 0 {name=l1187 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 2700 0 0 {name=Xc_7_2}
N 2360 2660 2320 2660 {lab=bl2}
C {lab_pin.sym} 2320 2660 0 0 {name=l1188 sig_type=std_logic lab=bl2}
N 2520 2660 2560 2660 {lab=blb2}
C {lab_pin.sym} 2560 2660 0 1 {name=l1189 sig_type=std_logic lab=blb2}
N 2360 2680 2320 2680 {lab=wl7}
C {lab_pin.sym} 2320 2680 0 0 {name=l1190 sig_type=std_logic lab=wl7}
N 2520 2680 2560 2680 {lab=vdd}
C {lab_pin.sym} 2560 2680 0 1 {name=l1191 sig_type=std_logic lab=vdd}
N 2360 2700 2320 2700 {lab=vss}
C {lab_pin.sym} 2320 2700 0 0 {name=l1192 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 2700 0 0 {name=Xc_7_3}
N 2680 2660 2640 2660 {lab=bl3}
C {lab_pin.sym} 2640 2660 0 0 {name=l1193 sig_type=std_logic lab=bl3}
N 2840 2660 2880 2660 {lab=blb3}
C {lab_pin.sym} 2880 2660 0 1 {name=l1194 sig_type=std_logic lab=blb3}
N 2680 2680 2640 2680 {lab=wl7}
C {lab_pin.sym} 2640 2680 0 0 {name=l1195 sig_type=std_logic lab=wl7}
N 2840 2680 2880 2680 {lab=vdd}
C {lab_pin.sym} 2880 2680 0 1 {name=l1196 sig_type=std_logic lab=vdd}
N 2680 2700 2640 2700 {lab=vss}
C {lab_pin.sym} 2640 2700 0 0 {name=l1197 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 2700 0 0 {name=Xc_7_4}
N 3000 2660 2960 2660 {lab=bl4}
C {lab_pin.sym} 2960 2660 0 0 {name=l1198 sig_type=std_logic lab=bl4}
N 3160 2660 3200 2660 {lab=blb4}
C {lab_pin.sym} 3200 2660 0 1 {name=l1199 sig_type=std_logic lab=blb4}
N 3000 2680 2960 2680 {lab=wl7}
C {lab_pin.sym} 2960 2680 0 0 {name=l1200 sig_type=std_logic lab=wl7}
N 3160 2680 3200 2680 {lab=vdd}
C {lab_pin.sym} 3200 2680 0 1 {name=l1201 sig_type=std_logic lab=vdd}
N 3000 2700 2960 2700 {lab=vss}
C {lab_pin.sym} 2960 2700 0 0 {name=l1202 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 2700 0 0 {name=Xc_7_5}
N 3320 2660 3280 2660 {lab=bl5}
C {lab_pin.sym} 3280 2660 0 0 {name=l1203 sig_type=std_logic lab=bl5}
N 3480 2660 3520 2660 {lab=blb5}
C {lab_pin.sym} 3520 2660 0 1 {name=l1204 sig_type=std_logic lab=blb5}
N 3320 2680 3280 2680 {lab=wl7}
C {lab_pin.sym} 3280 2680 0 0 {name=l1205 sig_type=std_logic lab=wl7}
N 3480 2680 3520 2680 {lab=vdd}
C {lab_pin.sym} 3520 2680 0 1 {name=l1206 sig_type=std_logic lab=vdd}
N 3320 2700 3280 2700 {lab=vss}
C {lab_pin.sym} 3280 2700 0 0 {name=l1207 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 2700 0 0 {name=Xc_7_6}
N 3640 2660 3600 2660 {lab=bl6}
C {lab_pin.sym} 3600 2660 0 0 {name=l1208 sig_type=std_logic lab=bl6}
N 3800 2660 3840 2660 {lab=blb6}
C {lab_pin.sym} 3840 2660 0 1 {name=l1209 sig_type=std_logic lab=blb6}
N 3640 2680 3600 2680 {lab=wl7}
C {lab_pin.sym} 3600 2680 0 0 {name=l1210 sig_type=std_logic lab=wl7}
N 3800 2680 3840 2680 {lab=vdd}
C {lab_pin.sym} 3840 2680 0 1 {name=l1211 sig_type=std_logic lab=vdd}
N 3640 2700 3600 2700 {lab=vss}
C {lab_pin.sym} 3600 2700 0 0 {name=l1212 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 2700 0 0 {name=Xc_7_7}
N 3960 2660 3920 2660 {lab=bl7}
C {lab_pin.sym} 3920 2660 0 0 {name=l1213 sig_type=std_logic lab=bl7}
N 4120 2660 4160 2660 {lab=blb7}
C {lab_pin.sym} 4160 2660 0 1 {name=l1214 sig_type=std_logic lab=blb7}
N 3960 2680 3920 2680 {lab=wl7}
C {lab_pin.sym} 3920 2680 0 0 {name=l1215 sig_type=std_logic lab=wl7}
N 4120 2680 4160 2680 {lab=vdd}
C {lab_pin.sym} 4160 2680 0 1 {name=l1216 sig_type=std_logic lab=vdd}
N 3960 2700 3920 2700 {lab=vss}
C {lab_pin.sym} 3920 2700 0 0 {name=l1217 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 2700 0 0 {name=Xc_7_8}
N 4280 2660 4240 2660 {lab=bl8}
C {lab_pin.sym} 4240 2660 0 0 {name=l1218 sig_type=std_logic lab=bl8}
N 4440 2660 4480 2660 {lab=blb8}
C {lab_pin.sym} 4480 2660 0 1 {name=l1219 sig_type=std_logic lab=blb8}
N 4280 2680 4240 2680 {lab=wl7}
C {lab_pin.sym} 4240 2680 0 0 {name=l1220 sig_type=std_logic lab=wl7}
N 4440 2680 4480 2680 {lab=vdd}
C {lab_pin.sym} 4480 2680 0 1 {name=l1221 sig_type=std_logic lab=vdd}
N 4280 2700 4240 2700 {lab=vss}
C {lab_pin.sym} 4240 2700 0 0 {name=l1222 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 2700 0 0 {name=Xc_7_9}
N 4600 2660 4560 2660 {lab=bl9}
C {lab_pin.sym} 4560 2660 0 0 {name=l1223 sig_type=std_logic lab=bl9}
N 4760 2660 4800 2660 {lab=blb9}
C {lab_pin.sym} 4800 2660 0 1 {name=l1224 sig_type=std_logic lab=blb9}
N 4600 2680 4560 2680 {lab=wl7}
C {lab_pin.sym} 4560 2680 0 0 {name=l1225 sig_type=std_logic lab=wl7}
N 4760 2680 4800 2680 {lab=vdd}
C {lab_pin.sym} 4800 2680 0 1 {name=l1226 sig_type=std_logic lab=vdd}
N 4600 2700 4560 2700 {lab=vss}
C {lab_pin.sym} 4560 2700 0 0 {name=l1227 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 2700 0 0 {name=Xc_7_10}
N 4920 2660 4880 2660 {lab=bl10}
C {lab_pin.sym} 4880 2660 0 0 {name=l1228 sig_type=std_logic lab=bl10}
N 5080 2660 5120 2660 {lab=blb10}
C {lab_pin.sym} 5120 2660 0 1 {name=l1229 sig_type=std_logic lab=blb10}
N 4920 2680 4880 2680 {lab=wl7}
C {lab_pin.sym} 4880 2680 0 0 {name=l1230 sig_type=std_logic lab=wl7}
N 5080 2680 5120 2680 {lab=vdd}
C {lab_pin.sym} 5120 2680 0 1 {name=l1231 sig_type=std_logic lab=vdd}
N 4920 2700 4880 2700 {lab=vss}
C {lab_pin.sym} 4880 2700 0 0 {name=l1232 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 2880 0 0 {name=Xc_7_11}
N 120 2840 80 2840 {lab=bl11}
C {lab_pin.sym} 80 2840 0 0 {name=l1233 sig_type=std_logic lab=bl11}
N 280 2840 320 2840 {lab=blb11}
C {lab_pin.sym} 320 2840 0 1 {name=l1234 sig_type=std_logic lab=blb11}
N 120 2860 80 2860 {lab=wl7}
C {lab_pin.sym} 80 2860 0 0 {name=l1235 sig_type=std_logic lab=wl7}
N 280 2860 320 2860 {lab=vdd}
C {lab_pin.sym} 320 2860 0 1 {name=l1236 sig_type=std_logic lab=vdd}
N 120 2880 80 2880 {lab=vss}
C {lab_pin.sym} 80 2880 0 0 {name=l1237 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 2880 0 0 {name=Xc_7_12}
N 440 2840 400 2840 {lab=bl12}
C {lab_pin.sym} 400 2840 0 0 {name=l1238 sig_type=std_logic lab=bl12}
N 600 2840 640 2840 {lab=blb12}
C {lab_pin.sym} 640 2840 0 1 {name=l1239 sig_type=std_logic lab=blb12}
N 440 2860 400 2860 {lab=wl7}
C {lab_pin.sym} 400 2860 0 0 {name=l1240 sig_type=std_logic lab=wl7}
N 600 2860 640 2860 {lab=vdd}
C {lab_pin.sym} 640 2860 0 1 {name=l1241 sig_type=std_logic lab=vdd}
N 440 2880 400 2880 {lab=vss}
C {lab_pin.sym} 400 2880 0 0 {name=l1242 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 2880 0 0 {name=Xc_7_13}
N 760 2840 720 2840 {lab=bl13}
C {lab_pin.sym} 720 2840 0 0 {name=l1243 sig_type=std_logic lab=bl13}
N 920 2840 960 2840 {lab=blb13}
C {lab_pin.sym} 960 2840 0 1 {name=l1244 sig_type=std_logic lab=blb13}
N 760 2860 720 2860 {lab=wl7}
C {lab_pin.sym} 720 2860 0 0 {name=l1245 sig_type=std_logic lab=wl7}
N 920 2860 960 2860 {lab=vdd}
C {lab_pin.sym} 960 2860 0 1 {name=l1246 sig_type=std_logic lab=vdd}
N 760 2880 720 2880 {lab=vss}
C {lab_pin.sym} 720 2880 0 0 {name=l1247 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 2880 0 0 {name=Xc_7_14}
N 1080 2840 1040 2840 {lab=bl14}
C {lab_pin.sym} 1040 2840 0 0 {name=l1248 sig_type=std_logic lab=bl14}
N 1240 2840 1280 2840 {lab=blb14}
C {lab_pin.sym} 1280 2840 0 1 {name=l1249 sig_type=std_logic lab=blb14}
N 1080 2860 1040 2860 {lab=wl7}
C {lab_pin.sym} 1040 2860 0 0 {name=l1250 sig_type=std_logic lab=wl7}
N 1240 2860 1280 2860 {lab=vdd}
C {lab_pin.sym} 1280 2860 0 1 {name=l1251 sig_type=std_logic lab=vdd}
N 1080 2880 1040 2880 {lab=vss}
C {lab_pin.sym} 1040 2880 0 0 {name=l1252 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 2880 0 0 {name=Xc_7_15}
N 1400 2840 1360 2840 {lab=bl15}
C {lab_pin.sym} 1360 2840 0 0 {name=l1253 sig_type=std_logic lab=bl15}
N 1560 2840 1600 2840 {lab=blb15}
C {lab_pin.sym} 1600 2840 0 1 {name=l1254 sig_type=std_logic lab=blb15}
N 1400 2860 1360 2860 {lab=wl7}
C {lab_pin.sym} 1360 2860 0 0 {name=l1255 sig_type=std_logic lab=wl7}
N 1560 2860 1600 2860 {lab=vdd}
C {lab_pin.sym} 1600 2860 0 1 {name=l1256 sig_type=std_logic lab=vdd}
N 1400 2880 1360 2880 {lab=vss}
C {lab_pin.sym} 1360 2880 0 0 {name=l1257 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 2880 0 0 {name=Xc_8_0}
N 1720 2840 1680 2840 {lab=bl0}
C {lab_pin.sym} 1680 2840 0 0 {name=l1258 sig_type=std_logic lab=bl0}
N 1880 2840 1920 2840 {lab=blb0}
C {lab_pin.sym} 1920 2840 0 1 {name=l1259 sig_type=std_logic lab=blb0}
N 1720 2860 1680 2860 {lab=wl8}
C {lab_pin.sym} 1680 2860 0 0 {name=l1260 sig_type=std_logic lab=wl8}
N 1880 2860 1920 2860 {lab=vdd}
C {lab_pin.sym} 1920 2860 0 1 {name=l1261 sig_type=std_logic lab=vdd}
N 1720 2880 1680 2880 {lab=vss}
C {lab_pin.sym} 1680 2880 0 0 {name=l1262 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 2880 0 0 {name=Xc_8_1}
N 2040 2840 2000 2840 {lab=bl1}
C {lab_pin.sym} 2000 2840 0 0 {name=l1263 sig_type=std_logic lab=bl1}
N 2200 2840 2240 2840 {lab=blb1}
C {lab_pin.sym} 2240 2840 0 1 {name=l1264 sig_type=std_logic lab=blb1}
N 2040 2860 2000 2860 {lab=wl8}
C {lab_pin.sym} 2000 2860 0 0 {name=l1265 sig_type=std_logic lab=wl8}
N 2200 2860 2240 2860 {lab=vdd}
C {lab_pin.sym} 2240 2860 0 1 {name=l1266 sig_type=std_logic lab=vdd}
N 2040 2880 2000 2880 {lab=vss}
C {lab_pin.sym} 2000 2880 0 0 {name=l1267 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 2880 0 0 {name=Xc_8_2}
N 2360 2840 2320 2840 {lab=bl2}
C {lab_pin.sym} 2320 2840 0 0 {name=l1268 sig_type=std_logic lab=bl2}
N 2520 2840 2560 2840 {lab=blb2}
C {lab_pin.sym} 2560 2840 0 1 {name=l1269 sig_type=std_logic lab=blb2}
N 2360 2860 2320 2860 {lab=wl8}
C {lab_pin.sym} 2320 2860 0 0 {name=l1270 sig_type=std_logic lab=wl8}
N 2520 2860 2560 2860 {lab=vdd}
C {lab_pin.sym} 2560 2860 0 1 {name=l1271 sig_type=std_logic lab=vdd}
N 2360 2880 2320 2880 {lab=vss}
C {lab_pin.sym} 2320 2880 0 0 {name=l1272 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 2880 0 0 {name=Xc_8_3}
N 2680 2840 2640 2840 {lab=bl3}
C {lab_pin.sym} 2640 2840 0 0 {name=l1273 sig_type=std_logic lab=bl3}
N 2840 2840 2880 2840 {lab=blb3}
C {lab_pin.sym} 2880 2840 0 1 {name=l1274 sig_type=std_logic lab=blb3}
N 2680 2860 2640 2860 {lab=wl8}
C {lab_pin.sym} 2640 2860 0 0 {name=l1275 sig_type=std_logic lab=wl8}
N 2840 2860 2880 2860 {lab=vdd}
C {lab_pin.sym} 2880 2860 0 1 {name=l1276 sig_type=std_logic lab=vdd}
N 2680 2880 2640 2880 {lab=vss}
C {lab_pin.sym} 2640 2880 0 0 {name=l1277 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 2880 0 0 {name=Xc_8_4}
N 3000 2840 2960 2840 {lab=bl4}
C {lab_pin.sym} 2960 2840 0 0 {name=l1278 sig_type=std_logic lab=bl4}
N 3160 2840 3200 2840 {lab=blb4}
C {lab_pin.sym} 3200 2840 0 1 {name=l1279 sig_type=std_logic lab=blb4}
N 3000 2860 2960 2860 {lab=wl8}
C {lab_pin.sym} 2960 2860 0 0 {name=l1280 sig_type=std_logic lab=wl8}
N 3160 2860 3200 2860 {lab=vdd}
C {lab_pin.sym} 3200 2860 0 1 {name=l1281 sig_type=std_logic lab=vdd}
N 3000 2880 2960 2880 {lab=vss}
C {lab_pin.sym} 2960 2880 0 0 {name=l1282 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 2880 0 0 {name=Xc_8_5}
N 3320 2840 3280 2840 {lab=bl5}
C {lab_pin.sym} 3280 2840 0 0 {name=l1283 sig_type=std_logic lab=bl5}
N 3480 2840 3520 2840 {lab=blb5}
C {lab_pin.sym} 3520 2840 0 1 {name=l1284 sig_type=std_logic lab=blb5}
N 3320 2860 3280 2860 {lab=wl8}
C {lab_pin.sym} 3280 2860 0 0 {name=l1285 sig_type=std_logic lab=wl8}
N 3480 2860 3520 2860 {lab=vdd}
C {lab_pin.sym} 3520 2860 0 1 {name=l1286 sig_type=std_logic lab=vdd}
N 3320 2880 3280 2880 {lab=vss}
C {lab_pin.sym} 3280 2880 0 0 {name=l1287 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 2880 0 0 {name=Xc_8_6}
N 3640 2840 3600 2840 {lab=bl6}
C {lab_pin.sym} 3600 2840 0 0 {name=l1288 sig_type=std_logic lab=bl6}
N 3800 2840 3840 2840 {lab=blb6}
C {lab_pin.sym} 3840 2840 0 1 {name=l1289 sig_type=std_logic lab=blb6}
N 3640 2860 3600 2860 {lab=wl8}
C {lab_pin.sym} 3600 2860 0 0 {name=l1290 sig_type=std_logic lab=wl8}
N 3800 2860 3840 2860 {lab=vdd}
C {lab_pin.sym} 3840 2860 0 1 {name=l1291 sig_type=std_logic lab=vdd}
N 3640 2880 3600 2880 {lab=vss}
C {lab_pin.sym} 3600 2880 0 0 {name=l1292 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 2880 0 0 {name=Xc_8_7}
N 3960 2840 3920 2840 {lab=bl7}
C {lab_pin.sym} 3920 2840 0 0 {name=l1293 sig_type=std_logic lab=bl7}
N 4120 2840 4160 2840 {lab=blb7}
C {lab_pin.sym} 4160 2840 0 1 {name=l1294 sig_type=std_logic lab=blb7}
N 3960 2860 3920 2860 {lab=wl8}
C {lab_pin.sym} 3920 2860 0 0 {name=l1295 sig_type=std_logic lab=wl8}
N 4120 2860 4160 2860 {lab=vdd}
C {lab_pin.sym} 4160 2860 0 1 {name=l1296 sig_type=std_logic lab=vdd}
N 3960 2880 3920 2880 {lab=vss}
C {lab_pin.sym} 3920 2880 0 0 {name=l1297 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 2880 0 0 {name=Xc_8_8}
N 4280 2840 4240 2840 {lab=bl8}
C {lab_pin.sym} 4240 2840 0 0 {name=l1298 sig_type=std_logic lab=bl8}
N 4440 2840 4480 2840 {lab=blb8}
C {lab_pin.sym} 4480 2840 0 1 {name=l1299 sig_type=std_logic lab=blb8}
N 4280 2860 4240 2860 {lab=wl8}
C {lab_pin.sym} 4240 2860 0 0 {name=l1300 sig_type=std_logic lab=wl8}
N 4440 2860 4480 2860 {lab=vdd}
C {lab_pin.sym} 4480 2860 0 1 {name=l1301 sig_type=std_logic lab=vdd}
N 4280 2880 4240 2880 {lab=vss}
C {lab_pin.sym} 4240 2880 0 0 {name=l1302 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 2880 0 0 {name=Xc_8_9}
N 4600 2840 4560 2840 {lab=bl9}
C {lab_pin.sym} 4560 2840 0 0 {name=l1303 sig_type=std_logic lab=bl9}
N 4760 2840 4800 2840 {lab=blb9}
C {lab_pin.sym} 4800 2840 0 1 {name=l1304 sig_type=std_logic lab=blb9}
N 4600 2860 4560 2860 {lab=wl8}
C {lab_pin.sym} 4560 2860 0 0 {name=l1305 sig_type=std_logic lab=wl8}
N 4760 2860 4800 2860 {lab=vdd}
C {lab_pin.sym} 4800 2860 0 1 {name=l1306 sig_type=std_logic lab=vdd}
N 4600 2880 4560 2880 {lab=vss}
C {lab_pin.sym} 4560 2880 0 0 {name=l1307 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 2880 0 0 {name=Xc_8_10}
N 4920 2840 4880 2840 {lab=bl10}
C {lab_pin.sym} 4880 2840 0 0 {name=l1308 sig_type=std_logic lab=bl10}
N 5080 2840 5120 2840 {lab=blb10}
C {lab_pin.sym} 5120 2840 0 1 {name=l1309 sig_type=std_logic lab=blb10}
N 4920 2860 4880 2860 {lab=wl8}
C {lab_pin.sym} 4880 2860 0 0 {name=l1310 sig_type=std_logic lab=wl8}
N 5080 2860 5120 2860 {lab=vdd}
C {lab_pin.sym} 5120 2860 0 1 {name=l1311 sig_type=std_logic lab=vdd}
N 4920 2880 4880 2880 {lab=vss}
C {lab_pin.sym} 4880 2880 0 0 {name=l1312 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 3060 0 0 {name=Xc_8_11}
N 120 3020 80 3020 {lab=bl11}
C {lab_pin.sym} 80 3020 0 0 {name=l1313 sig_type=std_logic lab=bl11}
N 280 3020 320 3020 {lab=blb11}
C {lab_pin.sym} 320 3020 0 1 {name=l1314 sig_type=std_logic lab=blb11}
N 120 3040 80 3040 {lab=wl8}
C {lab_pin.sym} 80 3040 0 0 {name=l1315 sig_type=std_logic lab=wl8}
N 280 3040 320 3040 {lab=vdd}
C {lab_pin.sym} 320 3040 0 1 {name=l1316 sig_type=std_logic lab=vdd}
N 120 3060 80 3060 {lab=vss}
C {lab_pin.sym} 80 3060 0 0 {name=l1317 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 3060 0 0 {name=Xc_8_12}
N 440 3020 400 3020 {lab=bl12}
C {lab_pin.sym} 400 3020 0 0 {name=l1318 sig_type=std_logic lab=bl12}
N 600 3020 640 3020 {lab=blb12}
C {lab_pin.sym} 640 3020 0 1 {name=l1319 sig_type=std_logic lab=blb12}
N 440 3040 400 3040 {lab=wl8}
C {lab_pin.sym} 400 3040 0 0 {name=l1320 sig_type=std_logic lab=wl8}
N 600 3040 640 3040 {lab=vdd}
C {lab_pin.sym} 640 3040 0 1 {name=l1321 sig_type=std_logic lab=vdd}
N 440 3060 400 3060 {lab=vss}
C {lab_pin.sym} 400 3060 0 0 {name=l1322 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 3060 0 0 {name=Xc_8_13}
N 760 3020 720 3020 {lab=bl13}
C {lab_pin.sym} 720 3020 0 0 {name=l1323 sig_type=std_logic lab=bl13}
N 920 3020 960 3020 {lab=blb13}
C {lab_pin.sym} 960 3020 0 1 {name=l1324 sig_type=std_logic lab=blb13}
N 760 3040 720 3040 {lab=wl8}
C {lab_pin.sym} 720 3040 0 0 {name=l1325 sig_type=std_logic lab=wl8}
N 920 3040 960 3040 {lab=vdd}
C {lab_pin.sym} 960 3040 0 1 {name=l1326 sig_type=std_logic lab=vdd}
N 760 3060 720 3060 {lab=vss}
C {lab_pin.sym} 720 3060 0 0 {name=l1327 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 3060 0 0 {name=Xc_8_14}
N 1080 3020 1040 3020 {lab=bl14}
C {lab_pin.sym} 1040 3020 0 0 {name=l1328 sig_type=std_logic lab=bl14}
N 1240 3020 1280 3020 {lab=blb14}
C {lab_pin.sym} 1280 3020 0 1 {name=l1329 sig_type=std_logic lab=blb14}
N 1080 3040 1040 3040 {lab=wl8}
C {lab_pin.sym} 1040 3040 0 0 {name=l1330 sig_type=std_logic lab=wl8}
N 1240 3040 1280 3040 {lab=vdd}
C {lab_pin.sym} 1280 3040 0 1 {name=l1331 sig_type=std_logic lab=vdd}
N 1080 3060 1040 3060 {lab=vss}
C {lab_pin.sym} 1040 3060 0 0 {name=l1332 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 3060 0 0 {name=Xc_8_15}
N 1400 3020 1360 3020 {lab=bl15}
C {lab_pin.sym} 1360 3020 0 0 {name=l1333 sig_type=std_logic lab=bl15}
N 1560 3020 1600 3020 {lab=blb15}
C {lab_pin.sym} 1600 3020 0 1 {name=l1334 sig_type=std_logic lab=blb15}
N 1400 3040 1360 3040 {lab=wl8}
C {lab_pin.sym} 1360 3040 0 0 {name=l1335 sig_type=std_logic lab=wl8}
N 1560 3040 1600 3040 {lab=vdd}
C {lab_pin.sym} 1600 3040 0 1 {name=l1336 sig_type=std_logic lab=vdd}
N 1400 3060 1360 3060 {lab=vss}
C {lab_pin.sym} 1360 3060 0 0 {name=l1337 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 3060 0 0 {name=Xc_9_0}
N 1720 3020 1680 3020 {lab=bl0}
C {lab_pin.sym} 1680 3020 0 0 {name=l1338 sig_type=std_logic lab=bl0}
N 1880 3020 1920 3020 {lab=blb0}
C {lab_pin.sym} 1920 3020 0 1 {name=l1339 sig_type=std_logic lab=blb0}
N 1720 3040 1680 3040 {lab=wl9}
C {lab_pin.sym} 1680 3040 0 0 {name=l1340 sig_type=std_logic lab=wl9}
N 1880 3040 1920 3040 {lab=vdd}
C {lab_pin.sym} 1920 3040 0 1 {name=l1341 sig_type=std_logic lab=vdd}
N 1720 3060 1680 3060 {lab=vss}
C {lab_pin.sym} 1680 3060 0 0 {name=l1342 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 3060 0 0 {name=Xc_9_1}
N 2040 3020 2000 3020 {lab=bl1}
C {lab_pin.sym} 2000 3020 0 0 {name=l1343 sig_type=std_logic lab=bl1}
N 2200 3020 2240 3020 {lab=blb1}
C {lab_pin.sym} 2240 3020 0 1 {name=l1344 sig_type=std_logic lab=blb1}
N 2040 3040 2000 3040 {lab=wl9}
C {lab_pin.sym} 2000 3040 0 0 {name=l1345 sig_type=std_logic lab=wl9}
N 2200 3040 2240 3040 {lab=vdd}
C {lab_pin.sym} 2240 3040 0 1 {name=l1346 sig_type=std_logic lab=vdd}
N 2040 3060 2000 3060 {lab=vss}
C {lab_pin.sym} 2000 3060 0 0 {name=l1347 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 3060 0 0 {name=Xc_9_2}
N 2360 3020 2320 3020 {lab=bl2}
C {lab_pin.sym} 2320 3020 0 0 {name=l1348 sig_type=std_logic lab=bl2}
N 2520 3020 2560 3020 {lab=blb2}
C {lab_pin.sym} 2560 3020 0 1 {name=l1349 sig_type=std_logic lab=blb2}
N 2360 3040 2320 3040 {lab=wl9}
C {lab_pin.sym} 2320 3040 0 0 {name=l1350 sig_type=std_logic lab=wl9}
N 2520 3040 2560 3040 {lab=vdd}
C {lab_pin.sym} 2560 3040 0 1 {name=l1351 sig_type=std_logic lab=vdd}
N 2360 3060 2320 3060 {lab=vss}
C {lab_pin.sym} 2320 3060 0 0 {name=l1352 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 3060 0 0 {name=Xc_9_3}
N 2680 3020 2640 3020 {lab=bl3}
C {lab_pin.sym} 2640 3020 0 0 {name=l1353 sig_type=std_logic lab=bl3}
N 2840 3020 2880 3020 {lab=blb3}
C {lab_pin.sym} 2880 3020 0 1 {name=l1354 sig_type=std_logic lab=blb3}
N 2680 3040 2640 3040 {lab=wl9}
C {lab_pin.sym} 2640 3040 0 0 {name=l1355 sig_type=std_logic lab=wl9}
N 2840 3040 2880 3040 {lab=vdd}
C {lab_pin.sym} 2880 3040 0 1 {name=l1356 sig_type=std_logic lab=vdd}
N 2680 3060 2640 3060 {lab=vss}
C {lab_pin.sym} 2640 3060 0 0 {name=l1357 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 3060 0 0 {name=Xc_9_4}
N 3000 3020 2960 3020 {lab=bl4}
C {lab_pin.sym} 2960 3020 0 0 {name=l1358 sig_type=std_logic lab=bl4}
N 3160 3020 3200 3020 {lab=blb4}
C {lab_pin.sym} 3200 3020 0 1 {name=l1359 sig_type=std_logic lab=blb4}
N 3000 3040 2960 3040 {lab=wl9}
C {lab_pin.sym} 2960 3040 0 0 {name=l1360 sig_type=std_logic lab=wl9}
N 3160 3040 3200 3040 {lab=vdd}
C {lab_pin.sym} 3200 3040 0 1 {name=l1361 sig_type=std_logic lab=vdd}
N 3000 3060 2960 3060 {lab=vss}
C {lab_pin.sym} 2960 3060 0 0 {name=l1362 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 3060 0 0 {name=Xc_9_5}
N 3320 3020 3280 3020 {lab=bl5}
C {lab_pin.sym} 3280 3020 0 0 {name=l1363 sig_type=std_logic lab=bl5}
N 3480 3020 3520 3020 {lab=blb5}
C {lab_pin.sym} 3520 3020 0 1 {name=l1364 sig_type=std_logic lab=blb5}
N 3320 3040 3280 3040 {lab=wl9}
C {lab_pin.sym} 3280 3040 0 0 {name=l1365 sig_type=std_logic lab=wl9}
N 3480 3040 3520 3040 {lab=vdd}
C {lab_pin.sym} 3520 3040 0 1 {name=l1366 sig_type=std_logic lab=vdd}
N 3320 3060 3280 3060 {lab=vss}
C {lab_pin.sym} 3280 3060 0 0 {name=l1367 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 3060 0 0 {name=Xc_9_6}
N 3640 3020 3600 3020 {lab=bl6}
C {lab_pin.sym} 3600 3020 0 0 {name=l1368 sig_type=std_logic lab=bl6}
N 3800 3020 3840 3020 {lab=blb6}
C {lab_pin.sym} 3840 3020 0 1 {name=l1369 sig_type=std_logic lab=blb6}
N 3640 3040 3600 3040 {lab=wl9}
C {lab_pin.sym} 3600 3040 0 0 {name=l1370 sig_type=std_logic lab=wl9}
N 3800 3040 3840 3040 {lab=vdd}
C {lab_pin.sym} 3840 3040 0 1 {name=l1371 sig_type=std_logic lab=vdd}
N 3640 3060 3600 3060 {lab=vss}
C {lab_pin.sym} 3600 3060 0 0 {name=l1372 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 3060 0 0 {name=Xc_9_7}
N 3960 3020 3920 3020 {lab=bl7}
C {lab_pin.sym} 3920 3020 0 0 {name=l1373 sig_type=std_logic lab=bl7}
N 4120 3020 4160 3020 {lab=blb7}
C {lab_pin.sym} 4160 3020 0 1 {name=l1374 sig_type=std_logic lab=blb7}
N 3960 3040 3920 3040 {lab=wl9}
C {lab_pin.sym} 3920 3040 0 0 {name=l1375 sig_type=std_logic lab=wl9}
N 4120 3040 4160 3040 {lab=vdd}
C {lab_pin.sym} 4160 3040 0 1 {name=l1376 sig_type=std_logic lab=vdd}
N 3960 3060 3920 3060 {lab=vss}
C {lab_pin.sym} 3920 3060 0 0 {name=l1377 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 3060 0 0 {name=Xc_9_8}
N 4280 3020 4240 3020 {lab=bl8}
C {lab_pin.sym} 4240 3020 0 0 {name=l1378 sig_type=std_logic lab=bl8}
N 4440 3020 4480 3020 {lab=blb8}
C {lab_pin.sym} 4480 3020 0 1 {name=l1379 sig_type=std_logic lab=blb8}
N 4280 3040 4240 3040 {lab=wl9}
C {lab_pin.sym} 4240 3040 0 0 {name=l1380 sig_type=std_logic lab=wl9}
N 4440 3040 4480 3040 {lab=vdd}
C {lab_pin.sym} 4480 3040 0 1 {name=l1381 sig_type=std_logic lab=vdd}
N 4280 3060 4240 3060 {lab=vss}
C {lab_pin.sym} 4240 3060 0 0 {name=l1382 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 3060 0 0 {name=Xc_9_9}
N 4600 3020 4560 3020 {lab=bl9}
C {lab_pin.sym} 4560 3020 0 0 {name=l1383 sig_type=std_logic lab=bl9}
N 4760 3020 4800 3020 {lab=blb9}
C {lab_pin.sym} 4800 3020 0 1 {name=l1384 sig_type=std_logic lab=blb9}
N 4600 3040 4560 3040 {lab=wl9}
C {lab_pin.sym} 4560 3040 0 0 {name=l1385 sig_type=std_logic lab=wl9}
N 4760 3040 4800 3040 {lab=vdd}
C {lab_pin.sym} 4800 3040 0 1 {name=l1386 sig_type=std_logic lab=vdd}
N 4600 3060 4560 3060 {lab=vss}
C {lab_pin.sym} 4560 3060 0 0 {name=l1387 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 3060 0 0 {name=Xc_9_10}
N 4920 3020 4880 3020 {lab=bl10}
C {lab_pin.sym} 4880 3020 0 0 {name=l1388 sig_type=std_logic lab=bl10}
N 5080 3020 5120 3020 {lab=blb10}
C {lab_pin.sym} 5120 3020 0 1 {name=l1389 sig_type=std_logic lab=blb10}
N 4920 3040 4880 3040 {lab=wl9}
C {lab_pin.sym} 4880 3040 0 0 {name=l1390 sig_type=std_logic lab=wl9}
N 5080 3040 5120 3040 {lab=vdd}
C {lab_pin.sym} 5120 3040 0 1 {name=l1391 sig_type=std_logic lab=vdd}
N 4920 3060 4880 3060 {lab=vss}
C {lab_pin.sym} 4880 3060 0 0 {name=l1392 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 3240 0 0 {name=Xc_9_11}
N 120 3200 80 3200 {lab=bl11}
C {lab_pin.sym} 80 3200 0 0 {name=l1393 sig_type=std_logic lab=bl11}
N 280 3200 320 3200 {lab=blb11}
C {lab_pin.sym} 320 3200 0 1 {name=l1394 sig_type=std_logic lab=blb11}
N 120 3220 80 3220 {lab=wl9}
C {lab_pin.sym} 80 3220 0 0 {name=l1395 sig_type=std_logic lab=wl9}
N 280 3220 320 3220 {lab=vdd}
C {lab_pin.sym} 320 3220 0 1 {name=l1396 sig_type=std_logic lab=vdd}
N 120 3240 80 3240 {lab=vss}
C {lab_pin.sym} 80 3240 0 0 {name=l1397 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 3240 0 0 {name=Xc_9_12}
N 440 3200 400 3200 {lab=bl12}
C {lab_pin.sym} 400 3200 0 0 {name=l1398 sig_type=std_logic lab=bl12}
N 600 3200 640 3200 {lab=blb12}
C {lab_pin.sym} 640 3200 0 1 {name=l1399 sig_type=std_logic lab=blb12}
N 440 3220 400 3220 {lab=wl9}
C {lab_pin.sym} 400 3220 0 0 {name=l1400 sig_type=std_logic lab=wl9}
N 600 3220 640 3220 {lab=vdd}
C {lab_pin.sym} 640 3220 0 1 {name=l1401 sig_type=std_logic lab=vdd}
N 440 3240 400 3240 {lab=vss}
C {lab_pin.sym} 400 3240 0 0 {name=l1402 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 3240 0 0 {name=Xc_9_13}
N 760 3200 720 3200 {lab=bl13}
C {lab_pin.sym} 720 3200 0 0 {name=l1403 sig_type=std_logic lab=bl13}
N 920 3200 960 3200 {lab=blb13}
C {lab_pin.sym} 960 3200 0 1 {name=l1404 sig_type=std_logic lab=blb13}
N 760 3220 720 3220 {lab=wl9}
C {lab_pin.sym} 720 3220 0 0 {name=l1405 sig_type=std_logic lab=wl9}
N 920 3220 960 3220 {lab=vdd}
C {lab_pin.sym} 960 3220 0 1 {name=l1406 sig_type=std_logic lab=vdd}
N 760 3240 720 3240 {lab=vss}
C {lab_pin.sym} 720 3240 0 0 {name=l1407 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 3240 0 0 {name=Xc_9_14}
N 1080 3200 1040 3200 {lab=bl14}
C {lab_pin.sym} 1040 3200 0 0 {name=l1408 sig_type=std_logic lab=bl14}
N 1240 3200 1280 3200 {lab=blb14}
C {lab_pin.sym} 1280 3200 0 1 {name=l1409 sig_type=std_logic lab=blb14}
N 1080 3220 1040 3220 {lab=wl9}
C {lab_pin.sym} 1040 3220 0 0 {name=l1410 sig_type=std_logic lab=wl9}
N 1240 3220 1280 3220 {lab=vdd}
C {lab_pin.sym} 1280 3220 0 1 {name=l1411 sig_type=std_logic lab=vdd}
N 1080 3240 1040 3240 {lab=vss}
C {lab_pin.sym} 1040 3240 0 0 {name=l1412 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 3240 0 0 {name=Xc_9_15}
N 1400 3200 1360 3200 {lab=bl15}
C {lab_pin.sym} 1360 3200 0 0 {name=l1413 sig_type=std_logic lab=bl15}
N 1560 3200 1600 3200 {lab=blb15}
C {lab_pin.sym} 1600 3200 0 1 {name=l1414 sig_type=std_logic lab=blb15}
N 1400 3220 1360 3220 {lab=wl9}
C {lab_pin.sym} 1360 3220 0 0 {name=l1415 sig_type=std_logic lab=wl9}
N 1560 3220 1600 3220 {lab=vdd}
C {lab_pin.sym} 1600 3220 0 1 {name=l1416 sig_type=std_logic lab=vdd}
N 1400 3240 1360 3240 {lab=vss}
C {lab_pin.sym} 1360 3240 0 0 {name=l1417 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 3240 0 0 {name=Xc_10_0}
N 1720 3200 1680 3200 {lab=bl0}
C {lab_pin.sym} 1680 3200 0 0 {name=l1418 sig_type=std_logic lab=bl0}
N 1880 3200 1920 3200 {lab=blb0}
C {lab_pin.sym} 1920 3200 0 1 {name=l1419 sig_type=std_logic lab=blb0}
N 1720 3220 1680 3220 {lab=wl10}
C {lab_pin.sym} 1680 3220 0 0 {name=l1420 sig_type=std_logic lab=wl10}
N 1880 3220 1920 3220 {lab=vdd}
C {lab_pin.sym} 1920 3220 0 1 {name=l1421 sig_type=std_logic lab=vdd}
N 1720 3240 1680 3240 {lab=vss}
C {lab_pin.sym} 1680 3240 0 0 {name=l1422 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 3240 0 0 {name=Xc_10_1}
N 2040 3200 2000 3200 {lab=bl1}
C {lab_pin.sym} 2000 3200 0 0 {name=l1423 sig_type=std_logic lab=bl1}
N 2200 3200 2240 3200 {lab=blb1}
C {lab_pin.sym} 2240 3200 0 1 {name=l1424 sig_type=std_logic lab=blb1}
N 2040 3220 2000 3220 {lab=wl10}
C {lab_pin.sym} 2000 3220 0 0 {name=l1425 sig_type=std_logic lab=wl10}
N 2200 3220 2240 3220 {lab=vdd}
C {lab_pin.sym} 2240 3220 0 1 {name=l1426 sig_type=std_logic lab=vdd}
N 2040 3240 2000 3240 {lab=vss}
C {lab_pin.sym} 2000 3240 0 0 {name=l1427 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 3240 0 0 {name=Xc_10_2}
N 2360 3200 2320 3200 {lab=bl2}
C {lab_pin.sym} 2320 3200 0 0 {name=l1428 sig_type=std_logic lab=bl2}
N 2520 3200 2560 3200 {lab=blb2}
C {lab_pin.sym} 2560 3200 0 1 {name=l1429 sig_type=std_logic lab=blb2}
N 2360 3220 2320 3220 {lab=wl10}
C {lab_pin.sym} 2320 3220 0 0 {name=l1430 sig_type=std_logic lab=wl10}
N 2520 3220 2560 3220 {lab=vdd}
C {lab_pin.sym} 2560 3220 0 1 {name=l1431 sig_type=std_logic lab=vdd}
N 2360 3240 2320 3240 {lab=vss}
C {lab_pin.sym} 2320 3240 0 0 {name=l1432 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 3240 0 0 {name=Xc_10_3}
N 2680 3200 2640 3200 {lab=bl3}
C {lab_pin.sym} 2640 3200 0 0 {name=l1433 sig_type=std_logic lab=bl3}
N 2840 3200 2880 3200 {lab=blb3}
C {lab_pin.sym} 2880 3200 0 1 {name=l1434 sig_type=std_logic lab=blb3}
N 2680 3220 2640 3220 {lab=wl10}
C {lab_pin.sym} 2640 3220 0 0 {name=l1435 sig_type=std_logic lab=wl10}
N 2840 3220 2880 3220 {lab=vdd}
C {lab_pin.sym} 2880 3220 0 1 {name=l1436 sig_type=std_logic lab=vdd}
N 2680 3240 2640 3240 {lab=vss}
C {lab_pin.sym} 2640 3240 0 0 {name=l1437 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 3240 0 0 {name=Xc_10_4}
N 3000 3200 2960 3200 {lab=bl4}
C {lab_pin.sym} 2960 3200 0 0 {name=l1438 sig_type=std_logic lab=bl4}
N 3160 3200 3200 3200 {lab=blb4}
C {lab_pin.sym} 3200 3200 0 1 {name=l1439 sig_type=std_logic lab=blb4}
N 3000 3220 2960 3220 {lab=wl10}
C {lab_pin.sym} 2960 3220 0 0 {name=l1440 sig_type=std_logic lab=wl10}
N 3160 3220 3200 3220 {lab=vdd}
C {lab_pin.sym} 3200 3220 0 1 {name=l1441 sig_type=std_logic lab=vdd}
N 3000 3240 2960 3240 {lab=vss}
C {lab_pin.sym} 2960 3240 0 0 {name=l1442 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 3240 0 0 {name=Xc_10_5}
N 3320 3200 3280 3200 {lab=bl5}
C {lab_pin.sym} 3280 3200 0 0 {name=l1443 sig_type=std_logic lab=bl5}
N 3480 3200 3520 3200 {lab=blb5}
C {lab_pin.sym} 3520 3200 0 1 {name=l1444 sig_type=std_logic lab=blb5}
N 3320 3220 3280 3220 {lab=wl10}
C {lab_pin.sym} 3280 3220 0 0 {name=l1445 sig_type=std_logic lab=wl10}
N 3480 3220 3520 3220 {lab=vdd}
C {lab_pin.sym} 3520 3220 0 1 {name=l1446 sig_type=std_logic lab=vdd}
N 3320 3240 3280 3240 {lab=vss}
C {lab_pin.sym} 3280 3240 0 0 {name=l1447 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 3240 0 0 {name=Xc_10_6}
N 3640 3200 3600 3200 {lab=bl6}
C {lab_pin.sym} 3600 3200 0 0 {name=l1448 sig_type=std_logic lab=bl6}
N 3800 3200 3840 3200 {lab=blb6}
C {lab_pin.sym} 3840 3200 0 1 {name=l1449 sig_type=std_logic lab=blb6}
N 3640 3220 3600 3220 {lab=wl10}
C {lab_pin.sym} 3600 3220 0 0 {name=l1450 sig_type=std_logic lab=wl10}
N 3800 3220 3840 3220 {lab=vdd}
C {lab_pin.sym} 3840 3220 0 1 {name=l1451 sig_type=std_logic lab=vdd}
N 3640 3240 3600 3240 {lab=vss}
C {lab_pin.sym} 3600 3240 0 0 {name=l1452 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 3240 0 0 {name=Xc_10_7}
N 3960 3200 3920 3200 {lab=bl7}
C {lab_pin.sym} 3920 3200 0 0 {name=l1453 sig_type=std_logic lab=bl7}
N 4120 3200 4160 3200 {lab=blb7}
C {lab_pin.sym} 4160 3200 0 1 {name=l1454 sig_type=std_logic lab=blb7}
N 3960 3220 3920 3220 {lab=wl10}
C {lab_pin.sym} 3920 3220 0 0 {name=l1455 sig_type=std_logic lab=wl10}
N 4120 3220 4160 3220 {lab=vdd}
C {lab_pin.sym} 4160 3220 0 1 {name=l1456 sig_type=std_logic lab=vdd}
N 3960 3240 3920 3240 {lab=vss}
C {lab_pin.sym} 3920 3240 0 0 {name=l1457 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 3240 0 0 {name=Xc_10_8}
N 4280 3200 4240 3200 {lab=bl8}
C {lab_pin.sym} 4240 3200 0 0 {name=l1458 sig_type=std_logic lab=bl8}
N 4440 3200 4480 3200 {lab=blb8}
C {lab_pin.sym} 4480 3200 0 1 {name=l1459 sig_type=std_logic lab=blb8}
N 4280 3220 4240 3220 {lab=wl10}
C {lab_pin.sym} 4240 3220 0 0 {name=l1460 sig_type=std_logic lab=wl10}
N 4440 3220 4480 3220 {lab=vdd}
C {lab_pin.sym} 4480 3220 0 1 {name=l1461 sig_type=std_logic lab=vdd}
N 4280 3240 4240 3240 {lab=vss}
C {lab_pin.sym} 4240 3240 0 0 {name=l1462 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 3240 0 0 {name=Xc_10_9}
N 4600 3200 4560 3200 {lab=bl9}
C {lab_pin.sym} 4560 3200 0 0 {name=l1463 sig_type=std_logic lab=bl9}
N 4760 3200 4800 3200 {lab=blb9}
C {lab_pin.sym} 4800 3200 0 1 {name=l1464 sig_type=std_logic lab=blb9}
N 4600 3220 4560 3220 {lab=wl10}
C {lab_pin.sym} 4560 3220 0 0 {name=l1465 sig_type=std_logic lab=wl10}
N 4760 3220 4800 3220 {lab=vdd}
C {lab_pin.sym} 4800 3220 0 1 {name=l1466 sig_type=std_logic lab=vdd}
N 4600 3240 4560 3240 {lab=vss}
C {lab_pin.sym} 4560 3240 0 0 {name=l1467 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 3240 0 0 {name=Xc_10_10}
N 4920 3200 4880 3200 {lab=bl10}
C {lab_pin.sym} 4880 3200 0 0 {name=l1468 sig_type=std_logic lab=bl10}
N 5080 3200 5120 3200 {lab=blb10}
C {lab_pin.sym} 5120 3200 0 1 {name=l1469 sig_type=std_logic lab=blb10}
N 4920 3220 4880 3220 {lab=wl10}
C {lab_pin.sym} 4880 3220 0 0 {name=l1470 sig_type=std_logic lab=wl10}
N 5080 3220 5120 3220 {lab=vdd}
C {lab_pin.sym} 5120 3220 0 1 {name=l1471 sig_type=std_logic lab=vdd}
N 4920 3240 4880 3240 {lab=vss}
C {lab_pin.sym} 4880 3240 0 0 {name=l1472 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 3420 0 0 {name=Xc_10_11}
N 120 3380 80 3380 {lab=bl11}
C {lab_pin.sym} 80 3380 0 0 {name=l1473 sig_type=std_logic lab=bl11}
N 280 3380 320 3380 {lab=blb11}
C {lab_pin.sym} 320 3380 0 1 {name=l1474 sig_type=std_logic lab=blb11}
N 120 3400 80 3400 {lab=wl10}
C {lab_pin.sym} 80 3400 0 0 {name=l1475 sig_type=std_logic lab=wl10}
N 280 3400 320 3400 {lab=vdd}
C {lab_pin.sym} 320 3400 0 1 {name=l1476 sig_type=std_logic lab=vdd}
N 120 3420 80 3420 {lab=vss}
C {lab_pin.sym} 80 3420 0 0 {name=l1477 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 3420 0 0 {name=Xc_10_12}
N 440 3380 400 3380 {lab=bl12}
C {lab_pin.sym} 400 3380 0 0 {name=l1478 sig_type=std_logic lab=bl12}
N 600 3380 640 3380 {lab=blb12}
C {lab_pin.sym} 640 3380 0 1 {name=l1479 sig_type=std_logic lab=blb12}
N 440 3400 400 3400 {lab=wl10}
C {lab_pin.sym} 400 3400 0 0 {name=l1480 sig_type=std_logic lab=wl10}
N 600 3400 640 3400 {lab=vdd}
C {lab_pin.sym} 640 3400 0 1 {name=l1481 sig_type=std_logic lab=vdd}
N 440 3420 400 3420 {lab=vss}
C {lab_pin.sym} 400 3420 0 0 {name=l1482 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 3420 0 0 {name=Xc_10_13}
N 760 3380 720 3380 {lab=bl13}
C {lab_pin.sym} 720 3380 0 0 {name=l1483 sig_type=std_logic lab=bl13}
N 920 3380 960 3380 {lab=blb13}
C {lab_pin.sym} 960 3380 0 1 {name=l1484 sig_type=std_logic lab=blb13}
N 760 3400 720 3400 {lab=wl10}
C {lab_pin.sym} 720 3400 0 0 {name=l1485 sig_type=std_logic lab=wl10}
N 920 3400 960 3400 {lab=vdd}
C {lab_pin.sym} 960 3400 0 1 {name=l1486 sig_type=std_logic lab=vdd}
N 760 3420 720 3420 {lab=vss}
C {lab_pin.sym} 720 3420 0 0 {name=l1487 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 3420 0 0 {name=Xc_10_14}
N 1080 3380 1040 3380 {lab=bl14}
C {lab_pin.sym} 1040 3380 0 0 {name=l1488 sig_type=std_logic lab=bl14}
N 1240 3380 1280 3380 {lab=blb14}
C {lab_pin.sym} 1280 3380 0 1 {name=l1489 sig_type=std_logic lab=blb14}
N 1080 3400 1040 3400 {lab=wl10}
C {lab_pin.sym} 1040 3400 0 0 {name=l1490 sig_type=std_logic lab=wl10}
N 1240 3400 1280 3400 {lab=vdd}
C {lab_pin.sym} 1280 3400 0 1 {name=l1491 sig_type=std_logic lab=vdd}
N 1080 3420 1040 3420 {lab=vss}
C {lab_pin.sym} 1040 3420 0 0 {name=l1492 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 3420 0 0 {name=Xc_10_15}
N 1400 3380 1360 3380 {lab=bl15}
C {lab_pin.sym} 1360 3380 0 0 {name=l1493 sig_type=std_logic lab=bl15}
N 1560 3380 1600 3380 {lab=blb15}
C {lab_pin.sym} 1600 3380 0 1 {name=l1494 sig_type=std_logic lab=blb15}
N 1400 3400 1360 3400 {lab=wl10}
C {lab_pin.sym} 1360 3400 0 0 {name=l1495 sig_type=std_logic lab=wl10}
N 1560 3400 1600 3400 {lab=vdd}
C {lab_pin.sym} 1600 3400 0 1 {name=l1496 sig_type=std_logic lab=vdd}
N 1400 3420 1360 3420 {lab=vss}
C {lab_pin.sym} 1360 3420 0 0 {name=l1497 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 3420 0 0 {name=Xc_11_0}
N 1720 3380 1680 3380 {lab=bl0}
C {lab_pin.sym} 1680 3380 0 0 {name=l1498 sig_type=std_logic lab=bl0}
N 1880 3380 1920 3380 {lab=blb0}
C {lab_pin.sym} 1920 3380 0 1 {name=l1499 sig_type=std_logic lab=blb0}
N 1720 3400 1680 3400 {lab=wl11}
C {lab_pin.sym} 1680 3400 0 0 {name=l1500 sig_type=std_logic lab=wl11}
N 1880 3400 1920 3400 {lab=vdd}
C {lab_pin.sym} 1920 3400 0 1 {name=l1501 sig_type=std_logic lab=vdd}
N 1720 3420 1680 3420 {lab=vss}
C {lab_pin.sym} 1680 3420 0 0 {name=l1502 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 3420 0 0 {name=Xc_11_1}
N 2040 3380 2000 3380 {lab=bl1}
C {lab_pin.sym} 2000 3380 0 0 {name=l1503 sig_type=std_logic lab=bl1}
N 2200 3380 2240 3380 {lab=blb1}
C {lab_pin.sym} 2240 3380 0 1 {name=l1504 sig_type=std_logic lab=blb1}
N 2040 3400 2000 3400 {lab=wl11}
C {lab_pin.sym} 2000 3400 0 0 {name=l1505 sig_type=std_logic lab=wl11}
N 2200 3400 2240 3400 {lab=vdd}
C {lab_pin.sym} 2240 3400 0 1 {name=l1506 sig_type=std_logic lab=vdd}
N 2040 3420 2000 3420 {lab=vss}
C {lab_pin.sym} 2000 3420 0 0 {name=l1507 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 3420 0 0 {name=Xc_11_2}
N 2360 3380 2320 3380 {lab=bl2}
C {lab_pin.sym} 2320 3380 0 0 {name=l1508 sig_type=std_logic lab=bl2}
N 2520 3380 2560 3380 {lab=blb2}
C {lab_pin.sym} 2560 3380 0 1 {name=l1509 sig_type=std_logic lab=blb2}
N 2360 3400 2320 3400 {lab=wl11}
C {lab_pin.sym} 2320 3400 0 0 {name=l1510 sig_type=std_logic lab=wl11}
N 2520 3400 2560 3400 {lab=vdd}
C {lab_pin.sym} 2560 3400 0 1 {name=l1511 sig_type=std_logic lab=vdd}
N 2360 3420 2320 3420 {lab=vss}
C {lab_pin.sym} 2320 3420 0 0 {name=l1512 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 3420 0 0 {name=Xc_11_3}
N 2680 3380 2640 3380 {lab=bl3}
C {lab_pin.sym} 2640 3380 0 0 {name=l1513 sig_type=std_logic lab=bl3}
N 2840 3380 2880 3380 {lab=blb3}
C {lab_pin.sym} 2880 3380 0 1 {name=l1514 sig_type=std_logic lab=blb3}
N 2680 3400 2640 3400 {lab=wl11}
C {lab_pin.sym} 2640 3400 0 0 {name=l1515 sig_type=std_logic lab=wl11}
N 2840 3400 2880 3400 {lab=vdd}
C {lab_pin.sym} 2880 3400 0 1 {name=l1516 sig_type=std_logic lab=vdd}
N 2680 3420 2640 3420 {lab=vss}
C {lab_pin.sym} 2640 3420 0 0 {name=l1517 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 3420 0 0 {name=Xc_11_4}
N 3000 3380 2960 3380 {lab=bl4}
C {lab_pin.sym} 2960 3380 0 0 {name=l1518 sig_type=std_logic lab=bl4}
N 3160 3380 3200 3380 {lab=blb4}
C {lab_pin.sym} 3200 3380 0 1 {name=l1519 sig_type=std_logic lab=blb4}
N 3000 3400 2960 3400 {lab=wl11}
C {lab_pin.sym} 2960 3400 0 0 {name=l1520 sig_type=std_logic lab=wl11}
N 3160 3400 3200 3400 {lab=vdd}
C {lab_pin.sym} 3200 3400 0 1 {name=l1521 sig_type=std_logic lab=vdd}
N 3000 3420 2960 3420 {lab=vss}
C {lab_pin.sym} 2960 3420 0 0 {name=l1522 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 3420 0 0 {name=Xc_11_5}
N 3320 3380 3280 3380 {lab=bl5}
C {lab_pin.sym} 3280 3380 0 0 {name=l1523 sig_type=std_logic lab=bl5}
N 3480 3380 3520 3380 {lab=blb5}
C {lab_pin.sym} 3520 3380 0 1 {name=l1524 sig_type=std_logic lab=blb5}
N 3320 3400 3280 3400 {lab=wl11}
C {lab_pin.sym} 3280 3400 0 0 {name=l1525 sig_type=std_logic lab=wl11}
N 3480 3400 3520 3400 {lab=vdd}
C {lab_pin.sym} 3520 3400 0 1 {name=l1526 sig_type=std_logic lab=vdd}
N 3320 3420 3280 3420 {lab=vss}
C {lab_pin.sym} 3280 3420 0 0 {name=l1527 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 3420 0 0 {name=Xc_11_6}
N 3640 3380 3600 3380 {lab=bl6}
C {lab_pin.sym} 3600 3380 0 0 {name=l1528 sig_type=std_logic lab=bl6}
N 3800 3380 3840 3380 {lab=blb6}
C {lab_pin.sym} 3840 3380 0 1 {name=l1529 sig_type=std_logic lab=blb6}
N 3640 3400 3600 3400 {lab=wl11}
C {lab_pin.sym} 3600 3400 0 0 {name=l1530 sig_type=std_logic lab=wl11}
N 3800 3400 3840 3400 {lab=vdd}
C {lab_pin.sym} 3840 3400 0 1 {name=l1531 sig_type=std_logic lab=vdd}
N 3640 3420 3600 3420 {lab=vss}
C {lab_pin.sym} 3600 3420 0 0 {name=l1532 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 3420 0 0 {name=Xc_11_7}
N 3960 3380 3920 3380 {lab=bl7}
C {lab_pin.sym} 3920 3380 0 0 {name=l1533 sig_type=std_logic lab=bl7}
N 4120 3380 4160 3380 {lab=blb7}
C {lab_pin.sym} 4160 3380 0 1 {name=l1534 sig_type=std_logic lab=blb7}
N 3960 3400 3920 3400 {lab=wl11}
C {lab_pin.sym} 3920 3400 0 0 {name=l1535 sig_type=std_logic lab=wl11}
N 4120 3400 4160 3400 {lab=vdd}
C {lab_pin.sym} 4160 3400 0 1 {name=l1536 sig_type=std_logic lab=vdd}
N 3960 3420 3920 3420 {lab=vss}
C {lab_pin.sym} 3920 3420 0 0 {name=l1537 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 3420 0 0 {name=Xc_11_8}
N 4280 3380 4240 3380 {lab=bl8}
C {lab_pin.sym} 4240 3380 0 0 {name=l1538 sig_type=std_logic lab=bl8}
N 4440 3380 4480 3380 {lab=blb8}
C {lab_pin.sym} 4480 3380 0 1 {name=l1539 sig_type=std_logic lab=blb8}
N 4280 3400 4240 3400 {lab=wl11}
C {lab_pin.sym} 4240 3400 0 0 {name=l1540 sig_type=std_logic lab=wl11}
N 4440 3400 4480 3400 {lab=vdd}
C {lab_pin.sym} 4480 3400 0 1 {name=l1541 sig_type=std_logic lab=vdd}
N 4280 3420 4240 3420 {lab=vss}
C {lab_pin.sym} 4240 3420 0 0 {name=l1542 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 3420 0 0 {name=Xc_11_9}
N 4600 3380 4560 3380 {lab=bl9}
C {lab_pin.sym} 4560 3380 0 0 {name=l1543 sig_type=std_logic lab=bl9}
N 4760 3380 4800 3380 {lab=blb9}
C {lab_pin.sym} 4800 3380 0 1 {name=l1544 sig_type=std_logic lab=blb9}
N 4600 3400 4560 3400 {lab=wl11}
C {lab_pin.sym} 4560 3400 0 0 {name=l1545 sig_type=std_logic lab=wl11}
N 4760 3400 4800 3400 {lab=vdd}
C {lab_pin.sym} 4800 3400 0 1 {name=l1546 sig_type=std_logic lab=vdd}
N 4600 3420 4560 3420 {lab=vss}
C {lab_pin.sym} 4560 3420 0 0 {name=l1547 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 3420 0 0 {name=Xc_11_10}
N 4920 3380 4880 3380 {lab=bl10}
C {lab_pin.sym} 4880 3380 0 0 {name=l1548 sig_type=std_logic lab=bl10}
N 5080 3380 5120 3380 {lab=blb10}
C {lab_pin.sym} 5120 3380 0 1 {name=l1549 sig_type=std_logic lab=blb10}
N 4920 3400 4880 3400 {lab=wl11}
C {lab_pin.sym} 4880 3400 0 0 {name=l1550 sig_type=std_logic lab=wl11}
N 5080 3400 5120 3400 {lab=vdd}
C {lab_pin.sym} 5120 3400 0 1 {name=l1551 sig_type=std_logic lab=vdd}
N 4920 3420 4880 3420 {lab=vss}
C {lab_pin.sym} 4880 3420 0 0 {name=l1552 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 3600 0 0 {name=Xc_11_11}
N 120 3560 80 3560 {lab=bl11}
C {lab_pin.sym} 80 3560 0 0 {name=l1553 sig_type=std_logic lab=bl11}
N 280 3560 320 3560 {lab=blb11}
C {lab_pin.sym} 320 3560 0 1 {name=l1554 sig_type=std_logic lab=blb11}
N 120 3580 80 3580 {lab=wl11}
C {lab_pin.sym} 80 3580 0 0 {name=l1555 sig_type=std_logic lab=wl11}
N 280 3580 320 3580 {lab=vdd}
C {lab_pin.sym} 320 3580 0 1 {name=l1556 sig_type=std_logic lab=vdd}
N 120 3600 80 3600 {lab=vss}
C {lab_pin.sym} 80 3600 0 0 {name=l1557 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 3600 0 0 {name=Xc_11_12}
N 440 3560 400 3560 {lab=bl12}
C {lab_pin.sym} 400 3560 0 0 {name=l1558 sig_type=std_logic lab=bl12}
N 600 3560 640 3560 {lab=blb12}
C {lab_pin.sym} 640 3560 0 1 {name=l1559 sig_type=std_logic lab=blb12}
N 440 3580 400 3580 {lab=wl11}
C {lab_pin.sym} 400 3580 0 0 {name=l1560 sig_type=std_logic lab=wl11}
N 600 3580 640 3580 {lab=vdd}
C {lab_pin.sym} 640 3580 0 1 {name=l1561 sig_type=std_logic lab=vdd}
N 440 3600 400 3600 {lab=vss}
C {lab_pin.sym} 400 3600 0 0 {name=l1562 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 3600 0 0 {name=Xc_11_13}
N 760 3560 720 3560 {lab=bl13}
C {lab_pin.sym} 720 3560 0 0 {name=l1563 sig_type=std_logic lab=bl13}
N 920 3560 960 3560 {lab=blb13}
C {lab_pin.sym} 960 3560 0 1 {name=l1564 sig_type=std_logic lab=blb13}
N 760 3580 720 3580 {lab=wl11}
C {lab_pin.sym} 720 3580 0 0 {name=l1565 sig_type=std_logic lab=wl11}
N 920 3580 960 3580 {lab=vdd}
C {lab_pin.sym} 960 3580 0 1 {name=l1566 sig_type=std_logic lab=vdd}
N 760 3600 720 3600 {lab=vss}
C {lab_pin.sym} 720 3600 0 0 {name=l1567 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 3600 0 0 {name=Xc_11_14}
N 1080 3560 1040 3560 {lab=bl14}
C {lab_pin.sym} 1040 3560 0 0 {name=l1568 sig_type=std_logic lab=bl14}
N 1240 3560 1280 3560 {lab=blb14}
C {lab_pin.sym} 1280 3560 0 1 {name=l1569 sig_type=std_logic lab=blb14}
N 1080 3580 1040 3580 {lab=wl11}
C {lab_pin.sym} 1040 3580 0 0 {name=l1570 sig_type=std_logic lab=wl11}
N 1240 3580 1280 3580 {lab=vdd}
C {lab_pin.sym} 1280 3580 0 1 {name=l1571 sig_type=std_logic lab=vdd}
N 1080 3600 1040 3600 {lab=vss}
C {lab_pin.sym} 1040 3600 0 0 {name=l1572 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 3600 0 0 {name=Xc_11_15}
N 1400 3560 1360 3560 {lab=bl15}
C {lab_pin.sym} 1360 3560 0 0 {name=l1573 sig_type=std_logic lab=bl15}
N 1560 3560 1600 3560 {lab=blb15}
C {lab_pin.sym} 1600 3560 0 1 {name=l1574 sig_type=std_logic lab=blb15}
N 1400 3580 1360 3580 {lab=wl11}
C {lab_pin.sym} 1360 3580 0 0 {name=l1575 sig_type=std_logic lab=wl11}
N 1560 3580 1600 3580 {lab=vdd}
C {lab_pin.sym} 1600 3580 0 1 {name=l1576 sig_type=std_logic lab=vdd}
N 1400 3600 1360 3600 {lab=vss}
C {lab_pin.sym} 1360 3600 0 0 {name=l1577 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 3600 0 0 {name=Xc_12_0}
N 1720 3560 1680 3560 {lab=bl0}
C {lab_pin.sym} 1680 3560 0 0 {name=l1578 sig_type=std_logic lab=bl0}
N 1880 3560 1920 3560 {lab=blb0}
C {lab_pin.sym} 1920 3560 0 1 {name=l1579 sig_type=std_logic lab=blb0}
N 1720 3580 1680 3580 {lab=wl12}
C {lab_pin.sym} 1680 3580 0 0 {name=l1580 sig_type=std_logic lab=wl12}
N 1880 3580 1920 3580 {lab=vdd}
C {lab_pin.sym} 1920 3580 0 1 {name=l1581 sig_type=std_logic lab=vdd}
N 1720 3600 1680 3600 {lab=vss}
C {lab_pin.sym} 1680 3600 0 0 {name=l1582 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 3600 0 0 {name=Xc_12_1}
N 2040 3560 2000 3560 {lab=bl1}
C {lab_pin.sym} 2000 3560 0 0 {name=l1583 sig_type=std_logic lab=bl1}
N 2200 3560 2240 3560 {lab=blb1}
C {lab_pin.sym} 2240 3560 0 1 {name=l1584 sig_type=std_logic lab=blb1}
N 2040 3580 2000 3580 {lab=wl12}
C {lab_pin.sym} 2000 3580 0 0 {name=l1585 sig_type=std_logic lab=wl12}
N 2200 3580 2240 3580 {lab=vdd}
C {lab_pin.sym} 2240 3580 0 1 {name=l1586 sig_type=std_logic lab=vdd}
N 2040 3600 2000 3600 {lab=vss}
C {lab_pin.sym} 2000 3600 0 0 {name=l1587 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 3600 0 0 {name=Xc_12_2}
N 2360 3560 2320 3560 {lab=bl2}
C {lab_pin.sym} 2320 3560 0 0 {name=l1588 sig_type=std_logic lab=bl2}
N 2520 3560 2560 3560 {lab=blb2}
C {lab_pin.sym} 2560 3560 0 1 {name=l1589 sig_type=std_logic lab=blb2}
N 2360 3580 2320 3580 {lab=wl12}
C {lab_pin.sym} 2320 3580 0 0 {name=l1590 sig_type=std_logic lab=wl12}
N 2520 3580 2560 3580 {lab=vdd}
C {lab_pin.sym} 2560 3580 0 1 {name=l1591 sig_type=std_logic lab=vdd}
N 2360 3600 2320 3600 {lab=vss}
C {lab_pin.sym} 2320 3600 0 0 {name=l1592 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 3600 0 0 {name=Xc_12_3}
N 2680 3560 2640 3560 {lab=bl3}
C {lab_pin.sym} 2640 3560 0 0 {name=l1593 sig_type=std_logic lab=bl3}
N 2840 3560 2880 3560 {lab=blb3}
C {lab_pin.sym} 2880 3560 0 1 {name=l1594 sig_type=std_logic lab=blb3}
N 2680 3580 2640 3580 {lab=wl12}
C {lab_pin.sym} 2640 3580 0 0 {name=l1595 sig_type=std_logic lab=wl12}
N 2840 3580 2880 3580 {lab=vdd}
C {lab_pin.sym} 2880 3580 0 1 {name=l1596 sig_type=std_logic lab=vdd}
N 2680 3600 2640 3600 {lab=vss}
C {lab_pin.sym} 2640 3600 0 0 {name=l1597 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 3600 0 0 {name=Xc_12_4}
N 3000 3560 2960 3560 {lab=bl4}
C {lab_pin.sym} 2960 3560 0 0 {name=l1598 sig_type=std_logic lab=bl4}
N 3160 3560 3200 3560 {lab=blb4}
C {lab_pin.sym} 3200 3560 0 1 {name=l1599 sig_type=std_logic lab=blb4}
N 3000 3580 2960 3580 {lab=wl12}
C {lab_pin.sym} 2960 3580 0 0 {name=l1600 sig_type=std_logic lab=wl12}
N 3160 3580 3200 3580 {lab=vdd}
C {lab_pin.sym} 3200 3580 0 1 {name=l1601 sig_type=std_logic lab=vdd}
N 3000 3600 2960 3600 {lab=vss}
C {lab_pin.sym} 2960 3600 0 0 {name=l1602 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 3600 0 0 {name=Xc_12_5}
N 3320 3560 3280 3560 {lab=bl5}
C {lab_pin.sym} 3280 3560 0 0 {name=l1603 sig_type=std_logic lab=bl5}
N 3480 3560 3520 3560 {lab=blb5}
C {lab_pin.sym} 3520 3560 0 1 {name=l1604 sig_type=std_logic lab=blb5}
N 3320 3580 3280 3580 {lab=wl12}
C {lab_pin.sym} 3280 3580 0 0 {name=l1605 sig_type=std_logic lab=wl12}
N 3480 3580 3520 3580 {lab=vdd}
C {lab_pin.sym} 3520 3580 0 1 {name=l1606 sig_type=std_logic lab=vdd}
N 3320 3600 3280 3600 {lab=vss}
C {lab_pin.sym} 3280 3600 0 0 {name=l1607 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 3600 0 0 {name=Xc_12_6}
N 3640 3560 3600 3560 {lab=bl6}
C {lab_pin.sym} 3600 3560 0 0 {name=l1608 sig_type=std_logic lab=bl6}
N 3800 3560 3840 3560 {lab=blb6}
C {lab_pin.sym} 3840 3560 0 1 {name=l1609 sig_type=std_logic lab=blb6}
N 3640 3580 3600 3580 {lab=wl12}
C {lab_pin.sym} 3600 3580 0 0 {name=l1610 sig_type=std_logic lab=wl12}
N 3800 3580 3840 3580 {lab=vdd}
C {lab_pin.sym} 3840 3580 0 1 {name=l1611 sig_type=std_logic lab=vdd}
N 3640 3600 3600 3600 {lab=vss}
C {lab_pin.sym} 3600 3600 0 0 {name=l1612 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 3600 0 0 {name=Xc_12_7}
N 3960 3560 3920 3560 {lab=bl7}
C {lab_pin.sym} 3920 3560 0 0 {name=l1613 sig_type=std_logic lab=bl7}
N 4120 3560 4160 3560 {lab=blb7}
C {lab_pin.sym} 4160 3560 0 1 {name=l1614 sig_type=std_logic lab=blb7}
N 3960 3580 3920 3580 {lab=wl12}
C {lab_pin.sym} 3920 3580 0 0 {name=l1615 sig_type=std_logic lab=wl12}
N 4120 3580 4160 3580 {lab=vdd}
C {lab_pin.sym} 4160 3580 0 1 {name=l1616 sig_type=std_logic lab=vdd}
N 3960 3600 3920 3600 {lab=vss}
C {lab_pin.sym} 3920 3600 0 0 {name=l1617 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 3600 0 0 {name=Xc_12_8}
N 4280 3560 4240 3560 {lab=bl8}
C {lab_pin.sym} 4240 3560 0 0 {name=l1618 sig_type=std_logic lab=bl8}
N 4440 3560 4480 3560 {lab=blb8}
C {lab_pin.sym} 4480 3560 0 1 {name=l1619 sig_type=std_logic lab=blb8}
N 4280 3580 4240 3580 {lab=wl12}
C {lab_pin.sym} 4240 3580 0 0 {name=l1620 sig_type=std_logic lab=wl12}
N 4440 3580 4480 3580 {lab=vdd}
C {lab_pin.sym} 4480 3580 0 1 {name=l1621 sig_type=std_logic lab=vdd}
N 4280 3600 4240 3600 {lab=vss}
C {lab_pin.sym} 4240 3600 0 0 {name=l1622 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 3600 0 0 {name=Xc_12_9}
N 4600 3560 4560 3560 {lab=bl9}
C {lab_pin.sym} 4560 3560 0 0 {name=l1623 sig_type=std_logic lab=bl9}
N 4760 3560 4800 3560 {lab=blb9}
C {lab_pin.sym} 4800 3560 0 1 {name=l1624 sig_type=std_logic lab=blb9}
N 4600 3580 4560 3580 {lab=wl12}
C {lab_pin.sym} 4560 3580 0 0 {name=l1625 sig_type=std_logic lab=wl12}
N 4760 3580 4800 3580 {lab=vdd}
C {lab_pin.sym} 4800 3580 0 1 {name=l1626 sig_type=std_logic lab=vdd}
N 4600 3600 4560 3600 {lab=vss}
C {lab_pin.sym} 4560 3600 0 0 {name=l1627 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 3600 0 0 {name=Xc_12_10}
N 4920 3560 4880 3560 {lab=bl10}
C {lab_pin.sym} 4880 3560 0 0 {name=l1628 sig_type=std_logic lab=bl10}
N 5080 3560 5120 3560 {lab=blb10}
C {lab_pin.sym} 5120 3560 0 1 {name=l1629 sig_type=std_logic lab=blb10}
N 4920 3580 4880 3580 {lab=wl12}
C {lab_pin.sym} 4880 3580 0 0 {name=l1630 sig_type=std_logic lab=wl12}
N 5080 3580 5120 3580 {lab=vdd}
C {lab_pin.sym} 5120 3580 0 1 {name=l1631 sig_type=std_logic lab=vdd}
N 4920 3600 4880 3600 {lab=vss}
C {lab_pin.sym} 4880 3600 0 0 {name=l1632 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 3780 0 0 {name=Xc_12_11}
N 120 3740 80 3740 {lab=bl11}
C {lab_pin.sym} 80 3740 0 0 {name=l1633 sig_type=std_logic lab=bl11}
N 280 3740 320 3740 {lab=blb11}
C {lab_pin.sym} 320 3740 0 1 {name=l1634 sig_type=std_logic lab=blb11}
N 120 3760 80 3760 {lab=wl12}
C {lab_pin.sym} 80 3760 0 0 {name=l1635 sig_type=std_logic lab=wl12}
N 280 3760 320 3760 {lab=vdd}
C {lab_pin.sym} 320 3760 0 1 {name=l1636 sig_type=std_logic lab=vdd}
N 120 3780 80 3780 {lab=vss}
C {lab_pin.sym} 80 3780 0 0 {name=l1637 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 3780 0 0 {name=Xc_12_12}
N 440 3740 400 3740 {lab=bl12}
C {lab_pin.sym} 400 3740 0 0 {name=l1638 sig_type=std_logic lab=bl12}
N 600 3740 640 3740 {lab=blb12}
C {lab_pin.sym} 640 3740 0 1 {name=l1639 sig_type=std_logic lab=blb12}
N 440 3760 400 3760 {lab=wl12}
C {lab_pin.sym} 400 3760 0 0 {name=l1640 sig_type=std_logic lab=wl12}
N 600 3760 640 3760 {lab=vdd}
C {lab_pin.sym} 640 3760 0 1 {name=l1641 sig_type=std_logic lab=vdd}
N 440 3780 400 3780 {lab=vss}
C {lab_pin.sym} 400 3780 0 0 {name=l1642 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 3780 0 0 {name=Xc_12_13}
N 760 3740 720 3740 {lab=bl13}
C {lab_pin.sym} 720 3740 0 0 {name=l1643 sig_type=std_logic lab=bl13}
N 920 3740 960 3740 {lab=blb13}
C {lab_pin.sym} 960 3740 0 1 {name=l1644 sig_type=std_logic lab=blb13}
N 760 3760 720 3760 {lab=wl12}
C {lab_pin.sym} 720 3760 0 0 {name=l1645 sig_type=std_logic lab=wl12}
N 920 3760 960 3760 {lab=vdd}
C {lab_pin.sym} 960 3760 0 1 {name=l1646 sig_type=std_logic lab=vdd}
N 760 3780 720 3780 {lab=vss}
C {lab_pin.sym} 720 3780 0 0 {name=l1647 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 3780 0 0 {name=Xc_12_14}
N 1080 3740 1040 3740 {lab=bl14}
C {lab_pin.sym} 1040 3740 0 0 {name=l1648 sig_type=std_logic lab=bl14}
N 1240 3740 1280 3740 {lab=blb14}
C {lab_pin.sym} 1280 3740 0 1 {name=l1649 sig_type=std_logic lab=blb14}
N 1080 3760 1040 3760 {lab=wl12}
C {lab_pin.sym} 1040 3760 0 0 {name=l1650 sig_type=std_logic lab=wl12}
N 1240 3760 1280 3760 {lab=vdd}
C {lab_pin.sym} 1280 3760 0 1 {name=l1651 sig_type=std_logic lab=vdd}
N 1080 3780 1040 3780 {lab=vss}
C {lab_pin.sym} 1040 3780 0 0 {name=l1652 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 3780 0 0 {name=Xc_12_15}
N 1400 3740 1360 3740 {lab=bl15}
C {lab_pin.sym} 1360 3740 0 0 {name=l1653 sig_type=std_logic lab=bl15}
N 1560 3740 1600 3740 {lab=blb15}
C {lab_pin.sym} 1600 3740 0 1 {name=l1654 sig_type=std_logic lab=blb15}
N 1400 3760 1360 3760 {lab=wl12}
C {lab_pin.sym} 1360 3760 0 0 {name=l1655 sig_type=std_logic lab=wl12}
N 1560 3760 1600 3760 {lab=vdd}
C {lab_pin.sym} 1600 3760 0 1 {name=l1656 sig_type=std_logic lab=vdd}
N 1400 3780 1360 3780 {lab=vss}
C {lab_pin.sym} 1360 3780 0 0 {name=l1657 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 3780 0 0 {name=Xc_13_0}
N 1720 3740 1680 3740 {lab=bl0}
C {lab_pin.sym} 1680 3740 0 0 {name=l1658 sig_type=std_logic lab=bl0}
N 1880 3740 1920 3740 {lab=blb0}
C {lab_pin.sym} 1920 3740 0 1 {name=l1659 sig_type=std_logic lab=blb0}
N 1720 3760 1680 3760 {lab=wl13}
C {lab_pin.sym} 1680 3760 0 0 {name=l1660 sig_type=std_logic lab=wl13}
N 1880 3760 1920 3760 {lab=vdd}
C {lab_pin.sym} 1920 3760 0 1 {name=l1661 sig_type=std_logic lab=vdd}
N 1720 3780 1680 3780 {lab=vss}
C {lab_pin.sym} 1680 3780 0 0 {name=l1662 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 3780 0 0 {name=Xc_13_1}
N 2040 3740 2000 3740 {lab=bl1}
C {lab_pin.sym} 2000 3740 0 0 {name=l1663 sig_type=std_logic lab=bl1}
N 2200 3740 2240 3740 {lab=blb1}
C {lab_pin.sym} 2240 3740 0 1 {name=l1664 sig_type=std_logic lab=blb1}
N 2040 3760 2000 3760 {lab=wl13}
C {lab_pin.sym} 2000 3760 0 0 {name=l1665 sig_type=std_logic lab=wl13}
N 2200 3760 2240 3760 {lab=vdd}
C {lab_pin.sym} 2240 3760 0 1 {name=l1666 sig_type=std_logic lab=vdd}
N 2040 3780 2000 3780 {lab=vss}
C {lab_pin.sym} 2000 3780 0 0 {name=l1667 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 3780 0 0 {name=Xc_13_2}
N 2360 3740 2320 3740 {lab=bl2}
C {lab_pin.sym} 2320 3740 0 0 {name=l1668 sig_type=std_logic lab=bl2}
N 2520 3740 2560 3740 {lab=blb2}
C {lab_pin.sym} 2560 3740 0 1 {name=l1669 sig_type=std_logic lab=blb2}
N 2360 3760 2320 3760 {lab=wl13}
C {lab_pin.sym} 2320 3760 0 0 {name=l1670 sig_type=std_logic lab=wl13}
N 2520 3760 2560 3760 {lab=vdd}
C {lab_pin.sym} 2560 3760 0 1 {name=l1671 sig_type=std_logic lab=vdd}
N 2360 3780 2320 3780 {lab=vss}
C {lab_pin.sym} 2320 3780 0 0 {name=l1672 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 3780 0 0 {name=Xc_13_3}
N 2680 3740 2640 3740 {lab=bl3}
C {lab_pin.sym} 2640 3740 0 0 {name=l1673 sig_type=std_logic lab=bl3}
N 2840 3740 2880 3740 {lab=blb3}
C {lab_pin.sym} 2880 3740 0 1 {name=l1674 sig_type=std_logic lab=blb3}
N 2680 3760 2640 3760 {lab=wl13}
C {lab_pin.sym} 2640 3760 0 0 {name=l1675 sig_type=std_logic lab=wl13}
N 2840 3760 2880 3760 {lab=vdd}
C {lab_pin.sym} 2880 3760 0 1 {name=l1676 sig_type=std_logic lab=vdd}
N 2680 3780 2640 3780 {lab=vss}
C {lab_pin.sym} 2640 3780 0 0 {name=l1677 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 3780 0 0 {name=Xc_13_4}
N 3000 3740 2960 3740 {lab=bl4}
C {lab_pin.sym} 2960 3740 0 0 {name=l1678 sig_type=std_logic lab=bl4}
N 3160 3740 3200 3740 {lab=blb4}
C {lab_pin.sym} 3200 3740 0 1 {name=l1679 sig_type=std_logic lab=blb4}
N 3000 3760 2960 3760 {lab=wl13}
C {lab_pin.sym} 2960 3760 0 0 {name=l1680 sig_type=std_logic lab=wl13}
N 3160 3760 3200 3760 {lab=vdd}
C {lab_pin.sym} 3200 3760 0 1 {name=l1681 sig_type=std_logic lab=vdd}
N 3000 3780 2960 3780 {lab=vss}
C {lab_pin.sym} 2960 3780 0 0 {name=l1682 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 3780 0 0 {name=Xc_13_5}
N 3320 3740 3280 3740 {lab=bl5}
C {lab_pin.sym} 3280 3740 0 0 {name=l1683 sig_type=std_logic lab=bl5}
N 3480 3740 3520 3740 {lab=blb5}
C {lab_pin.sym} 3520 3740 0 1 {name=l1684 sig_type=std_logic lab=blb5}
N 3320 3760 3280 3760 {lab=wl13}
C {lab_pin.sym} 3280 3760 0 0 {name=l1685 sig_type=std_logic lab=wl13}
N 3480 3760 3520 3760 {lab=vdd}
C {lab_pin.sym} 3520 3760 0 1 {name=l1686 sig_type=std_logic lab=vdd}
N 3320 3780 3280 3780 {lab=vss}
C {lab_pin.sym} 3280 3780 0 0 {name=l1687 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 3780 0 0 {name=Xc_13_6}
N 3640 3740 3600 3740 {lab=bl6}
C {lab_pin.sym} 3600 3740 0 0 {name=l1688 sig_type=std_logic lab=bl6}
N 3800 3740 3840 3740 {lab=blb6}
C {lab_pin.sym} 3840 3740 0 1 {name=l1689 sig_type=std_logic lab=blb6}
N 3640 3760 3600 3760 {lab=wl13}
C {lab_pin.sym} 3600 3760 0 0 {name=l1690 sig_type=std_logic lab=wl13}
N 3800 3760 3840 3760 {lab=vdd}
C {lab_pin.sym} 3840 3760 0 1 {name=l1691 sig_type=std_logic lab=vdd}
N 3640 3780 3600 3780 {lab=vss}
C {lab_pin.sym} 3600 3780 0 0 {name=l1692 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 3780 0 0 {name=Xc_13_7}
N 3960 3740 3920 3740 {lab=bl7}
C {lab_pin.sym} 3920 3740 0 0 {name=l1693 sig_type=std_logic lab=bl7}
N 4120 3740 4160 3740 {lab=blb7}
C {lab_pin.sym} 4160 3740 0 1 {name=l1694 sig_type=std_logic lab=blb7}
N 3960 3760 3920 3760 {lab=wl13}
C {lab_pin.sym} 3920 3760 0 0 {name=l1695 sig_type=std_logic lab=wl13}
N 4120 3760 4160 3760 {lab=vdd}
C {lab_pin.sym} 4160 3760 0 1 {name=l1696 sig_type=std_logic lab=vdd}
N 3960 3780 3920 3780 {lab=vss}
C {lab_pin.sym} 3920 3780 0 0 {name=l1697 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 3780 0 0 {name=Xc_13_8}
N 4280 3740 4240 3740 {lab=bl8}
C {lab_pin.sym} 4240 3740 0 0 {name=l1698 sig_type=std_logic lab=bl8}
N 4440 3740 4480 3740 {lab=blb8}
C {lab_pin.sym} 4480 3740 0 1 {name=l1699 sig_type=std_logic lab=blb8}
N 4280 3760 4240 3760 {lab=wl13}
C {lab_pin.sym} 4240 3760 0 0 {name=l1700 sig_type=std_logic lab=wl13}
N 4440 3760 4480 3760 {lab=vdd}
C {lab_pin.sym} 4480 3760 0 1 {name=l1701 sig_type=std_logic lab=vdd}
N 4280 3780 4240 3780 {lab=vss}
C {lab_pin.sym} 4240 3780 0 0 {name=l1702 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 3780 0 0 {name=Xc_13_9}
N 4600 3740 4560 3740 {lab=bl9}
C {lab_pin.sym} 4560 3740 0 0 {name=l1703 sig_type=std_logic lab=bl9}
N 4760 3740 4800 3740 {lab=blb9}
C {lab_pin.sym} 4800 3740 0 1 {name=l1704 sig_type=std_logic lab=blb9}
N 4600 3760 4560 3760 {lab=wl13}
C {lab_pin.sym} 4560 3760 0 0 {name=l1705 sig_type=std_logic lab=wl13}
N 4760 3760 4800 3760 {lab=vdd}
C {lab_pin.sym} 4800 3760 0 1 {name=l1706 sig_type=std_logic lab=vdd}
N 4600 3780 4560 3780 {lab=vss}
C {lab_pin.sym} 4560 3780 0 0 {name=l1707 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 3780 0 0 {name=Xc_13_10}
N 4920 3740 4880 3740 {lab=bl10}
C {lab_pin.sym} 4880 3740 0 0 {name=l1708 sig_type=std_logic lab=bl10}
N 5080 3740 5120 3740 {lab=blb10}
C {lab_pin.sym} 5120 3740 0 1 {name=l1709 sig_type=std_logic lab=blb10}
N 4920 3760 4880 3760 {lab=wl13}
C {lab_pin.sym} 4880 3760 0 0 {name=l1710 sig_type=std_logic lab=wl13}
N 5080 3760 5120 3760 {lab=vdd}
C {lab_pin.sym} 5120 3760 0 1 {name=l1711 sig_type=std_logic lab=vdd}
N 4920 3780 4880 3780 {lab=vss}
C {lab_pin.sym} 4880 3780 0 0 {name=l1712 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 3960 0 0 {name=Xc_13_11}
N 120 3920 80 3920 {lab=bl11}
C {lab_pin.sym} 80 3920 0 0 {name=l1713 sig_type=std_logic lab=bl11}
N 280 3920 320 3920 {lab=blb11}
C {lab_pin.sym} 320 3920 0 1 {name=l1714 sig_type=std_logic lab=blb11}
N 120 3940 80 3940 {lab=wl13}
C {lab_pin.sym} 80 3940 0 0 {name=l1715 sig_type=std_logic lab=wl13}
N 280 3940 320 3940 {lab=vdd}
C {lab_pin.sym} 320 3940 0 1 {name=l1716 sig_type=std_logic lab=vdd}
N 120 3960 80 3960 {lab=vss}
C {lab_pin.sym} 80 3960 0 0 {name=l1717 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 3960 0 0 {name=Xc_13_12}
N 440 3920 400 3920 {lab=bl12}
C {lab_pin.sym} 400 3920 0 0 {name=l1718 sig_type=std_logic lab=bl12}
N 600 3920 640 3920 {lab=blb12}
C {lab_pin.sym} 640 3920 0 1 {name=l1719 sig_type=std_logic lab=blb12}
N 440 3940 400 3940 {lab=wl13}
C {lab_pin.sym} 400 3940 0 0 {name=l1720 sig_type=std_logic lab=wl13}
N 600 3940 640 3940 {lab=vdd}
C {lab_pin.sym} 640 3940 0 1 {name=l1721 sig_type=std_logic lab=vdd}
N 440 3960 400 3960 {lab=vss}
C {lab_pin.sym} 400 3960 0 0 {name=l1722 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 3960 0 0 {name=Xc_13_13}
N 760 3920 720 3920 {lab=bl13}
C {lab_pin.sym} 720 3920 0 0 {name=l1723 sig_type=std_logic lab=bl13}
N 920 3920 960 3920 {lab=blb13}
C {lab_pin.sym} 960 3920 0 1 {name=l1724 sig_type=std_logic lab=blb13}
N 760 3940 720 3940 {lab=wl13}
C {lab_pin.sym} 720 3940 0 0 {name=l1725 sig_type=std_logic lab=wl13}
N 920 3940 960 3940 {lab=vdd}
C {lab_pin.sym} 960 3940 0 1 {name=l1726 sig_type=std_logic lab=vdd}
N 760 3960 720 3960 {lab=vss}
C {lab_pin.sym} 720 3960 0 0 {name=l1727 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 3960 0 0 {name=Xc_13_14}
N 1080 3920 1040 3920 {lab=bl14}
C {lab_pin.sym} 1040 3920 0 0 {name=l1728 sig_type=std_logic lab=bl14}
N 1240 3920 1280 3920 {lab=blb14}
C {lab_pin.sym} 1280 3920 0 1 {name=l1729 sig_type=std_logic lab=blb14}
N 1080 3940 1040 3940 {lab=wl13}
C {lab_pin.sym} 1040 3940 0 0 {name=l1730 sig_type=std_logic lab=wl13}
N 1240 3940 1280 3940 {lab=vdd}
C {lab_pin.sym} 1280 3940 0 1 {name=l1731 sig_type=std_logic lab=vdd}
N 1080 3960 1040 3960 {lab=vss}
C {lab_pin.sym} 1040 3960 0 0 {name=l1732 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 3960 0 0 {name=Xc_13_15}
N 1400 3920 1360 3920 {lab=bl15}
C {lab_pin.sym} 1360 3920 0 0 {name=l1733 sig_type=std_logic lab=bl15}
N 1560 3920 1600 3920 {lab=blb15}
C {lab_pin.sym} 1600 3920 0 1 {name=l1734 sig_type=std_logic lab=blb15}
N 1400 3940 1360 3940 {lab=wl13}
C {lab_pin.sym} 1360 3940 0 0 {name=l1735 sig_type=std_logic lab=wl13}
N 1560 3940 1600 3940 {lab=vdd}
C {lab_pin.sym} 1600 3940 0 1 {name=l1736 sig_type=std_logic lab=vdd}
N 1400 3960 1360 3960 {lab=vss}
C {lab_pin.sym} 1360 3960 0 0 {name=l1737 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 3960 0 0 {name=Xc_14_0}
N 1720 3920 1680 3920 {lab=bl0}
C {lab_pin.sym} 1680 3920 0 0 {name=l1738 sig_type=std_logic lab=bl0}
N 1880 3920 1920 3920 {lab=blb0}
C {lab_pin.sym} 1920 3920 0 1 {name=l1739 sig_type=std_logic lab=blb0}
N 1720 3940 1680 3940 {lab=wl14}
C {lab_pin.sym} 1680 3940 0 0 {name=l1740 sig_type=std_logic lab=wl14}
N 1880 3940 1920 3940 {lab=vdd}
C {lab_pin.sym} 1920 3940 0 1 {name=l1741 sig_type=std_logic lab=vdd}
N 1720 3960 1680 3960 {lab=vss}
C {lab_pin.sym} 1680 3960 0 0 {name=l1742 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 3960 0 0 {name=Xc_14_1}
N 2040 3920 2000 3920 {lab=bl1}
C {lab_pin.sym} 2000 3920 0 0 {name=l1743 sig_type=std_logic lab=bl1}
N 2200 3920 2240 3920 {lab=blb1}
C {lab_pin.sym} 2240 3920 0 1 {name=l1744 sig_type=std_logic lab=blb1}
N 2040 3940 2000 3940 {lab=wl14}
C {lab_pin.sym} 2000 3940 0 0 {name=l1745 sig_type=std_logic lab=wl14}
N 2200 3940 2240 3940 {lab=vdd}
C {lab_pin.sym} 2240 3940 0 1 {name=l1746 sig_type=std_logic lab=vdd}
N 2040 3960 2000 3960 {lab=vss}
C {lab_pin.sym} 2000 3960 0 0 {name=l1747 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 3960 0 0 {name=Xc_14_2}
N 2360 3920 2320 3920 {lab=bl2}
C {lab_pin.sym} 2320 3920 0 0 {name=l1748 sig_type=std_logic lab=bl2}
N 2520 3920 2560 3920 {lab=blb2}
C {lab_pin.sym} 2560 3920 0 1 {name=l1749 sig_type=std_logic lab=blb2}
N 2360 3940 2320 3940 {lab=wl14}
C {lab_pin.sym} 2320 3940 0 0 {name=l1750 sig_type=std_logic lab=wl14}
N 2520 3940 2560 3940 {lab=vdd}
C {lab_pin.sym} 2560 3940 0 1 {name=l1751 sig_type=std_logic lab=vdd}
N 2360 3960 2320 3960 {lab=vss}
C {lab_pin.sym} 2320 3960 0 0 {name=l1752 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 3960 0 0 {name=Xc_14_3}
N 2680 3920 2640 3920 {lab=bl3}
C {lab_pin.sym} 2640 3920 0 0 {name=l1753 sig_type=std_logic lab=bl3}
N 2840 3920 2880 3920 {lab=blb3}
C {lab_pin.sym} 2880 3920 0 1 {name=l1754 sig_type=std_logic lab=blb3}
N 2680 3940 2640 3940 {lab=wl14}
C {lab_pin.sym} 2640 3940 0 0 {name=l1755 sig_type=std_logic lab=wl14}
N 2840 3940 2880 3940 {lab=vdd}
C {lab_pin.sym} 2880 3940 0 1 {name=l1756 sig_type=std_logic lab=vdd}
N 2680 3960 2640 3960 {lab=vss}
C {lab_pin.sym} 2640 3960 0 0 {name=l1757 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 3960 0 0 {name=Xc_14_4}
N 3000 3920 2960 3920 {lab=bl4}
C {lab_pin.sym} 2960 3920 0 0 {name=l1758 sig_type=std_logic lab=bl4}
N 3160 3920 3200 3920 {lab=blb4}
C {lab_pin.sym} 3200 3920 0 1 {name=l1759 sig_type=std_logic lab=blb4}
N 3000 3940 2960 3940 {lab=wl14}
C {lab_pin.sym} 2960 3940 0 0 {name=l1760 sig_type=std_logic lab=wl14}
N 3160 3940 3200 3940 {lab=vdd}
C {lab_pin.sym} 3200 3940 0 1 {name=l1761 sig_type=std_logic lab=vdd}
N 3000 3960 2960 3960 {lab=vss}
C {lab_pin.sym} 2960 3960 0 0 {name=l1762 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 3960 0 0 {name=Xc_14_5}
N 3320 3920 3280 3920 {lab=bl5}
C {lab_pin.sym} 3280 3920 0 0 {name=l1763 sig_type=std_logic lab=bl5}
N 3480 3920 3520 3920 {lab=blb5}
C {lab_pin.sym} 3520 3920 0 1 {name=l1764 sig_type=std_logic lab=blb5}
N 3320 3940 3280 3940 {lab=wl14}
C {lab_pin.sym} 3280 3940 0 0 {name=l1765 sig_type=std_logic lab=wl14}
N 3480 3940 3520 3940 {lab=vdd}
C {lab_pin.sym} 3520 3940 0 1 {name=l1766 sig_type=std_logic lab=vdd}
N 3320 3960 3280 3960 {lab=vss}
C {lab_pin.sym} 3280 3960 0 0 {name=l1767 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 3960 0 0 {name=Xc_14_6}
N 3640 3920 3600 3920 {lab=bl6}
C {lab_pin.sym} 3600 3920 0 0 {name=l1768 sig_type=std_logic lab=bl6}
N 3800 3920 3840 3920 {lab=blb6}
C {lab_pin.sym} 3840 3920 0 1 {name=l1769 sig_type=std_logic lab=blb6}
N 3640 3940 3600 3940 {lab=wl14}
C {lab_pin.sym} 3600 3940 0 0 {name=l1770 sig_type=std_logic lab=wl14}
N 3800 3940 3840 3940 {lab=vdd}
C {lab_pin.sym} 3840 3940 0 1 {name=l1771 sig_type=std_logic lab=vdd}
N 3640 3960 3600 3960 {lab=vss}
C {lab_pin.sym} 3600 3960 0 0 {name=l1772 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 3960 0 0 {name=Xc_14_7}
N 3960 3920 3920 3920 {lab=bl7}
C {lab_pin.sym} 3920 3920 0 0 {name=l1773 sig_type=std_logic lab=bl7}
N 4120 3920 4160 3920 {lab=blb7}
C {lab_pin.sym} 4160 3920 0 1 {name=l1774 sig_type=std_logic lab=blb7}
N 3960 3940 3920 3940 {lab=wl14}
C {lab_pin.sym} 3920 3940 0 0 {name=l1775 sig_type=std_logic lab=wl14}
N 4120 3940 4160 3940 {lab=vdd}
C {lab_pin.sym} 4160 3940 0 1 {name=l1776 sig_type=std_logic lab=vdd}
N 3960 3960 3920 3960 {lab=vss}
C {lab_pin.sym} 3920 3960 0 0 {name=l1777 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 3960 0 0 {name=Xc_14_8}
N 4280 3920 4240 3920 {lab=bl8}
C {lab_pin.sym} 4240 3920 0 0 {name=l1778 sig_type=std_logic lab=bl8}
N 4440 3920 4480 3920 {lab=blb8}
C {lab_pin.sym} 4480 3920 0 1 {name=l1779 sig_type=std_logic lab=blb8}
N 4280 3940 4240 3940 {lab=wl14}
C {lab_pin.sym} 4240 3940 0 0 {name=l1780 sig_type=std_logic lab=wl14}
N 4440 3940 4480 3940 {lab=vdd}
C {lab_pin.sym} 4480 3940 0 1 {name=l1781 sig_type=std_logic lab=vdd}
N 4280 3960 4240 3960 {lab=vss}
C {lab_pin.sym} 4240 3960 0 0 {name=l1782 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 3960 0 0 {name=Xc_14_9}
N 4600 3920 4560 3920 {lab=bl9}
C {lab_pin.sym} 4560 3920 0 0 {name=l1783 sig_type=std_logic lab=bl9}
N 4760 3920 4800 3920 {lab=blb9}
C {lab_pin.sym} 4800 3920 0 1 {name=l1784 sig_type=std_logic lab=blb9}
N 4600 3940 4560 3940 {lab=wl14}
C {lab_pin.sym} 4560 3940 0 0 {name=l1785 sig_type=std_logic lab=wl14}
N 4760 3940 4800 3940 {lab=vdd}
C {lab_pin.sym} 4800 3940 0 1 {name=l1786 sig_type=std_logic lab=vdd}
N 4600 3960 4560 3960 {lab=vss}
C {lab_pin.sym} 4560 3960 0 0 {name=l1787 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 3960 0 0 {name=Xc_14_10}
N 4920 3920 4880 3920 {lab=bl10}
C {lab_pin.sym} 4880 3920 0 0 {name=l1788 sig_type=std_logic lab=bl10}
N 5080 3920 5120 3920 {lab=blb10}
C {lab_pin.sym} 5120 3920 0 1 {name=l1789 sig_type=std_logic lab=blb10}
N 4920 3940 4880 3940 {lab=wl14}
C {lab_pin.sym} 4880 3940 0 0 {name=l1790 sig_type=std_logic lab=wl14}
N 5080 3940 5120 3940 {lab=vdd}
C {lab_pin.sym} 5120 3940 0 1 {name=l1791 sig_type=std_logic lab=vdd}
N 4920 3960 4880 3960 {lab=vss}
C {lab_pin.sym} 4880 3960 0 0 {name=l1792 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 4140 0 0 {name=Xc_14_11}
N 120 4100 80 4100 {lab=bl11}
C {lab_pin.sym} 80 4100 0 0 {name=l1793 sig_type=std_logic lab=bl11}
N 280 4100 320 4100 {lab=blb11}
C {lab_pin.sym} 320 4100 0 1 {name=l1794 sig_type=std_logic lab=blb11}
N 120 4120 80 4120 {lab=wl14}
C {lab_pin.sym} 80 4120 0 0 {name=l1795 sig_type=std_logic lab=wl14}
N 280 4120 320 4120 {lab=vdd}
C {lab_pin.sym} 320 4120 0 1 {name=l1796 sig_type=std_logic lab=vdd}
N 120 4140 80 4140 {lab=vss}
C {lab_pin.sym} 80 4140 0 0 {name=l1797 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 4140 0 0 {name=Xc_14_12}
N 440 4100 400 4100 {lab=bl12}
C {lab_pin.sym} 400 4100 0 0 {name=l1798 sig_type=std_logic lab=bl12}
N 600 4100 640 4100 {lab=blb12}
C {lab_pin.sym} 640 4100 0 1 {name=l1799 sig_type=std_logic lab=blb12}
N 440 4120 400 4120 {lab=wl14}
C {lab_pin.sym} 400 4120 0 0 {name=l1800 sig_type=std_logic lab=wl14}
N 600 4120 640 4120 {lab=vdd}
C {lab_pin.sym} 640 4120 0 1 {name=l1801 sig_type=std_logic lab=vdd}
N 440 4140 400 4140 {lab=vss}
C {lab_pin.sym} 400 4140 0 0 {name=l1802 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 4140 0 0 {name=Xc_14_13}
N 760 4100 720 4100 {lab=bl13}
C {lab_pin.sym} 720 4100 0 0 {name=l1803 sig_type=std_logic lab=bl13}
N 920 4100 960 4100 {lab=blb13}
C {lab_pin.sym} 960 4100 0 1 {name=l1804 sig_type=std_logic lab=blb13}
N 760 4120 720 4120 {lab=wl14}
C {lab_pin.sym} 720 4120 0 0 {name=l1805 sig_type=std_logic lab=wl14}
N 920 4120 960 4120 {lab=vdd}
C {lab_pin.sym} 960 4120 0 1 {name=l1806 sig_type=std_logic lab=vdd}
N 760 4140 720 4140 {lab=vss}
C {lab_pin.sym} 720 4140 0 0 {name=l1807 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 4140 0 0 {name=Xc_14_14}
N 1080 4100 1040 4100 {lab=bl14}
C {lab_pin.sym} 1040 4100 0 0 {name=l1808 sig_type=std_logic lab=bl14}
N 1240 4100 1280 4100 {lab=blb14}
C {lab_pin.sym} 1280 4100 0 1 {name=l1809 sig_type=std_logic lab=blb14}
N 1080 4120 1040 4120 {lab=wl14}
C {lab_pin.sym} 1040 4120 0 0 {name=l1810 sig_type=std_logic lab=wl14}
N 1240 4120 1280 4120 {lab=vdd}
C {lab_pin.sym} 1280 4120 0 1 {name=l1811 sig_type=std_logic lab=vdd}
N 1080 4140 1040 4140 {lab=vss}
C {lab_pin.sym} 1040 4140 0 0 {name=l1812 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 4140 0 0 {name=Xc_14_15}
N 1400 4100 1360 4100 {lab=bl15}
C {lab_pin.sym} 1360 4100 0 0 {name=l1813 sig_type=std_logic lab=bl15}
N 1560 4100 1600 4100 {lab=blb15}
C {lab_pin.sym} 1600 4100 0 1 {name=l1814 sig_type=std_logic lab=blb15}
N 1400 4120 1360 4120 {lab=wl14}
C {lab_pin.sym} 1360 4120 0 0 {name=l1815 sig_type=std_logic lab=wl14}
N 1560 4120 1600 4120 {lab=vdd}
C {lab_pin.sym} 1600 4120 0 1 {name=l1816 sig_type=std_logic lab=vdd}
N 1400 4140 1360 4140 {lab=vss}
C {lab_pin.sym} 1360 4140 0 0 {name=l1817 sig_type=std_logic lab=vss}
C {bitcell.sym} 1800 4140 0 0 {name=Xc_15_0}
N 1720 4100 1680 4100 {lab=bl0}
C {lab_pin.sym} 1680 4100 0 0 {name=l1818 sig_type=std_logic lab=bl0}
N 1880 4100 1920 4100 {lab=blb0}
C {lab_pin.sym} 1920 4100 0 1 {name=l1819 sig_type=std_logic lab=blb0}
N 1720 4120 1680 4120 {lab=wl15}
C {lab_pin.sym} 1680 4120 0 0 {name=l1820 sig_type=std_logic lab=wl15}
N 1880 4120 1920 4120 {lab=vdd}
C {lab_pin.sym} 1920 4120 0 1 {name=l1821 sig_type=std_logic lab=vdd}
N 1720 4140 1680 4140 {lab=vss}
C {lab_pin.sym} 1680 4140 0 0 {name=l1822 sig_type=std_logic lab=vss}
C {bitcell.sym} 2120 4140 0 0 {name=Xc_15_1}
N 2040 4100 2000 4100 {lab=bl1}
C {lab_pin.sym} 2000 4100 0 0 {name=l1823 sig_type=std_logic lab=bl1}
N 2200 4100 2240 4100 {lab=blb1}
C {lab_pin.sym} 2240 4100 0 1 {name=l1824 sig_type=std_logic lab=blb1}
N 2040 4120 2000 4120 {lab=wl15}
C {lab_pin.sym} 2000 4120 0 0 {name=l1825 sig_type=std_logic lab=wl15}
N 2200 4120 2240 4120 {lab=vdd}
C {lab_pin.sym} 2240 4120 0 1 {name=l1826 sig_type=std_logic lab=vdd}
N 2040 4140 2000 4140 {lab=vss}
C {lab_pin.sym} 2000 4140 0 0 {name=l1827 sig_type=std_logic lab=vss}
C {bitcell.sym} 2440 4140 0 0 {name=Xc_15_2}
N 2360 4100 2320 4100 {lab=bl2}
C {lab_pin.sym} 2320 4100 0 0 {name=l1828 sig_type=std_logic lab=bl2}
N 2520 4100 2560 4100 {lab=blb2}
C {lab_pin.sym} 2560 4100 0 1 {name=l1829 sig_type=std_logic lab=blb2}
N 2360 4120 2320 4120 {lab=wl15}
C {lab_pin.sym} 2320 4120 0 0 {name=l1830 sig_type=std_logic lab=wl15}
N 2520 4120 2560 4120 {lab=vdd}
C {lab_pin.sym} 2560 4120 0 1 {name=l1831 sig_type=std_logic lab=vdd}
N 2360 4140 2320 4140 {lab=vss}
C {lab_pin.sym} 2320 4140 0 0 {name=l1832 sig_type=std_logic lab=vss}
C {bitcell.sym} 2760 4140 0 0 {name=Xc_15_3}
N 2680 4100 2640 4100 {lab=bl3}
C {lab_pin.sym} 2640 4100 0 0 {name=l1833 sig_type=std_logic lab=bl3}
N 2840 4100 2880 4100 {lab=blb3}
C {lab_pin.sym} 2880 4100 0 1 {name=l1834 sig_type=std_logic lab=blb3}
N 2680 4120 2640 4120 {lab=wl15}
C {lab_pin.sym} 2640 4120 0 0 {name=l1835 sig_type=std_logic lab=wl15}
N 2840 4120 2880 4120 {lab=vdd}
C {lab_pin.sym} 2880 4120 0 1 {name=l1836 sig_type=std_logic lab=vdd}
N 2680 4140 2640 4140 {lab=vss}
C {lab_pin.sym} 2640 4140 0 0 {name=l1837 sig_type=std_logic lab=vss}
C {bitcell.sym} 3080 4140 0 0 {name=Xc_15_4}
N 3000 4100 2960 4100 {lab=bl4}
C {lab_pin.sym} 2960 4100 0 0 {name=l1838 sig_type=std_logic lab=bl4}
N 3160 4100 3200 4100 {lab=blb4}
C {lab_pin.sym} 3200 4100 0 1 {name=l1839 sig_type=std_logic lab=blb4}
N 3000 4120 2960 4120 {lab=wl15}
C {lab_pin.sym} 2960 4120 0 0 {name=l1840 sig_type=std_logic lab=wl15}
N 3160 4120 3200 4120 {lab=vdd}
C {lab_pin.sym} 3200 4120 0 1 {name=l1841 sig_type=std_logic lab=vdd}
N 3000 4140 2960 4140 {lab=vss}
C {lab_pin.sym} 2960 4140 0 0 {name=l1842 sig_type=std_logic lab=vss}
C {bitcell.sym} 3400 4140 0 0 {name=Xc_15_5}
N 3320 4100 3280 4100 {lab=bl5}
C {lab_pin.sym} 3280 4100 0 0 {name=l1843 sig_type=std_logic lab=bl5}
N 3480 4100 3520 4100 {lab=blb5}
C {lab_pin.sym} 3520 4100 0 1 {name=l1844 sig_type=std_logic lab=blb5}
N 3320 4120 3280 4120 {lab=wl15}
C {lab_pin.sym} 3280 4120 0 0 {name=l1845 sig_type=std_logic lab=wl15}
N 3480 4120 3520 4120 {lab=vdd}
C {lab_pin.sym} 3520 4120 0 1 {name=l1846 sig_type=std_logic lab=vdd}
N 3320 4140 3280 4140 {lab=vss}
C {lab_pin.sym} 3280 4140 0 0 {name=l1847 sig_type=std_logic lab=vss}
C {bitcell.sym} 3720 4140 0 0 {name=Xc_15_6}
N 3640 4100 3600 4100 {lab=bl6}
C {lab_pin.sym} 3600 4100 0 0 {name=l1848 sig_type=std_logic lab=bl6}
N 3800 4100 3840 4100 {lab=blb6}
C {lab_pin.sym} 3840 4100 0 1 {name=l1849 sig_type=std_logic lab=blb6}
N 3640 4120 3600 4120 {lab=wl15}
C {lab_pin.sym} 3600 4120 0 0 {name=l1850 sig_type=std_logic lab=wl15}
N 3800 4120 3840 4120 {lab=vdd}
C {lab_pin.sym} 3840 4120 0 1 {name=l1851 sig_type=std_logic lab=vdd}
N 3640 4140 3600 4140 {lab=vss}
C {lab_pin.sym} 3600 4140 0 0 {name=l1852 sig_type=std_logic lab=vss}
C {bitcell.sym} 4040 4140 0 0 {name=Xc_15_7}
N 3960 4100 3920 4100 {lab=bl7}
C {lab_pin.sym} 3920 4100 0 0 {name=l1853 sig_type=std_logic lab=bl7}
N 4120 4100 4160 4100 {lab=blb7}
C {lab_pin.sym} 4160 4100 0 1 {name=l1854 sig_type=std_logic lab=blb7}
N 3960 4120 3920 4120 {lab=wl15}
C {lab_pin.sym} 3920 4120 0 0 {name=l1855 sig_type=std_logic lab=wl15}
N 4120 4120 4160 4120 {lab=vdd}
C {lab_pin.sym} 4160 4120 0 1 {name=l1856 sig_type=std_logic lab=vdd}
N 3960 4140 3920 4140 {lab=vss}
C {lab_pin.sym} 3920 4140 0 0 {name=l1857 sig_type=std_logic lab=vss}
C {bitcell.sym} 4360 4140 0 0 {name=Xc_15_8}
N 4280 4100 4240 4100 {lab=bl8}
C {lab_pin.sym} 4240 4100 0 0 {name=l1858 sig_type=std_logic lab=bl8}
N 4440 4100 4480 4100 {lab=blb8}
C {lab_pin.sym} 4480 4100 0 1 {name=l1859 sig_type=std_logic lab=blb8}
N 4280 4120 4240 4120 {lab=wl15}
C {lab_pin.sym} 4240 4120 0 0 {name=l1860 sig_type=std_logic lab=wl15}
N 4440 4120 4480 4120 {lab=vdd}
C {lab_pin.sym} 4480 4120 0 1 {name=l1861 sig_type=std_logic lab=vdd}
N 4280 4140 4240 4140 {lab=vss}
C {lab_pin.sym} 4240 4140 0 0 {name=l1862 sig_type=std_logic lab=vss}
C {bitcell.sym} 4680 4140 0 0 {name=Xc_15_9}
N 4600 4100 4560 4100 {lab=bl9}
C {lab_pin.sym} 4560 4100 0 0 {name=l1863 sig_type=std_logic lab=bl9}
N 4760 4100 4800 4100 {lab=blb9}
C {lab_pin.sym} 4800 4100 0 1 {name=l1864 sig_type=std_logic lab=blb9}
N 4600 4120 4560 4120 {lab=wl15}
C {lab_pin.sym} 4560 4120 0 0 {name=l1865 sig_type=std_logic lab=wl15}
N 4760 4120 4800 4120 {lab=vdd}
C {lab_pin.sym} 4800 4120 0 1 {name=l1866 sig_type=std_logic lab=vdd}
N 4600 4140 4560 4140 {lab=vss}
C {lab_pin.sym} 4560 4140 0 0 {name=l1867 sig_type=std_logic lab=vss}
C {bitcell.sym} 5000 4140 0 0 {name=Xc_15_10}
N 4920 4100 4880 4100 {lab=bl10}
C {lab_pin.sym} 4880 4100 0 0 {name=l1868 sig_type=std_logic lab=bl10}
N 5080 4100 5120 4100 {lab=blb10}
C {lab_pin.sym} 5120 4100 0 1 {name=l1869 sig_type=std_logic lab=blb10}
N 4920 4120 4880 4120 {lab=wl15}
C {lab_pin.sym} 4880 4120 0 0 {name=l1870 sig_type=std_logic lab=wl15}
N 5080 4120 5120 4120 {lab=vdd}
C {lab_pin.sym} 5120 4120 0 1 {name=l1871 sig_type=std_logic lab=vdd}
N 4920 4140 4880 4140 {lab=vss}
C {lab_pin.sym} 4880 4140 0 0 {name=l1872 sig_type=std_logic lab=vss}
C {bitcell.sym} 200 4320 0 0 {name=Xc_15_11}
N 120 4280 80 4280 {lab=bl11}
C {lab_pin.sym} 80 4280 0 0 {name=l1873 sig_type=std_logic lab=bl11}
N 280 4280 320 4280 {lab=blb11}
C {lab_pin.sym} 320 4280 0 1 {name=l1874 sig_type=std_logic lab=blb11}
N 120 4300 80 4300 {lab=wl15}
C {lab_pin.sym} 80 4300 0 0 {name=l1875 sig_type=std_logic lab=wl15}
N 280 4300 320 4300 {lab=vdd}
C {lab_pin.sym} 320 4300 0 1 {name=l1876 sig_type=std_logic lab=vdd}
N 120 4320 80 4320 {lab=vss}
C {lab_pin.sym} 80 4320 0 0 {name=l1877 sig_type=std_logic lab=vss}
C {bitcell.sym} 520 4320 0 0 {name=Xc_15_12}
N 440 4280 400 4280 {lab=bl12}
C {lab_pin.sym} 400 4280 0 0 {name=l1878 sig_type=std_logic lab=bl12}
N 600 4280 640 4280 {lab=blb12}
C {lab_pin.sym} 640 4280 0 1 {name=l1879 sig_type=std_logic lab=blb12}
N 440 4300 400 4300 {lab=wl15}
C {lab_pin.sym} 400 4300 0 0 {name=l1880 sig_type=std_logic lab=wl15}
N 600 4300 640 4300 {lab=vdd}
C {lab_pin.sym} 640 4300 0 1 {name=l1881 sig_type=std_logic lab=vdd}
N 440 4320 400 4320 {lab=vss}
C {lab_pin.sym} 400 4320 0 0 {name=l1882 sig_type=std_logic lab=vss}
C {bitcell.sym} 840 4320 0 0 {name=Xc_15_13}
N 760 4280 720 4280 {lab=bl13}
C {lab_pin.sym} 720 4280 0 0 {name=l1883 sig_type=std_logic lab=bl13}
N 920 4280 960 4280 {lab=blb13}
C {lab_pin.sym} 960 4280 0 1 {name=l1884 sig_type=std_logic lab=blb13}
N 760 4300 720 4300 {lab=wl15}
C {lab_pin.sym} 720 4300 0 0 {name=l1885 sig_type=std_logic lab=wl15}
N 920 4300 960 4300 {lab=vdd}
C {lab_pin.sym} 960 4300 0 1 {name=l1886 sig_type=std_logic lab=vdd}
N 760 4320 720 4320 {lab=vss}
C {lab_pin.sym} 720 4320 0 0 {name=l1887 sig_type=std_logic lab=vss}
C {bitcell.sym} 1160 4320 0 0 {name=Xc_15_14}
N 1080 4280 1040 4280 {lab=bl14}
C {lab_pin.sym} 1040 4280 0 0 {name=l1888 sig_type=std_logic lab=bl14}
N 1240 4280 1280 4280 {lab=blb14}
C {lab_pin.sym} 1280 4280 0 1 {name=l1889 sig_type=std_logic lab=blb14}
N 1080 4300 1040 4300 {lab=wl15}
C {lab_pin.sym} 1040 4300 0 0 {name=l1890 sig_type=std_logic lab=wl15}
N 1240 4300 1280 4300 {lab=vdd}
C {lab_pin.sym} 1280 4300 0 1 {name=l1891 sig_type=std_logic lab=vdd}
N 1080 4320 1040 4320 {lab=vss}
C {lab_pin.sym} 1040 4320 0 0 {name=l1892 sig_type=std_logic lab=vss}
C {bitcell.sym} 1480 4320 0 0 {name=Xc_15_15}
N 1400 4280 1360 4280 {lab=bl15}
C {lab_pin.sym} 1360 4280 0 0 {name=l1893 sig_type=std_logic lab=bl15}
N 1560 4280 1600 4280 {lab=blb15}
C {lab_pin.sym} 1600 4280 0 1 {name=l1894 sig_type=std_logic lab=blb15}
N 1400 4300 1360 4300 {lab=wl15}
C {lab_pin.sym} 1360 4300 0 0 {name=l1895 sig_type=std_logic lab=wl15}
N 1560 4300 1600 4300 {lab=vdd}
C {lab_pin.sym} 1600 4300 0 1 {name=l1896 sig_type=std_logic lab=vdd}
N 1400 4320 1360 4320 {lab=vss}
C {lab_pin.sym} 1360 4320 0 0 {name=l1897 sig_type=std_logic lab=vss}
C {precharge.sym} 1800 4320 0 0 {name=Xpre0}
N 1720 4280 1680 4280 {lab=bl0}
C {lab_pin.sym} 1680 4280 0 0 {name=l1898 sig_type=std_logic lab=bl0}
N 1880 4280 1920 4280 {lab=blb0}
C {lab_pin.sym} 1920 4280 0 1 {name=l1899 sig_type=std_logic lab=blb0}
N 1720 4300 1680 4300 {lab=pcb}
C {lab_pin.sym} 1680 4300 0 0 {name=l1900 sig_type=std_logic lab=pcb}
N 1880 4300 1920 4300 {lab=vdd}
C {lab_pin.sym} 1920 4300 0 1 {name=l1901 sig_type=std_logic lab=vdd}
C {colmux.sym} 2120 4320 0 0 {name=Xmux0}
N 2040 4280 2000 4280 {lab=bl0}
C {lab_pin.sym} 2000 4280 0 0 {name=l1902 sig_type=std_logic lab=bl0}
N 2200 4280 2240 4280 {lab=blb0}
C {lab_pin.sym} 2240 4280 0 1 {name=l1903 sig_type=std_logic lab=blb0}
N 2040 4300 2000 4300 {lab=dl}
C {lab_pin.sym} 2000 4300 0 0 {name=l1904 sig_type=std_logic lab=dl}
N 2200 4300 2240 4300 {lab=dlb}
C {lab_pin.sym} 2240 4300 0 1 {name=l1905 sig_type=std_logic lab=dlb}
N 2040 4320 2000 4320 {lab=csel0}
C {lab_pin.sym} 2000 4320 0 0 {name=l1906 sig_type=std_logic lab=csel0}
N 2200 4320 2240 4320 {lab=vss}
C {lab_pin.sym} 2240 4320 0 1 {name=l1907 sig_type=std_logic lab=vss}
C {precharge.sym} 2440 4320 0 0 {name=Xpre1}
N 2360 4280 2320 4280 {lab=bl1}
C {lab_pin.sym} 2320 4280 0 0 {name=l1908 sig_type=std_logic lab=bl1}
N 2520 4280 2560 4280 {lab=blb1}
C {lab_pin.sym} 2560 4280 0 1 {name=l1909 sig_type=std_logic lab=blb1}
N 2360 4300 2320 4300 {lab=pcb}
C {lab_pin.sym} 2320 4300 0 0 {name=l1910 sig_type=std_logic lab=pcb}
N 2520 4300 2560 4300 {lab=vdd}
C {lab_pin.sym} 2560 4300 0 1 {name=l1911 sig_type=std_logic lab=vdd}
C {colmux.sym} 2760 4320 0 0 {name=Xmux1}
N 2680 4280 2640 4280 {lab=bl1}
C {lab_pin.sym} 2640 4280 0 0 {name=l1912 sig_type=std_logic lab=bl1}
N 2840 4280 2880 4280 {lab=blb1}
C {lab_pin.sym} 2880 4280 0 1 {name=l1913 sig_type=std_logic lab=blb1}
N 2680 4300 2640 4300 {lab=dl}
C {lab_pin.sym} 2640 4300 0 0 {name=l1914 sig_type=std_logic lab=dl}
N 2840 4300 2880 4300 {lab=dlb}
C {lab_pin.sym} 2880 4300 0 1 {name=l1915 sig_type=std_logic lab=dlb}
N 2680 4320 2640 4320 {lab=csel1}
C {lab_pin.sym} 2640 4320 0 0 {name=l1916 sig_type=std_logic lab=csel1}
N 2840 4320 2880 4320 {lab=vss}
C {lab_pin.sym} 2880 4320 0 1 {name=l1917 sig_type=std_logic lab=vss}
C {precharge.sym} 3080 4320 0 0 {name=Xpre2}
N 3000 4280 2960 4280 {lab=bl2}
C {lab_pin.sym} 2960 4280 0 0 {name=l1918 sig_type=std_logic lab=bl2}
N 3160 4280 3200 4280 {lab=blb2}
C {lab_pin.sym} 3200 4280 0 1 {name=l1919 sig_type=std_logic lab=blb2}
N 3000 4300 2960 4300 {lab=pcb}
C {lab_pin.sym} 2960 4300 0 0 {name=l1920 sig_type=std_logic lab=pcb}
N 3160 4300 3200 4300 {lab=vdd}
C {lab_pin.sym} 3200 4300 0 1 {name=l1921 sig_type=std_logic lab=vdd}
C {colmux.sym} 3400 4320 0 0 {name=Xmux2}
N 3320 4280 3280 4280 {lab=bl2}
C {lab_pin.sym} 3280 4280 0 0 {name=l1922 sig_type=std_logic lab=bl2}
N 3480 4280 3520 4280 {lab=blb2}
C {lab_pin.sym} 3520 4280 0 1 {name=l1923 sig_type=std_logic lab=blb2}
N 3320 4300 3280 4300 {lab=dl}
C {lab_pin.sym} 3280 4300 0 0 {name=l1924 sig_type=std_logic lab=dl}
N 3480 4300 3520 4300 {lab=dlb}
C {lab_pin.sym} 3520 4300 0 1 {name=l1925 sig_type=std_logic lab=dlb}
N 3320 4320 3280 4320 {lab=csel2}
C {lab_pin.sym} 3280 4320 0 0 {name=l1926 sig_type=std_logic lab=csel2}
N 3480 4320 3520 4320 {lab=vss}
C {lab_pin.sym} 3520 4320 0 1 {name=l1927 sig_type=std_logic lab=vss}
C {precharge.sym} 3720 4320 0 0 {name=Xpre3}
N 3640 4280 3600 4280 {lab=bl3}
C {lab_pin.sym} 3600 4280 0 0 {name=l1928 sig_type=std_logic lab=bl3}
N 3800 4280 3840 4280 {lab=blb3}
C {lab_pin.sym} 3840 4280 0 1 {name=l1929 sig_type=std_logic lab=blb3}
N 3640 4300 3600 4300 {lab=pcb}
C {lab_pin.sym} 3600 4300 0 0 {name=l1930 sig_type=std_logic lab=pcb}
N 3800 4300 3840 4300 {lab=vdd}
C {lab_pin.sym} 3840 4300 0 1 {name=l1931 sig_type=std_logic lab=vdd}
C {colmux.sym} 4040 4320 0 0 {name=Xmux3}
N 3960 4280 3920 4280 {lab=bl3}
C {lab_pin.sym} 3920 4280 0 0 {name=l1932 sig_type=std_logic lab=bl3}
N 4120 4280 4160 4280 {lab=blb3}
C {lab_pin.sym} 4160 4280 0 1 {name=l1933 sig_type=std_logic lab=blb3}
N 3960 4300 3920 4300 {lab=dl}
C {lab_pin.sym} 3920 4300 0 0 {name=l1934 sig_type=std_logic lab=dl}
N 4120 4300 4160 4300 {lab=dlb}
C {lab_pin.sym} 4160 4300 0 1 {name=l1935 sig_type=std_logic lab=dlb}
N 3960 4320 3920 4320 {lab=csel3}
C {lab_pin.sym} 3920 4320 0 0 {name=l1936 sig_type=std_logic lab=csel3}
N 4120 4320 4160 4320 {lab=vss}
C {lab_pin.sym} 4160 4320 0 1 {name=l1937 sig_type=std_logic lab=vss}
C {precharge.sym} 4360 4320 0 0 {name=Xpre4}
N 4280 4280 4240 4280 {lab=bl4}
C {lab_pin.sym} 4240 4280 0 0 {name=l1938 sig_type=std_logic lab=bl4}
N 4440 4280 4480 4280 {lab=blb4}
C {lab_pin.sym} 4480 4280 0 1 {name=l1939 sig_type=std_logic lab=blb4}
N 4280 4300 4240 4300 {lab=pcb}
C {lab_pin.sym} 4240 4300 0 0 {name=l1940 sig_type=std_logic lab=pcb}
N 4440 4300 4480 4300 {lab=vdd}
C {lab_pin.sym} 4480 4300 0 1 {name=l1941 sig_type=std_logic lab=vdd}
C {colmux.sym} 4680 4320 0 0 {name=Xmux4}
N 4600 4280 4560 4280 {lab=bl4}
C {lab_pin.sym} 4560 4280 0 0 {name=l1942 sig_type=std_logic lab=bl4}
N 4760 4280 4800 4280 {lab=blb4}
C {lab_pin.sym} 4800 4280 0 1 {name=l1943 sig_type=std_logic lab=blb4}
N 4600 4300 4560 4300 {lab=dl}
C {lab_pin.sym} 4560 4300 0 0 {name=l1944 sig_type=std_logic lab=dl}
N 4760 4300 4800 4300 {lab=dlb}
C {lab_pin.sym} 4800 4300 0 1 {name=l1945 sig_type=std_logic lab=dlb}
N 4600 4320 4560 4320 {lab=csel4}
C {lab_pin.sym} 4560 4320 0 0 {name=l1946 sig_type=std_logic lab=csel4}
N 4760 4320 4800 4320 {lab=vss}
C {lab_pin.sym} 4800 4320 0 1 {name=l1947 sig_type=std_logic lab=vss}
C {precharge.sym} 5000 4320 0 0 {name=Xpre5}
N 4920 4280 4880 4280 {lab=bl5}
C {lab_pin.sym} 4880 4280 0 0 {name=l1948 sig_type=std_logic lab=bl5}
N 5080 4280 5120 4280 {lab=blb5}
C {lab_pin.sym} 5120 4280 0 1 {name=l1949 sig_type=std_logic lab=blb5}
N 4920 4300 4880 4300 {lab=pcb}
C {lab_pin.sym} 4880 4300 0 0 {name=l1950 sig_type=std_logic lab=pcb}
N 5080 4300 5120 4300 {lab=vdd}
C {lab_pin.sym} 5120 4300 0 1 {name=l1951 sig_type=std_logic lab=vdd}
C {colmux.sym} 200 4500 0 0 {name=Xmux5}
N 120 4460 80 4460 {lab=bl5}
C {lab_pin.sym} 80 4460 0 0 {name=l1952 sig_type=std_logic lab=bl5}
N 280 4460 320 4460 {lab=blb5}
C {lab_pin.sym} 320 4460 0 1 {name=l1953 sig_type=std_logic lab=blb5}
N 120 4480 80 4480 {lab=dl}
C {lab_pin.sym} 80 4480 0 0 {name=l1954 sig_type=std_logic lab=dl}
N 280 4480 320 4480 {lab=dlb}
C {lab_pin.sym} 320 4480 0 1 {name=l1955 sig_type=std_logic lab=dlb}
N 120 4500 80 4500 {lab=csel5}
C {lab_pin.sym} 80 4500 0 0 {name=l1956 sig_type=std_logic lab=csel5}
N 280 4500 320 4500 {lab=vss}
C {lab_pin.sym} 320 4500 0 1 {name=l1957 sig_type=std_logic lab=vss}
C {precharge.sym} 520 4500 0 0 {name=Xpre6}
N 440 4460 400 4460 {lab=bl6}
C {lab_pin.sym} 400 4460 0 0 {name=l1958 sig_type=std_logic lab=bl6}
N 600 4460 640 4460 {lab=blb6}
C {lab_pin.sym} 640 4460 0 1 {name=l1959 sig_type=std_logic lab=blb6}
N 440 4480 400 4480 {lab=pcb}
C {lab_pin.sym} 400 4480 0 0 {name=l1960 sig_type=std_logic lab=pcb}
N 600 4480 640 4480 {lab=vdd}
C {lab_pin.sym} 640 4480 0 1 {name=l1961 sig_type=std_logic lab=vdd}
C {colmux.sym} 840 4500 0 0 {name=Xmux6}
N 760 4460 720 4460 {lab=bl6}
C {lab_pin.sym} 720 4460 0 0 {name=l1962 sig_type=std_logic lab=bl6}
N 920 4460 960 4460 {lab=blb6}
C {lab_pin.sym} 960 4460 0 1 {name=l1963 sig_type=std_logic lab=blb6}
N 760 4480 720 4480 {lab=dl}
C {lab_pin.sym} 720 4480 0 0 {name=l1964 sig_type=std_logic lab=dl}
N 920 4480 960 4480 {lab=dlb}
C {lab_pin.sym} 960 4480 0 1 {name=l1965 sig_type=std_logic lab=dlb}
N 760 4500 720 4500 {lab=csel6}
C {lab_pin.sym} 720 4500 0 0 {name=l1966 sig_type=std_logic lab=csel6}
N 920 4500 960 4500 {lab=vss}
C {lab_pin.sym} 960 4500 0 1 {name=l1967 sig_type=std_logic lab=vss}
C {precharge.sym} 1160 4500 0 0 {name=Xpre7}
N 1080 4460 1040 4460 {lab=bl7}
C {lab_pin.sym} 1040 4460 0 0 {name=l1968 sig_type=std_logic lab=bl7}
N 1240 4460 1280 4460 {lab=blb7}
C {lab_pin.sym} 1280 4460 0 1 {name=l1969 sig_type=std_logic lab=blb7}
N 1080 4480 1040 4480 {lab=pcb}
C {lab_pin.sym} 1040 4480 0 0 {name=l1970 sig_type=std_logic lab=pcb}
N 1240 4480 1280 4480 {lab=vdd}
C {lab_pin.sym} 1280 4480 0 1 {name=l1971 sig_type=std_logic lab=vdd}
C {colmux.sym} 1480 4500 0 0 {name=Xmux7}
N 1400 4460 1360 4460 {lab=bl7}
C {lab_pin.sym} 1360 4460 0 0 {name=l1972 sig_type=std_logic lab=bl7}
N 1560 4460 1600 4460 {lab=blb7}
C {lab_pin.sym} 1600 4460 0 1 {name=l1973 sig_type=std_logic lab=blb7}
N 1400 4480 1360 4480 {lab=dl}
C {lab_pin.sym} 1360 4480 0 0 {name=l1974 sig_type=std_logic lab=dl}
N 1560 4480 1600 4480 {lab=dlb}
C {lab_pin.sym} 1600 4480 0 1 {name=l1975 sig_type=std_logic lab=dlb}
N 1400 4500 1360 4500 {lab=csel7}
C {lab_pin.sym} 1360 4500 0 0 {name=l1976 sig_type=std_logic lab=csel7}
N 1560 4500 1600 4500 {lab=vss}
C {lab_pin.sym} 1600 4500 0 1 {name=l1977 sig_type=std_logic lab=vss}
C {precharge.sym} 1800 4500 0 0 {name=Xpre8}
N 1720 4460 1680 4460 {lab=bl8}
C {lab_pin.sym} 1680 4460 0 0 {name=l1978 sig_type=std_logic lab=bl8}
N 1880 4460 1920 4460 {lab=blb8}
C {lab_pin.sym} 1920 4460 0 1 {name=l1979 sig_type=std_logic lab=blb8}
N 1720 4480 1680 4480 {lab=pcb}
C {lab_pin.sym} 1680 4480 0 0 {name=l1980 sig_type=std_logic lab=pcb}
N 1880 4480 1920 4480 {lab=vdd}
C {lab_pin.sym} 1920 4480 0 1 {name=l1981 sig_type=std_logic lab=vdd}
C {colmux.sym} 2120 4500 0 0 {name=Xmux8}
N 2040 4460 2000 4460 {lab=bl8}
C {lab_pin.sym} 2000 4460 0 0 {name=l1982 sig_type=std_logic lab=bl8}
N 2200 4460 2240 4460 {lab=blb8}
C {lab_pin.sym} 2240 4460 0 1 {name=l1983 sig_type=std_logic lab=blb8}
N 2040 4480 2000 4480 {lab=dl}
C {lab_pin.sym} 2000 4480 0 0 {name=l1984 sig_type=std_logic lab=dl}
N 2200 4480 2240 4480 {lab=dlb}
C {lab_pin.sym} 2240 4480 0 1 {name=l1985 sig_type=std_logic lab=dlb}
N 2040 4500 2000 4500 {lab=csel8}
C {lab_pin.sym} 2000 4500 0 0 {name=l1986 sig_type=std_logic lab=csel8}
N 2200 4500 2240 4500 {lab=vss}
C {lab_pin.sym} 2240 4500 0 1 {name=l1987 sig_type=std_logic lab=vss}
C {precharge.sym} 2440 4500 0 0 {name=Xpre9}
N 2360 4460 2320 4460 {lab=bl9}
C {lab_pin.sym} 2320 4460 0 0 {name=l1988 sig_type=std_logic lab=bl9}
N 2520 4460 2560 4460 {lab=blb9}
C {lab_pin.sym} 2560 4460 0 1 {name=l1989 sig_type=std_logic lab=blb9}
N 2360 4480 2320 4480 {lab=pcb}
C {lab_pin.sym} 2320 4480 0 0 {name=l1990 sig_type=std_logic lab=pcb}
N 2520 4480 2560 4480 {lab=vdd}
C {lab_pin.sym} 2560 4480 0 1 {name=l1991 sig_type=std_logic lab=vdd}
C {colmux.sym} 2760 4500 0 0 {name=Xmux9}
N 2680 4460 2640 4460 {lab=bl9}
C {lab_pin.sym} 2640 4460 0 0 {name=l1992 sig_type=std_logic lab=bl9}
N 2840 4460 2880 4460 {lab=blb9}
C {lab_pin.sym} 2880 4460 0 1 {name=l1993 sig_type=std_logic lab=blb9}
N 2680 4480 2640 4480 {lab=dl}
C {lab_pin.sym} 2640 4480 0 0 {name=l1994 sig_type=std_logic lab=dl}
N 2840 4480 2880 4480 {lab=dlb}
C {lab_pin.sym} 2880 4480 0 1 {name=l1995 sig_type=std_logic lab=dlb}
N 2680 4500 2640 4500 {lab=csel9}
C {lab_pin.sym} 2640 4500 0 0 {name=l1996 sig_type=std_logic lab=csel9}
N 2840 4500 2880 4500 {lab=vss}
C {lab_pin.sym} 2880 4500 0 1 {name=l1997 sig_type=std_logic lab=vss}
C {precharge.sym} 3080 4500 0 0 {name=Xpre10}
N 3000 4460 2960 4460 {lab=bl10}
C {lab_pin.sym} 2960 4460 0 0 {name=l1998 sig_type=std_logic lab=bl10}
N 3160 4460 3200 4460 {lab=blb10}
C {lab_pin.sym} 3200 4460 0 1 {name=l1999 sig_type=std_logic lab=blb10}
N 3000 4480 2960 4480 {lab=pcb}
C {lab_pin.sym} 2960 4480 0 0 {name=l2000 sig_type=std_logic lab=pcb}
N 3160 4480 3200 4480 {lab=vdd}
C {lab_pin.sym} 3200 4480 0 1 {name=l2001 sig_type=std_logic lab=vdd}
C {colmux.sym} 3400 4500 0 0 {name=Xmux10}
N 3320 4460 3280 4460 {lab=bl10}
C {lab_pin.sym} 3280 4460 0 0 {name=l2002 sig_type=std_logic lab=bl10}
N 3480 4460 3520 4460 {lab=blb10}
C {lab_pin.sym} 3520 4460 0 1 {name=l2003 sig_type=std_logic lab=blb10}
N 3320 4480 3280 4480 {lab=dl}
C {lab_pin.sym} 3280 4480 0 0 {name=l2004 sig_type=std_logic lab=dl}
N 3480 4480 3520 4480 {lab=dlb}
C {lab_pin.sym} 3520 4480 0 1 {name=l2005 sig_type=std_logic lab=dlb}
N 3320 4500 3280 4500 {lab=csel10}
C {lab_pin.sym} 3280 4500 0 0 {name=l2006 sig_type=std_logic lab=csel10}
N 3480 4500 3520 4500 {lab=vss}
C {lab_pin.sym} 3520 4500 0 1 {name=l2007 sig_type=std_logic lab=vss}
C {precharge.sym} 3720 4500 0 0 {name=Xpre11}
N 3640 4460 3600 4460 {lab=bl11}
C {lab_pin.sym} 3600 4460 0 0 {name=l2008 sig_type=std_logic lab=bl11}
N 3800 4460 3840 4460 {lab=blb11}
C {lab_pin.sym} 3840 4460 0 1 {name=l2009 sig_type=std_logic lab=blb11}
N 3640 4480 3600 4480 {lab=pcb}
C {lab_pin.sym} 3600 4480 0 0 {name=l2010 sig_type=std_logic lab=pcb}
N 3800 4480 3840 4480 {lab=vdd}
C {lab_pin.sym} 3840 4480 0 1 {name=l2011 sig_type=std_logic lab=vdd}
C {colmux.sym} 4040 4500 0 0 {name=Xmux11}
N 3960 4460 3920 4460 {lab=bl11}
C {lab_pin.sym} 3920 4460 0 0 {name=l2012 sig_type=std_logic lab=bl11}
N 4120 4460 4160 4460 {lab=blb11}
C {lab_pin.sym} 4160 4460 0 1 {name=l2013 sig_type=std_logic lab=blb11}
N 3960 4480 3920 4480 {lab=dl}
C {lab_pin.sym} 3920 4480 0 0 {name=l2014 sig_type=std_logic lab=dl}
N 4120 4480 4160 4480 {lab=dlb}
C {lab_pin.sym} 4160 4480 0 1 {name=l2015 sig_type=std_logic lab=dlb}
N 3960 4500 3920 4500 {lab=csel11}
C {lab_pin.sym} 3920 4500 0 0 {name=l2016 sig_type=std_logic lab=csel11}
N 4120 4500 4160 4500 {lab=vss}
C {lab_pin.sym} 4160 4500 0 1 {name=l2017 sig_type=std_logic lab=vss}
C {precharge.sym} 4360 4500 0 0 {name=Xpre12}
N 4280 4460 4240 4460 {lab=bl12}
C {lab_pin.sym} 4240 4460 0 0 {name=l2018 sig_type=std_logic lab=bl12}
N 4440 4460 4480 4460 {lab=blb12}
C {lab_pin.sym} 4480 4460 0 1 {name=l2019 sig_type=std_logic lab=blb12}
N 4280 4480 4240 4480 {lab=pcb}
C {lab_pin.sym} 4240 4480 0 0 {name=l2020 sig_type=std_logic lab=pcb}
N 4440 4480 4480 4480 {lab=vdd}
C {lab_pin.sym} 4480 4480 0 1 {name=l2021 sig_type=std_logic lab=vdd}
C {colmux.sym} 4680 4500 0 0 {name=Xmux12}
N 4600 4460 4560 4460 {lab=bl12}
C {lab_pin.sym} 4560 4460 0 0 {name=l2022 sig_type=std_logic lab=bl12}
N 4760 4460 4800 4460 {lab=blb12}
C {lab_pin.sym} 4800 4460 0 1 {name=l2023 sig_type=std_logic lab=blb12}
N 4600 4480 4560 4480 {lab=dl}
C {lab_pin.sym} 4560 4480 0 0 {name=l2024 sig_type=std_logic lab=dl}
N 4760 4480 4800 4480 {lab=dlb}
C {lab_pin.sym} 4800 4480 0 1 {name=l2025 sig_type=std_logic lab=dlb}
N 4600 4500 4560 4500 {lab=csel12}
C {lab_pin.sym} 4560 4500 0 0 {name=l2026 sig_type=std_logic lab=csel12}
N 4760 4500 4800 4500 {lab=vss}
C {lab_pin.sym} 4800 4500 0 1 {name=l2027 sig_type=std_logic lab=vss}
C {precharge.sym} 5000 4500 0 0 {name=Xpre13}
N 4920 4460 4880 4460 {lab=bl13}
C {lab_pin.sym} 4880 4460 0 0 {name=l2028 sig_type=std_logic lab=bl13}
N 5080 4460 5120 4460 {lab=blb13}
C {lab_pin.sym} 5120 4460 0 1 {name=l2029 sig_type=std_logic lab=blb13}
N 4920 4480 4880 4480 {lab=pcb}
C {lab_pin.sym} 4880 4480 0 0 {name=l2030 sig_type=std_logic lab=pcb}
N 5080 4480 5120 4480 {lab=vdd}
C {lab_pin.sym} 5120 4480 0 1 {name=l2031 sig_type=std_logic lab=vdd}
C {colmux.sym} 200 4680 0 0 {name=Xmux13}
N 120 4640 80 4640 {lab=bl13}
C {lab_pin.sym} 80 4640 0 0 {name=l2032 sig_type=std_logic lab=bl13}
N 280 4640 320 4640 {lab=blb13}
C {lab_pin.sym} 320 4640 0 1 {name=l2033 sig_type=std_logic lab=blb13}
N 120 4660 80 4660 {lab=dl}
C {lab_pin.sym} 80 4660 0 0 {name=l2034 sig_type=std_logic lab=dl}
N 280 4660 320 4660 {lab=dlb}
C {lab_pin.sym} 320 4660 0 1 {name=l2035 sig_type=std_logic lab=dlb}
N 120 4680 80 4680 {lab=csel13}
C {lab_pin.sym} 80 4680 0 0 {name=l2036 sig_type=std_logic lab=csel13}
N 280 4680 320 4680 {lab=vss}
C {lab_pin.sym} 320 4680 0 1 {name=l2037 sig_type=std_logic lab=vss}
C {precharge.sym} 520 4680 0 0 {name=Xpre14}
N 440 4640 400 4640 {lab=bl14}
C {lab_pin.sym} 400 4640 0 0 {name=l2038 sig_type=std_logic lab=bl14}
N 600 4640 640 4640 {lab=blb14}
C {lab_pin.sym} 640 4640 0 1 {name=l2039 sig_type=std_logic lab=blb14}
N 440 4660 400 4660 {lab=pcb}
C {lab_pin.sym} 400 4660 0 0 {name=l2040 sig_type=std_logic lab=pcb}
N 600 4660 640 4660 {lab=vdd}
C {lab_pin.sym} 640 4660 0 1 {name=l2041 sig_type=std_logic lab=vdd}
C {colmux.sym} 840 4680 0 0 {name=Xmux14}
N 760 4640 720 4640 {lab=bl14}
C {lab_pin.sym} 720 4640 0 0 {name=l2042 sig_type=std_logic lab=bl14}
N 920 4640 960 4640 {lab=blb14}
C {lab_pin.sym} 960 4640 0 1 {name=l2043 sig_type=std_logic lab=blb14}
N 760 4660 720 4660 {lab=dl}
C {lab_pin.sym} 720 4660 0 0 {name=l2044 sig_type=std_logic lab=dl}
N 920 4660 960 4660 {lab=dlb}
C {lab_pin.sym} 960 4660 0 1 {name=l2045 sig_type=std_logic lab=dlb}
N 760 4680 720 4680 {lab=csel14}
C {lab_pin.sym} 720 4680 0 0 {name=l2046 sig_type=std_logic lab=csel14}
N 920 4680 960 4680 {lab=vss}
C {lab_pin.sym} 960 4680 0 1 {name=l2047 sig_type=std_logic lab=vss}
C {precharge.sym} 1160 4680 0 0 {name=Xpre15}
N 1080 4640 1040 4640 {lab=bl15}
C {lab_pin.sym} 1040 4640 0 0 {name=l2048 sig_type=std_logic lab=bl15}
N 1240 4640 1280 4640 {lab=blb15}
C {lab_pin.sym} 1280 4640 0 1 {name=l2049 sig_type=std_logic lab=blb15}
N 1080 4660 1040 4660 {lab=pcb}
C {lab_pin.sym} 1040 4660 0 0 {name=l2050 sig_type=std_logic lab=pcb}
N 1240 4660 1280 4660 {lab=vdd}
C {lab_pin.sym} 1280 4660 0 1 {name=l2051 sig_type=std_logic lab=vdd}
C {colmux.sym} 1480 4680 0 0 {name=Xmux15}
N 1400 4640 1360 4640 {lab=bl15}
C {lab_pin.sym} 1360 4640 0 0 {name=l2052 sig_type=std_logic lab=bl15}
N 1560 4640 1600 4640 {lab=blb15}
C {lab_pin.sym} 1600 4640 0 1 {name=l2053 sig_type=std_logic lab=blb15}
N 1400 4660 1360 4660 {lab=dl}
C {lab_pin.sym} 1360 4660 0 0 {name=l2054 sig_type=std_logic lab=dl}
N 1560 4660 1600 4660 {lab=dlb}
C {lab_pin.sym} 1600 4660 0 1 {name=l2055 sig_type=std_logic lab=dlb}
N 1400 4680 1360 4680 {lab=csel15}
C {lab_pin.sym} 1360 4680 0 0 {name=l2056 sig_type=std_logic lab=csel15}
N 1560 4680 1600 4680 {lab=vss}
C {lab_pin.sym} 1600 4680 0 1 {name=l2057 sig_type=std_logic lab=vss}
C {nand2.sym} 1800 4680 0 0 {name=Xwe1}
N 1720 4640 1680 4640 {lab=rwq}
C {lab_pin.sym} 1680 4640 0 0 {name=l2058 sig_type=std_logic lab=rwq}
N 1880 4640 1920 4640 {lab=clkb}
C {lab_pin.sym} 1920 4640 0 1 {name=l2059 sig_type=std_logic lab=clkb}
N 1720 4660 1680 4660 {lab=web}
C {lab_pin.sym} 1680 4660 0 0 {name=l2060 sig_type=std_logic lab=web}
N 1880 4660 1920 4660 {lab=vdd}
C {lab_pin.sym} 1920 4660 0 1 {name=l2061 sig_type=std_logic lab=vdd}
N 1720 4680 1680 4680 {lab=vss}
C {lab_pin.sym} 1680 4680 0 0 {name=l2062 sig_type=std_logic lab=vss}
C {inv_wn1p26_wp2p52.sym} 2120 4680 0 0 {name=Xwe2}
N 2040 4640 2000 4640 {lab=web}
C {lab_pin.sym} 2000 4640 0 0 {name=l2063 sig_type=std_logic lab=web}
N 2200 4640 2240 4640 {lab=we}
C {lab_pin.sym} 2240 4640 0 1 {name=l2064 sig_type=std_logic lab=we}
N 2040 4660 2000 4660 {lab=vdd}
C {lab_pin.sym} 2000 4660 0 0 {name=l2065 sig_type=std_logic lab=vdd}
N 2200 4660 2240 4660 {lab=vss}
C {lab_pin.sym} 2240 4660 0 1 {name=l2066 sig_type=std_logic lab=vss}
C {rwckt.sym} 2440 4680 0 0 {name=Xrw}
N 2360 4640 2320 4640 {lab=dl}
C {lab_pin.sym} 2320 4640 0 0 {name=l2067 sig_type=std_logic lab=dl}
N 2520 4640 2560 4640 {lab=dlb}
C {lab_pin.sym} 2560 4640 0 1 {name=l2068 sig_type=std_logic lab=dlb}
N 2360 4660 2320 4660 {lab=we}
C {lab_pin.sym} 2320 4660 0 0 {name=l2069 sig_type=std_logic lab=we}
N 2520 4660 2560 4660 {lab=dinq}
C {lab_pin.sym} 2560 4660 0 1 {name=l2070 sig_type=std_logic lab=dinq}
N 2360 4680 2320 4680 {lab=dinqb}
C {lab_pin.sym} 2320 4680 0 0 {name=l2071 sig_type=std_logic lab=dinqb}
N 2520 4680 2560 4680 {lab=pcb}
C {lab_pin.sym} 2560 4680 0 1 {name=l2072 sig_type=std_logic lab=pcb}
N 2360 4700 2320 4700 {lab=rd}
C {lab_pin.sym} 2320 4700 0 0 {name=l2073 sig_type=std_logic lab=rd}
N 2520 4700 2560 4700 {lab=vdd}
C {lab_pin.sym} 2560 4700 0 1 {name=l2074 sig_type=std_logic lab=vdd}
N 2360 4720 2320 4720 {lab=vss}
C {lab_pin.sym} 2320 4720 0 0 {name=l2075 sig_type=std_logic lab=vss}
C {dff.sym} 2760 4680 0 0 {name=Xff_out}
N 2680 4640 2640 4640 {lab=rd}
C {lab_pin.sym} 2640 4640 0 0 {name=l2076 sig_type=std_logic lab=rd}
N 2840 4640 2880 4640 {lab=clk_ff}
C {lab_pin.sym} 2880 4640 0 1 {name=l2077 sig_type=std_logic lab=clk_ff}
N 2680 4660 2640 4660 {lab=rdq}
C {lab_pin.sym} 2640 4660 0 0 {name=l2078 sig_type=std_logic lab=rdq}
N 2840 4660 2880 4660 {lab=rdqb}
C {lab_pin.sym} 2880 4660 0 1 {name=l2079 sig_type=std_logic lab=rdqb}
N 2680 4680 2640 4680 {lab=vdd}
C {lab_pin.sym} 2640 4680 0 0 {name=l2080 sig_type=std_logic lab=vdd}
N 2840 4680 2880 4680 {lab=vss}
C {lab_pin.sym} 2880 4680 0 1 {name=l2081 sig_type=std_logic lab=vss}
C {outbuf.sym} 3080 4680 0 0 {name=Xob}
N 3000 4640 2960 4640 {lab=rdqb}
C {lab_pin.sym} 2960 4640 0 0 {name=l2082 sig_type=std_logic lab=rdqb}
N 3160 4640 3200 4640 {lab=dout_pad}
C {lab_pin.sym} 3200 4640 0 1 {name=l2083 sig_type=std_logic lab=dout_pad}
N 3000 4660 2960 4660 {lab=vddio}
C {lab_pin.sym} 2960 4660 0 0 {name=l2084 sig_type=std_logic lab=vddio}
N 3160 4660 3200 4660 {lab=vss}
C {lab_pin.sym} 3200 4660 0 1 {name=l2085 sig_type=std_logic lab=vss}
