"""Hand-style channel routing with my own generator, single row:
pin -> stack up to m2 -> vertical m2 stub -> via2 -> horizontal m3 track. Tracks by interval colouring."""
TR0, TP = 0.46, 0.64      # first track y, track pitch (m3 0.30 wide + 0.32 gap); 4 tracks fit in 3.24
def stack(c, x, y, ly):
    if ly == "li": c.sq("viali", x, y, .17)
    if ly in ("li", "m1"): c.sq("m1", x, y, .32)
    c.sq("via1", x, y, .26)
def route(c, nets):
    """nets: {name: [(x,y,layer),...]}. Mutates c. Raises if out of tracks or stubs collide."""
    tracks, T = [], {}
    for name, pins in sorted(nets.items(), key=lambda kv: min(p[0] for p in kv[1])):
        lo, hi = min(p[0] for p in pins), max(p[0] for p in pins)
        for k, t in enumerate(tracks):
            if t < lo - .8: tracks[k] = hi; break
        else:
            k = len(tracks); tracks.append(hi)
        assert k < 4, f"out of tracks at {name}"
        T[name] = k; y = TR0 + k * TP
        c.r("m3", lo - .2, y - .165, hi + .2, y + .165)
        for x, py, ly in pins:
            stack(c, x, py, ly)
            # close pads on one net leave a same-net notch, so fill them solid
            w = .15 if abs(py - y) < .65 else .07
            c.r("m2", x - w, min(py, y), x + w, max(py, y))
            c.sq("m2", x, py, .32); c.r("m2", x - .15, y - .185, x + .15, y + .185)
            c.sq("via2", x, y, .28)
    S = [(n, p[0], min(p[1], TR0 + T[n] * TP) - .16, max(p[1], TR0 + T[n] * TP) + .16) for n, ps in nets.items() for p in ps]
    for i, a in enumerate(S):
        for b in S[:i]:
            clash = a[0] != b[0] and abs(a[1] - b[1]) < .37 and a[2] < b[3] + .14 and b[2] < a[3] + .14
            assert not clash, f"m2 stubs {a} and {b} collide"
