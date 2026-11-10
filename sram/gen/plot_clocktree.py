#!/usr/bin/env python3
"""Arrival time at every clock sink, four topologies, one panel per net (results/clocktree/clocktree.json)."""
import os, sys, json, matplotlib.pyplot as plt
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from paths import ROOT, PLOTS
from style import *
A = json.load(open(os.path.join(ROOT, "results/clocktree/clocktree.json")))["results"]
T = [("built", "as built (layout)", C1), ("end", "end-fed", C2), ("centre", "centre-fed", C3), ("tree", "binary tree", C4)]
fig, ax = plt.subplots(1, 3, figsize=(14, 4.6))
for a, net in zip(ax, ("clk_ff", "clkb", "pcb")):
    for k, lab, c in T:
        d = A[k][net]["delay_per_sink_ps"]; a.plot(range(len(d)), list(d.values()), "o-", color=c, ms=4, lw=1.5, label=f"{lab}: skew {A[k][net]['skew_ps']:.1f} ps")
    a.set_title(net, loc="left", fontsize=11); a.set_xlabel("sink index"); a.set_ylabel("delay from clk_in [ps]"); a.legend(fontsize=8)
fig.suptitle("Clock arrival per sink, distributed-RC wires and real loads (TT, 1.8 V)", color=TXT, fontsize=13, fontweight="bold")
fig.tight_layout(); fig.savefig(os.path.join(PLOTS, "10_clock_tree_arrival.png"))
