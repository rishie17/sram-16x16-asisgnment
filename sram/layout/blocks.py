"""Phase 2. Rails: GND at y=0, VDD at y=H, shared by mirrored rows, so bit cell origin is +0.74.
rowcell = tap + NAND3 + WL driver + WL strap; rowdec = 16 rowcells + bus; core = rowdec + array."""
from lib import Cell
from bitcell import build as bitcell
from gates import nand2, nand3, finv, tap, H
from column import precharge, colmux
PX, PY = 3.40, 3.24
WLY, C = .325, .17     # wordline centre above the GND rail in template coordinates
def rowslice():
    s = Cell("rowslice"); n = nand3(); d = finv(2, .42, .84, "wldrv"); t = tap()
    s.place(t, 0, 0, name="t"); o = t.size()[0]
    s.place(n, o, 0, name="n3"); x = o + n.size()[0]; s.place(d, x, 0, name="wd")
    Y = next((a, b) for t_, a, b, _ in n.labels if t_ == "Y"); A = next((a, b) for t_, a, b, _ in d.labels if t_ == "A")
    xy = o + Y[0] + 2 * .70
    s.r("m1", xy - .08, A[1] - .08, xy + .08, Y[1]); s.r("m1", xy - .08, A[1] - .08, x + A[0] + .08, A[1] + .08)
    s.sq("viali", x + A[0], A[1], C); s.r("m1", x + A[0] - .13, A[1] - .16, x + A[0] + .13, A[1] + .16)
    for t_, a, b, ly in n.labels:
        if t_ in "ABC": s.label(t_, o + a, b, ly)
    wy = next((a, b, ly) for t_, a, b, ly in d.labels if t_ == "Y"); s.label("WL", x + wy[0], wy[1], wy[2])
    s.label("VDD", .1, H, "m1"); s.label("GND", .1, 0, "m1")
    return s
def rowcell():
    """rowslice + strap to array poly. Array poly starts at the cell's right edge."""
    c = Cell("rowcell"); s = rowslice(); c.place(s, 0, 0, name="s"); Wd = s.size()[0]; W_ = Wd + .75; x = W_ - .3
    wy = next((a, b) for t_, a, b, _ in s.labels if t_ == "WL")
    c.r("m1", Wd, -.18, W_, .18); c.r("m1", Wd, H - .18, W_, H + .18); c.r("nwell", Wd, 2.1, W_, H + .31)   # rail + well bridge
    c.r("poly", x - .165, WLY - .135, x + .165, WLY + .135); c.r("poly", x, WLY - .075, W_, WLY + .075)
    c.sq("pc", x, WLY, C); c.r("li", x - .085, WLY - .165, x + .085, .71); c.sq("viali", x, .62, C)
    c.r("m1", x - .16, .46, x + .16, .78); c.r("m1", x - .08, .46, x + .08, wy[1] + .08); c.r("m1", wy[0], wy[1] - .08, x + .08, wy[1] + .08)
    for t_, a, b, ly in s.labels:
        if t_ in "ABC": c.label(t_, a, b, ly)
    c.label("WL", x, .62, "m1"); c.label("VDD", .1, H, "m1"); c.label("GND", .1, 0, "m1")
    return c
