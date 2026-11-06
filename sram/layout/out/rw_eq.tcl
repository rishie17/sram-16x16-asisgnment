load rw_eq -force
snap internal
box 0.220um 2.680um 1.470um 3.100um
paint pdiff
box 0.000um -0.180um 1.690um 0.180um
paint m1
box 0.000um 3.060um 1.690um 3.420um
paint m1
box 0.000um 2.340um 1.690um 3.550um
paint nwell
box 0.770um 2.360um 0.920um 3.230um
paint poly
box 0.680um 2.225um 1.010um 2.495um
paint poly
box 0.760um 2.275um 0.930um 2.445um
paint pc
box 0.760um 2.195um 0.930um 2.525um
paint li
box 0.300um 2.805um 0.470um 2.975um
paint pdc
box 0.300um 2.525um 0.470um 3.065um
paint li
box 1.220um 2.805um 1.390um 2.975um
paint pdc
box 1.220um 2.525um 1.390um 3.065um
paint li
box 0.845um 2.360um 0.845um 2.360um
label PCB center li
port make
box 0.385um 2.700um 0.385um 2.700um
label DL center li
port make
box 1.305um 2.700um 1.305um 2.700um
label DLB center li
port make
box 0.100um 3.240um 0.100um 3.240um
label VDD center m1
port make
box 0.100um 0.000um 0.100um 0.000um
label GND center m1
port make
save rw_eq
