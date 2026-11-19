* device unit check
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
Vd a 0 DC 0 AC 1
X1 a n sky130_fd_pr__diode_pd2nw_05v5 perim=1.6e+07 area=1.6e+13
Vn n 0 0
Vr r 0 1
Xr r 0 sky130_fd_pr__res_generic_po w=8.2 l=3.4
.control
ac dec 1 1meg 1meg
let c = -imag(i(Vd))/(2*pi*1e6)
print c
dc Vd -1.8 0.8 0.1
print i(Vd)[0] i(Vd)[18] i(Vd)[26]
op
print -i(Vr)
print 1/(-i(Vr))
.endc
.end