def colslice():
    """Column decoder slice, 3.40 wide. NAND2 row (bottom) + mirrored driver row (top) sharing VDD.
    Driver Y lands at x=1.40 under colmux CSEL, so CSEL is one straight m2 line."""
    c = Cell("colslice"); n = nand2(); d = finv(2, .42, .84, "csdrv", P=.92); xn, xd = 1.235, .095
    c.place(n, xn, 0, name="n"); c.place(d, xd, 2 * H, my=True, name="d")
    for y in (0, H, 2 * H): c.r("m1", 0, y - .18, 3.40, y + .18)
    c.r("nwell", 0, 1.95, 3.40, 2 * H - 1.95)
    L = lambda k, t: next((a, b) for t_, a, b, _ in k.labels if t_ == t)
    ny, da, dy = L(n, "Y"), L(d, "A"), L(d, "Y")
    xa, ya = xd + da[0], 2 * H - da[1]; yn = ny[1]
    c.r("m1", xa - .16, yn - .16, xn + ny[0], yn + .16); c.sq("via1", xa, yn, .26); c.sq("m2", xa, yn, .32)
    c.r("m2", xa - .15, yn, xa + .15, ya); c.sq("m2", xa, ya, .32); c.sq("via1", xa, ya, .26); c.sq("viali", xa, ya, C); c.r("m1", xa - .13, ya - .16, xa + .13, ya + .16)
    c.label("A", xn + L(n, "A")[0], L(n, "A")[1], "li"); c.label("B", xn + L(n, "B")[0], L(n, "B")[1], "li")
    c.label("CSEL", xd + dy[0], 2 * H - dy[1], "m1"); c.label("VDD", .1, H, "m1"); c.label("GND", .1, 0, "m1")
    return c
