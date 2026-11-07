#!/usr/bin/env python3
"""Sum extracted capacitance on named nets of the flat netlist (self + coupling), and list drawn resistors."""
import re, sys, collections
c = collections.Counter(); R = []
for l in open("layout/out/sram_top_flat.spice"):
    w = l.split()
    if len(w) == 4 and l[0] == "C":
        v = float(re.sub("[a-z]+$", "", w[3])) * {"f": 1, "p": 1e3}.get(w[3][-1], 0 if w[3] == "0" else 1)
        c[w[1]] += v; c[w[2]] += v
    if l[0] in "XR" and "res" in l: R.append(l.strip())
for k, v in c.most_common(60): print(f"{v:9.1f} fF  {k}")
print("resistors:", *R[:4], sep="\n")
