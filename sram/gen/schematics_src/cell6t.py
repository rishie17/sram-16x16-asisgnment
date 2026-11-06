from common import *
with schemdraw.Drawing(file='../plots/s01_bitcell_6t.png', show=False, dpi=170) as d:
    d.config(unit=2)
    pu1 = pfet(d, (4, 6), 'right', 'PU1', '0.42/0.15')
    pd1 = nfet(d, (4, 3), 'right', 'PD1', '0.63/0.15')
    pu2 = pfet(d, (10, 6), 'left', 'PU2', '0.42/0.15')
    pd2 = nfet(d, (10, 3), 'left', 'PD2', '0.63/0.15')
    wire(d, A(pu1,'drain'), A(pd1,'drain')); wire(d, A(pu2,'drain'), A(pd2,'drain'))
    gl = A(pu1,'gate')[0]; gr = A(pu2,'gate')[0]
    wire(d, A(pu1,'gate'), A(pd1,'gate')); wire(d, A(pu2,'gate'), A(pd2,'gate'))
    # rails
    wire(d, (4,6), (10,6)); vdd(d, (7,6))
    wire(d, A(pd1,'source'), (4,1)); wire(d, A(pd2,'source'), (10,1)); wire(d,(4,1),(10,1)); gnd(d,(7,1))
    # cross coupling
    yl, yh = 3.4, 4.1
    wire(d, (4,yl), (6.6,yl), (7.4,yh), (gr,yh)); dot(d,(4,yl)); dot(d,(gr,yh))
    wire(d, (10,yl), (7.4,yl), (6.6,yh), (gl,yh)); dot(d,(10,yl)); dot(d,(gl,yh))
    tag(d, (3.55, yl+0.05), 'Q', halign='right', color=ORG)
    tag(d, (10.45, yl+0.05), 'QB', halign='left', color=ORG)
    # access transistors
    pg1 = hnfet(d, (0.5, yl), 'up', 'PG1', '0.42/0.15', rightward=True)
    wire(d, A(pg1,'source'), (4,yl))
    pg2 = hnfet(d, (13.5, yl), 'up', 'PG2', '0.42/0.15', rightward=False)
    wire(d, A(pg2,'source'), (10,yl))
    # wordline
    yw = 8
    wire(d, A(pg1,'gate'), (A(pg1,'gate')[0], yw)); wire(d, A(pg2,'gate'), (A(pg2,'gate')[0], yw))
    wire(d, (-0.6, yw), (14.6, yw), color=ACC)
    dot(d, (A(pg1,'gate')[0], yw)); dot(d, (A(pg2,'gate')[0], yw))
    tag(d, (14.8, yw), 'WL', halign='left')
    # bitlines
    wire(d, (0.5, 0), (0.5, 9), color=ACC); wire(d, (13.5, 0), (13.5, 9), color=ACC)
    dot(d, (0.5, yl)); dot(d, (13.5, yl))
    tag(d, (0.5, 9.4), 'BL'); tag(d, (13.5, 9.4), 'BLB')
    d.add(elm.Label().at((7, -0.9)).label('Cell ratio PD/PG = 1.5   ·   pull-up ratio PU/PG = 1.0   ·   W/L in µm, SKY130 1.8 V', fontsize=10, color=MUTE))
    d.add(elm.Label().at((7, 10.3)).label('6T SRAM bit cell', fontsize=15, color=INK))
