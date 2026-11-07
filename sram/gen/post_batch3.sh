#!/bin/bash
cd /foss/designs/sram
export SRAM_PDK_LIB=/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice OMP_NUM_THREADS=4
for t in 2.35 2.2; do python3 gen/post.py rand64 --T ${t}e-9 --tag post_fmax_${t} > sim/post_fmax_${t}.txt 2>&1 & done
python3 gen/post_extra.py chip/Xck_r2/Y chip/Xwe1/B chip/Xrw/PCB > sim/post_extra.txt 2>&1 &
wait
