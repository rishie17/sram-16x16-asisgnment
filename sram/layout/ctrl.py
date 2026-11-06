"""Phase 3: control strip placed and wired from the real netlist.
Row A = flops, pins drop on m2. Row B = logic, pins rise on m4. Channel of m3 tracks between them.
Output stages sit right of the core on their own VDDIO rail."""
from lib import Cell
from gates import inv, nand2, finv, tap, H
from dff import build as sdff
from periph import rwckt, inbuf, biginv, bank
import flatnet
from blocks import core, bx, BUS, XPCB, XT, XS, XG
_memo = {}
def memo(key, f):
    if key not in _memo: _memo[key] = f()
    return _memo[key]
def inv_for(wn, wp):
    return {(.42, .84): lambda: memo("inv", inv), (.84, 1.68): lambda: memo("wld", lambda: finv(2, .42, .84, "wldrv")),
            (1.68, 3.36): lambda: memo("ib2", lambda: inbuf()[1]), (3.36, 6.72): lambda: memo("ix6", lambda: finv(6, .56, 1.12, "ix6")),
            (1.26, 2.52): lambda: memo("ix3s", lambda: finv(3, .42, .84, "ix3s")), (2.52, 5.04): lambda: memo("ix6s", lambda: finv(6, .42, .84, "ix6s"))}[(wn, wp)]()
CORE = ("Xc_", "Xrd", "Xwd", "Xcd", "Xcs", "Xpre", "Xmux", "Xpad")
def insts():
    """(name, kind, pins{cell pin: net}) for everything outside the core block."""
    out = []
    for t in flatnet.top_insts():
        n = t[0]
        if n.startswith(CORE): continue
        P = dict(x.split("=") for x in t if "=" in x); A = [x for x in t[1:] if "=" not in x]; k = A[-1]; N = A[:-1]
        if k == "inv": out.append((n, inv_for(float(P.get("wn", .42)), float(P.get("wp", .84))), {"A": N[0], "Y": N[1]}))
        elif k == "nand2" and P.get("wn") == "1.68":
            out.append((n + "n", memo("c1n", lambda: bank("c1n", "n", ["A", "B"], ["Y", "", "GND"], 1.68)), {"A": N[0], "B": N[1], "Y": N[2]}))
            out.append((n + "p", memo("c1p", lambda: bank("c1p", "p", ["A", "B"], ["Y", "VDD", "Y"], 1.68)), {"A": N[0], "B": N[1], "Y": N[2]}))
        elif k == "nand2": out.append((n, memo("nand2", nand2), {"A": N[0], "B": N[1], "Y": N[2]}))
        elif k == "dff": out.append((n, memo("sdff", sdff), {"D": N[0], "CLK": N[1], "Q": N[2], "QB": N[3]}))
        elif k == "rwckt": out.append((n, memo("rw", rwckt), dict(zip("DL DLB WE DIN DINB PCB RD".split(), N[:7]))))
        elif k == "inbuf":
            a, b = inbuf(); out.append((n + "a", memo("ib1", lambda: a), {"A": N[0], "Y": n + "_m"})); out.append((n + "b", memo("ib2", lambda: b), {"A": n + "_m", "Y": N[1]}))
        elif k == "outbuf": pass
        else: raise ValueError(k)
    return out
C = .17
YS = -8.5 - 2 * 3.24       # bottom of the core block
YA = -19.6                 # row A GND rail
TP = .64
def rail_pins(cell):
    P = {}
    for t, x, y, ly in cell.labels:
        if t not in ("VDD", "GND"): P.setdefault(t, []).append((x, y, ly))
    if "nand2" == cell.name: P["Y"] = [(P["Y"][0][0] + 1.4, P["Y"][0][1], "m1")]
    return P
def drop(c, x, y, yt, ly):
    """row A pin or bus end: pin stack, m2 stub, via2 onto track yt"""
    if ly == "li": c.sq("viali", x, y, C)
    if ly in ("li", "m1"):
        c.r("m1", x - .13, y - .16, x + .13, y + .16); c.sq("via1", x, y, .26); c.sq("m2", x, y, .32)
    w = .15 if abs(y - yt) < .65 else .07
    c.r("m2", x - w, min(y, yt), x + w, max(y, yt)); c.r("m2", x - .15, yt - .185, x + .15, yt + .185); c.sq("via2", x, yt, .28)
