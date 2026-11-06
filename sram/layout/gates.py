"""Pitch-matched CMOS gates. Template: GND rail y=0, VDD rail y=H=3.24 (the bit cell row pitch).
Diff may sit under the rails; tapping is done by separate tap strips (see tap()).
Rows mirror, so N diff bottom 0.14 gives 0.28 diff-diff across the shared rail."""
from lib import Cell, precheck
from extract import extract
H, P, L, C, W = 3.24, 0.70, 0.15, 0.17, 0.17
YN0, YP1 = 0.14, H - 0.14
def gate(name, inputs, nnodes, pnodes, wn, wp, out="Y", P=P, tie=False):
    """inputs: gate net per column gap. nnodes/pnodes: diff node per contact column ('' = no contact)."""
    c = Cell(name); n = len(inputs); X = [.3 + .085 + i * P for i in range(n + 1)]
    g = [(X[i] + X[i + 1]) / 2 for i in range(n)]
    W_ = X[-1] + .3 + .085; yn1, yp0 = YN0 + wn, YP1 - wp
    assert yp0 - yn1 >= .77, (name, "gate pad gap", yp0 - yn1)
    assert wp >= .72, (name, "P contact row needs wp>=0.72 to clear the VDD rail")
    yn, yp, ymid = YN0 + .21, YP1 - .36, (yn1 + yp0) / 2
    c.r("ndiff", X[0] - .165, YN0, X[-1] + .165, yn1); c.r("pdiff", X[0] - .165, yp0, X[-1] + .165, YP1)
    c.r("nwell", 0, yp0 - .18, W_, H + .31); c.r("m1", 0, -.18, W_, .18); c.r("m1", 0, H - .18, W_, H + .18)
    for i, x in enumerate(g):
        c.r("poly", x - L / 2, YN0 - .13, x + L / 2, YP1 + .13)
        if tie and i: continue
        y = round((yn1 + yp0 - .045) * 50) / 100      # window: 0.19 to ndiff, 0.235 to pdiff; poly pads fit side by side
        c.r("poly", x - .165, y - .135, x + .165, y + .135); c.sq("pc", x, y, C)
        c.r("li", x - W / 2, y - .165, x + W / 2, y + .165); c.label(inputs[i], x, y, "li")
    if tie: c.r("poly", g[0] - L / 2, ymid - .075, g[-1] + L / 2, ymid + .075)
    def lv(x, a, b): c.r("li", x - W / 2, a, x + W / 2, b)
    outs = []
    for i, x in enumerate(X):
        if nnodes[i]: c.sq("ndc", x, yn, C)
        if pnodes[i]: c.sq("pdc", x, yp, C)
        if nnodes[i] == "GND": lv(x, -.085, yn + .175); c.sq("viali", x, 0, C)
        elif nnodes[i]: lv(x, yn - .175, yn + .175)
        if pnodes[i] == "VDD": lv(x, yp - .175, H + .085); c.sq("viali", x, H, C)
        elif pnodes[i]: lv(x, yp - .175, yp + .175)
        if pnodes[i] == out:
            outs.append(x); c.sq("viali", x, yp, C)
            if nnodes[i] == out: lv(x, yn, yp)
    if len(outs) > 1: c.r("m1", outs[0] - .16, yp - .16, outs[-1] + .16, yp + .16)
    else: c.sq("m1", outs[0], yp, .32)
    c.label(out, outs[0], yp, "m1"); c.label("VDD", .1, H, "m1"); c.label("GND", .1, 0, "m1")
    return c
def inv(wn=.42, wp=.84, name="inv", P=P): return gate(name, ["A"], ["GND", "Y"], ["VDD", "Y"], wn, wp, P=P)
def nand2(): return gate("nand2", ["A", "B"], ["Y", "", "GND"], ["Y", "VDD", "Y"], .84, .84)
def nand3(): return gate("nand3", ["A", "B", "C"], ["Y", "", "", "GND"], ["Y", "VDD", "Y", "VDD"], 1.26, .84)
def tap():
    """Well/substrate tap under the rails; one at the end of every template row."""
    c = Cell("tap"); x, Wd = .425, .85
    c.r("m1", 0, -.18, Wd, .18); c.r("m1", 0, H - .18, Wd, H + .18); c.r("nwell", 0, 2.1, Wd, H + .31)
    for ly, ct, y in (("psd", "psc", 0), ("nsd", "nsc", H)):
        c.r(ly, x - .205, y - .13, x + .205, y + .13); c.sq(ct, x, y, C); c.sq("viali", x, y, C)
        c.r("li", x - W / 2, y - .175, x + W / 2, y + .175)
    c.label("VDD", .1, H, "m1"); c.label("GND", .1, 0, "m1")
    return c
def finv(k, wn, wp, name):
    """k-finger inverter; wn/wp are per finger."""
    N = ["GND", "Y"] * (k // 2 + 1); P_ = ["VDD", "Y"] * (k // 2 + 1)
    return gate(name, ["A"] * k, N[:k + 1], P_[:k + 1], wn, wp, tie=True)
if __name__ == "__main__":
    for c in (inv(), nand2(), nand3()):
        d, _ = extract(c.rects, c.labels); print(c.name, c.size(), precheck(c)); [print(" ", x) for x in sorted(d, key=str)]
