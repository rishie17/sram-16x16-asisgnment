"""Phase 4 top level: chip0 + met5 rings + pads + ESD + Rterm. Bond wire R/L stay in the testbench."""
from lib import Cell
import ctrl
from blocks import XS, XG
from gates import H
from padcell import esd, rterm
from periph import pad
W, G = 2.5, 2.0              # ring width, gap
RING = {"VDD": 0, "GND": 1, "VDDIO": 2}
def stack(c, x, y, frm, to="m5"):
    """Vertical via stack at (x,y) from layer frm up to layer to."""
    L = ["m1", "m2", "m3", "m4", "m5"]; V = {"m1": ("via1", .26), "m2": ("via2", .28), "m3": ("via3", .32), "m4": ("via4", 1.18)}
    P = {"m1": .4, "m2": .4, "m3": .6, "m4": 1.8, "m5": 1.8}
    for a in L[L.index(frm):L.index(to)]:
        c.sq(a, x, y, P[a] if a != "m3" or to != "m5" else 1.8); c.sq(V[a][0], x, y, V[a][1])
    c.sq(to, x, y, P[to])
def ring(c, box, ly="m5"):
    x0, y0, x1, y1 = box
    for r in ((x0, y0, x1, y0 + W), (x0, y1 - W, x1, y1), (x0, y0, x0 + W, y1), (x1 - W, y0, x1, y1)): c.r(ly, *r)
def rect(c, ly, x0, y0, x1, y1, w):
    """wire of width w between two points on one layer, horizontal or vertical"""
    if abs(x1 - x0) >= abs(y1 - y0): c.r(ly, min(x0, x1), y0 - w / 2, max(x0, x1), y0 + w / 2)
    else: c.r(ly, x0 - w / 2, min(y0, y1), x0 + w / 2, max(y0, y1))
def pad_stack(c, x, y, frm="m4"):
    for dx in (-3, 0, 3): stack(c, x + dx, y, frm)
def clamp(c, x0, y0, ring_of, sign, name):
    """ESD pair at (x0,y0). Its supply pins rise on m3 (crossing under m4 signals) into their rings."""
    c.place(esd(), x0, y0, name=name); ym = y0 + 2
    for xp, net in ((x0 - 1.1, "GND"), (x0 + 10.9, "VDDIO")):
        yr = ring_of[net]; stack(c, xp, ym, "m1", "m3"); rect(c, "m3", xp, ym, xp, yr, .6); stack(c, xp, yr, "m3")
    stack(c, x0 + 4.8, ym, "m2", "m4")
