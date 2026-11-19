* sizing 0p42_0p42_0p42
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
Vdd vdd 0 1.8
Vin in 0 0
Vwl wl 0 1.8
Vbl bl 0 1.8
Xpu out in vdd vdd sky130_fd_pr__pfet_01v8 w=0.42 l=0.15
Xpd out in 0 0 sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
Xpg out wl bl 0 sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
* full cell for write trip: q starts 1
Xpu1 q qb vdd vdd sky130_fd_pr__pfet_01v8 w=0.42 l=0.15
Xpd1 q qb 0 0 sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
Xpu2 qb q vdd vdd sky130_fd_pr__pfet_01v8 w=0.42 l=0.15
Xpd2 qb q 0 0 sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
Xpg1 q wl blw 0 sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
Xpg2 qb wl vdd 0 sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
Vblw blw 0 1.8
.nodeset v(q)=1.8 v(qb)=0
.control
dc Vin 0 1.8 0.005
wrdata r_0p42_0p42_0p42.txt v(out)
alter Vwl 0
dc Vin 0 1.8 0.005
wrdata h_0p42_0p42_0p42.txt v(out)
alter Vwl 1.8
dc Vblw 1.8 0 -0.002
wrdata w_0p42_0p42_0p42.txt v(q)
.endc
.end
