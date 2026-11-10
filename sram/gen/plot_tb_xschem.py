#!/usr/bin/env python3
"""Plot the Xschem 6T testbench run (xschem/net/tb_bitcell.dat) and check the stored value after each step."""
import os, sys, numpy as np, matplotlib.pyplot as plt
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from paths import ROOT, PLOTS
from style import *
d = np.loadtxt(os.path.join(ROOT, "xschem/net/tb_bitcell.dat"), skiprows=1); t = d[:, 0] * 1e9
q, qb, bl, blb, wl, pcb = (d[:, i] for i in range(1, 7))
at = lambda ns, v: float(np.interp(ns, t, v))
R = {"Q after write 0 (3.5 ns)": at(3.5, q), "Q after read (6.5 ns)": at(6.5, q), "Q after write 1 (9.5 ns)": at(9.5, q), "Q after read (12 ns)": at(12, q),
     "BL dip during read 0 (5.8 ns)": at(5.8, bl), "BLB dip during read 1 (11.8 ns)": at(11.8, blb)}
for k, v in R.items(): print(f"{k}: {v:.3f} V")
P = [("WL and precharge", [(wl, "WL", C1), (pcb, "pcb", C2)]), ("Bit lines", [(bl, "BL", C1), (blb, "BLB", C2)]), ("Storage nodes", [(q, "Q", C1), (qb, "QB", C2)])]
fig, ax = plt.subplots(3, 1, figsize=(11, 7), sharex=True)
for a, (ttl, S) in zip(ax, P):
    for v, lab, c in S: a.plot(t, v, color=c, lw=1.5, label=lab)
    a.set_title(ttl, loc="left", fontsize=11); a.set_ylabel("V"); a.set_ylim(-.2, 2.0); a.legend(loc="upper right", fontsize=9, ncol=2)
for x, s in ((2, "write 0"), (5, "read"), (8, "write 1"), (11, "read")): ax[0].text(x, 1.9, s, ha="center", fontsize=9, color=TXT)
ax[-1].set_xlabel("time [ns]"); fig.suptitle("6T cell testbench, netlisted from Xschem (TT, 1.8 V)", color=TXT, fontsize=13, fontweight="bold")
fig.tight_layout(); fig.savefig(os.path.join(PLOTS, "xschem_tb_bitcell_waves.png"))
