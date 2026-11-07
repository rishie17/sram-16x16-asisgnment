#!/bin/bash
# Full test and Fmax sweep on the final RC netlist, 4 threads each.
cd /foss/designs/sram
export SRAM_PDK_LIB=/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice OMP_NUM_THREADS=4
rm -f sim/post_*.res.json
python3 gen/post.py full --T 5e-9 --tag post_full_5ns > sim/post_full_5ns.txt 2>&1 &
for t in 2.5 2.0 1.6; do python3 gen/post.py rand64 --T ${t}e-9 --tag post_fmax_${t} > sim/post_fmax_${t}.txt 2>&1 & done
wait
