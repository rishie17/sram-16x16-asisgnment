import matplotlib.pyplot as plt, numpy as np, sys
sys.path.insert(0,'.'); from style import *
from paths import ROOT, CELLS, SIM, PLOTS, PDK_LIB
fig,ax=plt.subplots(figsize=(13,5.6)); ax.axis('off')
N=11; rows=["CLK","ADDR","RW","DIN","phase","DOUT"]; H=1.0
def y(i): return (len(rows)-1-i)*1.6
for i,r in enumerate(rows): ax.text(-0.3,y(i)+0.35,r,ha='right',va='center',fontsize=11,color=TXT,fontweight='bold')
# clock: rising edges at k+0.5
t=[];v=[]
for k in range(N):
    t+= [k,k+0.5,k+0.5,k+1]; v+=[0,0,1,1]
ax.plot(t,np.array(v)*0.7+y(0),color=C1)
for k in range(N): ax.text(k+0.5,y(0)+0.95,f"{k}",ha='center',fontsize=8,color=TXT2)
def bus(i,labels,colors=None):
    for k,l in enumerate(labels):
        if l is None: continue
        x0,x1=k+0.05,k+0.95; yy=y(i)
        fc=(colors[k] if colors else "#ffffff")
        ax.fill([x0+0.08,x1-0.08,x1,x1-0.08,x0+0.08,x0],[yy,yy,yy+0.35,yy+0.7,yy+0.7,yy+0.35],fc=fc,ec=TXT2,lw=1)
        ax.text((x0+x1)/2,yy+0.35,l,ha='center',va='center',fontsize=9,color=TXT)
A=[f"A{7-k}" for k in range(8)]
bus(1,A+["A7'","A6'","A5'"])
bus(2,["0"]*7+["R/W","0","0","0"],["#ffffff"]*7+["#fdeee6"]+["#ffffff"]*3)
bus(3,[None]*7+["D (if W)",None,None,None])
ph=[]; 
for k in range(N):
    ax.fill_between([k+0.5,k+1],y(4),y(4)+0.7,color="#eeebfb"); ax.fill_between([k+1,k+1.5],y(4),y(4)+0.7,color="#e5f6ef")
yy=y(5); x0,x1=8.55,9.45
ax.fill([x0+0.08,x1-0.08,x1,x1-0.08,x0+0.08,x0],[yy,yy,yy+0.35,yy+0.7,yy+0.7,yy+0.35],fc="#e8f1fb",ec=TXT2,lw=1)
ax.text((x0+x1)/2,yy+0.35,"Q[A]",ha='center',va='center',fontsize=9,color=TXT)
for k in range(N): ax.axvline(k+0.5,color=GRID,lw=0.8,zorder=0)
ax.annotate("8th rising edge: address A = A7..A0 is complete,\nthis cycle reads or writes A",(7.1,y(3)+0.35),xytext=(1.0,y(3)+0.35),va='center',fontsize=9.5,color=TXT,arrowprops=dict(arrowstyle="->",color=TXT2))
ax.text(5.6,y(4)-0.5,"CLK high: decode + precharge (purple)   CLK low: wordline on, read/write (green)",fontsize=9,color=TXT2,ha='center')
ax.text(5.5,y(5)+0.35,"read data captured on the next rising edge  ->",fontsize=9.5,color=TXT2,ha='center',va='center')
ax.text(9.6,y(1)-0.45,"later cycles access the newest 8-bit window",fontsize=8.5,color=TXT2,ha='center',va='center')
ax.set_xlim(-1.2,N+0.6); ax.set_ylim(-1.2,y(0)+1.4)
ax.set_title("Serial access protocol: inputs sampled on rising edges, MSB of address first",fontsize=13)
fig.tight_layout(); fig.savefig(PLOTS+'/03_protocol_timing.png')
