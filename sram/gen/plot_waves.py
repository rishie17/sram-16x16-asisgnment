"""Plot transistor-level waveforms for a window of cycles from a run_check .dat file."""
import sys, numpy as np, matplotlib.pyplot as plt
sys.path.insert(0, __import__('os').path.dirname(__import__('os').path.abspath(__file__)))
from paths import ROOT, CELLS, SIM, PLOTS, PDK_LIB
from style import *
from run_check import load

dat, T, k0, k1, out, title = sys.argv[1], float(sys.argv[2]), int(sys.argv[3]), int(sys.argv[4]), sys.argv[5], sys.argv[6]
D = load(dat); t = D['time']
m = (t >= k0 * T) & (t <= k1 * T)
tn = t[m] * 1e9
panels = [
    ("Pins (after 50 Ω source)", [("v(CLK)", "CLK", C1), ("v(RW)", "RW", C2), ("v(ADDR)", "ADDR", C3)]),
    ("Clock-derived controls", [("v(xdut.pcb)", "pcb (precharge, active low)", C4), ("v(xdut.clkb)", "clkb (WL enable)", C1), ("v(xdut.we)", "we", C2)]),
    ("Wordlines", [("v(xdut.wl0)", "WL0", C1), ("v(xdut.wl15)", "WL15", C2)]),
    ("Bitlines col 0 / data line", [("v(xdut.bl0)", "BL0", C1), ("v(xdut.blb0)", "BLB0", C2), ("v(xdut.dl)", "DL", C3)]),
    ("Cell storage nodes", [("v(xdut.xc_0_0.q)", "Q cell(0,0)", C1), ("v(xdut.xc_15_15.q)", "Q cell(15,15)", C2)]),
    ("Read path", [("v(xdut.rd)", "rd (sense out)", C3), ("v(xdut.rdqb)", "DOUT reg", C1), ("v(DOUT)", "DOUT pin (5 pF)", C2)]),
]
fig, axs = plt.subplots(len(panels), 1, figsize=(13, 13), sharex=True)
for ax, (ttl, sigs) in zip(axs, panels):
    for s, lab, c in sigs:
        ax.plot(tn, D[s][m], color=c, lw=1.5, label=lab)
    ax.set_ylabel("V"); ax.set_ylim(-0.2, 2.0)
    ax.set_title(ttl, loc='left', fontsize=11)
    ax.legend(loc='upper right', fontsize=8.5, ncol=len(sigs))
    for k in range(k0, k1 + 1):
        ax.axvline((k * T + T / 2) * 1e9, color=GRID, lw=0.7, zorder=0)
axs[-1].set_xlabel("time [ns]")
fig.suptitle(title, color=TXT, fontsize=13, fontweight='bold')
fig.tight_layout(); fig.savefig(out)
print("saved", out)
