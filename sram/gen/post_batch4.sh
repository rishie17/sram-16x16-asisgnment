#!/bin/bash
# Schematic reruns on this container's PDK, so the comparison uses one PDK.
cd /foss/designs/sram/sim
export SRAM_PDK_LIB=/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice OMP_NUM_THREADS=4
python3 ../gen/run_check.py full --T 5e-9 --tag s1re_full_5ns > s1re_full.txt 2>&1 &
for t in 1.4 1.3 1.25; do python3 ../gen/run_check.py rand64 --T ${t}e-9 --tag s1re_fmax_$t > s1re_fmax_$t.txt 2>&1 & done
ngspice -b leak_s1.sp > leak_s1.log 2>&1 &
wait