def build():
    c = Cell("sram_top"); ch = ctrl.build(); c.place(ch, 0, 0, name="chip")
    a, b, d, e = ch.bbox(); P = {t: (x, y, ly) for t, x, y, ly in ch.labels}; R = {}
    for n, i in RING.items():
        o = 3 + i * (W + G); R[n] = (a - o - W, b - o - W, d + o + W, e + o + W); ring(c, R[n])
    side = lambda n, s: {"l": R[n][0] + W / 2, "b": R[n][1] + W / 2, "r": R[n][2] - W / 2, "t": R[n][3] - W / 2}[s]
    # left hooks from the m2 straps
    for net, xs_, ys_ in (("VDD", XS, (20, 35)), ("GND", XG, (28, 45))):
        for y in ys_:
            c.sq("via2", xs_, y, .28); c.r("m2", xs_ - .15, y - .185, xs_ + .15, y + .185); rect(c, "m3", xs_ + .2, y, side(net, "l"), y, .6); stack(c, side(net, "l"), y, "m3")
    # right end of the rows: Row B rails are extended first
    xr = d + 1.5; YB = ctrl.LAST["YB"]; xa = ctrl.LAST["xb"]
    for y, net in ((ctrl.YA, "GND"), (ctrl.YA + H, "VDD"), (YB, "GND"), (YB + H, "VDD")):
        c.r("m1", xa if y in (YB, YB + H) else ctrl.LAST["xa"], y - .18, xr + .2, y + .18); stack(c, xr, y, "m1", "m3"); rect(c, "m3", xr, y, side(net, "r"), y, .6); stack(c, side(net, "r"), y, "m3")
    # output stage GND bar to the left strap and the right ring
    yg = ctrl.LAST["ybot"]; c.r("m3", XG - .2, yg - .165, ctrl.LAST["xo"], yg + .165); c.sq("via2", XG, yg, .28); c.r("m2", XG - .15, yg - .185, XG + .15, yg + .185)
    rect(c, "m3", ctrl.LAST["xo1"], yg, side("GND", "r"), yg, .6); stack(c, side("GND", "r"), yg, "m3")
    # VDDIO bar up to its ring
    xv, yv = 100.0, P["vddio"][1]; stack(c, xv, yv, "m3", "m4"); rect(c, "m4", xv, yv, xv, side("VDDIO", "t"), 1.8); stack(c, xv, side("VDDIO", "t"), "m4")
    # output: yd -> Rterm -> DOUT
    yy = P["yd"]; xe = ctrl.LAST["yd_end"]; rt = rterm(); xq, yq = xe + 3.0, yy[1] - 4.1
    c.place(rt, xq, yq, name="rterm"); ra, rb = {t: (x, y) for t, x, y, _ in rt.labels}["A"], {t: (x, y) for t, x, y, _ in rt.labels}["B"]
    c.sq("via2", xe, yy[1], .28); c.r("m2", xe - .15, yy[1] - .185, xe + .15, yy[1] + .185); rect(c, "m3", xe - .2, yy[1], xq + ra[0] + .2, yy[1], .4)
    stack(c, xq + ra[0], yq + ra[1], "m1", "m3"); stack(c, xq + rb[0], yq + rb[1], "m1", "m4")
    xd = xq + rb[0]; rtop = R["VDDIO"][3]; y_e = rtop + 2.0; rings = {"GND": side("GND", "t"), "VDDIO": side("VDDIO", "t")}
    clamp(c, xd - 4.8, y_e, rings, 1, "esd_DOUT"); rect(c, "m4", xd, yq + rb[1], xd, y_e + 2, .6)
    py = y_e + 7; ptop = py + 30
    c.place(pad(), xd - 30, py, name="pad_DOUT"); rect(c, "m4", xd, y_e + 2, xd, ptop, .6); stack(c, xd, ptop, "m4"); c.label("DOUT", xd, py + 30, "m5")
    # supply pads along the top
    for net, cx in (("VDDIO", xd - 65), ("GND", xd - 130), ("VDD", xd + 65)):
        c.place(pad(), cx - 30, py, name=f"pad_{net}"); ry = side(net, "t")
        c.r("m4", cx - 4.5, ry - 1, cx + 4.5, py + 3); pad_stack(c, cx, ry); pad_stack(c, cx, py + 2); c.label(net, cx, py + 30, "m5")
    # input pads along the bottom, in pin order, each wire on its own jog height
    nets = sorted(("clk_pad", "addr_pad", "rw_pad", "din_pad"), key=lambda n: P[n][0]); rb_ = R["VDDIO"][1]
    y_e = rb_ - 11.0; py = y_e - 61.5; rings = {"GND": side("GND", "b"), "VDDIO": side("VDDIO", "b")}
    for k, n in enumerate(nets):
        cx = -10 + 30 + k * 65.0; x, yt, _ = P[n]; yj = rb_ - 1.0 - .8 * (3 - k)     # rightmost pin on the top jog, so no wire crosses another
        c.place(pad(), cx - 30, py, name=f"pad_{n}"); clamp(c, cx - 4.8, y_e, rings, -1, f"esd_{n}")
        rect(c, "m4", x, yt, x, yj, .34); rect(c, "m4", x, yj, cx, yj, .34); rect(c, "m4", cx, yj, cx, y_e + 2, .34); c.sq("m4", x, yj, .34); c.sq("m4", cx, yj, .34)
        rect(c, "m4", cx, y_e + 2, cx, py + 58.5, .6); stack(c, cx, py + 58.5, "m4"); c.label(n.split("_")[0].upper(), cx, py + 30, "m5")
    return c
if __name__ == "__main__":
    c = build(); print(c.size(), "area um2", round(c.size()[0] * c.size()[1]))
