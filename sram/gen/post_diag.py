#!/usr/bin/env python3
"""Short read-path waveforms at two clock periods, to find what limits Fmax."""
import os, subprocess, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import post
from paths import SIM
post.INC = post.fixed("net_diag")
P = {"pcb": "chip/Xrw/PCB", "clkb": "chip/Xwe1/B", "dl": "chip/Xrw/DL", "rd": "chip/Xrw/RD", "ff": "chip/Xck_a2/Y", "wl4": "chip/core/rc4/WL", "qb": "chip/ob1/A", "bl7": "chip/core/bl7"}
jobs = []
for T in [float(x) for x in sys.argv[1:]]:
    tag = f"diag_{T*1e9:.1f}"; L, cyc, exp, S = post.bench("rand12", T, probes=P)
    L += [".control", "set wr_singlescale", "set wr_vecnames", "run", f"wrdata {tag}.dat " + " ".join(S), ".endc", ".end"]
    p = os.path.join(SIM, tag + ".sp"); open(p, "w").write("\n".join(L))
    jobs.append(subprocess.Popen(["ngspice", "-b", p], cwd=SIM, stdout=open(p[:-3] + ".log", "w"), stderr=subprocess.STDOUT))
    print(tag, [e for e in exp][:3], cyc[:9])
for j in jobs: j.wait()
