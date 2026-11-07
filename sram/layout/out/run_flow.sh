#!/bin/bash
# Run inside the container: ./eda 'cd /foss/designs/sram/layout/out && ./run_flow.sh'
P=/foss/pdks/sky130A/libs.tech
rm -f *.mag *.ext   # load -force reopens saved cells, so stale geometry would stack up
magic -dnull -noconsole -rcfile $P/magic/sky130A.magicrc run_magic.tcl 2>&1 | tee magic.log | grep -E "^DRC|rror"
# my cells must be local: a missing .mag means Magic resolved the name from a PDK library (banned cells)
for f in *.tcl; do n=${f%.tcl}; case $n in run_magic|why|flat) ;; *) [ -f $n.mag ] || { echo "MISSING LOCAL CELL $n"; exit 1; } ;; esac; done
for n in $(grep -h '^use ' *.mag | awk '{print $2}' | sort -u); do [ -f $n.mag ] || { echo "NON-LOCAL USE $n"; exit 1; }; done
echo LOCAL CELLS OK
