import numpy as np, matplotlib.pyplot as plt, sys
sys.path.insert(0,__import__('os').path.dirname(__import__('os').path.abspath(__file__))); from style import *; from snm import snm
from paths import ROOT, CELLS, SIM, PLOTS, PDK_LIB
t="0p63_0p42_0p42"
h=np.loadtxt(f"h_{t}.txt"); r=np.loadtxt(f"r_{t}.txt"); w=np.loadtxt(f"w_{t}.txt")
fig,ax=plt.subplots(1,3,figsize=(15,4.6))
for a,d,name,c in [(ax[0],h,"Hold (WL=0)",C1),(ax[1],r,"Read (WL=1, BL=BLB=VDD)",C2)]:
    a.plot(d[:,0],d[:,1],color=c,label="Inverter 1"); a.plot(d[:,1],d[:,0],color=c,ls="--",label="Inverter 2 (mirrored)")
    s=snm(d[:,0],d[:,1]); a.set_title(f"{name}: SNM = {s*1000:.0f} mV")
    a.set_xlabel("V(Q) [V]"); a.set_ylabel("V(QB) [V]"); a.set_aspect("equal"); a.legend(loc="upper right",fontsize=9)
ax[2].plot(w[:,0],w[:,1],color=C3); ax[2].invert_xaxis()
i=np.argmax(w[:,1]<0.9); ax[2].axvline(w[i,0],color=TXT2,lw=1,ls=":")
ax[2].annotate(f"cell flips at BL = {w[i,0]*1000:.0f} mV",(w[i,0],0.9),xytext=(1.75,0.55),fontsize=10,color=TXT,arrowprops=dict(arrowstyle="->",color=TXT2))
ax[2].set_title("Write margin (WL=1, BLB=VDD)"); ax[2].set_xlabel("V(BL) swept down [V]"); ax[2].set_ylabel("V(Q) [V]")
fig.suptitle("6T bit cell, SKY130 TT 1.8 V: PD 0.63/0.15, PG 0.42/0.15, PU 0.42/0.15 (cell ratio 1.5)",color=TXT,fontsize=12)
fig.tight_layout(); fig.savefig(PLOTS+"/01_bitcell_snm_write.png")
# sizing sweep table plot
rows=[(0.42,307,698),(0.63,375,654),(0.84,416,624),(1.0,448,604)]
fig,ax=plt.subplots(figsize=(6,4)); x=[r[0] for r in rows]
ax.plot(x,[r[1] for r in rows],"o-",color=C2,label="Read SNM"); ax.plot(x,[r[2] for r in rows],"s-",color=C3,label="Write trip V(BL)")
ax.axvline(0.63,color=TXT2,lw=1,ls=":"); ax.text(0.645,500,"chosen",color=TXT2)
ax.set_xlabel("Pull-down width [um] (PG = PU = 0.42)"); ax.set_ylabel("mV"); ax.set_title("Bit cell sizing trade-off"); ax.legend()
fig.tight_layout(); fig.savefig(PLOTS+"/02_cell_sizing_sweep.png")
