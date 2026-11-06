"""ESD clamp pair and series termination, drawn with PDK device layers."""
from lib import Cell
C, W = .17, .17
def contacts(c, ct, x0, y0, x1, y1, pitch=.48):
    """contact grid with li and m1 strapped over it, viali on each"""
    y = y0 + .25
    while y <= y1 - .25 + 1e-9:
        x = x0 + (.4 if x1 - x0 < 1 else .25)
        while x <= x1 - .25 + 1e-9:
            c.sq(ct, x, y, C); c.sq("viali", x, y, C); x += pitch
        y += pitch
    c.r("li", x0, y0, x1, y1); c.r("m1", x0, y0, x1, y1)
def esd():
    """D1 pad->vddio: p+ diode in n-well. D2 vss->pad: n+ diode in substrate. 4 x 4 um each."""
    c = Cell("esd")
    # n+ diode, cathode = PAD, ringed on one side by a substrate tap = GND
    c.r("ndiode", 0, 0, 4, 4); contacts(c, "ndic", 0, 0, 4, 4)
    c.r("psd", -1.5, 0, -.7, 4); contacts(c, "psc", -1.5, 0, -.7, 4)
    # p+ diode, anode = PAD, in a well tied to VDDIO
    c.r("nwell", 5.0, -.6, 12.2, 4.6)
    c.r("pdiode", 5.6, 0, 9.6, 4); contacts(c, "pdic", 5.6, 0, 9.6, 4)
    c.r("nsd", 10.5, 0, 11.3, 4); contacts(c, "nsc", 10.5, 0, 11.3, 4)
    c.sq("via1", 2, 2, .26); c.sq("via1", 7.6, 2, .26); c.r("m2", 1.7, 1.7, 7.9, 2.3)
    c.label("PAD", 4.8, 2, "m2"); c.label("GND", -1.1, 2, "m1"); c.label("VDDIO", 10.9, 2, "m1")
    return c
def rterm():
    """Rterm 20 ohm: poly resistor, W=8.2, L=3.4 at the nominal 48 ohm/sq."""
    c = Cell("rterm"); W_, L = 8.2, 3.4
    c.r("poly", 0, 0, 1.2, W_); c.r("poly", 1.2 + L, 0, 2.4 + L, W_); c.r("npres", 1.2, 0, 1.2 + L, W_)
    for x0, n in ((.1, "A"), (1.3 + L, "B")):
        y = .3
        while y <= W_ - .3:
            c.sq("pc", x0 + .5, y, C); c.sq("viali", x0 + .5, y, C); y += .48
        c.r("li", x0 + .2, .1, x0 + .8, W_ - .1); c.r("m1", x0 + .2, .1, x0 + .8, W_ - .1); c.label(n, x0 + .5, W_ / 2, "m1")
    return c
