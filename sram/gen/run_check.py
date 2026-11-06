#!/usr/bin/env python3
"""Generate a testbench, run ngspice, check every read against the reference model,
and measure energy. Usage: run_check.py KIND --T 5e-9 [--tag name]"""
import argparse, subprocess, json, time, os, sys
import numpy as np
sys.path.insert(0, os.path.dirname(__file__))
from paths import ROOT, CELLS, SIM, PLOTS, PDK_LIB
from gen_sram import testbench

SIG = ["v(CLK)", "v(ADDR)", "v(RW)", "v(DIN)", "v(DOUT)", "v(xdut.rdqb)", "v(xdut.rd)", "v(xdut.dl)",
       "v(xdut.dlb)", "v(xdut.pcb)", "v(xdut.clkb)", "v(xdut.we)", "v(xdut.wl0)", "v(xdut.wl15)",
       "v(xdut.bl0)", "v(xdut.blb0)", "v(xdut.bl15)", "v(xdut.blb15)", "v(xdut.xc_0_0.q)",
       "v(xdut.xc_15_15.q)", "i(Vdd)", "i(Vddio)", "v(xdut.clk_ff)"]


def run(kind, T, tag, simdir=None, corner="tt", wire=True):
    simdir = simdir or SIM
    net, cyc, exp, tstop = testbench(kind, T, corner=corner, wire=wire)
    ctrl = [".control", "set wr_singlescale", "set wr_vecnames", "run",
            f"wrdata {tag}.dat " + " ".join(SIG), ".endc", ".end"]
    net = net.replace("\n.end", "\n" + "\n".join(ctrl))
    sp = os.path.join(simdir, f"{tag}.sp")
    open(sp, "w").write(net)
    t0 = time.time()
    r = subprocess.run(["ngspice", "-b", sp], cwd=simdir, capture_output=True, text=True)
    open(os.path.join(simdir, f"{tag}.log"), "w").write(r.stdout + r.stderr)
    dt = time.time() - t0
    return cyc, exp, dt, os.path.join(simdir, f"{tag}.dat")


def load(dat):
    with open(dat) as f:
        hdr = f.readline().split()
    d = np.loadtxt(dat, skiprows=1)
    return {h: d[:, i] for i, h in enumerate(hdr)}


def check(cyc, exp, T, D, verbose=True):
    t = D["time"]
    def at(sig, tt):
        return np.interp(tt, t, D[sig])
    errs_core, errs_io = [], []
    for k, e, A in exp:
        t_edge = (k + 1) * T + T / 2          # read data captured here
        vc = at("v(xdut.rdqb)", t_edge + 0.5 * T)
        vo = at("v(DOUT)", t_edge + 0.95 * T)
        if (vc > 0.9) != bool(e):
            errs_core.append((k, A, e, vc))
        if (vo > 0.9) != bool(e):
            errs_io.append((k, A, e, vo))
    return errs_core, errs_io


def energy(cyc, T, D, rw_val, start=None, stop=None):
    """average energy per cycle from Vdd (core) and Vddio over cycles with given rw."""
    t = D["time"]
    idd = -D["i(Vdd)"]; iio = -D["i(Vddio)"]
    Ec, Eio = [], []
    rng = range(start or 0, stop or len(cyc))
    for k in rng:
        if cyc[k][1] != rw_val:
            continue
        # access k spans rising edge k (t=k*T+T/2) .. rising edge k+1
        t0, t1 = k * T + T / 2, (k + 1) * T + T / 2
        if t1 > t[-1]:
            continue
        m = (t >= t0) & (t <= t1)
        Ec.append(1.8 * np.trapezoid(idd[m], t[m]))
        Eio.append(1.8 * np.trapezoid(iio[m], t[m]))
    return np.array(Ec), np.array(Eio)


if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("kind")
    ap.add_argument("--T", type=float, default=5e-9)
    ap.add_argument("--tag", default=None)
    ap.add_argument("--corner", default="tt")
    a = ap.parse_args()
    tag = a.tag or f"{a.kind}_{a.T*1e12:.0f}ps"
    cyc, exp, dt, dat = run(a.kind, a.T, tag, corner=a.corner)
    D = load(dat)
    ec, eo = check(cyc, exp, a.T, D)
    Ew, Ewio = energy(cyc, a.T, D, 1)
    Er, Erio = energy(cyc, a.T, D, 0, start=8)
    res = {"kind": a.kind, "T_ns": a.T * 1e9, "sim_s": dt, "reads_checked": len(exp),
           "core_errors": len(ec), "dout_errors": len(eo),
           "E_write_core_pJ": float(Ew.mean() * 1e12) if len(Ew) else None,
           "E_read_core_pJ": float(Er.mean() * 1e12) if len(Er) else None,
           "E_write_io_pJ": float(Ewio.mean() * 1e12) if len(Ewio) else None,
           "E_read_io_pJ": float(Erio.mean() * 1e12) if len(Erio) else None,
           "first_core_errs": ec[:5], "first_dout_errs": eo[:5]}
    json.dump(res, open(os.path.join(SIM, f"{tag}.res.json"), "w"), indent=1)
    print(json.dumps(res, indent=1))
