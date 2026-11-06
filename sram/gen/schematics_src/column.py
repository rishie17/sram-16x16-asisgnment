from common import *
with schemdraw.Drawing(file='../plots/s02_column_readwrite.png', show=False, dpi=150) as d:
    d.config(unit=2)
    xb, xbb = 2, 9
    # ---------- precharge / equalise ----------
    yV = 19
    p1 = pfet(d, (xb, yV), 'right', 'P1', '0.84')
    p2 = pfet(d, (xbb, yV), 'left', 'P2', '0.84')
    wire(d, (xb, yV), (xbb, yV)); vdd(d, ((xb + xbb) / 2, yV))
    ypc = A(p1, 'gate')[1]
    wire(d, A(p1, 'gate'), A(p2, 'gate'))
    peq = hpfet(d, (4.75, 16.2), 'up', None, None, rightward=True)
    wire(d, (xb, 16.2), A(peq, 'source')); wire(d, A(peq, 'drain'), (xbb, 16.2))
    wire(d, A(peq, 'gate'), (A(peq, 'gate')[0], ypc)); dot(d, (A(peq, 'gate')[0], ypc))
    note(d, (A(peq,'center')[0], 15.65), 'P3 0.42 (equalise)', valign='top', fontsize=9)
    tag(d, ((xb + xbb) / 2 - 0.9, ypc + 0.35), 'pcb', halign='right', fontsize=11)
    note(d, (xbb + 1.6, ypc + 0.2), 'pcb = precharge (active low)\nlow while CLK is high', halign='left', fontsize=9)
    wire(d, A(p1, 'drain'), (xb, 16.2)); wire(d, A(p2, 'drain'), (xbb, 16.2))
    # ---------- cells ----------
    wire(d, (xb, 16.2), (xb, 6.9), color=ACC); wire(d, (xbb, 16.2), (xbb, 6.9), color=ACC)
    for yc, r in [(13.0, 0), (9.0, 15)]:
        box(d, xb + 0.8, yc - 0.8, xbb - 0.8, yc + 0.8, f'6T cell, row {r}')
        wire(d, (xb, yc), (xb + 0.8, yc)); wire(d, (xbb - 0.8, yc), (xbb, yc))
        dot(d, (xb, yc)); dot(d, (xbb, yc))
        wire(d, ((xb + xbb) / 2, yc + 0.8), ((xb + xbb) / 2, yc + 1.3))
        note(d, ((xb + xbb) / 2 + 0.2, yc + 1.15), f'WL{r}', halign='left', color=ACC, fontsize=10)
    note(d, ((xb + xbb) / 2, 11.0), '⋮   16 cells per column   ⋮', fontsize=10)
    tag(d, (xb - 0.3, 14.6), 'BL', halign='right'); tag(d, (xbb + 0.3, 14.6), 'BLB', halign='left')
    # ---------- column mux ----------
    m1 = nfet(d, (xb, 6.9), 'right', 'M1', '0.84')
    m2 = nfet(d, (xbb, 6.9), 'left', 'M2', '0.84')
    wire(d, A(m1, 'gate'), A(m2, 'gate'))
    xm = (xb + xbb) / 2
    wire(d, (xm, A(m1, 'gate')[1]), (xm, 4.6)); dot(d, (xm, A(m1, 'gate')[1]))
    note(d, (xm + 0.2, 4.9), 'csel[c]  (column decoder)', halign='left', color=ACC, fontsize=10)
    yDL, yDLB = 3.2, 2.0
    wire(d, A(m1, 'source'), (xb, yDL)); dot(d, (xb, yDL))
    wire(d, A(m2, 'source'), (xbb, yDLB)); dot(d, (xbb, yDLB))
    note(d, (xb - 1.2, 1.0), '16 columns share this one DL / DLB pair', halign='left', fontsize=9)
    # ---------- shared data lines ----------
    xr = 28
    wire(d, (xb - 1.2, yDL), (xr, yDL), color=ORG); wire(d, (xb - 1.2, yDLB), (19, yDLB), color=ORG)
    tag(d, (xb - 1.4, yDL), 'DL', halign='right', color=ORG); tag(d, (xb - 1.4, yDLB), 'DLB', halign='right', color=ORG)
    # DL / DLB precharge
    yV2 = 8.0
    q1 = pfet(d, (13, yV2), 'left', 'P4', '1.26'); q2 = pfet(d, (15.5, yV2), 'right', 'P5', '1.26')
    wire(d, (13, yV2), (15.5, yV2)); vdd(d, (14.25, yV2))
    wire(d, A(q1, 'drain'), (13, yDL)); dot(d, (13, yDL))
    wire(d, A(q2, 'drain'), (15.5, yDLB)); dot(d, (15.5, yDLB))
    wire(d, A(q1, 'gate'), (A(q1, 'gate')[0], 9.3), color=ACC); wire(d, A(q2, 'gate'), (A(q2, 'gate')[0], 9.3), color=ACC)
    wire(d, (A(q1, 'gate')[0], 9.3), (A(q2, 'gate')[0], 9.3), color=ACC); note(d, (14.25, 9.65), 'pcb', color=ACC, fontsize=10)
    note(d, (16.1, 6.2), '+ P6 0.42 equaliser\nbetween DL and DLB', halign='left', fontsize=9)
    # write driver stacks
    def stack(x, ytop, g1, g2, nm):
        a = nfet(d, (x, ytop - 0.6), 'right', None, None); wire(d, (x, ytop), (x, ytop - 0.6))
        b = nfet(d, A(a, 'source'), 'right', None, None)
        wire(d, A(b, 'source'), (x, A(b, 'source')[1] - 0.4)); gnd(d, (x, A(b, 'source')[1] - 0.4))
        for e, g in [(a, g1), (b, g2)]:
            wire(d, A(e, 'gate'), (A(e, 'gate')[0] + 0.5, A(e, 'gate')[1]))
            note(d, (A(e, 'gate')[0] + 0.65, A(e, 'gate')[1]), g, halign='left', color=ACC, fontsize=10)
        note(d, (x - 0.5, A(a, 'source')[1]), nm + '\n1.68 each', halign='right', fontsize=9)
        dot(d, (x, ytop))
    stack(19, yDLB, 'we', 'din', 'W3–W4')
    stack(23.5, yDL, 'we', 'dinb', 'W1–W2')
    note(d, (21.25, -3.6), 'Write driver: we = RW·CLK̄.  din = 0 pulls DL low, din = 1 pulls DLB low', fontsize=10)
    # sense inverter
    inv = d.add(lg.Not().right().at((xr, yDL)).anchor('in1'))
    note(d, (A(inv,'in1')[0] + 1.0, yDL + 1.0), 'skewed INV\nP 1.26 / N 0.42', fontsize=9)
    wire(d, A(inv, 'out'), (A(inv, 'out')[0] + 1.0, yDL))
    note(d, (A(inv, 'out')[0] + 1.2, yDL), 'rd → output DFF → pad driver → DOUT', halign='left', color=ORG, fontsize=10)
    note(d, (30.5, 0.9), 'Read: cell holding 0 discharges BL → DL;\ninverter trips early (strong P), rd = 1', fontsize=9)
    note(d, (16, 22.2), 'One column + the shared read/write circuit', fontsize=15, color=INK)
