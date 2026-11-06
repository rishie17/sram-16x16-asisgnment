load bitcell -force
snap internal
box -0.165um 0.000um 0.700um 0.420um
paint ndiff
box 0.700um 0.000um 2.100um 0.630um
paint ndiff
box 2.100um 0.000um 2.965um 0.420um
paint ndiff
box 0.535um 1.680um 2.265um 2.100um
paint pdiff
box -0.085um 0.125um 0.085um 0.295um
paint ndc
box 0.615um 0.125um 0.785um 0.295um
paint ndc
box 1.315um 0.125um 1.485um 0.295um
paint ndc
box 2.015um 0.125um 2.185um 0.295um
paint ndc
box 2.715um 0.125um 2.885um 0.295um
paint ndc
box 0.615um 1.805um 0.785um 1.975um
paint pdc
box 1.315um 1.805um 1.485um 1.975um
paint pdc
box 2.015um 1.805um 2.185um 1.975um
paint pdc
box -0.300um 1.500um 3.100um 2.810um
paint nwell
box 1.195um 2.370um 1.605um 2.630um
paint nsd
box 1.315um 2.415um 1.485um 2.585um
paint nsc
box 1.195um -0.870um 1.605um -0.610um
paint psd
box 1.315um -0.825um 1.485um -0.655um
paint psc
box 0.975um -0.130um 1.125um 2.230um
paint poly
box 1.675um -0.130um 1.825um 2.230um
paint poly
box 0.275um -0.490um 0.425um 0.550um
paint poly
box 2.375um -0.490um 2.525um 0.550um
paint poly
box -0.300um -0.490um 3.100um -0.340um
paint poly
box 1.585um 0.785um 1.915um 1.055um
paint poly
box 1.665um 0.835um 1.835um 1.005um
paint pc
box 1.665um 0.755um 1.835um 1.085um
paint li
box 0.885um 1.215um 1.215um 1.485um
paint poly
box 0.965um 1.265um 1.135um 1.435um
paint pc
box 0.965um 1.185um 1.135um 1.515um
paint li
box 0.615um 0.035um 0.785um 2.065um
paint li
box 2.015um 0.035um 2.185um 2.065um
paint li
box 0.615um 0.835um 1.835um 1.005um
paint li
box 0.965um 1.265um 2.185um 1.435um
paint li
box 1.315um 1.715um 1.485um 2.675um
paint li
box 1.315um -0.915um 1.485um 0.385um
paint li
box -0.085um 0.035um 0.085um 0.385um
paint li
box 2.715um 0.035um 2.885um 0.385um
paint li
box 1.315um 2.415um 1.485um 2.585um
paint viali
box -0.300um 2.320um 3.100um 2.680um
paint m1
box 1.315um -0.825um 1.485um -0.655um
paint viali
box -0.300um -0.920um 3.100um -0.560um
paint m1
box -0.085um 0.125um 0.085um 0.295um
paint viali
box -0.160um 0.050um 0.160um 0.370um
paint m1
box -0.130um 0.080um 0.130um 0.340um
paint via1
box -0.150um -0.740um 0.150um 2.500um
paint m2
box 2.715um 0.125um 2.885um 0.295um
paint viali
box 2.640um 0.050um 2.960um 0.370um
paint m1
box 2.670um 0.080um 2.930um 0.340um
paint via1
box 2.650um -0.740um 2.950um 2.500um
paint m2
box 0.000um 1.000um 0.000um 1.000um
label BL center m2
port make
box 2.800um 1.000um 2.800um 1.000um
label BLB center m2
port make
box 1.400um -0.415um 1.400um -0.415um
label WL center poly
port make
box 1.400um 2.500um 1.400um 2.500um
label VDD center m1
port make
box 1.400um -0.740um 1.400um -0.740um
label GND center m1
port make
box 0.700um 1.100um 0.700um 1.100um
label Q center li
port make
box 2.100um 0.600um 2.100um 0.600um
label QB center li
port make
save bitcell
