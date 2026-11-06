"""Writes out/<cell>.tcl per cell, plus out/run_magic.tcl and run_lvs.sh.
Children are emitted before parents. Nothing here proves DRC/LVS; run_lvs.sh does, in the container."""
import os
from bitcell import build as bitcell
from lib import Cell
from gates import inv, nand2, nand3, tap, finv
from column import precharge, colmux
from dff import build as dff
from periph import rwckt, inbuf, biginv, pad
from blocks import rowslice, rowcell, core, colslice
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "out")
TOP = [tap(), bitcell(), inv(), nand2(), nand3(), precharge(), colmux(), dff(), rwckt(), *inbuf(), pad(),
       biginv("ob3", 6.72, 13.44), biginv("ob4", 27, 55), biginv("ob5", 108, 215), biginv("ob6", 430, 860),
       finv(2, .42, .84, "wldrv"), rowslice(), rowcell(), colslice(), core()]
def wrapped(c):
    """tap + cell, so bulks tie to rails for per-cell LVS. Ports copied to the wrapper."""
    w = Cell("lv_" + c.name); t = tap(); w.place(t, 0, 0, name="t"); o = t.size()[0] + (.3 if c.name == "colmux" else 0); w.place(c, o, 0, name="u")
    for n, x, y, ly in c.labels: w.label(n, x + o, y, ly)
    if not any(n == "GND" for n, *_ in c.labels): w.label("GND", .1, 0, "m1")
    return w
TOP += [wrapped(c) for c in TOP if c.name in ("inv", "nand2", "nand3", "colmux", "ib1", "ib2", "wldrv", "sdff")]
def order(cells):
    seen, out = set(), []
    def go(c):
        for k, *_ in c.subs: go(k)
        if c.name not in seen: seen.add(c.name); out.append(c)
    for c in cells: go(c)
    return out
if __name__ == "__main__":
    os.makedirs(OUT, exist_ok=True); L = order(TOP)
    for f in os.listdir(OUT):
        if f.endswith(".tcl") and f != "why.tcl": os.remove(f"{OUT}/{f}")
    with open(f"{OUT}/run_magic.tcl", "w") as f:
        for c in L:
            open(f"{OUT}/{c.name}.tcl", "w").write(c.tcl()); f.write(f"source {c.name}.tcl\n")
        for c in L:
            f.write(f'load {c.name}\nselect top cell\ndrc check\ndrc catchup\nputs "DRC {c.name} [drc list count total]"\n'
                    f'extract all\next2spice lvs\next2spice -o {c.name}.spice\next2spice cthresh 0\next2spice -o {c.name}_pex.spice\ngds write {c.name}.gds\n')
        f.write("quit -noprompt\n")
    open(f"{OUT}/run_flow.sh", "w").write('''#!/bin/bash
# Run inside the container: ./eda 'cd /foss/designs/sram/layout/out && ./run_flow.sh'
P=/foss/pdks/sky130A/libs.tech
rm -f *.mag *.ext   # load -force reopens saved cells, so stale geometry would stack up
magic -dnull -noconsole -rcfile $P/magic/sky130A.magicrc run_magic.tcl 2>&1 | tee magic.log | grep -E "^DRC|rror"
# my cells must be local: a missing .mag means Magic resolved the name from a PDK library (banned cells)
for f in *.tcl; do n=${f%.tcl}; case $n in run_magic|why) ;; *) [ -f $n.mag ] || { echo "MISSING LOCAL CELL $n"; exit 1; } ;; esac; done
for n in $(grep -h '^use ' *.mag | awk '{print $2}' | sort -u); do [ -f $n.mag ] || { echo "NON-LOCAL USE $n"; exit 1; }; done
echo LOCAL CELLS OK
''')
    os.chmod(f"{OUT}/run_flow.sh", 0o755)
    print(len(L), "cells emitted"); print("\n".join(f"{c.name:10s} {c.size()}" for c in L))
