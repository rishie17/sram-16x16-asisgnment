#!/usr/bin/env python3
"""Leakage (DC, inputs low) and clock-branch arrival times on the extracted netlist."""
import os, subprocess, sys, json
import numpy as np
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import post
from paths import SIM, PDK_LIB
post.INC = post.fixed("net_extra")
HEAD = [f".lib {PDK_LIB} tt", f".include {post.INC}", "Vdd vdd 0 1.8", "Vddio vddio 0 1.8", "Xtop p_DOUT vddio 0 vdd p_CLK p_ADDR p_RW p_DIN sram_top"]
# as in Stage 1 leakage_op.sp: without defined states every cell solves at its metastable midpoint
Q = [f"v(xtop.chip/core/c_{r}_{c}/q)=1.8 v(xtop.chip/core/c_{r}_{c}/qb)=0" for r in range(16) for c in range(16)]
NS = [".nodeset " + " ".join(Q[i:i + 8]) for i in range(0, 256, 8)]
def run(name, body):
    p = os.path.join(SIM, name + ".sp"); open(p, "w").write("\n".join(body))
    r = subprocess.run(["ngspice", "-b", p], cwd=SIM, capture_output=True, text=True); open(p[:-3] + ".log", "w").write(r.stdout + r.stderr); return r.stdout
out = run("leak", ["* leakage"] + HEAD + ["Vc p_CLK 0 0", "Va p_ADDR 0 0", "Vr p_RW 0 0", "Vi p_DIN 0 0", "Rl p_DOUT 0 1e9", *NS, ".control", "op", "print i(Vdd) i(Vddio)", ".endc", ".end"])
print([l for l in out.splitlines() if l.startswith("i(")])
T = 5e-9; N = {"clk_ff": "chip/Xck_a2/Y", "ckr": sys.argv[1], "clkb": sys.argv[2], "pcb": sys.argv[3], "wl0": "chip/core/rc0/WL"}
tr = ["* branches"] + HEAD + [f"Vc c 0 PULSE(0 1.8 {T/2} 50p 50p {T/2-50e-12} {T})", "Rc c p_CLK 50", "Cp p_CLK 0 1p", "Va p_ADDR 0 0", "Vr p_RW 0 0", "Vi p_DIN 0 0", "Rl p_DOUT 0 1e9"]
tr += [f".tran 5p {3*T}", ".control", "set wr_singlescale", "set wr_vecnames", "run", "wrdata br.dat v(p_CLK) " + " ".join(f"v(xtop.{v.lower()})" for v in N.values()), ".endc", ".end"]
run("branches", tr)
d = np.loadtxt(os.path.join(SIM, "br.dat"), skiprows=1); t = d[:, 0]; c = {k: d[:, i + 2] for i, k in enumerate(N)}
def cross(v, a, b, rise):
    i = np.where((t > a) & (t < b))[0]; f = (v[i] > .9) if rise else (v[i] < .9); j = i[np.argmax(f)]; return t[j] * 1e12
t0 = 7.5e-9; ref = cross(d[:, 1], t0 - 1e-9, t0 + 1e-9, True)
R = {k: round(cross(c[k], t0 - 1e-9, t0 + 2e-9, k != "clkb") - ref, 1) for k in ("ckr", "clk_ff", "clkb")}
print(json.dumps({"rise_delay_ps_from_pin": R}))