TRK = {"A": .46, "B": 1.10, "C": 1.74}
BUS = ["clkb"] + [f"rl{i}" for i in range(4)] + [f"rh{i}" for i in range(4)]
def bx(i): return -.5 - .5 * i
def core(rows=16, cols=16):
    c = Cell("core"); rc = rowcell(); b = bitcell(); xA = rc.size()[0]
    pin = {t: (a, y) for t, a, y, _ in rc.labels}
    Yr = lambda r, y: (r * PY + y) if r % 2 == 0 else ((r + 1) * PY - y)
    for r in range(rows):
        my = bool(r % 2); y0 = r * PY if not my else (r + 1) * PY
        c.place(rc, 0, y0, my=my, name=f"rc{r}")
        for k in range(cols):
            c.place(b, xA + .30 + k * PX, (r * PY + .74) if not my else ((r + 1) * PY - .74), my=my, name=f"c_{r}_{k}")
        for t, net in (("A", f"rh{r >> 2}"), ("B", f"rl{r & 3}"), ("C", "clkb")):
            x, py = pin[t]; yt, yp = Yr(r, TRK[t]), Yr(r, py); xb = bx(BUS.index(net))
            c.sq("viali", x, yp, C); c.r("m1", x - .13, yp - .16, x + .13, yp + .16); c.sq("via1", x, yp, .26); c.sq("m2", x, yp, .32)
            w = .15 if abs(yp - yt) < .65 else .07
            c.r("m2", x - w, min(yp, yt), x + w, max(yp, yt)); c.r("m2", x - .15, yt - .185, x + .15, yt + .185); c.sq("via2", x, yt, .28)
            c.r("m3", xb - .2, yt - .165, x + .2, yt + .165); c.r("m2", xb - .15, yt - .185, xb + .15, yt + .185); c.sq("via2", xb, yt, .28)
    top = rows * PY
    for i, n in enumerate(BUS):
        c.r("m2", bx(i) - .15, 0, bx(i) + .15, top); c.label(n, bx(i), 1, "m2")
    for k in range(cols):
        c.label(f"bl{k}", xA + .30 + k * PX, top - 1, "m2"); c.label(f"blb{k}", xA + .30 + k * PX + 2.8, top - 1, "m2")
    # ---- column side: precharge above, mux + decoder below (y<0)
    if cols == 16:
        pre, mux, cs = precharge(), colmux(), colslice(); yp, ym = top + .85, -1.90
        T = {"dl": -2.2, "dlb": -2.84}; T.update({f"ch{i}": -3.48 - .64 * i for i in range(4)}); T.update({f"cl{i}": -6.04 - .64 * i for i in range(4)})
        ys = -8.5 - 2 * PY; pm = {t: (a, y) for t, a, y, _ in mux.labels}; ps = {t: (a, y) for t, a, y, _ in cs.labels}
        xl, xr = xA + .30 - .30, xA + .30 + 16 * PX
        for k in range(cols):
            xc = xA + .30 + k * PX
            c.place(pre, xc, yp, name=f"pre{k}"); c.place(mux, xc, ym, name=f"mux{k}"); c.place(cs, xc, ys, name=f"cs{k}")
            for dx in (0, 2.8):
                c.r("m2", xc + dx - .15, top, xc + dx + .15, yp); c.r("m2", xc + dx - .15, ym + 1.55, xc + dx + .15, 0)
            def drop(x, py, yt, ly="m1"):
                """pin at (x,py) to m3 track yt"""
                if ly == "li": c.sq("viali", x, py, C)
                c.r("m1", x - .13, py - .16, x + .13, py + .16); c.sq("via1", x, py, .26); c.sq("m2", x, py, .32)
                w = .15 if abs(py - yt) < .65 else .07
                c.r("m2", x - w, min(py, yt), x + w, max(py, yt)); c.r("m2", x - .15, yt - .185, x + .15, yt + .185); c.sq("via2", x, yt, .28)
            drop(xc + pm["DL"][0], ym + pm["DL"][1], T["dl"]); drop(xc + pm["DLB"][0], ym + pm["DLB"][1], T["dlb"])
            drop(xc + ps["A"][0], ys + ps["A"][1], T[f"ch{k >> 2}"], "li"); drop(xc + ps["B"][0], ys + ps["B"][1], T[f"cl{k & 3}"], "li")
            # CSEL: straight m2 from driver output to the mux gate pad
            x = xc + 1.4; yc = ym + pm["CSEL"][1]; yd = ys + ps["CSEL"][1]
            c.sq("viali", x, yc, C); c.r("m1", x - .13, yc - .16, x + .13, yc + .16); c.sq("via1", x, yc, .26); c.sq("m2", x, yc, .32)
            c.sq("via1", x, yd, .26); c.sq("m2", x, yd, .32); c.r("m2", x - .07, yd, x + .07, yc)
            c.label(f"csel{k}", x, yc, "m2")
            # PCB up to the m3 bar
            x = xc + 1.4; yb = yp + 1.79
            c.sq("viali", x, yb, C); c.r("m1", x - .13, yb - .16, x + .13, yb + .16); c.sq("via1", x, yb, .26); c.r("m2", x - .15, yb - .185, x + .15, yb + .185); c.sq("via2", x, yb, .28)
        c.r("m3", bx(0) - .2, yp + 1.79 - .165, xr, yp + 1.79 + .165); c.label("pcb", xA, yp + 1.79, "m3")
        for n, y in T.items():
            c.r("m3", xA, y - .165, xr, y + .165); c.label(n, xA + .1, y, "m3")
        c.r("m1", bx(len(BUS)) - .3, yp, xl + .30, yp + .36)              # precharge VDD rail back to the strap
    xs = bx(len(BUS)) - .1                    # VDD strap: m2 bar left of the bus, m1 rail stubs reach it
    c.r("m2", xs - .2, 0, xs + .2, top + 1.5)
    for r in range(1, rows + 1, 2):
        y = r * PY; c.r("m1", xs - .2, y - .18, 0, y + .18); c.sq("via1", xs, y, .26)
    if cols == 16:
        c.sq("via1", xs, top + .85 + .18, .26)
        y = ys + PY; c.r("m1", xs - .2, y - .18, xA + .30 - .85, y + .18); c.sq("via1", xs, y, .26)
        c.r("m2", xs - .2, y - .185, xs + .2, 0)
        t = tap(); c.place(t, xA + .30 - .85, ys, name="tcs0"); c.place(t, xA + .30 - .85, ys + 2 * PY, my=True, name="tcs1")
    c.label("VDD", xs, PY, "m2"); c.label("GND", .1, 0, "m1")
    return c
