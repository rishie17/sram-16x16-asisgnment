"""Phase 2: array tile + row slice pitch check. Array: columns translate at 3.40, rows mirror at 3.24."""
from lib import Cell
from bitcell import build as bitcell
from gates import nand3, finv, tap, H
PX, PY = 3.40, 3.24
def array(rows=16, cols=16):
    b = bitcell(); a = Cell("array")
    # bit cell rails sit at y=-0.74 (GND) and 2.50 (VDD); mirrored rows share them
    for r in range(rows):
        my = bool(r % 2)
        y = r * PY if not my else (r + 1) * PY - 1.48    # odd rows flip about y=2.50+(r-1)*PY
        for c in range(cols):
            a.place(b, c * PX, y, my=my, name=f"c_{r}_{c}")
    return a
def rowslice():
    """NAND3 + 2-finger WL driver (0.84/1.68 total) on the 3.24 template."""
    s = Cell("rowslice"); n = nand3(); d = finv(2, .42, .84, "wldrv")
    t = tap(); s.place(t, 0, 0, name="t"); o = t.size()[0]
    s.place(n, o, 0, name="n3"); x = o + n.size()[0]; s.place(d, x, 0, name="wd")
    Y = next((a, b) for t_, a, b, _ in n.labels if t_ == "Y"); A = next((a, b) for t_, a, b, _ in d.labels if t_ == "A")
    xy = o + Y[0] + 2 * .70       # right end of the nand3 output strap, then down and across at the pin height
    s.r("m1", xy - .08, A[1] - .08, xy + .08, Y[1]); s.r("m1", xy - .08, A[1] - .08, x + A[0] + .08, A[1] + .08)
    s.sq("viali", x + A[0], A[1], .17); s.sq("m1", x + A[0], A[1], .32)
    for t_, a, b, ly in n.labels:
        if t_ in "ABC": s.label(t_, o + a, b, ly)
    wy = next((a, b, ly) for t_, a, b, ly in d.labels if t_ == "Y"); s.label("WL", x + wy[0], wy[1], wy[2])
    s.label("VDD", .1, H, "m1"); s.label("GND", .1, 0, "m1")
    return s
if __name__ == "__main__":
    a = array(4, 4); f = a.flat()
    gnd = sorted({round(y1 + .18, 3) for ly, x0, y0, x1, y1 in f if ly == "m1" and x1 - x0 > 3})
    print("4x4 rail centre rows:", gnd[:8]); print("4x4 bbox", a.bbox())
    r = rowslice(); print("rowslice", r.size(), "needs height 3.24 pitch")
