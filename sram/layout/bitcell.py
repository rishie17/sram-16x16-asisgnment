"""Compact 6T cell. Columns TRANSLATE (mirroring would short neighbouring BLB through shared diff);
rows MIRROR about the rails at y=-0.74 and y=2.50, sharing tap/rail/nwell."""
from lib import Cell, precheck
from extract import extract
P, L, E, C, W = 0.70, 0.15, 0.165, 0.17, 0.17
def build():
    c = Cell("bitcell"); cx = [i * P for i in range(5)]; gx = [(i + .5) * P for i in range(4)]
    XL, XR, YB, YT = -0.30, cx[4] + 0.30, -0.74, 2.50
    yn, yp0, yp1, yq, yqb = 0.21, 1.68, 2.10, 0.92, 1.35; yp = (yp0 + yp1) / 2
    c.r("ndiff", cx[0] - E, 0, cx[1], .42); c.r("ndiff", cx[1], 0, cx[3], .63); c.r("ndiff", cx[3], 0, cx[4] + E, .42)
    c.r("pdiff", cx[1] - E, yp0, cx[3] + E, yp1)
    for x in cx: c.sq("ndc", x, yn, C)
    for x in cx[1:4]: c.sq("pdc", x, yp, C)
    c.r("nwell", XL, yp0 - .18, XR, YT + .31)
    c.r("nsd", cx[2] - .205, YT - .13, cx[2] + .205, YT + .13); c.sq("nsc", cx[2], YT, C)
    c.r("psd", cx[2] - .205, YB - .13, cx[2] + .205, YB + .13); c.sq("psc", cx[2], YB, C)
    for g in gx[1:3]: c.r("poly", g - L / 2, -.13, g + L / 2, yp1 + .13)
    for g in (gx[0], gx[3]): c.r("poly", g - L / 2, -.49, g + L / 2, .55)
    c.r("poly", XL, -.49, XR, -.34)                       # WL, full width so neighbours abut
    for g, y in ((gx[2], yq), (gx[1], yqb)):
        c.r("poly", g - .165, y - .135, g + .165, y + .135); c.sq("pc", g, y, C)
        c.r("li", g - W / 2, y - .165, g + W / 2, y + .165)
    def lv(x, a, b): c.r("li", x - W / 2, a, x + W / 2, b)
    def lh(y, a, b): c.r("li", a, y - W / 2, b, y + W / 2)
    lv(cx[1], yn - .175, yp + .175); lv(cx[3], yn - .175, yp + .175)
    lh(yq, cx[1] - W / 2, gx[2] + W / 2); lh(yqb, gx[1] - W / 2, cx[3] + W / 2)
    lv(cx[2], yp - .175, YT + .175); lv(cx[2], YB - .175, yn + .175)
    lv(cx[0], yn - .175, yn + .175); lv(cx[4], yn - .175, yn + .175)
    c.sq("viali", cx[2], YT, C); c.r("m1", XL, YT - .18, XR, YT + .18)
    c.sq("viali", cx[2], YB, C); c.r("m1", XL, YB - .18, XR, YB + .18)
    for x in (cx[0], cx[4]):
        c.sq("viali", x, yn, C); c.sq("m1", x, yn, .32); c.sq("via1", x, yn, .26); c.r("m2", x - .15, YB, x + .15, YT)
    for t, x, y, ly in (("BL", cx[0], 1, "m2"), ("BLB", cx[4], 1, "m2"), ("WL", 1.4, -.415, "poly"),
                        ("VDD", cx[2], YT, "m1"), ("GND", cx[2], YB, "m1"), ("Q", cx[1], 1.1, "li"), ("QB", cx[3], .6, "li")):
        c.label(t, x, y, ly)
    return c
if __name__ == "__main__":
    c = build(); errs = precheck(c); print("size", c.size(), "area", round(c.size()[0] * c.size()[1], 3), "precheck", errs)
    d, n = extract(c.rects, c.labels)
    for x in sorted(d, key=str): print(x)
    want = sorted([("n","WL",frozenset(("BL","Q")),.42),("n","WL",frozenset(("BLB","QB")),.42),("n","QB",frozenset(("GND","Q")),.63),
                   ("n","Q",frozenset(("GND","QB")),.63),("p","QB",frozenset(("VDD","Q")),.42),("p","Q",frozenset(("VDD","QB")),.42)], key=str)
    assert sorted(d, key=str) == want, "connectivity mismatch"
    print("connectivity OK")
