"""rwckt, inbuf, outbuf, pad. Single-polarity banks fit wide devices on the 3.24 template;
outbuf stages use biginv (tall parallel fingers, not on the template)."""
from lib import Cell, precheck
from extract import extract
from gates import finv, inv, gate, tap, H, YN0, YP1
from route import route
C, W, L, P = .17, .17, .15, .92
def bank(name, ty, inputs, nodes, w, ypin=1.62):
    """One diff strip. nodes: net per contact column ('' = none). Rail nets drop to the rail by li."""
    c = Cell(name); n = len(inputs); X = [.385 + i * P for i in range(n + 1)]; Wd = X[-1] + .385
    d, ct = ("ndiff", "ndc") if ty == "n" else ("pdiff", "pdc")
    y0, y1 = (YN0, YN0 + w) if ty == "n" else (YP1 - w, YP1); yc = (y0 + y1) / 2
    c.r(d, X[0] - .165, y0, X[-1] + .165, y1); c.r("m1", 0, -.18, Wd, .18); c.r("m1", 0, H - .18, Wd, H + .18)
    if ty == "p": c.r("nwell", 0, min(y0 - .18, H - .90), Wd, H + .31)
    for i in range(n):
        g = (X[i] + X[i + 1]) / 2; yg = (y1 + .32) if ty == "n" else (y0 - .32)
        c.r("poly", g - L / 2, min(y0 - .13, yg), g + L / 2, max(y1 + .13, yg))
        c.r("poly", g - .165, yg - .135, g + .165, yg + .135); c.sq("pc", g, yg, C)
        c.r("li", g - W / 2, yg - .165, g + W / 2, yg + .165); c.label(inputs[i], g, yg, "li")
    for x, nd in zip(X, nodes):
        if not nd: continue
        c.sq(ct, x, yc, C); rail = {"GND": 0, "VDD": H}.get(nd)
        if rail is None:
            yl = min(yc, 2.70) if ty == "p" else yc      # keep the pin's m1 pad clear of the VDD rail
            c.r("li", x - W / 2, min(yl, yc) - .175, x + W / 2, max(yl, yc) + .175); c.label(nd, x, yl, "li")
        else:
            c.r("li", x - W / 2, min(rail - .085, yc - .175), x + W / 2, max(rail + .085, yc + .175)); c.sq("viali", x, rail, C)
    c.label("VDD", .1, H, "m1"); c.label("GND", .1, 0, "m1")
    return c
def rwckt():
    S = [("t", tap()), ("w", bank("rw_wr", "n", ["WE", "DINB", "DIN", "WE"], ["DL", "", "GND", "", "DLB"], 1.68)),
         ("t2", tap()),
         ("p", bank("rw_pre", "p", ["PCB", "PCB"], ["DL", "VDD", "DLB"], 1.26)),
         ("e", bank("rw_eq", "p", ["PCB"], ["DL", "DLB"], .42)),
         ("s", gate("rw_sa", ["A"], ["GND", "Y"], ["VDD", "Y"], .42, 1.26, P=.92))]
    c = Cell("rwckt"); x = 0; pins = {}
    for n, k in S:
        c.place(k, x, 0, name=n)
        for t, a, b, ly in k.labels: pins.setdefault((n, t), []).append((x + a, b, ly))
        x += k.size()[0]
    A = lambda n, t: pins[(n, t)]
    route(c, {"DL": A("w","DL") + A("p","DL") + A("e","DL") + A("s","A"), "DLB": A("w","DLB") + A("p","DLB") + A("e","DLB"),
              "WE": A("w","WE"), "PCB": A("p","PCB") + A("e","PCB")})
    for n, t, top in (("w","DIN","DIN"), ("w","DINB","DINB"), ("s","Y","RD")): c.label(top, *A(n, t)[0][:2], A(n, t)[0][2])
    for t, a in (("DL", A("w","DL")[0]), ("DLB", A("w","DLB")[0]), ("WE", A("w","WE")[0]), ("PCB", A("p","PCB")[0])): c.label(t, a[0], a[1], a[2])
    c.label("VDD", .1, H, "m1"); c.label("GND", .1, 0, "m1")
    return c
