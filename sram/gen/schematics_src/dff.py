from common import *
with schemdraw.Drawing(file='../plots/s04_dff.png', show=False, dpi=150) as d:
    d.config(unit=2)
    yF, yB = 5.0, 2.0
    tag(d, (-0.3, yF), 'D', halign='right', color=INK)
    t1 = d.add(lg.Tgate().theta(0).at((0, yF)))
    m1 = A(t1, 'end'); dot(d, m1)
    wire(d, m1, (m1[0] + 1.5, yF))
    i1 = d.add(lg.Not().theta(0).at((m1[0] + 1.5, yF)))
    m2 = (A(i1, 'end')[0] + 1.5, yF); wire(d, A(i1, 'end'), m2); dot(d, m2)
    # master feedback
    wire(d, m2, (m2[0], yB))
    i2 = d.add(lg.Not().theta(180).at((m2[0], yB)))
    t2 = d.add(lg.Tgate().theta(180).at(A(i2, 'end')))
    wire(d, A(t2, 'end'), (m1[0], yB)); wire(d, (m1[0], yB), m1)
    # slave
    wire(d, m2, (m2[0] + 0.8, yF))
    t3 = d.add(lg.Tgate().theta(0).at((m2[0] + 0.8, yF)))
    s1 = A(t3, 'end'); dot(d, s1)
    wire(d, s1, (s1[0] + 1.5, yF))
    i3 = d.add(lg.Not().theta(0).at((s1[0] + 1.5, yF)))
    q = (A(i3, 'end')[0] + 1.5, yF); wire(d, A(i3, 'end'), q); dot(d, q)
    wire(d, q, (q[0] + 1.2, yF)); tag(d, (q[0] + 1.4, yF), 'Q', halign='left', color=INK)
    wire(d, q, (q[0], yB))
    i4 = d.add(lg.Not().theta(180).at((q[0], yB)))
    qb = A(i4, 'end'); dot(d, qb)
    t4 = d.add(lg.Tgate().theta(180).at(qb))
    wire(d, A(t4, 'end'), (s1[0], yB)); wire(d, (s1[0], yB), s1)
    wire(d, qb, (qb[0], yB - 1.0)); tag(d, (qb[0] + 0.25, yB - 0.8), 'QB', halign='left', color=INK)
    # clock annotations
    for t, txt in [(t1, 'on when CLK = 0'), (t2, 'on when CLK = 1'), (t3, 'on when CLK = 1'), (t4, 'on when CLK = 0')]:
        c = A(t, 'center'); up = t in (t1, t3)
        note(d, (c[0] - (0.6 if t is t4 else 0), c[1] + (1.05 if up else -1.05)), txt, fontsize=9, color=ACC)
    for e, txt in [(i1, 'I1'), (i2, 'I2'), (i3, 'I3  N 0.63 / P 1.26'), (i4, 'I4')]:
        c = A(e, 'center'); up = e in (i1, i3)
        note(d, (c[0], c[1] + (0.8 if up else -0.8)), txt, fontsize=9)
    note(d, ((0 + m2[0]) / 2, 7.4), 'Master latch: transparent while CLK = 0', fontsize=11, color=INK)
    note(d, ((m2[0] + q[0]) / 2 + 0.6, 7.4), 'Slave latch: transparent while CLK = 1', fontsize=11, color=INK)
    wire(d, (m2[0] + 0.4, 8.0), (m2[0] + 0.4, -0.4), color='#bdbcb6')
    note(d, (q[0] / 2, -1.2), 'Each transmission gate = NMOS 0.42 ‖ PMOS 0.42.  Local clock: CLK → INV → ckb → INV → ck.  20 transistors.', fontsize=10)
    note(d, (q[0] / 2, -2.0), 'Q follows D at the rising edge of CLK.  11 of these: 8 address bits, RW, DIN, DOUT.', fontsize=10)
    note(d, (q[0] / 2, 9.0), 'Positive-edge master–slave flip-flop (transmission-gate)', fontsize=15, color=INK)
