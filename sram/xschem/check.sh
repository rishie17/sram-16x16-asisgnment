#!/bin/bash
# Netlist every generated schematic with Xschem, then compare with netgen against the flat reference from cells.sp.
cd "$(dirname "$0")"; mkdir -p net; S=/foss/pdks/sky130A/libs.tech/netgen/sky130A_setup.tcl
for f in *.sch; do c=${f%.sch}; [ $c = tb_bitcell ] && continue
  xschem -q -x -n -s --rcfile xschemrc --tcl "set top_subckt 1; set lvs_netlist 1" -o net $f >/dev/null 2>&1
  netgen -batch lvs "net/$c.spice $c" "ref/$c.spice $c" $S net/$c.lvs >/dev/null 2>&1
  if grep -q "Netlists match uniquely" net/$c.lvs && ! grep -q "Property errors were found" net/$c.lvs; then r=MATCH; else r=FAIL; fi
  echo "$c $r $(grep -m1 'Number of devices' net/$c.lvs | tr -s ' ')"
done
