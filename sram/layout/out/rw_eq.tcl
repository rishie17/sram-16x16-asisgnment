load rw_eq -force
snap internal
box 0.220um 2.585um 1.470um 3.005um
paint pdiff
box 0.000um -0.180um 1.690um 0.180um
paint m1
box 0.000um 3.060um 1.690um 3.420um
paint m1
box 0.000um 2.340um 1.690um 3.550um
paint nwell
box 0.770um 2.265um 0.920um 3.135um
paint poly
box 0.680um 2.130um 1.010um 2.400um
paint poly
box 0.760um 2.180um 0.930um 2.350um
paint pc
box 0.760um 2.100um 0.930um 2.430um
paint li
box 0.300um 2.710um 0.470um 2.880um
paint pdc
box 0.300um 2.525um 0.470um 2.970um
paint li
box 1.220um 2.710um 1.390um 2.880um
paint pdc
box 1.220um 2.525um 1.390um 2.970um
paint li
box 0.845um 2.265um 0.845um 2.265um
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
