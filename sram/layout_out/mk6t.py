"""Generate a Magic Tcl script that draws the 6T bit cell in sky130A. All units um."""
R = []   # (layer, x1, y1, x2, y2)
def r(layer, x1, y1, x2, y2): R.append((layer, x1, y1, x2, y2))
def sq(layer, cx, cy, s): r(layer, cx - s / 2, cy - s / 2, cx + s / 2, cy + s / 2)
P = 0.85                      # contact pitch
cx = [i * P for i in range(5)]           # BL, Q, GND, QB, BLB contacts (bottom)
gx = [(i + 0.5) * P for i in range(4)]   # PG1, PD1, PD2, PG2 gates
L = 0.15; E = 0.165; C = 0.17
# ---- NMOS diffusion strip (PG 0.42 outside, PD 0.63 between Q and QB) ----
r('ndiff', cx[0] - E, 0, cx[1], 0.42)
r('ndiff', cx[1], 0, cx[3], 0.63)
r('ndiff', cx[3], 0, cx[4] + E, 0.42)
yc_n = 0.21
for x in cx: sq('ndc', x, yc_n, C)
# ---- PMOS strip in nwell ----
yp0, yp1 = 1.68, 2.10
r('pdiff', cx[1] - E, yp0, cx[3] + E, yp1)
yc_p = (yp0 + yp1) / 2
for x in cx[1:4]: sq('pdc', x, yc_p, C)
r('nwell', cx[1] - E - 0.18, yp0 - 0.18, cx[3] + E + 0.18, 3.00)
# n-tap (VDD) and p-tap (GND)
r('nsd', cx[2] - 0.205, 2.48, cx[2] + 0.205, 2.82); sq('nsc', cx[2], 2.65, C)
r('psd', cx[2] - 0.205, -1.15, cx[2] + 0.205, -0.81); sq('psc', cx[2], -0.98, C)
# ---- poly ----
for g in (gx[1], gx[2]): r('poly', g - L / 2, -0.13, g + L / 2, yp1 + 0.13)   # inverter gates
for g in (gx[0], gx[3]): r('poly', g - L / 2, -0.60, g + L / 2, 0.42 + 0.13)  # access gates
r('poly', gx[0] - L / 2, -0.60, gx[3] + L / 2, -0.45)                         # WL
# gate contacts for cross-coupling
yq, yqb = 0.92, 1.31
for g, y in ((gx[2], yq), (gx[1], yqb)):
    r('poly', g - 0.165, y - 0.135, g + 0.165, y + 0.135); sq('pc', g, y, C)
# ---- local interconnect ----
W = 0.17
def li_v(x, y0, y1): r('li', x - W / 2, y0, x + W / 2, y1)
def li_h(y, x0, x1): r('li', x0, y - W / 2, x1, y + W / 2)
li_v(cx[1], yc_n - W / 2, yc_p + W / 2)          # Q: bottom to top
li_h(yq, cx[1] - W / 2, gx[2] + W / 2)            # Q -> gate of PD2/PU2
li_v(cx[3], yc_n - W / 2, yc_p + W / 2)          # QB
li_h(yqb, gx[1] - W / 2, cx[3] + W / 2)           # QB -> gate of PD1/PU1
li_v(cx[2], yc_p - W / 2, 2.65 + W / 2)          # VDD: pmos source -> ntap
li_v(cx[2], -0.98 - W / 2, yc_n + W / 2)         # GND: nmos source -> ptap
for (x, y) in [(x, yc_n) for x in cx] + [(x, yc_p) for x in cx[1:4]] + [(cx[2], 2.65), (cx[2], -0.98)]:
    r('li', x - W / 2, y - W / 2 - 0.09, x + W / 2, y + W / 2 + 0.09)
for (g, y) in ((gx[2], yq), (gx[1], yqb)):
    r('li', g - W / 2 - 0.08, y - W / 2, g + W / 2 + 0.08, y + W / 2)
# ---- metal1 rails + mcon ----
sq('viali', cx[2], 2.65, C); r('m1', cx[0] - 0.3, 2.65 - 0.18, cx[4] + 0.3, 2.65 + 0.18)    # VDD
sq('viali', cx[2], -0.98, C); r('m1', cx[0] - 0.3, -0.98 - 0.18, cx[4] + 0.3, -0.98 + 0.18)  # GND
# ---- bitlines on metal2 ----
for x in (cx[0], cx[4]):
    sq('viali', x, yc_n, C)
    r('m1', x - 0.16, yc_n - 0.16, x + 0.16, yc_n + 0.16)
    sq('via1', x, yc_n, 0.26)
    r('m2', x - 0.15, -1.3, x + 0.15, 3.1)
labels = [('BL', cx[0], 3.0, 'm2'), ('BLB', cx[4], 3.0, 'm2'), ('WL', P * 2, -0.525, 'poly'),
          ('VDD', cx[0], 2.65, 'm1'), ('GND', cx[0], -0.98, 'm1'), ('Q', cx[1], 1.1, 'li'), ('QB', cx[3], 0.6, 'li')]
with open('cell6t.tcl', 'w') as f:
    f.write('tech load /home/claude/pdk/sky130A_magic/sky130A.tech\nsnap internal\nload cell6t_new -force\nselect top cell\n')
    for (ly, x1, y1, x2, y2) in R:
        f.write(f'box {x1:.3f}um {y1:.3f}um {x2:.3f}um {y2:.3f}um\npaint {ly}\n')
    for (t, x, y, ly) in labels:
        f.write(f'box {x:.3f}um {y:.3f}um {x:.3f}um {y:.3f}um\nlabel {t} center {ly}\nport make\n')
    f.write('select top cell\ndrc check\ndrc catchup\nputs "DRC_COUNT [drc list count total]"\n')
    f.write('set w [drc listall why]\nforeach {k v} $w { puts "WHY: $k  ([llength $v] boxes)"; foreach b [lrange $v 0 1] {puts "   at $b"} }\n')
    f.write('save cell6t\nextract all\next2spice lvs\next2spice -o cell6t_ext.spice\n')
    f.write('gds write cell6t.gds\nputs "BBOX [box values]"\nquit -noprompt\n')
print(len(R), 'rects')
