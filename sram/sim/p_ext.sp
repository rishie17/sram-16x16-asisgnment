* extracted bit cell margins
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
Vdd vdd 0 1.8
Vin in 0 0
Vwl wl 0 1.8
Vbl bl 0 1.8
Vblw blw 0 1.8
X1h vdd in out vdd sky130_fd_pr__pfet_01v8 ad=0.1155 pd=0.97 as=0.1848 ps=1.72 w=0.42 l=0.15
X2h 0 in out 0 sky130_fd_pr__nfet_01v8 ad=0.17325 pd=1.18 as=0.14437 ps=1.18 w=0.63 l=0.15
X3h out wl bl 0 sky130_fd_pr__nfet_01v8 ad=0.14437 pd=1.18 as=0.1848 ps=1.72 w=0.42 l=0.15
X0f qb q vdd vdd sky130_fd_pr__pfet_01v8 ad=0.1848 pd=1.72 as=0.1155 ps=0.97 w=0.42 l=0.15
X1f vdd qb q vdd sky130_fd_pr__pfet_01v8 ad=0.1155 pd=0.97 as=0.1848 ps=1.72 w=0.42 l=0.15
X2f 0 qb q 0 sky130_fd_pr__nfet_01v8 ad=0.17325 pd=1.18 as=0.14437 ps=1.18 w=0.63 l=0.15
X3f q wl blw 0 sky130_fd_pr__nfet_01v8 ad=0.14437 pd=1.18 as=0.1848 ps=1.72 w=0.42 l=0.15
X4f qb q 0 0 sky130_fd_pr__nfet_01v8 ad=0.14437 pd=1.18 as=0.17325 ps=1.18 w=0.63 l=0.15
X5f vdd wl qb 0 sky130_fd_pr__nfet_01v8 ad=0.1848 pd=1.72 as=0.14437 ps=1.18 w=0.42 l=0.15
.nodeset v(q)=1.8 v(qb)=0
.control
dc Vin 0 1.8 0.005
wrdata r_ext.txt v(out)
alter Vwl 0
dc Vin 0 1.8 0.005
wrdata h_ext.txt v(out)
alter Vwl 1.8
dc Vblw 1.8 0 -0.002
wrdata w_ext.txt v(q)
.endc
.end
