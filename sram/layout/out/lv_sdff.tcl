load lv_sdff -force
snap internal
box 4.530um 1.335um 4.700um 1.505um
paint li
box 4.615um 1.420um 4.615um 1.420um
label D center li
port make
box 1.610um 1.305um 1.780um 1.475um
paint li
box 1.695um 1.390um 1.695um 1.390um
label CLK center li
port make
box 15.580um 2.560um 15.750um 2.730um
paint m1
box 15.665um 2.645um 15.665um 2.645um
label Q center m1
port make
box 17.450um 2.560um 17.620um 2.730um
paint m1
box 17.535um 2.645um 17.535um 2.645um
label QB center m1
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
getcell sdff 0 child 0 0 parent 0.850um 0.000um
identify u
save lv_sdff
