"""Rough connectivity check (stdlib): finds MOS devices (poly over diff) and traces nets through
contacts. Lets a generator be sanity-tested without Magic. NOT LVS: Netgen remains the real check."""
CONDUCT = {"poly", "li", "m1", "m2", "m3", "via2", "ndiff", "pdiff", "pc", "ndc", "pdc", "viali", "via1", "nsc", "psc"}
# contact -> layers it joins
JOIN = {"pc": ("poly", "li"), "ndc": ("ndiff", "li"), "pdc": ("pdiff", "li"), "viali": ("li", "m1"),
        "via1": ("m1", "m2"), "via2": ("m2", "m3"), "nsc": ("nwell", "li"), "psc": ("sub", "li")}

def touch(a, b):
    return a[1] <= b[3] and b[1] <= a[3] and a[2] <= b[4] and b[2] <= a[4]
def overlap(a, b):
    return a[1] < b[3] and b[1] < a[3] and a[2] < b[4] and b[2] < a[4]

def extract(rects, labels):
    """Returns (devices, label->net). Device = (type, gate, {sd nets}, W). Diff is split at gates."""
    polys = [r for r in rects if r[0] == "poly"]
    pieces = []
    for r in rects:
        if r[0] in ("ndiff", "pdiff"):
            cuts = [(p[1], p[3]) for p in polys if overlap(p, r) and p[2] <= r[2] and p[4] >= r[4]]
            x = r[1]
            for a, b in sorted(cuts):
                if a > x: pieces.append((r[0], x, r[2], a, r[4]))
                x = b
            if x < r[3]: pieces.append((r[0], x, r[2], r[3], r[4]))
        elif r[0] in CONDUCT or r[0] in ("nwell",):
            pieces.append(r)
    parent = list(range(len(pieces)))
    def find(i):
        while parent[i] != i:
            parent[i] = parent[parent[i]]; i = parent[i]
        return i
    for i, p in enumerate(pieces):
        for j in range(i):
            q = pieces[j]
            same = p[0] == q[0] and touch(p, q)
            cont = (p[0] in JOIN and q[0] in JOIN[p[0]] and overlap(p, q)) or (q[0] in JOIN and p[0] in JOIN[q[0]] and overlap(p, q))
            # contact cuts stitch to each other only through their layers
            if same or cont: parent[find(i)] = find(j)
    def net(ly, x, y):
        for i, p in enumerate(pieces):
            if p[0] == ly and p[1] <= x <= p[3] and p[2] <= y <= p[4]: return find(i)
        return None
    names = {t: net(ly, x, y) for t, x, y, ly in labels}
    rev = {v: k for k, v in names.items() if v is not None}
    def nm(i): return rev.get(i, f"n{i}")
    devs = []
    for r in rects:
        if r[0] not in ("ndiff", "pdiff"): continue
        for p in polys:
            if overlap(p, r) and p[2] <= r[2] and p[4] >= r[4]:
                y = (r[2] + r[4]) / 2
                l, rr = net(r[0], p[1] - 0.001, y), net(r[0], p[3] + 0.001, y)
                g = find(pieces.index(p))
                devs.append(("n" if r[0] == "ndiff" else "p", nm(g), frozenset((nm(l), nm(rr))), round(r[4] - r[2], 3)))
    return devs, names
