#!/usr/bin/env python3
"""Clock distribution as distributed RC, from the layout geometry (layout/ctrl.py, layout/blocks.py).

Three nets leave the clock generator: clk_ff (11 flops), clkb (16 wordline NAND3 + write-enable NAND2)
and pcb (16 precharge + rwckt). For each net, three topologies are built from the same sinks:
  built  : what the layout draws (clk_ff centre-fed track; clkb and pcb fed from one end)
  end    : naive, fed from the first sink's end (same wires)
  centre : fed at the middle of the sink line by an extra feed wire on met4
  tree   : binary tree, length-matched at every level, root at the middle (H-tree in one dimension)
Wire R and C use the Magic sky130A nominal extraction values (sheet R, area and perimeter cap to
substrate); each wire is cut into pi sections of at most 2 um. Vias: one cut each (4.5 ohm via1, 3.41 ohm via2).
Run: python3 gen/clocktree.py  (needs ngspice and the PDK; writes results/clocktree/)."""
import os, sys, json, subprocess, numpy as np
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from paths import ROOT, CELLS, PDK_LIB
RSH = {"m2": .125, "m3": .047, "m4": .047}                 # ohm/sq   (sky130A.tech, style ngspice, nominal)
CA = {"m2": 17.5, "m3": 12.37, "m4": 8.41}                  # aF/um2   area cap to substrate
CP = {"m2": 37.76, "m3": 40.99, "m4": 36.34}                # aF/um    perimeter cap
VIA = 4.5 + 3.41                                            # ohm, via1 + via2 at each sink drop
PY, PX = 3.24, 3.40
EXTRACTED = {"clk_ff": 50.1, "clkb": 45.4, "pcb": 37.4}     # fF, results/post_final/wire_cap.txt
SINKS = {"clk_ff": 11, "clkb": 17, "pcb": 17}

def wire(ly, L, W): return RSH[ly] * L / W, (CA[ly] * W * L + CP[ly] * 2 * L) * 1e-3   # ohm, fF

class Net:
    """RC tree: edges (a, b, layer, length, width, extra ohm). Node 'root' is the driver output."""
    def __init__(s, name): s.name, s.E, s.sinks = name, [], []
    def e(s, a, b, ly, L, W, r=0.0): s.E.append((a, b, ly, max(abs(L), .05), W, r))   # 0.05 um floor: no zero-ohm sections
    def line(s, pts, ly, W, feed):
        """Wire along a line through points {node: position}; feed node already in pts."""
        P = sorted(pts.items(), key=lambda kv: kv[1])
        for (a, x), (b, y) in zip(P, P[1:]): s.e(a, b, ly, y - x, W)
    def tree(s, sinks, ly, W, top="root"):
        """Binary length-matched tree over sinks {node: position}; returns branch length from top to each leaf."""
        def rec(items, parent, pos):
            if len(items) == 1: s.e(parent, items[0][0], ly, abs(items[0][1] - pos), W); return
            h = len(items) // 2; L, R = items[:h], items[h:]
            cl, cr = np.mean([x for _, x in L]), np.mean([x for _, x in R])
            d = max(abs(cl - pos), abs(cr - pos))                       # match both branches to the longer one
            for grp, c, k in ((L, cl, "l"), (R, cr, "r")):
                n = f"{parent}{k}"; s.e(parent, n, ly, d, W); rec(grp, n, c)
        rec(sorted(sinks.items(), key=lambda kv: kv[1]), top, np.mean(list(sinks.values())))
    def spice(s, scale=1.0, seg=2.0):
        """Pi sections; returns lines. Node names prefixed by net name."""
        out, k = [], 0; nm = lambda n: f"{s.name}_{n}"
        for a, b, ly, L, W, r in s.E:
            R, C = wire(ly, L, W); C *= scale; n = max(1, int(np.ceil(L / seg)))
            prev = nm(a)
            for i in range(n):
                k += 1; nxt = nm(b) if i == n - 1 else f"{s.name}_w{k}"
                out.append(f"R{s.name}{k} {prev} {nxt} {R / n + (r if i == n - 1 else 0):.4g}")
                out.append(f"C{s.name}{k}a {prev} 0 {C / n / 2:.4g}f"); out.append(f"C{s.name}{k}b {nxt} 0 {C / n / 2:.4g}f")
                prev = nxt
        return out
    def ctot(s): return sum(wire(ly, L, W)[1] for _, _, ly, L, W, _ in s.E)
    def length(s): return sum(L for _, _, _, L, _, _ in s.E)

def clk_ff(topo):
    n = Net("clk_ff"); xs = [16.535 + 20.17 * i for i in range(11)]
    for i, x in enumerate(xs): n.e(f"t{i}", f"s{i}", "m2", 17.55, .15, VIA); n.sinks.append(f"s{i}")
    T = {f"t{i}": x for i, x in enumerate(xs)}
    if topo == "tree": n.e("root", "f", "m4", 7.5, .33); n.tree(T, "m3", .33, "f"); return n
    xf = {"built": 116.4, "end": xs[0], "centre": (xs[0] + xs[-1]) / 2}[topo]
    n.e("root", "f", "m4", 7.5, .33); T["f"] = xf; n.line(T, "m3", .33, "f"); return n