def rise(c, x, y, yt, ly, dog):
    """row B / output pin: stack to m3, dogleg to clear neighbours, m4 riser, via3 onto track yt"""
    xr = x + dog
    if ly == "li": c.sq("viali", x, y, C)
    if ly in ("li", "m1"):
        c.r("m1", x - .13, y - .16, x + .13, y + .16); c.sq("via1", x, y, .26); c.sq("m2", x, y, .32)
    c.r("m2", x - .15, y - .185, x + .15, y + .185); c.sq("via2", x, y, .28)
    c.r("m3", min(x, xr) - .165, y - .37, max(x, xr) + .165, y + .37); c.sq("via3", xr, y, .32)
    c.r("m4", xr - .17, min(y, yt) - .17, xr + .17, max(y, yt) + .17); c.sq("via3", xr, yt, .32)
def outcluster(c, x0, yref, ybot):
    """ob1..ob6 on a common mid-line, so N and P banks and wells line up and A/Y wire straight across.
    GND and VDDIO each reach an m3 bar through m2 at the stage's rail."""
    S = [biginv("ob1", .42, .84), biginv("ob2", 1.68, 3.36), biginv("ob3", 6.72, 13.44), biginv("ob4", 27, 55), biginv("ob5", 108, 215), biginv("ob6", 430, 860)]
    x = x0; prev = None; yms = [next(b for t, a, b, _ in k.labels if t == "A") for k in S]
    top = max(yref - m + next(b for t, a, b, _ in k.labels if t == "VDD") for k, m in zip(S, yms)) + 1.0
    for k, m in zip(S, yms):
        y0 = yref - m; c.place(k, x, y0, name=k.name)
        L = {t: (a, b, ly) for t, a, b, ly in k.labels}; a = (x + L["A"][0], y0 + L["A"][1]); yy = (x + L["Y"][0], y0 + L["Y"][1])
        tv = y0 + L["VDD"][1]; xv = x + .4 + .35
        c.sq("via1", xv, tv, .26); c.r("m2", xv - .15, tv - .2, xv + .15, top + .185); c.sq("via2", xv, top, .28)
        c.sq("via1", xv, y0, .26); c.r("m2", xv - .15, ybot - .185, xv + .15, y0 + .2); c.sq("via2", xv, ybot, .28)
        if prev:
            c.sq("viali", a[0], a[1], C); c.r("m1", a[0] - .13, a[1] - .16, a[0] + .13, a[1] + .16); c.sq("via1", a[0], a[1], .26); c.r("m2", a[0] - .15, a[1] - .185, a[0] + .15, a[1] + .185); c.sq("via2", a[0], a[1], .28)
            c.r("m2", prev[0] - .15, prev[1] - .185, prev[0] + .15, prev[1] + .185); c.sq("via2", prev[0], prev[1], .28)
            c.r("m3", prev[0] - .165, a[1] - .165, a[0] + .165, a[1] + .165)
        else: first = (a[0], a[1], "li")
        prev = yy; x += k.size()[0]
    c.r("m3", x0, top - .165, x, top + .165); c.label("vddio", x0 + .9, top, "m3"); c.r("m3", x0, ybot - .165, x, ybot + .165); c.label("yd", prev[0], prev[1], "m2")
    return first, prev