def inbuf():
    return [finv(2, .42, .84, "ib1"), finv(3, .56, 1.12, "ib2")]
def biginv(name, wnt, wpt, wf=10.0):
    """N bank below, P bank above; poly bar in the gap ties all gates; Y columns tied on m2."""
    kn, kp = max(1, round(wnt / wf)), max(1, round(wpt / wf)); k = max(kn, kp)
    wn, wp = wnt / kn, wpt / kp; c = Cell(name); pt = .70; gap = 1.2; Y0 = .6
    X = [.385 + i * pt for i in range(k + 1)]; G = [(X[i] + X[i + 1]) / 2 for i in range(k)]
    yn0, yn1 = Y0, Y0 + wn; yp0, yp1 = yn1 + gap, yn1 + gap + wp; ym = (yn1 + yp0) / 2; Wd = X[-1] + .385; T = yp1 + .6
    c.r("ndiff", X[0] - .165, yn0, X[kn] + .165, yn1); c.r("pdiff", X[0] - .165, yp0, X[kp] + .165, yp1)
    c.r("nwell", 0, yp0 - .18, Wd, T + .32); c.r("m1", 0, -.18, Wd, .18); c.r("m1", 0, T - .18, Wd, T + .18)
    for i, g in enumerate(G):
        c.r("poly", g - L / 2, (yn0 - .13) if i < kn else (ym - .075), g + L / 2, (yp1 + .13) if i < kp else (ym + .075))
    c.r("poly", G[0] - L / 2, ym - .075, G[-1] + L / 2, ym + .075)
    for x in [.4 + 1.4 * i for i in range(int((Wd - .8) / 1.4) + 1)]:      # taps under both rails
        for ly, ct, y in (("psd", "psc", 0), ("nsd", "nsc", T)):
            c.r(ly, x - .205, y - .13, x + .205, y + .13); c.sq(ct, x, y, C); c.sq("viali", x, y, C)
            c.r("li", x - W / 2, y - .175, x + W / 2, y + .175)
    c.r("poly", G[0] - .165, ym - .135, G[0] + .165, ym + .135); c.sq("pc", G[0], ym, C); c.label("A", G[0], ym, "li")
    c.r("li", G[0] - W / 2, ym - .165, G[0] + W / 2, ym + .165)
    def col(x, y0, y1, ct):
        y = y0 + .125
        while y + .125 <= y1 + 1e-9:
            c.sq(ct, x, y, C); c.sq("viali", x, y, C); y += .36
        c.r("li", x - W / 2, y0 - .05, x + W / 2, y1 + .05); c.r("m1", x - .14, y0 - .05, x + .14, y1 + .05)
    for i, x in enumerate(X):
        if i <= kn: col(x, yn0, yn1, "ndc")
        if i <= kp: col(x, yp0, yp1, "pdc")
        if i % 2:          # Y column
            if i <= kn and i <= kp: c.r("li", x - W / 2, yn1, x + W / 2, yp0)
            c.sq("via1", x, ym, .26); c.sq("m1", x, ym, .32); c.r("m1", x - .14, min(yn1, ym), x + .14, max(yp0, ym))
        else:              # rail columns
            if i <= kn: c.r("m1", x - .14, 0, x + .14, yn1)
            if i <= kp: c.r("m1", x - .14, yp0, x + .14, T)
    c.r("m2", X[1] - .15, ym - .16, X[max(i for i in range(k + 1) if i % 2)] + .15, ym + .16)
    c.label("Y", X[1], ym, "m2"); c.label("VDD", .1, T, "m1"); c.label("GND", .1, 0, "m1")
    return c
def pad():
    """Square m5 bond pad. ESD clamps are placed next to it at top level."""
    c = Cell("bondpad"); c.r("m5", 0, 0, 60, 60); c.label("PAD", 30, 30, "m5"); return c
if __name__ == "__main__":
    for c in inbuf() + [rwckt(), biginv("t", 27, 55)]:
        d, _ = extract(c.flat(), c.labels); print(c.name, c.size(), precheck(c)); print("  devices", len(d), "total W n/p", round(sum(x[3] for x in d if x[0]=="n"),2), round(sum(x[3] for x in d if x[0]=="p"),2))
    print("outbuf final stage", biginv("ob6", 430, 860).size())