def clkb(topo):
    """Track in the control strip (driver x=29.0, write-enable sink at x=149.2), then a met2 spine up the rows."""
    n = Net("clkb"); yr = [(r * PY + 1.74) if r % 2 == 0 else ((r + 1) * PY - 1.74) for r in range(16)]
    n.e("root", "f", "m4", 10.7, .34)
    n.line({"f": 29.28, "we_t": 149.24, "sp": -0.5}, "m3", .33, "f")
    n.e("we_t", "s_we", "m4", 11.7, .34); n.sinks.append("s_we")
    n.e("sp", "y0", "m2", 17.6, .14)                                 # down to the core edge at y = -14.98
    for r, y in enumerate(yr): n.e(f"r{r}", f"s{r}", "m3", 3.49, .33, VIA); n.sinks.append(f"s{r}")
    R = {f"r{r}": y for r, y in enumerate(yr)}
    if topo == "tree": n.e("y0", "c", "m4", 14.98 + np.mean(yr), .3); n.tree(R, "m2", .3, "c"); return n
    if topo == "centre": n.e("y0", "c", "m4", 14.98 + np.mean(yr), .3); R["c"] = np.mean(yr); n.line(R, "m2", .3, "c"); return n
    R["y0"] = -14.98; n.line(R, "m2", .3, "y0"); return n             # built and end are the same: fed from the bottom

def pcb(topo):
    """Track in the control strip (driver x=56.8, rwckt sink x=8.85), met2 riser at x=-6.1, met3 bar over 16 columns."""
    n = Net("pcb"); xc = [8.34 + PX * k for k in range(16)]
    n.e("root", "f", "m4", 16.5, .35)
    n.line({"f": 56.8, "rw_t": 8.85, "rs": -6.1}, "m3", .33, "f")
    n.e("rw_t", "s_rw", "m2", 8.6, .13, VIA); n.sinks.append("s_rw")
    n.e("rs", "b0", "m2", 81.3, .3)
    for k, x in enumerate(xc): n.e(f"c{k}", f"s{k}", "m2", .5, .3, VIA); n.sinks.append(f"s{k}")
    C = {f"c{k}": x for k, x in enumerate(xc)}
    if topo == "tree": n.e("b0", "m", "m4", np.mean(xc) + 6.1, .3); n.tree(C, "m3", .33, "m"); return n
    if topo == "centre": n.e("b0", "m", "m4", np.mean(xc) + 6.1, .3); C["m"] = np.mean(xc); n.line(C, "m3", .33, "m"); return n
    C["b0"] = -6.1; n.line(C, "m3", .33, "b0"); return n

BUILD = {"clk_ff": clk_ff, "clkb": clkb, "pcb": pcb}
# scale tech-file C to the extracted total of the as-built net (extracted C includes coupling and fringe to neighbours)
SCALE = {k: EXTRACTED[k] / f("built").ctot() for k, f in BUILD.items()}

def sink_lines(net, leaves):
    """Real cells from cells.sp as loads, on supply vdds so the clock-network supply only carries clock energy."""
    L = []
    for i, s in enumerate(leaves):
        p = f"clk_ff_{s}" if net == "clk_ff" else f"{net}_{s}"
        if net == "clk_ff": L.append(f"Xld_ff{i} 0 {p} q_{i} qb_{i} vdds 0 dff")
        elif net == "clkb": L.append(f"Xld_we vdds {p} web vdds 0 nand2" if s == "s_we" else f"Xld_rd{i} vdds vdds {p} wlb{i} vdds 0 nand3")
        else: L.append(f"Xld_rw dl dlb 0 0 0 {p} rd vdds 0 rwckt" if s == "s_rw" else f"Xld_pre{i} vdds vdds {p} vdds precharge")
    return L

def tree_lines(topo="built"):
    """Netlist lines for gen_sram: RC trees from clk_ff/clkb/pcb to per-leaf nets. Leaf names in LEAF."""
    out = []
    for k, f in BUILD.items():
        n = f(topo); out += [l.replace(f"{k}_root", k) for l in n.spice(SCALE[k])]
    return out
LEAF = {"clk_ff": [f"clk_ff_s{i}" for i in range(11)],          # flops in layout order: Xrw first, then Xff_out, then the rest
        "clkb_rd": [f"clkb_s{r}" for r in range(16)], "clkb_we": "clkb_s_we",
        "pcb_pre": [f"pcb_s{k}" for k in range(16)], "pcb_rw": "pcb_s_rw"}

