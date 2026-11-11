#!/bin/bash
# Process corners on the extracted chip: full 256-location test at 200 MHz and an Fmax sweep per corner.
# Usage (inside the container): gen/post_corners.sh "ss:2.6 ss:3.0 ff:1.8" [full]
cd /foss/designs/sram
export SRAM_PDK_LIB=/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice OMP_NUM_THREADS=2
for c in ${2:+ss ff}; do python3 gen/post.py full --T 5e-9 --corner $c --tag pc_${c}_full_5ns > sim/pc_${c}_full_5ns.txt 2>&1 & done
for p in $1; do c=${p%%:*}; t=${p##*:}; python3 gen/post.py rand64 --T ${t}e-9 --corner $c --tag pc_${c}_fmax_$t > sim/pc_${c}_fmax_$t.txt 2>&1 & done
wait
