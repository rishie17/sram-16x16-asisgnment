from common import *
S = 1.3
with schemdraw.Drawing(file='../plots/s03_row_decoder.png', show=False, dpi=150) as d:
    d.config(unit=2)
    # ---------- predecoder A[7:6] -> rh0..3 ----------
    nb = lambda s: r'$\overline{\mathrm{%s}}$' % s
    pairs = [(nb('A7'), nb('A6')), (nb('A7'), 'A6'), ('A7', nb('A6')), ('A7', 'A6')]
    outs = []
    for k, (p, q) in enumerate(pairs):
        y = 12 - 2.4 * k
        g = d.add(lg.Nand().theta(0).scale(S).anchor('in1').at((2, y)))
        for a, t in [('in1', p), ('in2', q)]:
            pt = A(g, a); wire(d, (pt[0] - 1.0, pt[1]), pt)
            note(d, (pt[0] - 1.1, pt[1]), t, halign='right', fontsize=9, color=INK)
        n = d.add(lg.Not().theta(0).scale(S).anchor('in1').at(A(g, 'out')))
        wire(d, A(n, 'out'), (A(n, 'out')[0] + 0.6, A(n, 'out')[1]))
        note(d, (A(n, 'out')[0] + 0.75, A(n, 'out')[1]), f'rh{k}', halign='left', color=ACC, fontsize=10)
        outs.append(A(n, 'out'))
    note(d, (4.5, 13.6), 'Predecoder A[7:6] → rh0–rh3\n(4 × NAND2 + INV, one-hot)', fontsize=10, color=INK)
    box(d, 1.0, 0.2, 8.6, 1.8, 'Predecoder A[5:4] → rl0–rl3\n(identical)', fill='#f3f2ee', fontsize=10)
    # ---------- one wordline slice ----------
    x0 = 13.5; yw = 7.0
    g3 = d.add(lg.Nand(inputs=3).theta(0).scale(S).anchor('in2').at((x0, yw)))
    labs = [('in1', 'rh[r ÷ 4]'), ('in2', 'rl[r mod 4]'), ('in3', 'clkb')]
    for a, t in labs:
        pt = A(g3, a); wire(d, (pt[0] - 1.2, pt[1]), pt)
        note(d, (pt[0] - 1.3, pt[1]), t, halign='right', fontsize=9, color=ACC if t == 'clkb' else INK)
    n3 = d.add(lg.Not().theta(0).scale(S).anchor('in1').at(A(g3, 'out')))
    wire(d, A(n3, 'out'), (A(n3, 'out')[0] + 0.8, yw)); tag(d, (A(n3, 'out')[0] + 1.0, yw), 'WL r', halign='left', fontsize=12)
    note(d, (x0 + 2.2, yw + 1.6), 'Wordline slice  × 16   (r = 0 … 15)', fontsize=10, color=INK)
    note(d, (x0 + 2.2, yw - 1.4), 'clkb = CLK inverted: WL can only rise while CLK is low', fontsize=9)
    # ---------- transistor level NAND3 + driver ----------
    xb = 15.0; yT = 3.6
    ps = [pfet(d, (xb + 1.6 * i, yT), 'left', None, None) for i in range(3)]
    wire(d, (xb, yT), (xb + 3.2, yT)); vdd(d, (xb + 1.6, yT))
    yo = A(ps[0], 'drain')[1] - 0.4
    for p in ps: wire(d, A(p, 'drain'), (A(p, 'drain')[0], yo))
    wire(d, (xb, yo), (xb + 3.2, yo))
    ns = []; top = (xb + 3.2, yo)
    nprev = nfet(d, (xb + 3.2, yo - 0.5), 'left', None, None); wire(d, top, (xb + 3.2, yo - 0.5)); ns.append(nprev)
    for i in range(2):
        nprev = nfet(d, A(nprev, 'source'), 'left', None, None); ns.append(nprev)
    gnd(d, A(ns[-1], 'source'))
    for e, t in zip(ps, ['rh', 'rl', 'clkb']):
        note(d, (A(e, 'gate')[0] - 0.15, A(e, 'gate')[1]), t, halign='right', fontsize=8, color=ACC)
    for e, t in zip(ns, ['rh', 'rl', 'clkb']):
        note(d, (A(e, 'gate')[0] - 0.15, A(e, 'gate')[1]), t, halign='right', fontsize=8, color=ACC)
    note(d, (xb + 4.0, yT - 0.7), 'P 0.84 ×3 (parallel)', halign='left', fontsize=9)
    note(d, (xb + 4.0, A(ns[1], 'center')[1]), 'N 1.26 ×3 (series)', halign='left', fontsize=9)
    # driver inverter
    xi = xb + 8.5
    pi_ = pfet(d, (xi, yT), 'left', None, None); vdd(d, (xi, yT))
    ni_ = nfet(d, (xi, A(pi_, 'drain')[1] - 0.6), 'left', None, None)
    wire(d, A(pi_, 'drain'), A(ni_, 'drain')); gnd(d, A(ni_, 'source'))
    gx = A(pi_, 'gate')[0]
    wire(d, A(pi_, 'gate'), A(ni_, 'gate'))
    ym = (A(pi_, 'gate')[1] + A(ni_, 'gate')[1]) / 2
    wire(d, (xb + 3.2, yo), (xb + 4.0, yo)); dot(d, (xb + 3.2, yo))
    wire(d, (xb + 4.0, yo), (xb + 4.0, ym)); wire(d, (xb + 4.0, ym), (gx, ym)); dot(d, (gx, ym))
    note(d, (xb + 5.2, ym + 0.3), 'wlb', fontsize=9, color=INK)
    xo = xi + 1.3; yd = (A(pi_, 'drain')[1] + A(ni_, 'drain')[1]) / 2
    wire(d, (xi, yd), (xo, yd)); dot(d, (xi, yd)); tag(d, (xo + 0.2, yd), 'WL r', halign='left', fontsize=11)
    note(d, (xo + 3.0, yd), ' ')
    note(d, (xi + 0.4, A(pi_, 'center')[1] + 0.2), 'P 1.68', halign='left', fontsize=9)
    note(d, (xi + 0.4, A(ni_, 'center')[1] - 0.2), 'N 0.84', halign='left', fontsize=9)
    note(d, (xb + 4.5, -4.3), 'Transistor level of one slice: NAND3 + wordline driver', fontsize=10, color=INK)
    note(d, (11, 15.2), 'Row decoder: 2:4 predecode, then 16 × clocked NAND3', fontsize=15, color=INK)
    note(d, (11, -5.6), 'Column decoder is the same idea on A[3:0]: two 2:4 predecoders → 16 × NAND2 + INV → csel[0–15] (no clock gating)', fontsize=10)
