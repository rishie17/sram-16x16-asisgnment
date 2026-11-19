load lv_colmux -force
snap internal
box 1.065um 1.215um 1.235um 1.385um
paint m2
box 1.150um 1.300um 1.150um 1.300um
label BL center m2
port make
box 1.765um 0.635um 1.935um 0.805um
paint m1
box 1.850um 0.720um 1.850um 0.720um
label DL center m1
port make
box 3.865um 1.215um 4.035um 1.385um
paint m2
box 3.950um 1.300um 3.950um 1.300um
label BLB center m2
port make
box 3.165um 0.635um 3.335um 0.805um
paint m1
box 3.250um 0.720um 3.250um 0.720um
label DLB center m1
port make
box 2.465um 1.210um 2.635um 1.380um
paint li
box 2.550um 1.295um 2.550um 1.295um
label CSEL center li
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
getcell colmux 0 child 0 0 parent 1.150um 0.000um
identify u
save lv_colmux
