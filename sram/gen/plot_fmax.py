import json,glob,sys,numpy as np,matplotlib.pyplot as plt
sys.path.insert(0,__import__('os').path.dirname(__import__('os').path.abspath(__file__))); from style import *
from paths import ROOT, CELLS, SIM, PLOTS, PDK_LIB
R=[]
for f in glob.glob('fmax_*.res.json'):
    r=json.load(open(f)); R.append((1e3/r['T_ns'],r['core_errors']+r['dout_errors']==0,r['E_read_core_pJ'],r['E_write_core_pJ'],r['reads_checked'],r['core_errors']))
R.sort()
fig,ax=plt.subplots(1,2,figsize=(13,4.6))
f=[x[0] for x in R]
ax[0].scatter([x[0] for x in R if x[1]],[1]*sum(x[1] for x in R),s=90,color=C3,label="pass (all reads correct)",zorder=3)
ax[0].scatter([x[0] for x in R if not x[1]],[1]*sum(not x[1] for x in R),s=90,color="#e34948",marker="X",label="fail",zorder=3)
for x in R: ax[0].text(x[0],1.012,f"{x[0]:.0f}",ha='center',fontsize=8.5,color=TXT2)
ax[0].set_ylim(0.97,1.05); ax[0].set_yticks([]); ax[0].set_xlabel("clock frequency [MHz]")
ax[0].set_title("Fmax sweep: random R/W every cycle (schematic + est. wire C)")
ax[0].legend(loc='lower left')
ax[1].plot(f,[x[2] for x in R],"o-",color=C1,label="read"); ax[1].plot(f,[x[3] for x in R],"s-",color=C2,label="write")
ax[1].set_ylim(0,3); ax[1].set_xlabel("clock frequency [MHz]"); ax[1].set_ylabel("core energy per access [pJ]")
ax[1].set_title("Core energy per access (VDD = 1.8 V, excl. I/O)"); ax[1].legend()
fig.tight_layout(); fig.savefig(PLOTS+'/08_fmax_energy.png')
for x in R: print(x)
