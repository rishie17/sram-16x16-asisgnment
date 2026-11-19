load rowcell -force
snap internal
box 5.890um -0.180um 6.640um 0.180um
paint m1
box 5.890um 3.060um 6.640um 3.420um
paint m1
box 5.890um 2.100um 6.640um 3.550um
paint nwell
box 6.175um 0.190um 6.505um 0.460um
paint poly
box 6.340um 0.250um 6.640um 0.400um
paint poly
box 6.255um 0.240um 6.425um 0.410um
paint pc
box 6.255um 0.160um 6.425um 0.710um
paint li
box 6.255um 0.535um 6.425um 0.705um
paint viali
box 6.180um 0.460um 6.500um 0.780um
paint m1
box 6.260um 0.460um 6.420um 2.725um
paint m1
box 4.805um 2.565um 6.420um 2.725um
paint m1
box 1.500um 1.725um 1.670um 1.895um
paint li
box 1.585um 1.810um 1.585um 1.810um
label A center li
port make
box 2.200um 1.725um 2.370um 1.895um
paint li
box 2.285um 1.810um 2.285um 1.810um
label B center li
port make
box 2.900um 1.725um 3.070um 1.895um
paint li
box 2.985um 1.810um 2.985um 1.810um
label C center li
port make
box 6.255um 0.535um 6.425um 0.705um
paint m1
box 6.340um 0.620um 6.340um 0.620um
label WL center m1
port make
box 0.015um 3.155um 0.185um 3.325um
paint m1
box 0.100um 3.240um 0.100um 3.240um
label VDD center m1
port make
box 0.015um -0.085um 0.185um 0.085um
paint m1
box 0.100um 0.000um 0.100um 0.000um
label GND center m1
port make
box 0 0 0 0
getcell rowslice 0 child 0 0 parent 0.000um 0.000um
identify s
save rowcell
