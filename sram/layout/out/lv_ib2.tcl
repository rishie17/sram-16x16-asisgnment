load lv_ib2 -force
snap internal
box 1.500um 1.235um 1.670um 1.405um
paint li
box 1.585um 1.320um 1.585um 1.320um
label A center li
port make
box 1.850um 2.560um 2.020um 2.730um
paint m1
box 1.935um 2.645um 1.935um 2.645um
label Y center m1
port make
box 0.865um 3.155um 1.035um 3.325um
paint m1
box 0.950um 3.240um 0.950um 3.240um
label VDD center m1
port make
box 0.865um -0.085um 1.035um 0.085um
paint m1
box 0.950um 0.000um 0.950um 0.000um
label GND center m1
port make
box 0 0 0 0
getcell tap 0 child 0 0 parent 0.000um 0.000um
identify t
box 0 0 0 0
getcell ib2 0 child 0 0 parent 0.850um 0.000um
identify u
save lv_ib2
