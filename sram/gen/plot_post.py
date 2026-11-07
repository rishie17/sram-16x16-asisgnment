#!/usr/bin/env python3
"""Post-layout pins and read path over a window of the full test. Each panel holds one signal."""
import os, sys, numpy as np, matplotlib.pyplot as plt
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from paths import SIM, PLOTS
from style import *
from run_check import load
T, k0, k1 = 5e-9, 300, 318
D = load(os.path.join(SIM, "post_full_5ns.dat")); t = D["time"]; m = (t >= k0 * T) & (t <= k1 * T)
P = [("v(CLK)", "CLK at pad"), ("v(ADDR)", "ADDR at pad (read phase of the de Bruijn sequence)"), ("v(xtop.chip/ob1/a)", "Output flop QB, before the buffer chain"), ("v(DOUT)", "DOUT pin, 5 pF load")]
fig, ax = plt.subplots(len(P), 1, figsize=(11, 7), sharex=True)
for a, (s, lab) in zip(ax, P):
    a.plot(t[m] * 1e9, D[s][m], color=C1, lw=1.5); a.set_title(lab, loc="left", fontsize=11); a.set_ylabel("V"); a.set_ylim(-.2, 2.0); a.grid(axis="y", color=GRID, lw=.5)
ax[-1].set_xlabel("time [ns]"); fig.suptitle("Extracted chip reads back at 200 MHz (TT, 1.8 V)", color=TXT, fontsize=13, fontweight="bold")
fig.tight_layout(); fig.savefig(os.path.join(PLOTS, "09_post_layout_read.png")); print("ok")
