import sys, json, glob, numpy as np, matplotlib.pyplot as plt
sys.path.insert(0,__import__('os').path.dirname(__import__('os').path.abspath(__file__))); from style import *
from paths import ROOT, CELLS, SIM, PLOTS, PDK_LIB
from gen_sram import make_stream
from run_check import load
from matplotlib.colors import ListedColormap
T=5e-9; c,e=make_stream('full'); D=load('full_5ns.dat'); t=D['time']
def addr(k):
    reg=[x[0] for x in c[k-7:k+1]]; return sum(b<<(7-i) for i,b in enumerate(reg))
W=np.full((16,16),np.nan); R=np.full((16,16),np.nan)
for k in range(7,263): a=addr(k); W[a>>4,a&15]=c[k][2]
for k in range(263,519):
    a=addr(k); v=np.interp((k+1)*T+T/2+0.95*T,t,D['v(DOUT)']); R[a>>4,a&15]=1 if v>0.9 else 0
cm=ListedColormap(["#fcfcfb","#2a78d6"])
fig,ax=plt.subplots(1,2,figsize=(12,5.6))
for a,M,ttl in [(ax[0],W,"Written via DIN (256 writes, cycles 7-262)"),(ax[1],R,"Read back at DOUT pin (256 reads, cycles 263-518)")]:
    a.imshow(M,cmap=cm,vmin=0,vmax=1); a.set_title(ttl,fontsize=11)
    a.set_xticks(range(16)); a.set_yticks(range(16)); a.set_xlabel("column  A[3:0]"); a.set_ylabel("row  A[7:4]")
    a.grid(False); a.tick_params(labelsize=7)
    for r in range(16):
        for cc in range(16): a.text(cc,r,int(M[r,cc]),ha='center',va='center',fontsize=7,color="#ffffff" if M[r,cc] else TXT2)
mism=int(np.sum(W!=R))
fig.suptitle(f"Full-array test @ 200 MHz, de Bruijn address stream: {mism} mismatches out of 256",fontsize=13,fontweight='bold',color=TXT)
fig.tight_layout(); fig.savefig(PLOTS+'/07_full_array_readback.png'); print("mismatches",mism)
