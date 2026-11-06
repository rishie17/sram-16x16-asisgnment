"""Shared layout helpers (stdlib only). Units: um. Same paint-script idea as layout_out/mk6t.py.
A Cell is a list of rects + labels + subcell placements. tcl() emits the Magic script;
precheck() is a rough width/spacing screen. It is NOT signoff: Magic DRC + Netgen LVS decide."""
PDK = "/foss/pdks/sky130A"
# min width / min spacing, drawn layers, sky130 rules as listed in the project prompt + PDK rule names
RULES = {"li": (0.17, 0.17), "m1": (0.14, 0.14), "m2": (0.14, 0.14), "m3": (0.30, 0.30),
         "m4": (0.30, 0.30), "m5": (1.60, 1.60), "poly": (0.15, 0.21), "nwell": (0.84, 1.27)}

def snap(v):
    return round(v * 200) / 200          # 5 nm grid

class Cell:
    def __init__(s, name):
        s.name, s.rects, s.labels, s.subs = name, [], [], []
    def r(s, ly, x1, y1, x2, y2):
        s.rects.append((ly, snap(min(x1, x2)), snap(min(y1, y2)), snap(max(x1, x2)), snap(max(y1, y2))))
    def sq(s, ly, cx, cy, a):
        s.r(ly, cx - a / 2, cy - a / 2, cx + a / 2, cy + a / 2)
    def label(s, t, x, y, ly):
        s.labels.append((t, snap(x), snap(y), ly))
    def place(s, cell, x, y, mx=False, my=False, name=None):
        s.subs.append((cell, snap(x), snap(y), mx, my, name or f"{cell.name}_{len(s.subs)}"))
    def bbox(s):
        R = [q[1:] for q in s.rects]
        for c, x, y, mx, my, _ in s.subs:
            a, b, d, e = c.bbox()
            xs = sorted(((-a, -d) if mx else (a, d)))
            ys = sorted(((-b, -e) if my else (b, e)))
            R.append((x + xs[0], y + ys[0], x + xs[1], y + ys[1]))
        return min(q[0] for q in R), min(q[1] for q in R), max(q[2] for q in R), max(q[3] for q in R)
    def size(s):
        a, b, c, d = s.bbox()
        return round(c - a, 3), round(d - b, 3)
    def flat(s):
        out = list(s.rects)
        for c, x, y, mx, my, _ in s.subs:
            for ly, a, b, d, e in c.flat():
                p, q = sorted((x - a, x - d) if mx else (x + a, x + d))
                u, v = sorted((y - b, y - e) if my else (y + b, y + e))
                out.append((ly, snap(p), snap(u), snap(q), snap(v)))
        return out
    def tcl(s):
        o = [f"load {s.name} -force", "snap internal"]
        for ly, a, b, c, d in s.rects:
            o += [f"box {a:.3f}um {b:.3f}um {c:.3f}um {d:.3f}um", f"paint {ly}"]
        for t, x, y, ly in s.labels:
            if s.subs:       # a parent label needs its own paint or Magic drops the port
                o += [f"box {x-.085:.3f}um {y-.085:.3f}um {x+.085:.3f}um {y+.085:.3f}um", f"paint {ly}"]
            o += [f"box {x:.3f}um {y:.3f}um {x:.3f}um {y:.3f}um", f"label {t} center {ly}", "port make"]
        for c, x, y, mx, my, n in s.subs:
            ori = {(0, 0): "0", (1, 0): "h", (0, 1): "v", (1, 1): "180"}[(int(mx), int(my))]
            o += [f"box 0 0 0 0", f"getcell {c.name} {ori} child 0 0 parent {x:.3f}um {y:.3f}um", f"identify {n}"]
        o += [f"save {s.name}"]
        return "\n".join(o) + "\n"

def merged(rs):
    """Union touching rects into connected groups."""
    rs = list(rs); seen = [False] * len(rs); groups = []
    for i in range(len(rs)):
        if seen[i]: continue
        seen[i] = True; st = [i]; g = []
        while st:
            k = st.pop(); g.append(rs[k])
            for j in range(len(rs)):
                if not seen[j] and rs[k][0] <= rs[j][2] and rs[j][0] <= rs[k][2] and rs[k][1] <= rs[j][3] and rs[j][1] <= rs[k][3]:
                    seen[j] = True; st.append(j)
        groups.append(g)
    return groups   # ponytail: O(n^2), per-leaf-cell use only; never call on the full chip

def gap(p, q):
    dx = max(p[0] - q[2], q[0] - p[2], 0); dy = max(p[1] - q[3], q[1] - p[3], 0)
    return (dx * dx + dy * dy) ** 0.5

def precheck(cell):
    """Spacing between separate shapes on one layer, plus rect width. Returns error strings."""
    errs = []; flat = cell.flat()
    for ly, (w, sp) in RULES.items():
        rs = [r[1:] for r in flat if r[0] == ly]
        for r in rs:
            if min(r[2] - r[0], r[3] - r[1]) < w - 1e-6: errs.append(f"{ly} width {r}")
        G = merged(rs)
        for i in range(len(G)):
            for j in range(i + 1, len(G)):
                d = min(gap(p, q) for p in G[i] for q in G[j])
                if d < sp - 1e-6: errs.append(f"{ly} space {d:.3f} < {sp}")
    return errs

if __name__ == "__main__":
    c = Cell("t"); c.r("li", 0, 0, 1, 0.17); c.r("li", 0, 0.30, 1, 0.47); c.r("li", 0, 0.9, 0.1, 1.2)
    e = precheck(c); assert any("space" in x for x in e) and any("width" in x for x in e), e
    k = Cell("k"); k.r("li", 0, 0, 1, 0.17); p = Cell("p"); p.place(k, 2, 0, mx=True)
    assert p.bbox() == (1, 0, 2, 0.17), p.bbox()
    print("lib self-check OK")