def bench(topo, T=1.4e-9, ncyc=4):
    """Clock generator from gen_sram.py, driven by an ideal 50 ps clock at clk_in, with the RC nets and real loads."""
    os.environ.setdefault("SRAM_PDK_LIB", PDK_LIB); from gen_sram import netlist_core
    gen = [l.replace(" vdd ", " vclk ").replace(" vss ", " 0 ") for l in netlist_core(wire=False).splitlines() if l.startswith("Xck_")]
    L = [f"* clock tree bench {topo}", f".lib {PDK_LIB} tt", f".include {CELLS}", "Vclk vclk 0 1.8", "Vdds vdds 0 1.8",
         f"Vin clk_in 0 PULSE(0 1.8 {T/2:.4e} 50p 50p {T/2-50e-12:.4e} {T:.4e})"] + gen
    leaves = {}
    for k, f in BUILD.items():
        n = f(topo); L += [l.replace(f"{k}_root", k) for l in n.spice(SCALE[k])]; L += sink_lines(k, n.sinks); leaves[k] = n.sinks
    nodes = ["v(clk_in)"] + [f"v({k}_{s})" for k in leaves for s in leaves[k]] + ["i(Vclk)"]
    tag = f"ct_{topo}_{T*1e12:.0f}ps"; d = os.path.join(ROOT, "sim")
    L += [".option reltol=1e-4", f".tran 1p {ncyc*T:.4e}", ".control", "run", "set wr_singlescale", "set wr_vecnames", f"wrdata {tag}.dat " + " ".join(nodes), ".endc", ".end"]
    open(os.path.join(d, tag + ".sp"), "w").write("\n".join(L))
    subprocess.run(["ngspice", "-b", tag + ".sp"], cwd=d, capture_output=True)
    D = np.loadtxt(os.path.join(d, tag + ".dat"), skiprows=1); t = D[:, 0]; col = {n: D[:, i + 1] for i, n in enumerate(nodes)}
    t0 = 2 * T + T / 2                                               # third rising edge at clk_in
    def cross(v, a, lvl=.9):
        i = np.where(t > a)[0]; s = np.sign(v[i] - lvl)
        if not (s != s[0]).any(): return np.nan
        j = i[np.argmax(s != s[0])]
        return t[j - 1] + (lvl - v[j - 1]) * (t[j] - t[j - 1]) / (v[j] - v[j - 1])
    ref = cross(col["v(clk_in)"], t0 - .2e-9)
    R = {}
    for k in leaves:
        dl = [cross(col[f"v({k}_{s})"], ref) - ref for s in leaves[k]]
        a, b = cross(col[f"v({k}_{leaves[k][int(np.argmax(dl))]})"], ref, .18), cross(col[f"v({k}_{leaves[k][int(np.argmax(dl))]})"], ref, 1.62)
        arr = [x for q, x in zip(leaves[k], dl) if q not in ("s_we", "s_rw")]
        R[k] = {"skew_array_ps": (max(arr) - min(arr)) * 1e12, "delay_min_ps": min(dl) * 1e12, "delay_max_ps": max(dl) * 1e12, "skew_ps": (max(dl) - min(dl)) * 1e12,
                "slew_10_90_ps": abs(b - a) * 1e12, "wire_um": BUILD[k](topo).length(), "wire_C_fF": BUILD[k](topo).ctot() * SCALE[k],
                "delay_per_sink_ps": {s: round(x * 1e12, 2) for s, x in zip(leaves[k], dl)}}
    m = (t >= 2 * T) & (t <= 3 * T); E = -getattr(np, 'trapezoid', getattr(np, 'trapz', None))(col["i(Vclk)"][m], t[m]) * 1.8
    R["clock_energy_per_cycle_pJ"] = E * 1e12; R["clock_power_mW_at_T"] = E / T * 1e3; R["T_ns"] = T * 1e9
    return R

if __name__ == "__main__":
    out = os.path.join(ROOT, "results", "clocktree"); os.makedirs(out, exist_ok=True)
    print("C scale to extracted:", {k: round(v, 3) for k, v in SCALE.items()})
    print("tech C of as-built nets (fF):", {k: round(f("built").ctot(), 1) for k, f in BUILD.items()})
    A = {}
    for topo in ("built", "end", "centre", "tree"):
        A[topo] = bench(topo); r = A[topo]
        print(topo, " ".join(f"{k}: skew {r[k]['skew_ps']:.2f} ps (array {r[k]['skew_array_ps']:.2f}), delay {r[k]['delay_max_ps']:.0f} ps, slew {r[k]['slew_10_90_ps']:.0f} ps, wire {r[k]['wire_um']:.0f} um;" for k in BUILD),
              f"clock E {r['clock_energy_per_cycle_pJ']:.3f} pJ/cycle, {r['clock_power_mW_at_T']:.3f} mW at {r['T_ns']} ns")
    json.dump({"scale": SCALE, "results": A}, open(os.path.join(out, "clocktree.json"), "w"), indent=1)
