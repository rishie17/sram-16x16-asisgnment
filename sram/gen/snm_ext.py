"""Hold/read SNM and write trip on the EXTRACTED compact bit cell (same sweep as cell_param.py).
DC only, so layout enters through extracted W/L and junction AD/PD; caps have no DC effect."""
import numpy as np, os, re, subprocess, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from snm import snm
from paths import ROOT, PDK_LIB
src = open(os.path.join(ROOT, "layout/out/bitcell_pex.spice")).read()
X = [l for l in src.splitlines() if l.startswith("X")]
assert len(X) == 6, X
def half(l, m):
    p = l.split(); return " ".join([p[0] + "h"] + [m.get(t, t) for t in p[1:5]] + p[5:])
# half cell: QB side forced by Vin, Q is the output; keep only devices with Q as drain/source
H = [half(l, {"QB": "in", "Q": "out", "BL": "bl", "WL": "wl", "VDD": "vdd", "GND": "0"}) for l in X
     if "Q" in l.split()[1:5:2] and "BLB" not in l.split()]
assert len(H) == 3, H
F = ["\n".join(x) for x in [[" ".join([l.split()[0] + "f"] + [{"BL": "blw", "BLB": "vdd", "WL": "wl", "VDD": "vdd", "GND": "0", "Q": "q", "QB": "qb"}.get(t, t) for t in l.split()[1:5]] + l.split()[5:]) for l in X]]]
net = f"""* extracted bit cell margins
.lib {PDK_LIB} tt
Vdd vdd 0 1.8
Vin in 0 0
Vwl wl 0 1.8
Vbl bl 0 1.8
Vblw blw 0 1.8
{chr(10).join(H)}
{F[0]}
.nodeset v(q)=1.8 v(qb)=0
.control
dc Vin 0 1.8 0.005
wrdata r_ext.txt v(out)
alter Vwl 0
dc Vin 0 1.8 0.005
wrdata h_ext.txt v(out)
alter Vwl 1.8
dc Vblw 1.8 0 -0.002
wrdata w_ext.txt v(q)
.endc
.end
"""
os.chdir(os.path.join(ROOT, "sim")); open("p_ext.sp", "w").write(net)
subprocess.run(["ngspice", "-b", "p_ext.sp"], capture_output=True)
r, h, w = (np.loadtxt(f"{k}_ext.txt") for k in "rhw")
i = np.argmax(w[:, 1] < .9); assert w[i, 1] < .9, "cell never flipped"
print(f"EXTRACTED: hold SNM={1000*snm(h[:,0],h[:,1]):.0f}mV read SNM={1000*snm(r[:,0],r[:,1]):.0f}mV write trip BL={1000*w[i,0]:.0f}mV")
