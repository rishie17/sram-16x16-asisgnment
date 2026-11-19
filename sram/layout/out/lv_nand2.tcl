load lv_nand2 -force
snap internal
box 1.500um 1.515um 1.670um 1.685um
paint li
box 1.585um 1.600um 1.585um 1.600um
label A center li
port make
box 2.200um 1.515um 2.370um 1.685um
paint li
box 2.285um 1.600um 2.285um 1.600um
label B center li
port make
box 1.150um 2.560um 1.320um 2.730um
paint m1
box 1.235um 2.645um 1.235um 2.645um
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
getcell nand2 0 child 0 0 parent 0.850um 0.000um
identify u
save lv_nand2
