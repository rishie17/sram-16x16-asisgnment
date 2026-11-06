from common import *
with schemdraw.Drawing(file='../plots/s05_pad_clock.png', show=False, dpi=150) as d:
    d.config(unit=2)
    # ================= input pad =================
    y = 14
    tag(d, (-0.3, y), 'CLK / ADDR /\nRW / DIN pin', halign='right', color=INK, fontsize=10, weight='normal')
    d.add(elm.Dot(open=True).at((0, y)))
    r = d.add(elm.Resistor().right().at((0, y)).label('0.2 Ω', fontsize=10))
    l = d.add(elm.Inductor2(loops=3).right().label('2 nH', fontsize=10))
    pad = A(l, 'end'); dot(d, pad)
    note(d, ((0 + pad[0]) / 2, y + 1.5), 'bond wire', color=ACC, fontsize=10)
    wire(d, pad, (pad[0] + 1.5, y))
    c = d.add(elm.Capacitor().down().at((pad[0] + 1.5, y)).label('1 pF', loc='bottom', fontsize=10)); gnd(d, A(c, 'end'))
    dot(d, (pad[0] + 1.5, y))
    wire(d, (pad[0] + 1.5, y), (pad[0] + 3.5, y))
    xd = pad[0] + 3.5; dot(d, (xd, y))
    d1 = d.add(elm.Diode().up().at((xd, y)).label('ESD', loc='bottom', fontsize=9)); vdd(d, A(d1, 'end'), 'VDDIO')
    d2 = d.add(elm.Diode().up().at((xd, y - 3)).label('ESD', loc='bottom', fontsize=9)); wire(d, A(d2, 'end'), (xd, y))
    gnd(d, (xd, y - 3))
    note(d, (pad[0] + 0.1, y - 0.6), 'pad', color=ACC, fontsize=10)
    wire(d, (xd, y), (xd + 1.0, y))
    n1 = d.add(lg.Not().theta(0).at((xd + 1.0, y)))
    n2 = d.add(lg.Not().theta(0).at(A(n1, 'end')))
    note(d, (A(n1, 'end')[0] + 0.5, y + 1.6), 'input buffer  N 0.84/P 1.68 → N 1.68/P 3.36', fontsize=9)
    d.add(elm.Arrow().right().at(A(n2, 'end')).length(1.2)); note(d, (A(n2, 'end')[0] + 1.4, y), 'to core', halign='left', fontsize=10, color=INK)
    note(d, (8.5, y + 5.0), 'Same bond-wire + pad + ESD model on all 5 pins', fontsize=13, color=INK)
    note(d, (8.5, y - 4.4), 'DOUT goes the other way: output DFF → 6-stage tapered buffer (×4 per stage, last stage P 860 / N 430 µm) → 20 Ω series R → pad → bond wire → 5 pF load.\nThe 20 Ω (≈ the wire’s impedance) stopped the L–C ringing that overshot to 2.5 V.', fontsize=9.5)
    # ================= clock generation =================
    y0 = 2.0
    tag(d, (-0.3, y0), 'CLK\n(from pad)', halign='right', color=INK, fontsize=10, weight='normal')
    rb1 = d.add(lg.Not().theta(0).at((0, y0)))
    rb2 = d.add(lg.Not().theta(0).at(A(rb1, 'end')))
    note(d, (A(rb1, 'end')[0], y0 + 1.1), 'root buffer', fontsize=9)
    ckr = A(rb2, 'end'); dot(d, ckr); note(d, (ckr[0], y0 + 0.5), 'ckr', fontsize=9, color=INK)
    xs = ckr[0] + 0.6
    wire(d, ckr, (xs, y0)); wire(d, (xs, y0 + 3), (xs, y0 - 5.2)); dot(d, (xs, y0))
    # branch A
    yA = y0 + 3
    a1 = d.add(lg.Not().theta(0).at((xs, yA))); a2 = d.add(lg.Not().theta(0).at(A(a1, 'end')))
    d.add(elm.Arrow().right().at(A(a2, 'end')).length(1.0))
    note(d, (A(a2, 'end')[0] + 1.2, yA), 'clk_ff  →  all 11 flip-flops', halign='left', color=ACC, fontsize=10)
    # branch B
    yB = y0
    b1 = d.add(lg.Not().theta(0).at((xs, yB))); b2 = d.add(lg.Not().theta(0).at(A(b1, 'end'))); b3 = d.add(lg.Not().theta(0).at(A(b2, 'end')))
    d.add(elm.Arrow().right().at(A(b3, 'end')).length(1.0))
    note(d, (A(b3, 'end')[0] + 1.2, yB), 'clkb (= CLK̄)  →  16 wordline NAND3s, write enable', halign='left', color=ACC, fontsize=10)
    # branch C: pcb = NAND(ckr, delayed ckr)
    yC = y0 - 3.4
    wire(d, (xs, y0 - 5.2), (xs + 0.6, y0 - 5.2))
    box(d, xs + 0.6, y0 - 5.9, xs + 5.0, y0 - 4.5, '8 × INV delay', fill='#f3f2ee', fontsize=10)
    nd = d.add(lg.Nand().theta(0).scale(1.3).anchor('in1').at((xs + 6.6, yC + 0.4)))
    yi2 = A(nd, 'in2')[1]
    wire(d, (xs + 5.0, y0 - 5.2), (xs + 5.8, y0 - 5.2), (xs + 5.8, yi2), A(nd, 'in2'))
    wire(d, (xs, yC + 0.4), A(nd, 'in1')); dot(d, (xs, yC + 0.4))
    note(d, (xs + 6.2, yC - 0.9), 'ckd', fontsize=9, color=INK)
    c1 = d.add(lg.Not().theta(0).at(A(nd, 'out'))); c2 = d.add(lg.Not().theta(0).at(A(c1, 'end')))
    d.add(elm.Arrow().right().at(A(c2, 'end')).length(1.0))
    note(d, (A(c2, 'end')[0] + 1.2, A(nd, 'out')[1]), 'pcb  →  precharge PMOS (16 columns + data lines)', halign='left', color=ACC, fontsize=10)
    note(d, (12, y0 - 7.4), 'pcb = NAND(ckr, ckr delayed) is low (precharge ON) only while both are high.\nCLK falls → ckr falls → precharge OFF at once, before the wordline rises.   CLK rises → precharge comes back only after the 8-inverter delay, after the wordline has closed.', fontsize=9.5)
    note(d, (12, y0 + 5.2), 'Clock distribution: one root buffer, three balanced branches', fontsize=13, color=INK)
