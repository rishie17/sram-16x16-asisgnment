load colslice -force
snap internal
box 0.000um -0.180um 3.400um 0.180um
paint m1
box 0.000um 3.060um 3.400um 3.420um
paint m1
box 0.000um 6.300um 3.400um 6.660um
paint m1
box 0.000um 1.950um 3.400um 4.530um
paint nwell
box 0.780um 2.485um 1.620um 2.805um
paint m1
box 0.810um 2.515um 1.070um 2.775um
paint via1
box 0.780um 2.485um 1.100um 2.805um
paint m2
box 0.790um 2.645um 1.090um 5.090um
paint m2
box 0.780um 4.930um 1.100um 5.250um
paint m2
box 0.810um 4.960um 1.070um 5.220um
paint via1
box 0.855um 5.005um 1.025um 5.175um
paint viali
box 0.810um 4.930um 1.070um 5.250um
paint m1
box 1.885um 1.515um 2.055um 1.685um
paint li
box 1.970um 1.600um 1.970um 1.600um
label A center li
port make
box 2.585um 1.515um 2.755um 1.685um
paint li
box 2.670um 1.600um 2.670um 1.600um
label B center li
port make
box 1.315um 3.750um 1.485um 3.920um
paint m1
box 1.400um 3.835um 1.400um 3.835um
label CSEL center m1
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
getcell nand2 0 child 0 0 parent 1.235um 0.000um
identify n
box 0 0 0 0
getcell csdrv v child 0 0 parent 0.095um 6.480um
identify d
save colslice