def build():
    c = Cell("chip0"); c.place(core(), 0, 0, name="core"); I = insts(); pins = {}
    A = [i for i in I if i[1].name in ("sdff", "rwckt")]; B = [i for i in I if i not in A]
    t = memo("tap", tap); x = 1.0; pa = []
    for n, k, net in A:
        c.place(t, x, YA, name=f"ta_{n}"); x += t.size()[0]; c.place(k, x, YA, name=n)
        for p, N in net.items():
            for a, b, ly in rail_pins(k)[p]: pins.setdefault(N, []).append(("d", x + a, YA + b, ly))
        pa.append((n, k, x)); x += k.size()[0]
    xa = x; first, _ = outcluster(c, 66.0, 3.0, -14.2); pins.setdefault("rdqb", []).append(("o", *first))
    for i, n in enumerate(BUS): pins.setdefault(n, []).append(("b", bx(i), YS, "m2"))
    pins.setdefault("pcb", []).append(("b", XPCB, YS, "m2"))
    for n, xx in XT.items(): pins.setdefault(n, []).append(("b", xx, YS, "m2"))
    # row B x positions first: tracks only depend on x
    x = 1.0; pb = []
    for j, (n, k, net) in enumerate(B):
        if k.name == "c1n" or (j and B[j - 1][1].name == "c1n"):
            q = memo("ptap", lambda: tap(False)); pb.append(("tap", q, x, {})); x += q.size()[0]
        elif j % 6 == 0: pb.append(("tap", t, x, {})); x += t.size()[0]
        pb.append((n, k, x, net)); x += k.size()[0]
    xb = x
    for n, k, x, net in pb:
        for p, N in net.items():
            for a, b, ly in rail_pins(k)[p]:
                pins.setdefault(N, []).append(("r", x + a, b, ly, (.30 if a > 1 else -.30) if k.name in ("c1n", "c1p") and p == "Y" else (.30 if p == "Y" else 0)))
    tr, T = [], {}
    for N, P in sorted(pins.items(), key=lambda kv: min(p[1] for p in kv[1])):
        lo, hi = min(p[1] for p in P) - .5, max(p[1] for p in P) + .5
        for k, e in enumerate(tr):
            if e < lo - .4: tr[k] = hi; T[N] = k; break
        else: T[N] = len(tr); tr.append(hi)
    ytr = lambda k: YA - .8 - k * TP
    YB = ytr(len(tr) - 1) - .8 - H
    for n, k, x, net in pb: c.place(k, x, YB, name=n if n != "tap" else f"tb_{x}")
    for N, P in pins.items():
        yt = ytr(T[N]); xs = []
        for p in P:
            if p[0] == "d": drop(c, p[1], p[2], yt, p[3]); xs.append(p[1])
            elif p[0] == "b": drop(c, p[1], p[2], yt, p[3]); xs.append(p[1])
            elif p[0] == "o": rise(c, p[1], p[2], yt, p[3], 0); xs.append(p[1])
            else: rise(c, p[1], p[2] + YB, yt, p[3], p[4]); xs.append(p[1] + p[4])
        c.r("m3", min(xs) - .2, yt - .165, max(max(xs) + .2, min(xs) + .55), yt + .165)     # 0.75 long meets m3 min area
        if N.endswith("_pad"): c.label(N, min(xs), yt, "m3")
    # n-well bars close the 0.1 um steps between neighbouring cells' wells
    for (n, k, x, net) in pb:
        if k.name == "ptap" or k.name == "c1n": continue
        c.r("nwell", x, YB + 1.98, x + k.size()[0], YB + 2.5)
    for n, k, x in pa:
        if k.name == "sdff": c.r("nwell", x - t.size()[0], YA + 1.98, x + k.size()[0], YA + 2.5)
        else: c.r("nwell", x - t.size()[0], YA + 1.98, x, YA + 2.5)
    # rails
    xr = max(xa, xb)
    for y, xs_ in ((YA, XG), (YB, XG), (YA + H, XS), (YB + H, XS)):
        c.r("m1", xs_ - .2, y - .18, 1.0, y + .18); c.sq("via1", xs_, y, .26)
    c.r("m2", XG - .15, YB - .25, XG + .15, YS); c.r("m2", XS - .2, YB + H - .25, XS + .2, YS)
    c.label("VDD", XS, YA + 1, "m2"); c.label("GND", XG, YA + 1, "m2")
    print("tracks", len(tr), "YB", round(YB, 2), "row A ends", round(xa, 1), "row B ends", round(xb, 1))
    return c
if __name__ == "__main__":
    b = build(); print(b.size())
