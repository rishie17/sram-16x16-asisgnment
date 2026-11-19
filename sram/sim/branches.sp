* branches
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/designs/sram/sim/net_extra.spice
Vdd vdd 0 1.8
Vddio vddio 0 1.8
Xtop p_DOUT vddio 0 vdd p_CLK p_ADDR p_RW p_DIN sram_top
Vc c 0 PULSE(0 1.8 2.5e-09 50p 50p 2.45e-09 5e-09)
Rc c p_CLK 50
Cp p_CLK 0 1p
Va p_ADDR 0 0
Vr p_RW 0 0
Vi p_DIN 0 0
Rl p_DOUT 0 1e9
.tran 5p 1.5000000000000002e-08
.control
set wr_singlescale
set wr_vecnames
run
wrdata br.dat v(p_CLK) v(xtop.chip/xck_a2/y) v(xtop.chip/xck_r2/y) v(xtop.chip/xwe1/b) v(xtop.chip/xrw/pcb) v(xtop.chip/core/rc0/wl)
.endc
.end