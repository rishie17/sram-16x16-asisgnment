import subprocess, sys, numpy as np, os
sys.path.insert(0,__import__('os').path.dirname(__import__('os').path.abspath(__file__))); from snm import snm
from paths import ROOT, CELLS, SIM, PLOTS, PDK_LIB
def run(wpd,wpg,wpu,tag):
    net=f"""* sizing {tag}
.lib {PDK_LIB} tt
Vdd vdd 0 1.8
Vin in 0 0
Vwl wl 0 1.8
Vbl bl 0 1.8
Xpu out in vdd vdd sky130_fd_pr__pfet_01v8 w={wpu} l=0.15
Xpd out in 0 0 sky130_fd_pr__nfet_01v8 w={wpd} l=0.15
Xpg out wl bl 0 sky130_fd_pr__nfet_01v8 w={wpg} l=0.15
* full cell for write trip: q starts 1
Xpu1 q qb vdd vdd sky130_fd_pr__pfet_01v8 w={wpu} l=0.15
Xpd1 q qb 0 0 sky130_fd_pr__nfet_01v8 w={wpd} l=0.15
Xpu2 qb q vdd vdd sky130_fd_pr__pfet_01v8 w={wpu} l=0.15
Xpd2 qb q 0 0 sky130_fd_pr__nfet_01v8 w={wpd} l=0.15
Xpg1 q wl blw 0 sky130_fd_pr__nfet_01v8 w={wpg} l=0.15
Xpg2 qb wl vdd 0 sky130_fd_pr__nfet_01v8 w={wpg} l=0.15
Vblw blw 0 1.8
.nodeset v(q)=1.8 v(qb)=0
.control
dc Vin 0 1.8 0.005
wrdata r_{tag}.txt v(out)
alter Vwl 0
dc Vin 0 1.8 0.005
wrdata h_{tag}.txt v(out)
alter Vwl 1.8
dc Vblw 1.8 0 -0.002
wrdata w_{tag}.txt v(q)
.endc
.end
"""
    open(f"p_{tag}.sp","w").write(net)
    subprocess.run(["ngspice","-b",f"p_{tag}.sp"],capture_output=True)
    r=np.loadtxt(f"r_{tag}.txt"); h=np.loadtxt(f"h_{tag}.txt"); w=np.loadtxt(f"w_{tag}.txt")
    i=np.argmax(w[:,1]<0.9); wtp=w[i,0] if w[i,1]<0.9 else float('nan')
    return 1000*snm(h[:,0],h[:,1]),1000*snm(r[:,0],r[:,1]),1000*wtp
for wpd,wpg,wpu in [(0.42,0.42,0.42),(0.63,0.42,0.42),(0.84,0.42,0.42),(1.0,0.42,0.42)]:
    t=f"{wpd}_{wpg}_{wpu}".replace('.','p')
    hs,rs,wt=run(wpd,wpg,wpu,t)
    print(f"PD={wpd} PG={wpg} PU={wpu}: hold SNM={hs:.0f}mV read SNM={rs:.0f}mV write trip BL={wt:.0f}mV")
