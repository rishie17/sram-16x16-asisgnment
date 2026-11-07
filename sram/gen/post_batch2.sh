#!/bin/bash
cd /foss/designs/sram
export SRAM_PDK_LIB=/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice OMP_NUM_THREADS=4
for t in 2.5 2.2; do python3 gen/post.py rand64 --T ${t}e-9 --tag post_fmax_${t} > sim/post_fmax_${t}.txt 2>&1 & done
POST_WLR=0 python3 gen/post.py rand64 --T 2.0e-9 --tag post_nowlr_2.0 > sim/post_nowlr_2.0.txt 2>&1 &
wait
