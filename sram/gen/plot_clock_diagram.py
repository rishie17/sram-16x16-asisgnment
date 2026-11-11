#!/usr/bin/env python3
"""Clock tree diagram: (a) buffer tree from gen_sram.py, (b) the three clock routes drawn at their layout
coordinates (same geometry as gen/clocktree.py; um, chip0 frame)."""
import os, sys, matplotlib.pyplot as plt
from matplotlib.patches import Rectangle
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from paths import PLOTS
from style import *
PY, PX = 3.24, 3.40
fig = plt.figure(figsize=(15, 11)); a1 = fig.add_axes([.03, .58, .94, .37]); a2 = fig.add_axes([.06, .05, .9, .48])

# (a) logical tree
a1.set_xlim(0, 100); a1.set_ylim(0, 40); a1.axis("off")
def box(x, y, t, c=TXT, w=11, h=4.4):
    a1.add_patch(Rectangle((x, y - h / 2), w, h, fill=False, ec=c, lw=1.4)); a1.text(x + w / 2, y, t, ha="center", va="center", fontsize=8.5, color=TXT)
    return x + w, y
def arrow(p, q, c=GRID): a1.annotate("", q, p, arrowprops=dict(arrowstyle="->", color=c, lw=1.2))
p = box(1, 20, "CLK pad\n+ ESD"); q = box(15, 20, "input buffer\n2 inv"); arrow(p, (15, 20))
r = box(29, 20, "root buffer\ninv 1.68/3.36\ninv 3.36/6.72", h=6); arrow(q, (29, 20))
br = [(33, "branch A: 2 inv\n(0.84/1.68, 1.68/3.36)", "clk_ff", "11 flops (8 address, RW, DIN, DOUT)\ncentre-fed met3 track, 202 um", C1),
      (20, "branch B: 3 inv\n(up to 2.52/5.04)", "clkb", "16 wordline NAND3 + write-enable NAND2\nmet2 spine up the row decoder, fed from the bottom", C2),
      (7, "branch C: NAND(ckr, 8-inv delay)\n+ 2 inv (up to 2.52/5.04)", "pcb", "16 precharge + rwckt (DL precharge)\nmet3 bar over the columns, fed from the left", C3)]
for y, drv, net, sink, c in br:
    d = box(47, y, drv, c, w=17, h=5.5); arrow((r[0], 20), (47, y))
    a1.text(66, y + .9, net, fontsize=10, fontweight="bold", color=c); arrow((d[0], y), (73, y), c)
    a1.text(73.5, y, sink, fontsize=8.5, va="center", color=TXT)
a1.set_title("(a) Clock buffer tree (sizes W_n/W_p in um, from gen_sram.py)", loc="left", fontsize=12, color=TXT)

# (b) physical routes at layout coordinates
a2.add_patch(Rectangle((6.94, 0), 16 * PX, 16 * PY, color="#dddddd", lw=0)); a2.text(34, 26, "16 x 16\nbit-cell array", ha="center", va="center", fontsize=9)
a2.add_patch(Rectangle((0, 0), 6.64, 16 * PY, fill=False, ec=GRID)); a2.text(3.3, -3, "row\ndecoder", ha="center", va="top", fontsize=7)
a2.add_patch(Rectangle((6.94, 16 * PY + .85), 16 * PX, 1.6, fill=False, ec=GRID)); a2.text(34, 57.5, "precharge row", ha="center", fontsize=7)
a2.add_patch(Rectangle((0, -21), 240, 3.7, fill=False, ec=GRID)); a2.text(230, -16.5, "row A: flops + rwckt", ha="right", fontsize=7)
a2.add_patch(Rectangle((0, -45.6), 156, 3.7, fill=False, ec=GRID)); a2.text(85, -43.75, "row B: gates and clock drivers", ha="center", va="center", fontsize=7)
L = lambda xs, ys, c, w=2: a2.plot(xs, ys, color=c, lw=w, solid_capstyle="butt")
# clk_ff: met4 riser from the driver at the centre of row B, met3 track, met2 drop to each flop
fx = [16.535 + 20.17 * i for i in range(11)]
L([116.4, 116.4], [-43.1, -35.75], C1); L([fx[0], fx[-1]], [-35.75, -35.75], C1)
for x in fx: L([x, x], [-35.75, -18.21], C1, 1); a2.plot(x, -18.21, "o", color=C1, ms=5)
# clkb: driver riser, met3 track, write-enable drop, met2 spine, one stub per row
L([29.28, 29.28], [-43.1, -32.56], C2); L([-0.5, 149.24], [-32.56, -32.56], C2); L([149.24, 149.24], [-32.56, -44.1], C2, 1); a2.plot(149.24, -44.1, "s", color=C2, ms=5)
L([-0.5, -0.5], [-32.56, 16 * PY], C2)
for r in range(16):
    y = (r * PY + 1.74) if r % 2 == 0 else ((r + 1) * PY - 1.74); L([-0.5, 2.985], [y, y], C2, 1); a2.plot(2.985, y, "o", color=C2, ms=3.5)
# pcb: driver riser, met3 track, rwckt drop, met2 riser at x=-6.1, met3 bar, one tap per column
yb = 16 * PY + .85 + 1.79
L([56.8, 56.8], [-43.1, -26.8], C3); L([-6.1, 56.8], [-26.8, -26.8], C3); L([8.85, 8.85], [-26.8, -18.18], C3, 1); a2.plot(8.85, -18.18, "s", color=C3, ms=5)
L([-6.1, -6.1], [-26.8, yb], C3); L([-6.1, 8.34 + 15 * PX], [yb, yb], C3)
for k in range(16): a2.plot(8.34 + k * PX, yb, "o", color=C3, ms=3.5)
for x, c, n in ((116.4, C1, "clk_ff driver"), (29.28, C2, "clkb driver"), (56.8, C3, "pcb driver")):
    a2.plot(x, -43.1, "^", color=c, ms=9); a2.text(x + 1.5, -49, n, fontsize=8, color=TXT)
a2.plot([], [], color=C1, lw=2, label="clk_ff: skew 0.26 ps across 11 flops")
a2.plot([], [], color=C2, lw=2, label="clkb: skew 0.60 ps across 16 rows, 2.10 ps incl. write enable")
a2.plot([], [], color=C3, lw=2, label="pcb: skew 0.18 ps across 16 columns, 2.37 ps incl. rwckt")
a2.legend(loc="upper right", fontsize=9, frameon=False)
a2.set_xlim(-12, 245); a2.set_ylim(-52, 62); a2.set_aspect("equal"); a2.set_xlabel("x [um]"); a2.set_ylabel("y [um]")
a2.set_title("(b) Clock routes at their layout coordinates (dots: sink pins, squares: off-array sinks, triangles: drivers)", loc="left", fontsize=12, color=TXT)
fig.savefig(os.path.join(PLOTS, "11_clock_tree_diagram.png"), dpi=110)
