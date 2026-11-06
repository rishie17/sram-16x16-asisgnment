load rowslice -force
snap internal
box 2.555um 1.310um 2.715um 2.645um
paint m1
box 2.555um 1.310um 4.535um 1.470um
paint m1
box 4.370um 1.305um 4.540um 1.475um
paint viali
box 4.325um 1.230um 4.585um 1.550um
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
box 4.720um 2.560um 4.890um 2.730um
paint m1
box 4.805um 2.645um 4.805um 2.645um
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
getcell tap 0 child 0 0 parent 0.000um 0.000um
identify t
box 0 0 0 0
getcell nand3 0 child 0 0 parent 0.850um 0.000um
identify n3
box 0 0 0 0
getcell wldrv 0 child 0 0 parent 3.720um 0.000um
identify wd
save rowslice
