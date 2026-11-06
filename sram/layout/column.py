"""Column-pitch cells. Pitch 3.40 matches the bit cell; BL at x=0, BLB at x=2.8 on m2 (bit cell coords).
precharge: P1 bl-vdd, P2 blb-vdd (0.84), P3 equaliser bl-blb (0.42), gate pcb.
colmux: N1 bl-dl, N2 blb-dl b (0.84), gate csel."""
from lib import Cell, precheck
from extract import extract
L, C, W = .15, .17, .17
XL, XR = -.30, 3.10
def pad_m2(c, x, y):
    c.sq("viali", x, y, C); c.sq("m1", x, y, .32); c.sq("via1", x, y, .26); c.r("m2", x - .15, y - .16, x + .15, y + .16)
def li_ct(c, x, y): c.r("li", x - W / 2, y - .175, x + W / 2, y + .175)
def precharge():
    """Lower strip BL g VDD g BLB, upper strip BL g BLB. One poly bar in the gap ties all 3 gates."""
    c = Cell("precharge"); H = 2.85; y0, wp, ye0, we, ybar = .6, .84, 2.15, .42, 1.79
    yc, ye = y0 + wp / 2, ye0 + we / 2
    c.r("nwell", XL - .06, -.18, XR + .06, H); c.r("pdiff", -.165, y0, 2.965, y0 + wp); c.r("pdiff", -.165, ye0, 2.965, ye0 + we)
    for x in (0, 1.4, 2.8): c.sq("pdc", x, yc, C); li_ct(c, x, yc)
    for x in (0, 2.8):
        c.sq("pdc", x, ye, C); li_ct(c, x, ye); pad_m2(c, x, yc); pad_m2(c, x, ye); c.r("m2", x - .15, 0, x + .15, H)
    for g in (.7, 2.1): c.r("poly", g - L / 2, y0 - .13, g + L / 2, ybar + .075)
    c.r("poly", .7 - L / 2, ybar - .075, 2.1 + L / 2, ybar + .075)
    c.r("poly", 1.4 - L / 2, ybar, 1.4 + L / 2, ye0 + we + .13)
    c.r("poly", 1.4 - .165, ybar - .135, 1.4 + .165, ybar + .135); c.sq("pc", 1.4, ybar, C)
    c.r("li", 1.4 - W / 2, ybar - .165, 1.4 + W / 2, ybar + .165); c.label("PCB", 1.4, ybar, "li")
    c.r("m1", XL, 0, XR, .36); c.r("li", 1.4 - W / 2, .095, 1.4 + W / 2, yc + .175); c.sq("viali", 1.4, .18, C)
    c.r("nsd", .495, .05, .905, .31); c.sq("nsc", .7, .18, C); c.sq("viali", .7, .18, C); c.r("li", .7 - W / 2, .005, .7 + W / 2, .355)
    c.label("VDD", 1.4, .18, "m1"); c.label("BL", 0, 1.8, "m2"); c.label("BLB", 2.8, 1.8, "m2")
    return c
def colmux():
    c = Cell("colmux"); H = 1.55; y0, w = .3, .84; yc = y0 + w / 2; ys = yc
    c.r("ndiff", -.165, y0, .865, y0 + w); c.r("ndiff", 1.935, y0, 2.965, y0 + w)
    for a, b, gx, net, lab in ((0, .7, .35, "BL", "DL"), (2.8, 2.1, 2.45, "BLB", "DLB")):
        c.sq("ndc", a, yc, C); c.sq("ndc", b, yc, C); li_ct(c, a, yc); li_ct(c, b, yc)
        c.r("poly", gx - L / 2, y0 - .13, gx + L / 2, 1.37); pad_m2(c, a, yc)
        c.r("m2", a - .15, 0, a + .15, H); c.label(net, a, 1.3, "m2")
        c.sq("viali", b, yc, C); c.sq("m1", b, yc, .32); c.label(lab, b, yc, "m1")
    c.r("poly", .35 - L / 2, 1.22, 2.45 + L / 2, 1.37); c.r("poly", 1.4 - .165, 1.16, 1.4 + .165, 1.43); c.sq("pc", 1.4, 1.295, C)
    c.r("li", 1.4 - W / 2, 1.13, 1.4 + W / 2, 1.46); c.label("CSEL", 1.4, 1.295, "li")
    return c
if __name__ == "__main__":
    for c in (precharge(), colmux()):
        d, _ = extract(c.rects, c.labels); print(c.name, c.size(), precheck(c)); [print(" ", x) for x in sorted(d, key=str)]
