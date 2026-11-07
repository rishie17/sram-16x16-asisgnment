#!/usr/bin/env python3
"""Post-layout run: same stream, reference model and checks as run_check.py, on the extracted chip.
Testbench side: 50 ohm drivers, bond wire R/L, pad C, 5 pF load. ESD, Rterm and wiring come from extraction.
ext2spice writes diode area/perim 1e12/1e6 too large for this PDK model; measured and corrected here."""
import argparse, json, os, re, subprocess, sys, time
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from paths import ROOT, SIM, PDK_LIB
from gen_sram import make_stream, pwl, init_mem
import run_check as rc
FLAT = os.path.join(ROOT, "layout/out/sram_top_flat.spice")
WLR = float(os.environ.get("POST_WLR", 1088.0))    # ohm per bit cell: 48.1 ohm/sq (measured on Rterm) x 3.40/0.15 squares. 0 disables.
def fixed(tag="sram_top_post"):
    out = os.path.join(SIM, tag + ".spice"); s = open(FLAT).read()
    fix = lambda m: f"perim={float(m[1]) / 1e6:g} area={float(m[2]) / 1e12:g}"
    s = re.sub(r"perim=(\S+) area=(\S+)", fix, s)
    if WLR:                       # poly WL: split the gate net per column so distributed R is real
        L = s.splitlines(); hit = {}; tok = re.compile(r"^(X\S+) (\S+) (\S+) (\S+) (\S+) sky130_fd_pr__nfet_01v8")
        for i, l in enumerate(L):
            m = tok.match(l)
            if not m: continue
            for sd in (m[2], m[4]):
                q = re.fullmatch(r"chip/core/c_(\d+)_(\d+)/QB?", sd)
                if q and re.search(r"/bl", m[2] + " " + m[4]):
                    r, k = int(q[1]), int(q[2]); hit.setdefault(r, {}).setdefault(k, []).append((i, m[3]))
        extra = []
        for r, col in hit.items():
            assert len(col) == 16 and all(len(v) == 2 for v in col.values()), (r, len(col))
            root = {g for v in col.values() for _, g in v}; assert len(root) == 1, root; root = root.pop(); prev = root
            for k in range(16):
                n = f"wlr{r}_{k}"; extra.append(f"Rwl{r}_{k} {prev} {n} {WLR}"); prev = n
                for i, g in col[k]:
                    p = L[i].split(); p[2] = n; L[i] = " ".join(p)
        assert len(hit) == 16; s = "\n".join(L + extra)
    open(out, "w").write(".subckt sram_top DOUT VDDIO GND VDD CLK ADDR RW DIN\n" + s + "\n.ends\n"); return out
def node(n): return "xtop." + n.lower()
PROBE = {"v(xdut.rdqb)": "chip/ob1/A", "v(xdut.clk_ff)": "chip/Xck_a2/Y"}
def bench(kind, T, tr=50e-12, cload=5e-12, extra=2, seed=1, corner="tt", probes=PROBE):
    cyc, exp = make_stream(kind, seed=seed); n = len(cyc) + extra; v = cyc + [[0, 0, 0]] * extra
    L = [f"* post-layout {kind} T={T*1e9:.3f} ns", f".lib {PDK_LIB} {corner}", f".include {INC}", "Vdd vdd 0 1.8", "Vddio vddio 0 1.8",
         f"Vclk clk_src 0 PULSE(0 1.8 {T/2:.4e} {tr:.2e} {tr:.2e} {T/2-tr:.4e} {T:.4e})", "Rclk clk_src CLK 50",
         pwl("addr", "ADDR", [x[0] for x in v], T, tr), pwl("rw", "RW", [x[1] for x in v], T, tr), pwl("din", "DIN", [x[2] for x in v], T, tr), f"Cload DOUT 0 {cload:.3e}"]
    for p in "CLK ADDR RW DIN DOUT".split():
        L += [f"Rbw_{p} {p} b_{p} 0.2", f"Lbw_{p} b_{p} p_{p} 2n", f"Cpad_{p} p_{p} 0 1p"]
    L.append("Xtop p_DOUT vddio 0 vdd p_CLK p_ADDR p_RW p_DIN sram_top")
    im = init_mem(); ns = []
    for r in range(16):
        for c in range(16):
            x = im[r * 16 + c] * 1.8
            ns.append(f"v({node(f'chip/core/c_{r}_{c}/Q')})={x} v({node(f'chip/core/c_{r}_{c}/QB')})={1.8 - x}")
    L += [".ic " + " ".join(ns[i:i + 8]) for i in range(0, len(ns), 8)]
    tstop = n * T + T / 2; S = ["v(CLK)", "v(ADDR)", "v(RW)", "v(DIN)", "v(DOUT)"] + [f"v({node(x)})" for x in probes.values()] + ["i(Vdd)", "i(Vddio)"]
    L += [".option reltol=1e-3", f".tran {T/50:.3e} {tstop:.4e}"]
    return L, cyc, exp, S
def main():
    ap = argparse.ArgumentParser(); ap.add_argument("kind"); ap.add_argument("--T", type=float, default=5e-9); ap.add_argument("--tag"); a = ap.parse_args()
    tag = a.tag or f"post_{a.kind}_{a.T*1e12:.0f}ps"
    global INC; INC = fixed("net_" + tag); L, cyc, exp, S = bench(a.kind, a.T)
    L += [".control", "set wr_singlescale", "set wr_vecnames", "run", f"wrdata {tag}.dat " + " ".join(S), ".endc", ".end"]
    sp = os.path.join(SIM, f"{tag}.sp"); open(sp, "w").write("\n".join(L)); t0 = time.time()
    r = subprocess.run(["ngspice", "-b", sp], cwd=SIM, capture_output=True, text=True); open(os.path.join(SIM, f"{tag}.log"), "w").write(r.stdout + r.stderr); dt = time.time() - t0
    D = rc.load(os.path.join(SIM, f"{tag}.dat"))
    rev = {f"v({node(v)})": k for k, v in PROBE.items()}
    D = {rev.get(k, k): v for k, v in D.items()}
    ec, eo = rc.check(cyc, exp, a.T, D); Ew, Ewio = rc.energy(cyc, a.T, D, 1); Er, Erio = rc.energy(cyc, a.T, D, 0, start=8)
    R = {"kind": a.kind, "T_ns": a.T * 1e9, "sim_s": dt, "reads_checked": len(exp), "core_errors": len(ec), "dout_errors": len(eo), "E_write_core_pJ": float(Ew.mean() * 1e12), "E_read_core_pJ": float(Er.mean() * 1e12), "E_write_io_pJ": float(Ewio.mean() * 1e12), "E_read_io_pJ": float(Erio.mean() * 1e12), "first_core_errs": ec[:5], "first_dout_errs": eo[:5]}
    json.dump(R, open(os.path.join(SIM, f"{tag}.res.json"), "w"), indent=1); print(json.dumps(R, indent=1))
if __name__ == "__main__": main()
