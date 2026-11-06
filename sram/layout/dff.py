"""Positive-edge TG master-slave DFF (cells.sp dff). Template inverters + TG slices, routed on m3.
Neighbouring nets (m3, q) use a short m1 link so the four m3 tracks are enough."""
from lib import Cell, precheck
from extract import extract
from gates import inv, tap, H, YN0, YP1
from route import route
L, C, W = .15, .17, .17
def tg():
    """A/B diff columns tied N to P by li. NMOS gate GN and PMOS gate GP sit at different x,
    so their m2 stubs can pass each other."""
    c = Cell("tg"); X = (.385, 1.865); gn, gp = .865, 1.385; wn, wp = .42, .84; yn1, yp0 = YN0 + wn, YP1 - wp
    W_ = 2.25; yn, yp = YN0 + .21, YP1 - .36
    c.r("ndiff", X[0] - .165, YN0, X[1] + .165, yn1); c.r("pdiff", X[0] - .165, yp0, X[1] + .165, YP1)
    c.r("nwell", 0, yp0 - .18, W_, H + .31); c.r("m1", 0, -.18, W_, .18); c.r("m1", 0, H - .18, W_, H + .18)
    for x, n in zip(X, "AB"):
        c.sq("ndc", x, yn, C); c.sq("pdc", x, yp, C); c.r("li", x - W / 2, yn - .175, x + W / 2, yp + .175); c.label(n, x, 1.42, "li")
    for name, g, a, b, y in (("GN", gn, YN0 - .13, 1.09, .95), ("GP", gp, 1.70, YP1 + .13, 1.84)):
        c.r("poly", g - L / 2, a, g + L / 2, b); c.r("poly", g - .165, y - .135, g + .165, y + .135)
        c.sq("pc", g, y, C); c.r("li", g - W / 2, y - .165, g + W / 2, y + .165); c.label(name, g, y, "li")
    c.label("VDD", .1, H, "m1"); c.label("GND", .1, 0, "m1")
    return c
def build():
    I = inv(name="inv_ff", P=.92); S1 = inv(.63, 1.26, "inv_s1", P=.92); T = tg(); I2 = inv(name="inv_s2", P=1.1)
    order = [("ci", I), ("ci2", I), ("t1", T), ("m1", I), ("m2", I), ("t2", T), ("t3", T), ("s1", S1), ("s2", I2), ("t4", T)]
    c = Cell("sdff"); x = 0; at = {}
    for n, k in order:
        c.place(k, x, 0, name=n); at[n] = (k, x); x += k.size()[0]
    def p(inst, pin):
        k, ox = at[inst]
        return next((ox + a, b, ly) for t, a, b, ly in k.labels if t == pin)
    nets = {"ck": [p("ci2","Y"),p("t1","GP"),p("t2","GN"),p("t3","GN"),p("t4","GP")],
            "ckb":[p("ci","Y"),p("ci2","A"),p("t1","GN"),p("t2","GP"),p("t3","GP"),p("t4","GN")],
            "m1": [p("t1","B"),p("m1","A"),p("t2","B")],
            "m2n":[p("m1","Y"),p("m2","A"),p("t3","A")],
            "s1n":[p("t3","B"),p("s1","A"),p("t4","B")],
            "qbn":[p("s2","Y"),p("t4","A")]}
    route(c, nets)
    for a, b, net in ((p("m2","Y"), p("t2","A"), "m3"),):
        c.r("m1", a[0] - .16, a[1] - .16, b[0] + .16, a[1] + .16); c.sq("viali", b[0], a[1], C)
    a, b = p("s1","Y"), p("s2","A")          # q: L-shaped m1 jumper instead of a fifth track
    c.r("m1", a[0] - .16, a[1] - .08, b[0] + .08, a[1] + .08); c.r("m1", b[0] - .08, b[1] - .16, b[0] + .08, a[1] + .08)
    c.sq("viali", b[0], b[1], C); c.sq("m1", b[0], b[1], .32)
    c.label("D", *p("t1","A")[:2], "li"); c.label("CLK", *p("ci","A")[:2], "li")
    c.label("Q", *p("s1","Y")[:2], "m1"); c.label("QB", *p("s2","Y")[:2], "m1"); c.label("VDD", .1, H, "m1"); c.label("GND", .1, 0, "m1")
    return c
# net -> device terminals, counted by hand from cells.sp dff (gate + source/drain ends)
FANOUT = sorted([8, 6, 6, 6, 6, 6, 6, 4, 4, 4, 2, 2])   # ckb, ck, GND, VDD, m1, m2, s1, m3, Q, QB, CLK, D
def check(c):
    from collections import Counter
    d, _ = extract(c.flat(), list(c.labels) + [("GND", .1, 0, "m1"), ("VDD", .1, 3.24, "m1")])
    deg = Counter()
    for ty, g, sd, w in d:
        deg[g] += 1
        for n in sd: deg[n] += 1
    assert len(d) == 20 and sorted(deg.values()) == FANOUT, sorted(deg.items())
    assert Counter((t, w) for t, _, _, w in d) == Counter({("n", .42): 9, ("p", .84): 9, ("n", .63): 1, ("p", 1.26): 1})
    return d
if __name__ == "__main__":
    c = build(); print(c.name, c.size(), precheck(c)); check(c); print("dff connectivity OK")
    from lib import merged, gap
    G = merged([r[1:] for r in c.flat() if r[0] == "m2"])
    for i in range(len(G)):
        for j in range(i):
            for p in G[i]:
                for q in G[j]:
                    if gap(p, q) < .14: print("near", p, q)
