import matplotlib.pyplot as plt, sys
sys.path.insert(0,'.'); from style import *
from paths import ROOT, CELLS, SIM, PLOTS, PDK_LIB
from matplotlib.patches import FancyBboxPatch
fig,ax=plt.subplots(figsize=(13,7.2)); ax.set_xlim(0,130); ax.set_ylim(0,72); ax.axis('off')
def box(x,y,w,h,t,fc="#ffffff",ec=TXT2,fs=10,bold=False):
    ax.add_patch(FancyBboxPatch((x,y),w,h,boxstyle="round,pad=0.3,rounding_size=1.2",fc=fc,ec=ec,lw=1.4))
    ax.text(x+w/2,y+h/2,t,ha='center',va='center',fontsize=fs,color=TXT,fontweight='bold' if bold else 'normal')
def arr(x1,y1,x2,y2,c=TXT2):
    ax.annotate("",(x2,y2),(x1,y1),arrowprops=dict(arrowstyle="-|>",color=c,lw=1.3))
A="#e8f1fb"; B="#fdeee6"; G="#e5f6ef"; V="#eeebfb"
# pads
pads=[("CLK",62),("ADDR",50),("RW",40),("DIN",30)]
for n,y in pads:
    box(1,y,11,6,f"{n}\npad+bondwire",fc="#f3f2ee",fs=8.5)
box(117,12,12,6,"DOUT\npad+bondwire",fc="#f3f2ee",fs=8.5)
# clock tree
box(17,60,22,10,"Clock tree\nroot buf -> 3 branches\nclk_ff | clkb | pcb gen",fc=V,fs=9)
arr(12,65,17,65)
# shift register
box(17,46,22,10,"8-bit serial address\nshift register (8 DFF)\nA[7:0]",fc=A,fs=9)
arr(12,53,17,53)
box(17,30,22,12,"RW, DIN\ninput DFFs",fc=A,fs=9)
arr(12,43,17,38); arr(12,33,17,34)
# predecoders
box(45,46,18,10,"Row predecode\nA[7:6], A[5:4]\n2x (2:4)",fc=B,fs=9)
box(45,6,18,10,"Col predecode\nA[3:2], A[1:0]\n2x (2:4)",fc=B,fs=9)
arr(39,51,45,51)
def poly(pts):
    xs,ys=zip(*pts); ax.plot(xs[:-1],ys[:-1],color=TXT2,lw=1.3); arr(xs[-2],ys[-2],xs[-1],ys[-1])
poly([(39,48),(42,48),(42,11),(45,11)])
# row decoder
box(66,24,14,36,"Row decoder\n+ WL drivers\n16x NAND3\n(rh, rl, clkb)\n+ INV",fc=B,fs=9)
arr(63,51,66,51)
# array
box(83,26,30,34,"16 x 16\n6T SRAM array\n(256 bits)\n\nPD 0.63 / PG 0.42 / PU 0.42",fc=G,fs=10,bold=True)
arr(80,42,83,42)
box(83,62,30,7,"Precharge + equalise (16 col)  - pcb",fc=G,fs=8.5)
box(83,16,30,7,"16:1 column mux (NMOS pass)",fc=G,fs=8.5)
poly([(63,11),(73,11),(73,19.5),(83,19.5)])
box(83,4,30,9,"Shared write driver + read sense\n(DL / DLB, rd)",fc=G,fs=8.5)
arr(98,16,98,13)
box(117,30,12,10,"DOUT\nDFF +\n6-stage\nbuffer",fc=A,fs=8.5)
poly([(113,9),(115,9),(115,35),(117,35)]); arr(123,30,123,18.4)
# clock lines
ax.plot([39,113],[68.5,68.5],color=C4,lw=1,ls="--"); ax.text(76,69.6,"clkb -> WL enable / WE ,  pcb -> precharge ,  clk_ff -> all DFFs",fontsize=8.5,color=C4,ha='center')
poly([(28,30),(28,1.2),(80,1.2),(80,7),(83,7)])
ax.set_title("256 x 1 SRAM - block diagram (5 pins, all through bond wire + pad models)",fontsize=13)
fig.tight_layout(); fig.savefig(PLOTS+'/00_block_diagram.png')
